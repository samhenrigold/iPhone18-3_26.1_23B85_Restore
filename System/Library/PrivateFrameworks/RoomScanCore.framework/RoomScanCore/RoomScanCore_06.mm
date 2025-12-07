void sub_26222AD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::locale a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  std::locale::~locale(&a29);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

float sub_26222AD54(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, sizeof(v10));
  v3 = v10;
  sub_26222AE2C(a1 + 48, a2, v10);
  v4 = 0;
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v5 += *(a1 + 160 + 8 * v4) * *v3;
    v3 = v10 + 1;
    v4 = 1;
    v6 = 0;
  }

  while ((v7 & 1) != 0);
  if (*(a1 + 344) == 1)
  {
    v8 = *(a1 + 352);
  }

  else
  {
    v5 = *(a1 + 264) * *&v10[0];
    v8 = *(a1 + 352) + 4 * *(a1 + 272) * *(&v10[0] + 1);
  }

  return *(v8 + 4 * v5);
}

uint64_t sub_26222AE2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 56);
  *(a3 + 8 * *(result + 48)) = *(*(*result + 144) + 8 * **(result + 24) * *(a2 + 8 * *(result + 48)));
  v4 = *(result + 64) - v3;
  if (v4)
  {
    v5 = v4 >> 3;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    do
    {
      v6 = *v3++;
      *(a3 + 8 * v6) = *(a2 + 8 * v6);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_26222AE80(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EF0D8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    if (v11)
    {
      sub_2621D1B78(v11);
    }
  }

  else
  {
    *(a1 + 120) = v9;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

_OWORD *sub_26222AF58(_OWORD *a1, unint64_t *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v3 = *a2;
  v16[0] = v3;
  v14 = 0;
  if (v3 >= 0xBEBC200)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/../tensor/shape.hpp", 118);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 71);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "Shape", 5);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v15);
    std::ostream::put();
    std::ostream::flush();
    sub_262223C90("err", "shape[", &v14, "]", " is ", v16, " ,it should <= 6");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v15);
    std::ostream::put();
    std::ostream::flush();
  }

  *a1 = v3;
  return a1;
}

void sub_26222B1A0(uint64_t a1, uint64_t a2)
{
  sub_2622EBC98(v5);
  if (v5[0])
  {
    kdebug_trace();
    sub_26221A1CC(a1);
  }

  if (qword_27FF0C070 != -1)
  {
    dispatch_once(&qword_27FF0C070, &unk_2874EE120);
  }

  v3 = qword_27FF0C068;
  if (os_log_type_enabled(qword_27FF0C068, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_2621C3000, v3, OS_LOG_TYPE_ERROR, "Empty backbone infer result", v4, 2u);
  }

  v14 = &unk_2874EF6A8;
  if (v15)
  {
    sub_2621D1B78(v15);
  }

  v12 = &unk_2874EF0B8;
  if (v13)
  {
    sub_2621D1B78(v13);
  }

  v10 = &unk_2874EF0B8;
  if (v11)
  {
    sub_2621D1B78(v11);
  }

  v8 = &unk_2874EF0D8;
  if (v9)
  {
    sub_2621D1B78(v9);
  }

  v6 = &unk_2874EF0D8;
  if (v7)
  {
    sub_2621D1B78(v7);
  }
}

void sub_26222B3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_26222B3BC(va);
  _Unwind_Resume(a1);
}

void *sub_26222B3BC(void *a1)
{
  a1[77] = &unk_2874EF6A8;
  v2 = a1[93];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[58] = &unk_2874EF0B8;
  v3 = a1[74];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  a1[39] = &unk_2874EF0B8;
  v4 = a1[55];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  a1[20] = &unk_2874EF0D8;
  v5 = a1[36];
  if (v5)
  {
    sub_2621D1B78(v5);
  }

  a1[1] = &unk_2874EF0D8;
  v6 = a1[17];
  if (v6)
  {
    sub_2621D1B78(v6);
  }

  return a1;
}

void *sub_26222B4BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_commandBuffer(*(a1 + 16), a2, a3);
  objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(*(a1 + 56), v5, v4, *(a1 + 32), *(a1 + 40));
  objc_msgSend_commit(v4, v6, v7);
  objc_msgSend_waitUntilCompleted(v4, v8, v9);
  v10 = *(a1 + 40);
  v11 = v10;

  return v10;
}

void sub_26222B530(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 64) == *(a1 + 72) && *(a1 + 68) == *(a1 + 76))
  {
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    *(a1 + 32) = v11;
  }

  else
  {
    v12 = objc_msgSend_commandBuffer(*(a1 + 16), a2, a3);
    objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(*(a1 + 48), v5, v12, *(a1 + 24), *(a1 + 32));
    objc_msgSend_commit(v12, v6, v7);
    objc_msgSend_waitUntilCompleted(v12, v8, v9);
    v10 = v12;
  }
}

id sub_26222B5E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v21[5] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277CD2B88];
  v6 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, *a2);
  v21[0] = v6;
  v20[1] = *MEMORY[0x277CD2A28];
  v8 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, *(a2 + 1));
  v9 = *MEMORY[0x277CD2960];
  v21[1] = v8;
  v21[2] = &unk_2874FAC08;
  v10 = *MEMORY[0x277CD2A70];
  v20[2] = v9;
  v20[3] = v10;
  v20[4] = *MEMORY[0x277CD2A60];
  v21[3] = &unk_2874FAC20;
  v21[4] = &unk_2874FAC38;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v21, v20, 5);

  v13 = IOSurfaceCreate(v12);
  v15 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v14, a3, *a2, *(a2 + 1), 0);
  objc_msgSend_setUsage_(v15, v16, 3);
  v18 = objc_msgSend_newTextureWithDescriptor_iosurface_plane_(*(a1 + 8), v17, v15, v13, 0);
  CFRelease(v13);

  return v18;
}

void sub_26222B7D4(float *a1, float *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v152 = (a2 - 10);
    v8 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v8;
          v9 = a2 - v8;
          v10 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v8) >> 3);
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3uLL:
                v78 = v8[16];
                v79 = *(a2 - 4);
                if (v78 <= v8[6])
                {
                  if (v79 <= v78)
                  {
                    return;
                  }

                  v76 = (v8 + 10);
                  v77 = (a2 - 10);
                  goto LABEL_209;
                }

                if (v79 > v78)
                {
                  goto LABEL_124;
                }

                sub_26222C8C8(v8, (v8 + 10));
                if (*(a2 - 4) <= v8[16])
                {
                  return;
                }

                v80 = (v8 + 10);
LABEL_125:
                v81 = (a2 - 10);
LABEL_126:

                sub_26222C8C8(v80, v81);
                return;
              case 4uLL:

                sub_26222C970(v8, (v8 + 10), (v8 + 20), v152);
                return;
              case 5uLL:
                sub_26222C970(v8, (v8 + 10), (v8 + 20), (v8 + 30));
                if (*(a2 - 4) <= v8[36])
                {
                  return;
                }

                sub_26222C8C8((v8 + 30), v152);
                if (v8[36] <= v8[26])
                {
                  return;
                }

                sub_26222C8C8(v8 + 5, (v8 + 30));
                if (v8[26] <= v8[16])
                {
                  return;
                }

                v76 = (v8 + 10);
                v77 = (v8 + 20);
LABEL_209:
                sub_26222C8C8(v76, v77);
                if (v8[16] <= v8[6])
                {
                  return;
                }

                v81 = (v8 + 10);
                v80 = v8;
                goto LABEL_126;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            if (v10 == 2)
            {
              if (*(a2 - 4) <= v8[6])
              {
                return;
              }

LABEL_124:
              v80 = v8;
              goto LABEL_125;
            }
          }

          if (v9 <= 959)
          {
            v82 = v8 + 10;
            v84 = v8 == a2 || v82 == a2;
            if (a4)
            {
              if (!v84)
              {
                v85 = 0;
                v86 = v8;
                do
                {
                  v87 = v82;
                  v88 = v86[16];
                  if (v88 > v86[6])
                  {
                    v89 = 0;
                    v158 = *v82;
                    v90 = *(v86 + 7);
                    *v82 = 0;
                    *(v82 + 1) = 0;
                    *(v82 + 2) = 0;
                    v91 = v85;
                    v92 = *(v86 + 17);
                    while (1)
                    {
                      v93 = a1 + v91;
                      if (v89)
                      {
                        *(v93 + 6) = v89;
                        operator delete(v89);
                        *(v93 + 7) = 0;
                      }

                      *(v93 + 40) = *v93;
                      v94 = *(v93 + 2);
                      v95 = *(v93 + 3);
                      *(v93 + 1) = 0;
                      *(v93 + 2) = 0;
                      *v93 = 0;
                      *(v93 + 7) = v94;
                      *(v93 + 8) = v95;
                      *(v93 + 18) = *(v93 + 8);
                      if (!v91)
                      {
                        v97 = a1 + 6;
                        v96 = a1;
                        goto LABEL_150;
                      }

                      v96 = (a1 + v91);
                      if (v88 <= *(a1 + v91 - 16))
                      {
                        break;
                      }

                      v89 = *v93;
                      v91 -= 40;
                    }

                    v97 = v96 + 6;
LABEL_150:
                    v98 = *v96;
                    if (*v96)
                    {
                      *(v96 + 1) = v98;
                      operator delete(v98);
                    }

                    *v96 = v158;
                    *(v96 + 2) = v90;
                    *v97 = v88;
                    *(v96 + 7) = v92;
                  }

                  v82 = v87 + 10;
                  v85 += 40;
                  v86 = v87;
                }

                while (v87 + 10 != a2);
              }
            }

            else if (!v84)
            {
              do
              {
                v141 = v82;
                v142 = a1[16];
                if (v142 > a1[6])
                {
                  v162 = *v82;
                  v143 = *(a1 + 7);
                  *v82 = 0;
                  *(v82 + 1) = 0;
                  *(v82 + 2) = 0;
                  v144 = *(a1 + 17);
                  while (1)
                  {
                    *(a1 + 10) = *a1;
                    v145 = *(a1 + 2);
                    v146 = *(a1 + 3);
                    *(a1 + 1) = 0;
                    *(a1 + 2) = 0;
                    *a1 = 0;
                    *(a1 + 7) = v145;
                    *(a1 + 8) = v146;
                    v147 = *(a1 - 4);
                    a1[18] = a1[8];
                    if (v142 <= v147)
                    {
                      break;
                    }

                    v149 = *a1;
                    a1 -= 10;
                    v148 = v149;
                    if (v149)
                    {
                      *(a1 + 6) = v148;
                      operator delete(v148);
                      *(a1 + 7) = 0;
                    }
                  }

                  v150 = *a1;
                  if (*a1)
                  {
                    *(a1 + 1) = v150;
                    operator delete(v150);
                  }

                  *a1 = v162;
                  *(a1 + 2) = v143;
                  a1[6] = v142;
                  *(a1 + 7) = v144;
                }

                v82 = v141 + 10;
                a1 = v141;
              }

              while (v141 + 10 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v8 != a2)
            {
              v99 = v11 >> 1;
              v100 = v11 >> 1;
              do
              {
                v101 = v100;
                if (v99 >= v100)
                {
                  v102 = (2 * v100) | 1;
                  v103 = &a1[10 * v102];
                  if (2 * v101 + 2 < v10 && v103[6] > v103[16])
                  {
                    v103 += 10;
                    v102 = 2 * v101 + 2;
                  }

                  v104 = &a1[10 * v101];
                  v105 = v104[6];
                  if (v103[6] <= v105)
                  {
                    v106 = 0;
                    v159 = *v104;
                    v107 = *(v104 + 2);
                    *(v104 + 1) = 0;
                    *(v104 + 2) = 0;
                    *v104 = 0;
                    v151 = *(v104 + 7);
                    v153 = v107;
                    while (1)
                    {
                      v108 = v103;
                      if (v106)
                      {
                        *(v104 + 1) = v106;
                        operator delete(v106);
                        *v104 = 0;
                        *(v104 + 1) = 0;
                        *(v104 + 2) = 0;
                      }

                      *v104 = *v108;
                      *(v104 + 2) = *(v108 + 2);
                      *v108 = 0;
                      *(v108 + 1) = 0;
                      *(v108 + 2) = 0;
                      v109 = *(v108 + 3);
                      v104[8] = v108[8];
                      *(v104 + 3) = v109;
                      if (v99 < v102)
                      {
                        break;
                      }

                      v110 = 2 * v102;
                      v102 = (2 * v102) | 1;
                      v103 = &a1[10 * v102];
                      v111 = v110 + 2;
                      if (v111 < v10 && v103[6] > v103[16])
                      {
                        v103 += 10;
                        v102 = v111;
                      }

                      if (v103[6] > v105)
                      {
                        break;
                      }

                      v106 = *v108;
                      v104 = v108;
                    }

                    v112 = *v108;
                    if (*v108)
                    {
                      *(v108 + 1) = v112;
                      operator delete(v112);
                    }

                    *v108 = v159;
                    *(v108 + 2) = v153;
                    v108[6] = v105;
                    *(v108 + 7) = v151;
                  }
                }

                v100 = v101 - 1;
              }

              while (v101);
              v113 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 3);
              do
              {
                v114 = 0;
                v115 = a2;
                v154 = *(a1 + 1);
                v160 = *a1;
                v117 = *(a1 + 2);
                v116 = *(a1 + 3);
                *(a1 + 1) = 0;
                *(a1 + 2) = 0;
                *a1 = 0;
                v164 = v116;
                v166 = *(a1 + 8);
                v118 = a1;
                do
                {
                  v119 = &v118[10 * v114];
                  v120 = v119 + 10;
                  if (2 * v114 + 2 >= v113)
                  {
                    v114 = (2 * v114) | 1;
                  }

                  else
                  {
                    v121 = v119[16];
                    v122 = v119[26];
                    v123 = v119 + 20;
                    if (v121 <= v122)
                    {
                      v114 = (2 * v114) | 1;
                    }

                    else
                    {
                      v120 = v123;
                      v114 = 2 * v114 + 2;
                    }
                  }

                  v124 = *v118;
                  if (*v118)
                  {
                    *(v118 + 1) = v124;
                    operator delete(v124);
                    *v118 = 0;
                    *(v118 + 1) = 0;
                    *(v118 + 2) = 0;
                  }

                  *v118 = *v120;
                  *(v118 + 2) = *(v120 + 2);
                  *v120 = 0;
                  *(v120 + 1) = 0;
                  v126 = v120 + 6;
                  v125 = *(v120 + 3);
                  *(v120 + 2) = 0;
                  v118[8] = v120[8];
                  *(v118 + 3) = v125;
                  v118 = v120;
                }

                while (v114 <= ((v113 - 2) >> 1));
                a2 -= 10;
                v127 = *v120;
                if (v120 == v115 - 10)
                {
                  if (v127)
                  {
                    *(v120 + 1) = v127;
                    operator delete(v127);
                  }

                  *v120 = v160;
                  *(v120 + 1) = v154;
                  *(v120 + 2) = v117;
                  *v126 = v164;
                  *(v120 + 8) = v166;
                }

                else
                {
                  if (v127)
                  {
                    *(v120 + 1) = v127;
                    operator delete(v127);
                    *v120 = 0;
                    *(v120 + 1) = 0;
                    *(v120 + 2) = 0;
                  }

                  *v120 = *(v115 - 10);
                  *(v120 + 2) = *(v115 - 3);
                  *a2 = 0;
                  *(v115 - 4) = 0;
                  *(v115 - 3) = 0;
                  v128 = *(v115 - 2);
                  v120[8] = *(v115 - 2);
                  *v126 = v128;
                  v129 = *(v115 - 5);
                  if (v129)
                  {
                    *(v115 - 4) = v129;
                    operator delete(v129);
                  }

                  *(v115 - 5) = v160;
                  *(v115 - 4) = v154;
                  *(v115 - 3) = v117;
                  *(v115 - 2) = v166;
                  *(v115 - 2) = v164;
                  v130 = (v120 + 10) - a1;
                  if (v130 >= 41)
                  {
                    v131 = (-2 - 0x3333333333333333 * (v130 >> 3)) >> 1;
                    v132 = &a1[10 * v131];
                    v133 = *v126;
                    if (v132[6] > *v126)
                    {
                      v134 = 0;
                      v161 = *v120;
                      v135 = *(v120 + 2);
                      *(v120 + 1) = 0;
                      *(v120 + 2) = 0;
                      *v120 = 0;
                      v136 = *(v120 + 7);
                      while (1)
                      {
                        v137 = v132;
                        if (v134)
                        {
                          *(v120 + 1) = v134;
                          operator delete(v134);
                          *v120 = 0;
                          *(v120 + 1) = 0;
                          *(v120 + 2) = 0;
                        }

                        *v120 = *v137;
                        *(v120 + 2) = *(v137 + 2);
                        *v137 = 0;
                        *(v137 + 1) = 0;
                        *(v137 + 2) = 0;
                        v138 = *(v137 + 3);
                        v120[8] = v137[8];
                        *(v120 + 3) = v138;
                        if (!v131)
                        {
                          break;
                        }

                        v131 = (v131 - 1) >> 1;
                        v132 = &a1[10 * v131];
                        if (v132[6] <= v133)
                        {
                          break;
                        }

                        v134 = *v137;
                        v120 = v137;
                      }

                      v139 = *v137;
                      if (*v137)
                      {
                        *(v137 + 1) = v139;
                        operator delete(v139);
                      }

                      *v137 = v161;
                      *(v137 + 2) = v135;
                      v137[6] = v133;
                      *(v137 + 7) = v136;
                    }
                  }
                }
              }

              while (v113-- > 2);
            }

            return;
          }

          v12 = v10 >> 1;
          v13 = &v8[10 * (v10 >> 1)];
          v14 = *(a2 - 4);
          if (v9 >= 0x1401)
          {
            v15 = v13 + 6;
            v16 = v13[6];
            v17 = a1 + 6;
            if (v16 <= a1[6])
            {
              if (v14 <= v16 || (sub_26222C8C8(v13, v152), v13[6] <= *v17))
              {
LABEL_26:
                v23 = &a1[10 * v12];
                v24 = v23 - 10;
                v25 = *(v23 - 4);
                v26 = *(a2 - 14);
                if (v25 <= a1[16])
                {
                  if (v26 <= v25 || (sub_26222C8C8((v23 - 10), a2 - 5), v24[6] <= a1[16]))
                  {
LABEL_39:
                    v29 = &a1[10 * v12];
                    v30 = v29 + 10;
                    v31 = v29[16];
                    v32 = *(a2 - 24);
                    if (v31 <= a1[26])
                    {
                      if (v32 <= v31 || (sub_26222C8C8((v29 + 10), (a2 - 30)), v30[6] <= a1[26]))
                      {
LABEL_48:
                        v35 = *v15;
                        v36 = v30[6];
                        if (*v15 <= v24[6])
                        {
                          if (v36 <= v35)
                          {
                            goto LABEL_57;
                          }

                          sub_26222C8C8(v13, v30);
                          if (v13[6] <= v24[6])
                          {
                            goto LABEL_57;
                          }

                          v37 = v24;
                          v38 = v13;
                        }

                        else
                        {
                          v37 = v24;
                          if (v36 <= v35)
                          {
                            sub_26222C8C8(v24, v13);
                            if (v30[6] <= v13[6])
                            {
LABEL_57:
                              v39 = *a1;
                              v40 = *(a1 + 2);
                              *(a1 + 1) = 0;
                              *(a1 + 2) = 0;
                              *a1 = 0;
                              v163 = *v17;
                              v165 = *(a1 + 8);
                              v41 = *a1;
                              if (*a1)
                              {
                                *(a1 + 1) = v41;
                                v155 = v39;
                                operator delete(v41);
                                v39 = v155;
                                *a1 = 0;
                                *(a1 + 1) = 0;
                                *(a1 + 2) = 0;
                              }

                              *a1 = *v13;
                              *(a1 + 2) = *(v13 + 2);
                              v42 = *(v13 + 8);
                              *v17 = *v15;
                              *(a1 + 8) = v42;
                              *v13 = v39;
                              *(v13 + 2) = v40;
                              *(v13 + 8) = v165;
                              *v15 = v163;
                              goto LABEL_60;
                            }

                            v37 = v13;
                          }

                          v38 = v30;
                        }

                        sub_26222C8C8(v37, v38);
                        goto LABEL_57;
                      }

                      v33 = (a1 + 20);
                      v34 = v30;
                    }

                    else
                    {
                      v33 = (a1 + 20);
                      if (v32 <= v31)
                      {
                        sub_26222C8C8(v33, (v29 + 10));
                        if (*(a2 - 24) <= v30[6])
                        {
                          goto LABEL_48;
                        }

                        v33 = v30;
                      }

                      v34 = (a2 - 30);
                    }

                    sub_26222C8C8(v33, v34);
                    goto LABEL_48;
                  }

                  v27 = (a1 + 10);
                  v28 = v24;
                }

                else
                {
                  v27 = (a1 + 10);
                  if (v26 <= v25)
                  {
                    sub_26222C8C8(v27, (v23 - 10));
                    if (*(a2 - 14) <= v24[6])
                    {
                      goto LABEL_39;
                    }

                    v27 = v24;
                  }

                  v28 = (a2 - 20);
                }

                sub_26222C8C8(v27, v28);
                goto LABEL_39;
              }

              v18 = a1;
              v19 = v13;
            }

            else
            {
              v18 = a1;
              if (v14 <= v16)
              {
                sub_26222C8C8(a1, v13);
                if (*(a2 - 4) <= v13[6])
                {
                  goto LABEL_26;
                }

                v18 = v13;
              }

              v19 = (a2 - 10);
            }

            sub_26222C8C8(v18, v19);
            goto LABEL_26;
          }

          v20 = a1[6];
          if (v20 > v13[6])
          {
            v21 = &a1[10 * (v10 >> 1)];
            if (v14 <= v20)
            {
              sub_26222C8C8(v21, a1);
              if (*(a2 - 4) <= a1[6])
              {
                goto LABEL_60;
              }

              v21 = a1;
            }

            v22 = a2 - 10;
            goto LABEL_34;
          }

          if (v14 > v20)
          {
            sub_26222C8C8(a1, v152);
            if (a1[6] > v13[6])
            {
              v21 = &a1[10 * (v10 >> 1)];
              v22 = a1;
LABEL_34:
              sub_26222C8C8(v21, v22);
            }
          }

LABEL_60:
          --a3;
          if (a4)
          {
            break;
          }

          v43 = a1[6];
          if (*(a1 - 4) > v43)
          {
            goto LABEL_63;
          }

          v157 = *a1;
          v61 = *(a1 + 2);
          *(a1 + 1) = 0;
          *(a1 + 2) = 0;
          *a1 = 0;
          if (v43 <= *(a2 - 4))
          {
            v64 = a1 + 10;
            do
            {
              v8 = v64;
              if (v64 >= a2)
              {
                break;
              }

              v65 = v64[6];
              v64 += 10;
            }

            while (v43 <= v65);
          }

          else
          {
            v62 = a1;
            do
            {
              v8 = v62 + 10;
              v63 = v62[16];
              v62 += 10;
            }

            while (v43 <= v63);
          }

          v66 = a2;
          if (v8 < a2)
          {
            v67 = a2;
            do
            {
              v66 = (v67 - 10);
              v68 = *(v67 - 4);
              v67 -= 10;
            }

            while (v43 > v68);
          }

          v69 = *(a1 + 7);
          while (v8 < v66)
          {
            sub_26222C8C8(v8, v66);
            do
            {
              v70 = v8[16];
              v8 += 10;
            }

            while (v43 <= v70);
            do
            {
              v71 = *(v66 - 4);
              v66 = (v66 - 40);
            }

            while (v43 > v71);
          }

          v72 = (v8 - 10);
          if (v8 - 10 != a1)
          {
            v73 = *a1;
            if (*a1)
            {
              *(a1 + 1) = v73;
              operator delete(v73);
              *a1 = 0;
              *(a1 + 1) = 0;
              *(a1 + 2) = 0;
            }

            *a1 = *(v8 - 10);
            *(a1 + 2) = *(v8 - 3);
            *v72 = 0;
            *(v8 - 4) = 0;
            *(v8 - 3) = 0;
            v74 = *(v8 - 2);
            a1[8] = *(v8 - 2);
            *(a1 + 3) = v74;
          }

          v75 = *v72;
          if (*v72)
          {
            *(v8 - 4) = v75;
            operator delete(v75);
          }

          a4 = 0;
          *(v8 - 10) = v157;
          *(v8 - 3) = v61;
          *(v8 - 4) = v43;
          *(v8 - 3) = v69;
        }

        v43 = a1[6];
LABEL_63:
        v156 = *a1;
        v44 = *(a1 + 2);
        *(a1 + 1) = 0;
        *(a1 + 2) = 0;
        *a1 = 0;
        v45 = a1;
        v46 = *(a1 + 7);
        do
        {
          v47 = v45;
          v45 += 10;
        }

        while (v47[16] > v43);
        v48 = a2;
        if (v47 == a1)
        {
          v51 = a2;
          while (v45 < v51)
          {
            v49 = v51 - 10;
            v52 = *(v51 - 4);
            v51 -= 10;
            if (v52 > v43)
            {
              goto LABEL_73;
            }
          }

          v49 = v51;
        }

        else
        {
          do
          {
            v49 = v48 - 10;
            v50 = *(v48 - 4);
            v48 -= 10;
          }

          while (v50 <= v43);
        }

LABEL_73:
        if (v45 >= v49)
        {
          v8 = v45;
        }

        else
        {
          v53 = v49;
          v8 = v45;
          do
          {
            sub_26222C8C8(v8, v53);
            do
            {
              v54 = v8[16];
              v8 += 10;
            }

            while (v54 > v43);
            do
            {
              v55 = *(v53 - 4);
              v53 = (v53 - 40);
            }

            while (v55 <= v43);
          }

          while (v8 < v53);
        }

        v56 = (v8 - 10);
        if (v8 - 10 != a1)
        {
          v57 = *a1;
          if (*a1)
          {
            *(a1 + 1) = v57;
            operator delete(v57);
            *a1 = 0;
            *(a1 + 1) = 0;
            *(a1 + 2) = 0;
          }

          *a1 = *(v8 - 10);
          *(a1 + 2) = *(v8 - 3);
          *v56 = 0;
          *(v8 - 4) = 0;
          *(v8 - 3) = 0;
          v58 = *(v8 - 2);
          a1[8] = *(v8 - 2);
          *(a1 + 3) = v58;
        }

        v59 = *v56;
        if (*v56)
        {
          *(v8 - 4) = v59;
          operator delete(v59);
        }

        *(v8 - 10) = v156;
        *(v8 - 3) = v44;
        *(v8 - 4) = v43;
        *(v8 - 3) = v46;
        if (v45 >= v49)
        {
          break;
        }

LABEL_90:
        sub_26222B7D4(a1, v8 - 10, a3, a4 & 1);
        a4 = 0;
      }

      v60 = sub_26222CA88(a1, (v8 - 10));
      if (sub_26222CA88(v8, a2))
      {
        break;
      }

      if (!v60)
      {
        goto LABEL_90;
      }
    }

    a2 = v8 - 10;
    if (!v60)
    {
      continue;
    }

    break;
  }
}

uint64_t *sub_26222C550(unint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (v9 + 1 > 0x666666666666666)
    {
      sub_2621CBEB0();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v11;
    }

    v23 = a1;
    if (v12)
    {
      sub_26222C77C(v12);
    }

    v13 = 40 * v9;
    v20 = 0;
    v21 = v13;
    v22 = v13;
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    sub_2621CC8B4(v13, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    v14 = *(a2 + 24);
    *(v13 + 32) = *(a2 + 32);
    *(v13 + 24) = v14;
    *&v22 = v22 + 40;
    v15 = a1[1];
    v16 = v21 + *a1 - v15;
    sub_26222C7D4(a1, *a1, v15, v16);
    v17 = *a1;
    *a1 = v16;
    v18 = a1[2];
    v19 = v22;
    *(a1 + 1) = v22;
    *&v22 = v17;
    *(&v22 + 1) = v18;
    v20 = v17;
    v21 = v17;
    result = sub_26222C864(&v20);
    v8 = v19;
  }

  else
  {
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    result = sub_2621CC8B4(v5, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    v7 = *(a2 + 24);
    *(v5 + 32) = *(a2 + 32);
    *(v5 + 24) = v7;
    v8 = v5 + 40;
    a1[1] = v5 + 40;
  }

  a1[1] = v8;
  return result;
}

void sub_26222C6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_26222C864(va);
  _Unwind_Resume(a1);
}

void sub_26222C6EC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 5);
        v6 -= 40;
        v7 = v8;
        if (v8)
        {
          *(v4 - 4) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_26222C77C(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_26222C7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v7 = *(v6 + 24);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 24) = v7;
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    do
    {
      v8 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v8;
        operator delete(v8);
      }

      v5 += 40;
    }

    while (v5 != a3);
  }
}

uint64_t sub_26222C864(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 40);
    *(a1 + 16) = v2 - 40;
    if (v4)
    {
      *(v2 - 32) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_26222C8C8(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v5 = *(a1 + 2);
  v4 = *(a1 + 3);
  *(a1 + 8) = 0uLL;
  *a1 = 0;
  v10 = v4;
  v11 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *a2 = 0uLL;
  *(a2 + 2) = 0;
  v6 = a2 + 24;
  v7 = *(a2 + 8);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 8) = v7;
  v8 = *a2;
  if (*a2)
  {
    *(a2 + 1) = v8;
    v9 = v3;
    operator delete(v8);
    v3 = v9;
  }

  *a2 = v3;
  *(a2 + 2) = v5;
  *v6 = v10;
  *(v6 + 2) = v11;
}

void sub_26222C970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 24);
  v9 = *(a3 + 24);
  if (v8 <= *(a1 + 24))
  {
    if (v9 > v8)
    {
      sub_26222C8C8(a2, a3);
      if (*(a2 + 24) > *(v7 + 24))
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 > v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      sub_26222C8C8(a1, v10);
      goto LABEL_10;
    }

    sub_26222C8C8(a1, a2);
    if (*(a3 + 24) > *(a2 + 24))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 24) > *(a3 + 24))
  {
    sub_26222C8C8(a3, a4);
    if (*(a3 + 24) > *(a2 + 24))
    {
      sub_26222C8C8(a2, a3);
      if (*(a2 + 24) > *(v7 + 24))
      {

        sub_26222C8C8(v7, a2);
      }
    }
  }
}

BOOL sub_26222CA88(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *(a1 + 64);
        v9 = *(a2 - 16);
        if (v8 > *(a1 + 24))
        {
          if (v9 <= v8)
          {
            sub_26222C8C8(a1, (a1 + 40));
            if (*(a2 - 16) <= *(v3 + 64))
            {
              return 1;
            }

            a1 = v3 + 40;
          }

          v5 = (a2 - 40);
          goto LABEL_31;
        }

        if (v9 <= v8)
        {
          return 1;
        }

        v6 = (a1 + 40);
        v7 = (a2 - 40);
        break;
      case 4:
        sub_26222C970(a1, a1 + 40, a1 + 80, a2 - 40);
        return 1;
      case 5:
        sub_26222C970(a1, a1 + 40, a1 + 80, a1 + 120);
        if (*(a2 - 16) <= *(v3 + 144))
        {
          return 1;
        }

        sub_26222C8C8((v3 + 120), (a2 - 40));
        if (*(v3 + 144) <= *(v3 + 104))
        {
          return 1;
        }

        sub_26222C8C8((v3 + 80), (v3 + 120));
        if (*(v3 + 104) <= *(v3 + 64))
        {
          return 1;
        }

        v6 = (v3 + 40);
        v7 = (v3 + 80);
        break;
      default:
        goto LABEL_16;
    }

    sub_26222C8C8(v6, v7);
    if (*(v3 + 64) > *(v3 + 24))
    {
      v5 = (v3 + 40);
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 16) > *(a1 + 24))
    {
      v5 = (a2 - 40);
LABEL_24:
      a1 = v3;
LABEL_31:
      sub_26222C8C8(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 80;
  v11 = *(a1 + 64);
  v12 = *(a1 + 104);
  if (v11 > *(a1 + 24))
  {
    if (v12 <= v11)
    {
      sub_26222C8C8(a1, (a1 + 40));
      if (*(v3 + 104) <= *(v3 + 64))
      {
        goto LABEL_36;
      }

      a1 = v3 + 40;
    }

    v13 = (v3 + 80);
    goto LABEL_35;
  }

  if (v12 > v11)
  {
    sub_26222C8C8((a1 + 40), (a1 + 80));
    if (*(v3 + 64) > *(v3 + 24))
    {
      v13 = (v3 + 40);
      a1 = v3;
LABEL_35:
      sub_26222C8C8(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 120;
  if (v3 + 120 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(v14 + 24);
    if (v17 > *(v10 + 24))
    {
      v18 = 0;
      v30 = *v14;
      v19 = *(v14 + 16);
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = 0;
      v20 = v15;
      v21 = *(v14 + 28);
      while (1)
      {
        v22 = v3 + v20;
        if (v18)
        {
          *(v22 + 128) = v18;
          operator delete(v18);
          *(v22 + 136) = 0;
        }

        *(v22 + 120) = *(v22 + 80);
        *(v22 + 80) = 0;
        *(v22 + 88) = 0;
        v23 = *(v22 + 96);
        v24 = *(v22 + 104);
        *(v22 + 96) = 0;
        *(v22 + 136) = v23;
        *(v22 + 144) = v24;
        *(v22 + 152) = *(v22 + 112);
        if (v20 == -80)
        {
          v26 = (v3 + 24);
          v27 = v3;
          goto LABEL_47;
        }

        v25 = v3 + v20;
        if (v17 <= *(v3 + v20 + 64))
        {
          break;
        }

        v18 = *(v22 + 80);
        v20 -= 40;
      }

      v26 = (v25 + 104);
      v27 = v25 + 80;
LABEL_47:
      v28 = *v27;
      if (*v27)
      {
        *(v27 + 8) = v28;
        operator delete(v28);
      }

      *v27 = v30;
      *(v27 + 16) = v19;
      *v26 = v17;
      *(v27 + 28) = v21;
      if (++v16 == 8)
      {
        return v14 + 40 == a2;
      }
    }

    v10 = v14;
    v15 += 40;
    v14 += 40;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_26222CDC8(float *a1, unsigned int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_26222D214(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v10 = *(a2 + 120);
  v9 = *(a2 + 128);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 128);
  *(a1 + 120) = v10;
  *(a1 + 128) = v9;
  if (v11)
  {
    sub_2621D1B78(v11);
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t sub_26222D2A8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EEC38;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    if (v11)
    {
      sub_2621D1B78(v11);
    }
  }

  else
  {
    *(a1 + 120) = v9;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

void sub_26222D380(uint64_t a1, __int128 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2874EEC90;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  *(a1 + 104) = *(a1 + 8) * v4;
  *(a1 + 112) = 0;
  sub_262223B08(v5, (a1 + 104));
}

void sub_26222E078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27)
{
  std::locale::~locale(&a21);
  sub_2621C57C8(&a27);
  v29 = *(v27 + 128);
  if (v29)
  {
    sub_2621D1B78(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26222E0D8(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 16);
  v2 = *(a1 + 16) * *(a1 + 8);
  memset(v18, 0, sizeof(v18));
  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 144);
    result = *v3;
    if (v2 >= 2)
    {
      v5 = v2 - 1;
      v6 = v3 + 1;
      do
      {
        v7 = *v6++;
        result += v7;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 144);
    result = *v10;
    v11 = 1;
    v12 = v1;
    do
    {
      v13 = *(v18 + v11) + 1;
      *(v18 + v11) = v13;
      v14 = *v12--;
      if (v13 != v14)
      {
        break;
      }

      *(v18 + v11--) = 0;
    }

    while (v11 != -1);
    if (v2 >= 2)
    {
      for (i = 1; i != v2; ++i)
      {
        v16 = 0;
        result += v10[v9 * *(&v18[0] + 1) + v8 * *&v18[0]];
        do
        {
          v17 = *(v18 + v16 * 8 + 8) + 1;
          *(v18 + v16 * 8 + 8) = v17;
          if (v17 != v1[v16])
          {
            break;
          }

          *(v18 + v16 * 8 + 8) = 0;
          --v16;
        }

        while (v16 != -2);
      }
    }
  }

  return result;
}

_OWORD *sub_26222E218(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  sub_262223F30((a1 + 3), a2);
  sub_26222320C(a1 + 200, a3);
  v5 = 0;
  v6 = (a1 + 56);
  v7 = 1;
  do
  {
    v8 = *(v6 + v5);
    v9 = *(a1 + v5 + 26);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v7 = 0;
    v5 = 1;
  }

  while (v8 == v9);
  if (v8 != v9)
  {
    v10 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v11 = sub_2621D552C(v10, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../expression/exp_element_binary.hpp", 127);
    sub_2621D552C(v11, " ", 1);
    v12 = MEMORY[0x277D82670];
    v13 = MEMORY[0x266727260](MEMORY[0x277D82670], 64);
    sub_2621D552C(v13, " ", 1);
    sub_2621D552C(v13, "TensorBinaryExp", 15);
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v14 = std::locale::use_facet(&v18, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v18);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6B98("err", "Binary Exp shape should equal");
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v15 = std::locale::use_facet(&v18, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v18);
    std::ostream::put();
    std::ostream::flush();
  }

  v16 = *(a1 + 72);
  *a1 = *v6;
  a1[1] = v16;
  a1[2] = *(a1 + 88);
  return a1;
}

void sub_26222E44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  v10[25] = &unk_2874EEC90;
  v12 = v10[41];
  if (v12)
  {
    sub_2621D1B78(v12);
  }

  v10[6] = &unk_2874EF0B8;
  v13 = v10[22];
  if (v13)
  {
    sub_2621D1B78(v13);
  }

  _Unwind_Resume(a1);
}

void sub_26222E4BC(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2874EF0B8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  *(a1 + 104) = *(a1 + 8) * v4;
  *(a1 + 112) = 0;
  sub_262224B84(v5, (a1 + 104));
}

void sub_26222E848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  v27 = *(v25 + 128);
  if (v27)
  {
    sub_2621D1B78(v27);
  }

  _Unwind_Resume(exception_object);
}

void *sub_26222E8A8(void *a1)
{
  a1[25] = &unk_2874EEC90;
  v2 = a1[41];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[6] = &unk_2874EF0B8;
  v3 = a1[22];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  return a1;
}

uint64_t *sub_26222E924(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26222E9D8(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_2621CBEB0();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  v16 = a1;
  if (v5)
  {
    sub_26222C77C(v5);
  }

  v6 = 40 * v2;
  *(&v15 + 1) = 0;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = *(a2 + 24);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 24) = v7;
  *&v15 = 40 * v2 + 40;
  v8 = a1[1];
  v9 = 40 * v2 + *a1 - v8;
  sub_26222C7D4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v15;
  *(a1 + 1) = v15;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v14[0] = v10;
  v14[1] = v10;
  sub_26222C864(v14);
  return v13;
}

uint64_t sub_26222EB0C(uint64_t a1)
{
  v4 = (a1 + 56);
  sub_2621E1CB0(&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_26222EB58(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v2[3] = &unk_2874EF0B8;
      v4 = v2[19];
      if (v4)
      {
        sub_2621D1B78(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_26222EBDC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v159 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  if (v7 == v8)
  {
    if (*(a2 + 184) && *(a2 + 336) == 1)
    {
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v9 = *(a1 + 104);
      v10 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v9)
        {
          v11 = *(a2 + 192);
          v12 = *(a2 + 344);
          do
          {
            v13 = *v11++;
            v14 = v13;
            v15 = *v12++;
            *v10++ = v14 * v15;
            --v9;
          }

          while (v9);
        }
      }

      else if (v9)
      {
        v101 = 0;
        v102 = *(a1 + 56);
        v103 = *(a1 + 64);
        v104 = *(a2 + 192);
        v105 = *(a2 + 344);
        do
        {
          v106 = 0;
          v10[v103 * *(&v144 + 1) + v102 * v144] = *(v104 + 4 * v101) * *(v105 + 8 * v101);
          do
          {
            v107 = *(&v144 + v106 + 8) + 1;
            *(&v144 + v106 + 8) = v107;
            if (v107 != *(a1 + 16 + v106))
            {
              break;
            }

            *(&v144 + v106 + 8) = 0;
            v106 -= 8;
          }

          while (v106 != -16);
          ++v101;
        }

        while (v101 != v9);
      }
    }

    else
    {
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v45 = *(a1 + 104);
      v46 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v45)
        {
          for (i = 0; i != v45; ++i)
          {
            v48 = sub_26222F698(a2, i, v144, *(&v144 + 1));
            v49 = 0;
            *(v46 + 4 * i) = v48;
            do
            {
              v50 = *(&v144 + v49 + 8) + 1;
              *(&v144 + v49 + 8) = v50;
              if (v50 != *(a1 + 16 + v49))
              {
                break;
              }

              *(&v144 + v49 + 8) = 0;
              v49 -= 8;
            }

            while (v49 != -16);
          }
        }
      }

      else if (v45)
      {
        v77 = 0;
        v78 = *(a1 + 56);
        v79 = *(a1 + 64);
        v80 = a1 + 16;
        do
        {
          v81 = v78 * v144;
          v82 = v46 + 4 * v79 * *(&v144 + 1);
          v83 = sub_26222F698(a2, v77, v144, *(&v144 + 1));
          v84 = 0;
          *(v82 + 4 * v81) = v83;
          do
          {
            v85 = *(&v144 + v84 + 8) + 1;
            *(&v144 + v84 + 8) = v85;
            if (v85 != *(v80 + v84))
            {
              break;
            }

            *(&v144 + v84 + 8) = 0;
            v84 -= 8;
          }

          while (v84 != -16);
          ++v77;
        }

        while (v77 != v45);
      }
    }
  }

  else
  {
    if (*(a2 + 184) && *(a2 + 336) == 1)
    {
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v136 = 0u;
      v137 = 0u;
      v135 = 0u;
      sub_2621D96E4(&v144, v5, a2, &v135);
      v16 = 0;
      v17 = &v135;
      v18 = 1;
      do
      {
        v19 = *v17;
        v20 = *(v5 + v16);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v18 = 0;
        v17 = &v135 + 1;
        v16 = 1;
      }

      while (v19 == v20);
      if (v19 != v20)
      {
        v21 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v22 = sub_2621D552C(v21, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v22, " ", 1);
        v23 = MEMORY[0x277D82670];
        v24 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v24, " ", 1);
        sub_2621D552C(v24, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v25 = std::locale::use_facet(v141, MEMORY[0x277D82680]);
        (v25->__vftable[2].~facet_0)(v25, 10);
        std::locale::~locale(v141);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v23 + *(*v23 - 24)));
        v26 = std::locale::use_facet(v141, MEMORY[0x277D82680]);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(v141);
        std::ostream::put();
        std::ostream::flush();
      }

      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      *&v141[0].__locale_ = 0u;
      v138 = 0u;
      v139 = 0u;
      v27 = *(a1 + 104);
      v28 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v27)
        {
          v29 = 0;
          v31 = *(&v145 + 1);
          v30 = v146;
          v32 = (v146 - *(&v145 + 1)) >> 3;
          if (v32 <= 1)
          {
            v32 = 1;
          }

          v33 = *(a2 + 192);
          v34 = *(a2 + 344);
          do
          {
            v138 = *&v141[0].__locale_;
            if (v30 != v31)
            {
              v35 = v31;
              v36 = v32;
              do
              {
                v37 = *v35++;
                *(&v138 + v37) = 0;
                --v36;
              }

              while (v36);
            }

            v38 = 0;
            v39 = 0;
            v40 = &v138;
            v41 = 1;
            do
            {
              v42 = v41;
              v39 += *(&v156 + v38) * *v40;
              v40 = (&v138 + 8);
              v38 = 1;
              v41 = 0;
            }

            while ((v42 & 1) != 0);
            *(v28 + 4 * v29) = *(v33 + 4 * v39) * *(v34 + 8 * v39);
            for (j = 1; j != -1; --j)
            {
              v44 = (v141[j].__locale_ + 1);
              v141[j].__locale_ = v44;
              if (v44 != *(&v135 + j * 8))
              {
                break;
              }

              v141[j].__locale_ = 0;
            }

            ++v29;
          }

          while (v29 != v27);
        }
      }

      else if (v27)
      {
        v108 = 0;
        v110 = *(&v145 + 1);
        v109 = v146;
        v111 = (v146 - *(&v145 + 1)) >> 3;
        if (v111 <= 1)
        {
          v111 = 1;
        }

        v112 = *(a1 + 56);
        v113 = *(a1 + 64);
        v114 = *(a2 + 192);
        v115 = *(a2 + 344);
        do
        {
          locale = v141[0].__locale_;
          v116 = v141[1].__locale_;
          v138 = *&v141[0].__locale_;
          if (v109 != v110)
          {
            v118 = v110;
            v119 = v111;
            do
            {
              v120 = *v118++;
              *(&v138 + v120) = 0;
              --v119;
            }

            while (v119);
          }

          v121 = 0;
          v122 = 0;
          v123 = &v138;
          v124 = 1;
          do
          {
            v125 = v124;
            v122 += *(&v156 + v121) * *v123;
            v123 = (&v138 + 8);
            v121 = 1;
            v124 = 0;
          }

          while ((v125 & 1) != 0);
          *(v28 + 4 * v116 * v113 + 4 * locale * v112) = *(v114 + 4 * v122) * *(v115 + 8 * v122);
          for (k = 1; k != -1; --k)
          {
            v127 = (v141[k].__locale_ + 1);
            v141[k].__locale_ = v127;
            if (v127 != *(&v135 + k * 8))
            {
              break;
            }

            v141[k].__locale_ = 0;
          }

          ++v108;
        }

        while (v108 != v27);
      }
    }

    else
    {
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v136 = 0u;
      v137 = 0u;
      v135 = 0u;
      sub_2621D96E4(&v144, v5, a2, &v135);
      v51 = 0;
      v52 = &v135;
      v53 = 1;
      do
      {
        v54 = *v52;
        v55 = *(v5 + v51);
        if ((v53 & 1) == 0)
        {
          break;
        }

        v53 = 0;
        v52 = &v135 + 1;
        v51 = 1;
      }

      while (v54 == v55);
      if (v54 != v55)
      {
        v56 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v57 = sub_2621D552C(v56, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v57, " ", 1);
        v58 = MEMORY[0x277D82670];
        v59 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v59, " ", 1);
        sub_2621D552C(v59, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v59 + *(*v59 - 24)));
        v60 = std::locale::use_facet(v141, MEMORY[0x277D82680]);
        (v60->__vftable[2].~facet_0)(v60, 10);
        std::locale::~locale(v141);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v58 + *(*v58 - 24)));
        v61 = std::locale::use_facet(v141, MEMORY[0x277D82680]);
        (v61->__vftable[2].~facet_0)(v61, 10);
        std::locale::~locale(v141);
        std::ostream::put();
        std::ostream::flush();
      }

      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      *&v141[0].__locale_ = 0u;
      v138 = 0u;
      v139 = 0u;
      v62 = *(a1 + 104);
      v134 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v62)
        {
          v63 = 0;
          v65 = *(&v145 + 1);
          v64 = v146;
          v66 = (v146 - *(&v145 + 1)) >> 3;
          if (v66 <= 1)
          {
            v66 = 1;
          }

          v132 = v66;
          do
          {
            v138 = *&v141[0].__locale_;
            if (v64 != v65)
            {
              v67 = v65;
              v68 = v132;
              do
              {
                v69 = *v67++;
                *(&v138 + v69) = 0;
                --v68;
              }

              while (v68);
            }

            v70 = 0;
            v71 = 0;
            v72 = &v138;
            v73 = 1;
            do
            {
              v74 = v73;
              v71 += *(&v156 + v70) * *v72;
              v72 = (&v138 + 8);
              v70 = 1;
              v73 = 0;
            }

            while ((v74 & 1) != 0);
            *(v134 + 4 * v63) = sub_26222F698(a2, v71, v138, *(&v138 + 1));
            for (m = 1; m != -1; --m)
            {
              v76 = (v141[m].__locale_ + 1);
              v141[m].__locale_ = v76;
              if (v76 != *(&v135 + m * 8))
              {
                break;
              }

              v141[m].__locale_ = 0;
            }

            ++v63;
          }

          while (v63 != v62);
        }
      }

      else if (v62)
      {
        v86 = 0;
        v131 = v146;
        v133 = *(&v145 + 1);
        if (((v146 - *(&v145 + 1)) >> 3) <= 1)
        {
          v87 = 1;
        }

        else
        {
          v87 = (v146 - *(&v145 + 1)) >> 3;
        }

        v130 = *(a1 + 64);
        v128 = v87;
        v129 = *(a1 + 56);
        do
        {
          v88 = v62;
          v90 = v141[0].__locale_;
          v89 = v141[1].__locale_;
          v138 = *&v141[0].__locale_;
          if (v131 != v133)
          {
            v91 = v133;
            v92 = v128;
            do
            {
              v93 = *v91++;
              *(&v138 + v93) = 0;
              --v92;
            }

            while (v92);
          }

          v94 = 0;
          v95 = 0;
          v96 = &v138;
          v97 = 1;
          do
          {
            v98 = v97;
            v95 += *(&v156 + v94) * *v96;
            v96 = (&v138 + 8);
            v94 = 1;
            v97 = 0;
          }

          while ((v98 & 1) != 0);
          *(v134 + 4 * v130 * v89 + 4 * v129 * v90) = sub_26222F698(a2, v95, v138, *(&v138 + 1));
          for (n = 1; n != -1; --n)
          {
            v100 = (v141[n].__locale_ + 1);
            v141[n].__locale_ = v100;
            if (v100 != *(&v135 + n * 8))
            {
              break;
            }

            v141[n].__locale_ = 0;
          }

          ++v86;
          v62 = v88;
        }

        while (v86 != v88);
      }
    }

    sub_2621C57C8(&v144);
  }
}

void sub_26222F664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  std::locale::~locale(&a27);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

float sub_26222F698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 184) == 1)
  {
    v4 = (*(a1 + 192) + 4 * a2);
  }

  else
  {
    v4 = (*(a1 + 192) + 4 * *(a1 + 112) * a4 + 4 * *(a1 + 104) * a3);
  }

  v5 = *v4;
  if (*(a1 + 336) == 1)
  {
    v6 = (*(a1 + 344) + 8 * a2);
  }

  else
  {
    v6 = (*(a1 + 344) + 8 * *(a1 + 264) * a4 + 8 * *(a1 + 256) * a3);
  }

  return v5 * *v6;
}

void sub_26222F70C(void *a1)
{
  *a1 = &unk_2874EEC38;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_26222F778(void *a1)
{
  *a1 = &unk_2874EEC38;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

uint64_t sub_26222F7C4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 963);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "ascontiguous", 12);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v14);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v14);
    std::ostream::put();
    std::ostream::flush();
  }

  if (*(a2 + 136) == 1)
  {

    return sub_262223F30(a1, a2);
  }

  else
  {

    return sub_262222C40(a1, a2);
  }
}

float32x2_t **sub_26222F9E4(void *a1, double a2)
{
  v2 = 2654435769;
  if (*&a2 == 0.0)
  {
    v3 = 2654435769;
  }

  else
  {
    v3 = LODWORD(a2) + 2654435769;
  }

  if (*(&a2 + 1) != 0.0)
  {
    v2 = HIDWORD(a2) + 2654435769;
  }

  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = (v2 + (v3 << 6) + (v3 >> 2)) ^ v3;
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v5;
    if (v5 >= *&v4)
    {
      v8 = v5 % *&v4;
    }
  }

  else
  {
    v8 = v5 & (*&v4 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    do
    {
      v11 = result[1];
      if (*&v11 == v5)
      {
        v12 = vceq_f32(result[2], *&a2);
        if ((vpmin_u32(v12, v12).u32[0] & 0x80000000) != 0)
        {
          return result;
        }
      }

      else
      {
        if (v7 > 1)
        {
          if (*&v11 >= *&v4)
          {
            *&v11 %= *&v4;
          }
        }

        else
        {
          *&v11 &= *&v4 - 1;
        }

        if (*&v11 != v8)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_26222FAD4(void *a1, void *__p)
{
  v2 = a1[1];
  v3 = __p[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *(*a1 + 8 * v3);
  do
  {
    v6 = v5;
    v5 = *v5;
  }

  while (v5 != __p);
  if (v6 == a1 + 2)
  {
    goto LABEL_18;
  }

  v7 = v6[1];
  if (v4.u32[0] > 1uLL)
  {
    if (v7 >= *&v2)
    {
      v7 %= *&v2;
    }
  }

  else
  {
    v7 &= *&v2 - 1;
  }

  if (v7 != v3)
  {
LABEL_18:
    if (!*__p)
    {
      goto LABEL_19;
    }

    v8 = *(*__p + 8);
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

    if (v8 != v3)
    {
LABEL_19:
      *(*a1 + 8 * v3) = 0;
    }
  }

  v9 = *__p;
  if (*__p)
  {
    v10 = *(v9 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v10 >= *&v2)
      {
        v10 %= *&v2;
      }
    }

    else
    {
      v10 &= *&v2 - 1;
    }

    if (v10 != v3)
    {
      *(*a1 + 8 * v10) = v6;
      v9 = *__p;
    }
  }

  *v6 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
}

double sub_26222FC00(unint64_t *a1, double *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_262231E24(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++a1[5];
  return result;
}

void sub_26222FC8C(int64x2_t *result, char *a2, uint64_t a3, void **a4, char *a5, void **a6, char *a7)
{
  i = a7;
  v8 = a6;
  v9 = a4;
  v11 = a5;
  if (a7 == a5)
  {
    v12 = 0;
  }

  else
  {
    v12 = ((a7 - *a6) >> 3) + ((a6 - a4) << 6) - ((a5 - *a4) >> 3);
  }

  v13 = result[2].u64[0];
  v14 = v13 >> 9;
  v15 = result->i64[1];
  v16 = result[1].i64[0];
  v17 = (v15 + 8 * (v13 >> 9));
  v18 = v16 - v15;
  if (v16 == v15)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v17 + 8 * (result[2].i64[0] & 0x1FF);
  }

  if (a3 == v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = ((a3 - *a2) >> 3) + ((a2 - v17) << 6) - ((v19 - *v17) >> 3);
  }

  v21 = result[2].i64[1];
  if (v20 >= v21 - v20)
  {
    v32 = (v18 << 6) - 1;
    if (v16 == v15)
    {
      v32 = 0;
    }

    v33 = v13 + v21;
    v34 = v32 - v33;
    if (v12 > v34)
    {
      sub_262231890(result, v12 - v34);
      v11 = a5;
      v21 = result[2].i64[1];
      v15 = result->i64[1];
      v16 = result[1].i64[0];
      v33 = result[2].i64[0] + v21;
    }

    v36 = (v15 + 8 * (v33 >> 9));
    if (v16 == v15)
    {
      v37 = 0;
    }

    else
    {
      v37 = (*v36 + 8 * (v33 & 0x1FF));
    }

    v38 = v21 - v20;
    if (v21 - v20 >= v12)
    {
      v40 = v37;
      v41 = v36;
      if (!v12)
      {
        return;
      }

      goto LABEL_68;
    }

    if (v38 >= v12 >> 1)
    {
      v39 = v21 - v20 - v12 + ((i - *v8) >> 3);
      if (v39 >= 1)
      {
        v8 += v39 >> 9;
        goto LABEL_50;
      }

      v44 = 511 - v39;
      v45 = ~v44;
      v8 -= v44 >> 9;
    }

    else
    {
      if (!v38)
      {
        v8 = v9;
        v43 = v11;
        goto LABEL_58;
      }

      v39 = v38 + ((v11 - *v9) >> 3);
      if (v39 >= 1)
      {
        v8 = &v9[v39 >> 9];
LABEL_50:
        v43 = *v8 + 8 * (v39 & 0x1FF);
        goto LABEL_58;
      }

      v46 = 511 - v39;
      v45 = ~v46;
      v8 = &v9[-(v46 >> 9)];
    }

    v43 = *v8 + 8 * (v45 & 0x1FF);
LABEL_58:
    if (v43 == i)
    {
      v40 = v37;
      v41 = v36;
    }

    else
    {
      v47 = v8;
      v48 = v43;
      v41 = v36;
      v40 = v37;
      do
      {
        *v40++ = *v48;
        if ((v40 - *v41) == 4096)
        {
          v49 = *(v41 + 1);
          v41 += 8;
          v40 = v49;
        }

        v48 += 8;
        if (v48 - *v47 == 4096)
        {
          v50 = v47[1];
          ++v47;
          v48 = v50;
        }

        ++result[2].i64[1];
      }

      while (v48 != i);
    }

    i = v43;
    v12 = v38;
    if (!v38)
    {
      return;
    }

LABEL_68:
    v51 = (&v37[-*v36] >> 3) - v12;
    if (v51 < 1)
    {
      v54 = 511 - v51;
      v52 = &v36[-8 * (v54 >> 9)];
      v53 = (*v52 + 8 * (~v54 & 0x1FF));
    }

    else
    {
      v52 = &v36[8 * (v51 >> 9)];
      v53 = (*v52 + 8 * (v51 & 0x1FF));
    }

    if (v53 != v37)
    {
      v55 = v52;
      v56 = v53;
      do
      {
        *v40++ = *v56;
        if ((v40 - *v41) == 4096)
        {
          v57 = *(v41 + 1);
          v41 += 8;
          v40 = v57;
        }

        v56 += 8;
        if (&v56[-*v55] == 4096)
        {
          v58 = *(v55 + 1);
          v55 += 8;
          v56 = v58;
        }

        ++result[2].i64[1];
      }

      while (v56 != v37);
    }

    if (v12 < v38)
    {
      v59 = (&v37[-*v36] >> 3) - v38;
      if (v59 < 1)
      {
        v62 = 511 - v59;
        v60 = &v36[-8 * (v62 >> 9)];
        v61 = *v60 + 8 * (~v62 & 0x1FF);
      }

      else
      {
        v60 = &v36[8 * (v59 >> 9)];
        v61 = *v60 + 8 * (v59 & 0x1FF);
      }

      __srca = v11;
      if (v60 == v52)
      {
        v74 = v61;
      }

      else
      {
        v64 = *v52;
        v63 = v52 - 8;
        sub_262231CA8(v155, v64, v53, v36, v37);
        v65 = *&v155[8];
        v66 = *&v155[16];
        if (v63 != v60)
        {
          v67 = **&v155[8];
          do
          {
            v68 = *v63;
            v69 = (*v63 + 4096);
            while (1)
            {
              v70 = v66 - v67;
              if ((v69 - v68) >> 3 >= v70 >> 3)
              {
                v71 = v70 >> 3;
              }

              else
              {
                v71 = (v69 - v68) >> 3;
              }

              v69 -= 8 * v71;
              v66 -= 8 * v71;
              if (v71)
              {
                memmove(v66, v69, 8 * v71);
              }

              if (v69 == v68)
              {
                break;
              }

              v72 = *(v65 - 1);
              v65 -= 8;
              v67 = v72;
              v66 = v72 + 4096;
            }

            v67 = *v65;
            if ((*v65 + 4096) == v66)
            {
              v73 = *(v65 + 1);
              v65 += 8;
              v67 = v73;
              v66 = v73;
            }

            v63 -= 8;
          }

          while (v63 != v60);
        }

        v53 = (*v63 + 4096);
        v74 = v61;
        v36 = v65;
        v37 = v66;
      }

      sub_262231CA8(v155, v74, v53, v36, v37);
      v37 = *&v155[16];
      v36 = *&v155[8];
      v11 = __srca;
    }

    v75 = v11;
    if (v9 == v8)
    {
      v76 = v11;
      v77 = i;
    }

    else
    {
      v79 = *v8;
      v78 = v8 - 1;
      sub_262231CA8(v155, v79, i, v36, v37);
      v80 = *&v155[8];
      v81 = *&v155[16];
      if (v78 != v9)
      {
        v82 = **&v155[8];
        do
        {
          v83 = *v78;
          v84 = *v78 + 4096;
          while (1)
          {
            v85 = v81 - v82;
            if ((v84 - v83) >> 3 >= v85 >> 3)
            {
              v86 = v85 >> 3;
            }

            else
            {
              v86 = (v84 - v83) >> 3;
            }

            v84 -= 8 * v86;
            v81 -= 8 * v86;
            if (v86)
            {
              memmove(v81, v84, 8 * v86);
            }

            if (v84 == v83)
            {
              break;
            }

            v87 = *(v80 - 1);
            v80 -= 8;
            v82 = v87;
            v81 = v87 + 4096;
          }

          v82 = *v80;
          if ((*v80 + 4096) == v81)
          {
            v88 = *(v80 + 1);
            v80 += 8;
            v82 = v88;
            v81 = v88;
          }

          --v78;
        }

        while (v78 != v9);
      }

      v77 = *v78 + 4096;
      v76 = v75;
      v36 = v80;
      v37 = v81;
    }

    sub_262231CA8(v155, v76, v77, v36, v37);
    return;
  }

  if (v12 > v13)
  {
    v22 = (v18 << 6) - 1;
    v23 = v16 - v15;
    if (v16 == v15)
    {
      v24 = 0;
    }

    else
    {
      v24 = v22;
    }

    if (v16 == v15)
    {
      v25 = v12 - v13 + 1;
    }

    else
    {
      v25 = v12 - v13;
    }

    if ((v25 & 0x1FF) != 0)
    {
      v26 = (v25 >> 9) + 1;
    }

    else
    {
      v26 = v25 >> 9;
    }

    v27 = v24 - (v21 + v13);
    if (v26 >= v27 >> 9)
    {
      v28 = v27 >> 9;
    }

    else
    {
      v28 = v26;
    }

    if (v26 <= v27 >> 9)
    {
      result[2].i64[0] = v13 + (v28 << 9);
      for (i = a7; v28; --v28)
      {
        v42 = result[1].i64[0];
        *v155 = *(v42 - 8);
        result[1].i64[0] = v42 - 8;
        sub_2622316F0(result, v155);
      }
    }

    else
    {
      v29 = v26 - v28;
      v30 = result[1].i64[1] - result->i64[0];
      if (v26 - v28 > (v30 >> 3) - (v23 >> 3))
      {
        if (v30 >> 2 <= v29 + (v23 >> 3))
        {
          v31 = v29 + (v23 >> 3);
        }

        else
        {
          v31 = v30 >> 2;
        }

        v157 = result;
        if (v31)
        {
          sub_2622317F8(v31);
        }

        memset(v155, 0, sizeof(v155));
        v156 = 0;
        operator new();
      }

      if (v29)
      {
        if (v15 != result->i64[0])
        {
          operator new();
        }

        operator new();
      }

      i = a7;
      for (result[2].i64[0] = v13 + (v28 << 9); v28; --v28)
      {
        v89 = result[1].i64[0];
        *v155 = *(v89 - 8);
        result[1].i64[0] = v89 - 8;
        sub_2622316F0(result, v155);
      }
    }

    v13 = result[2].u64[0];
    v15 = result->i64[1];
    v16 = result[1].i64[0];
    v14 = v13 >> 9;
    v11 = a5;
  }

  v90 = (v15 + 8 * v14);
  if (v16 == v15)
  {
    v91 = 0;
  }

  else
  {
    v91 = &(*v90)[8 * (v13 & 0x1FF)];
  }

  if (v12 <= v20)
  {
    v93 = v91;
    v94 = (v15 + 8 * v14);
    if (!v12)
    {
      return;
    }

    goto LABEL_149;
  }

  if (v20 >= v12 >> 1)
  {
    v92 = v12 - v20 + ((v11 - *v9) >> 3);
    if (v92 >= 1)
    {
      v9 += v92 >> 9;
      goto LABEL_134;
    }

    v96 = 511 - v92;
    v97 = ~v96;
    v9 -= v96 >> 9;
  }

  else
  {
    if (!v20)
    {
      v9 = v8;
      v95 = i;
      goto LABEL_139;
    }

    v92 = ((i - *v8) >> 3) - v20;
    if (v92 >= 1)
    {
      v9 = &v8[v92 >> 9];
LABEL_134:
      v95 = *v9 + 8 * (v92 & 0x1FF);
      goto LABEL_139;
    }

    v98 = 511 - v92;
    v97 = ~v98;
    v9 = &v8[-(v98 >> 9)];
  }

  v95 = *v9 + 8 * (v97 & 0x1FF);
LABEL_139:
  if (v95 == v11)
  {
    v93 = v91;
    v94 = v90;
  }

  else
  {
    v99 = v9;
    v100 = v95;
    v94 = v90;
    v93 = v91;
    do
    {
      if (v93 == *v94)
      {
        v101 = *--v94;
        v93 = (v101 + 4096);
      }

      if (v100 == *v99)
      {
        v102 = *--v99;
        v100 = (v102 + 4096);
      }

      v103 = *(v100 - 1);
      v100 -= 8;
      *(v93 - 1) = v103;
      v93 -= 8;
      result[2] = vaddq_s64(result[2], xmmword_2623A7860);
    }

    while (v100 != v11);
  }

  v11 = v95;
  v12 = v20;
  if (v20)
  {
LABEL_149:
    __srcb = v11;
    v150 = v90;
    v104 = sub_262231B50(v90, v91, v12);
    v106 = v104;
    v107 = v105;
    if (v91 != v105)
    {
      v108 = v104;
      v109 = v105;
      do
      {
        if (v93 == *v94)
        {
          v110 = *--v94;
          v93 = (v110 + 4096);
        }

        if (v109 == *v108)
        {
          v111 = *--v108;
          v109 = (v111 + 4096);
        }

        v112 = *(v109 - 1);
        v109 -= 8;
        *(v93 - 1) = v112;
        v93 -= 8;
        result[2] = vaddq_s64(result[2], xmmword_2623A7860);
      }

      while (v109 != v91);
    }

    if (v12 >= v20)
    {
      v117 = v150;
      v116 = a7;
    }

    else
    {
      v113 = sub_262231B50(v150, v91, v20);
      if (v106 == v113)
      {
        sub_262231D64(v155, v107, v114, v150, v91);
        v115 = *&v155[8];
        v116 = a7;
      }

      else
      {
        v118 = v113;
        v148 = v8;
        v149 = v114;
        v120 = *v106;
        v119 = (v106 + 1);
        sub_262231D64(v155, v107, (v120 + 4096), v150, v91);
        v121 = *&v155[8];
        if (v119 != v118)
        {
          do
          {
            v122 = v118;
            v123 = 0;
            v124 = *v119;
            v125 = *(&v121 + 1);
            v126 = v121;
            v127 = *v121;
            while (1)
            {
              v128 = v127 - v125 + 4096;
              if ((4096 - v123) >> 3 >= v128 >> 3)
              {
                v129 = v128 >> 3;
              }

              else
              {
                v129 = (4096 - v123) >> 3;
              }

              v130 = 8 * v129;
              if (v129)
              {
                memmove(v125, (v124 + v123), 8 * v129);
              }

              v123 += 8 * v129;
              if (v123 == 4096)
              {
                break;
              }

              v131 = v126[1];
              ++v126;
              v127 = v131;
              v125 = v131;
            }

            v132 = &v125[v130];
            if ((*v126 + 4096) == &v125[v130])
            {
              v133 = v126[1];
              ++v126;
              v132 = v133;
            }

            v118 = v122;
            *&v121 = v126;
            *(&v121 + 1) = v132;
            ++v119;
          }

          while (v119 != v122);
        }

        sub_262231D64(v155, *v119, v149, v121, *(&v121 + 1));
        v115 = *&v155[8];
        v116 = a7;
        v8 = v148;
      }

      v91 = *(&v115 + 1);
      v117 = v115;
    }

    if (v9 == v8)
    {
      v134 = __srcb;
      v135 = v116;
      v136 = v91;
    }

    else
    {
      v138 = *v9;
      v137 = v9 + 1;
      sub_262231D64(v155, __srcb, v138 + 4096, v117, v91);
      v139 = *&v155[8];
      v140 = *&v155[16];
      if (v137 != v8)
      {
        v141 = **&v155[8];
        do
        {
          v142 = 0;
          v143 = *v137;
          while (1)
          {
            v144 = v141 - v140 + 4096;
            if ((4096 - v142) >> 3 >= v144 >> 3)
            {
              v145 = v144 >> 3;
            }

            else
            {
              v145 = (4096 - v142) >> 3;
            }

            if (v145)
            {
              memmove(v140, &v143[v142], 8 * v145);
            }

            v142 += 8 * v145;
            if (v142 == 4096)
            {
              break;
            }

            v146 = v139[1];
            ++v139;
            v141 = v146;
            v140 = v146;
          }

          v140 += 8 * v145;
          v141 = *v139;
          if (*v139 + 4096 == v140)
          {
            v147 = v139[1];
            ++v139;
            v141 = v147;
            v140 = v147;
          }

          ++v137;
        }

        while (v137 != v8);
      }

      v134 = *v137;
      v135 = v116;
      v117 = v139;
      v136 = v140;
    }

    sub_262231D64(v155, v134, v135, v117, v136);
  }
}

void sub_262230820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_262230870(void *a1, double a2)
{
  v3 = sub_26222F9E4(a1, a2);
  if (v3)
  {

    sub_26222FAD4(a1, v3);
  }
}

void sub_2622308BC(uint64_t **a1, unint64_t a2)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= a2)
    {
      v10 = v5[1];
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
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      sub_2621C608C(v3, v5);

      operator delete(v5);
    }
  }
}

float32x2_t *sub_262230990(float *a1, float32x2_t **a2, double a3)
{
  v3 = 2654435769;
  v4 = LODWORD(a3) + 2654435769;
  if (*&a3 == 0.0)
  {
    v4 = 2654435769;
  }

  if (*(&a3 + 1) != 0.0)
  {
    v3 = HIDWORD(a3) + 2654435769;
  }

  v5 = (v3 + (v4 << 6) + (v4 >> 2)) ^ v4;
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v6)
    {
      v9 = v5 % *&v6;
    }
  }

  else
  {
    v9 = v5 & (*&v6 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (*&v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (*&v12 >= *&v6)
      {
        *&v12 %= *&v6;
      }
    }

    else
    {
      *&v12 &= *&v6 - 1;
    }

    if (*&v12 != v9)
    {
      goto LABEL_22;
    }

LABEL_21:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  v13 = vceq_f32(v11[2], *&a3);
  if ((vpmin_u32(v13, v13).u32[0] & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  return v11;
}

uint64_t sub_262230DD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = (8 * a3) >> 3;
  *a1 = 0u;
  if (!(8 * a3))
  {
    v6 = 0;
    v7 = 0;
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  sub_262231890(a1, (8 * a3) >> 3);
  v7 = *(a1 + 40);
  v8 = *(a1 + 8);
  v9 = *(a1 + 32) + v7;
  v6 = (v8 + 8 * (v9 >> 9));
  if (*(a1 + 16) == v8)
  {
    goto LABEL_5;
  }

  v10 = *v6 + 8 * (v9 & 0x1FF);
LABEL_6:
  v11 = sub_262231B50(v6, v10, v5);
  while (v10 != v12)
  {
    v13 = (v6 == v11 ? v12 : *v6 + 4096);
    if (v10 == v13)
    {
      v13 = v10;
    }

    else
    {
      v14 = v10;
      do
      {
        v15 = *a2++;
        *v14++ = v15;
      }

      while (v14 != v13);
      v7 = *(a1 + 40);
    }

    v7 += (v13 - v10) >> 3;
    *(a1 + 40) = v7;
    if (v6 == v11)
    {
      break;
    }

    v16 = v6[1];
    ++v6;
    v10 = v16;
  }

  return a1;
}

void sub_262230EF8(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_262230F50(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_262230FA0((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_262230FA0(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_262231840(a1);
}

uint64_t **sub_26223104C(uint64_t **a1, unint64_t a2, uint64_t ***a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

int64x2_t sub_26223112C(int64x2_t *a1, void *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    v5 = a1->i64[1];
    v6 = a1[1].i64[0];
    v7 = ((v6 - v5) << 6) - 1;
    v8 = v6 - v5;
    if (v6 == v5)
    {
      v7 = 0;
    }

    if ((v7 - a1[2].i64[1]) < 0x200)
    {
      v9 = a1[1].i64[1];
      v10 = a1->i64[0];
      v11 = v9 - a1->i64[0];
      if (v8 < v11)
      {
        if (v5 != v10)
        {
          operator new();
        }

        operator new();
      }

      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v17[4] = a1;
      sub_2622317F8(v12);
    }

    a1[2].i64[0] = 512;
    v17[0] = *(v6 - 8);
    a1[1].i64[0] = v6 - 8;
    sub_2622316F0(a1, v17);
    v4 = a1[2].u64[0];
  }

  v13 = a1->i64[1];
  v14 = (v13 + 8 * (v4 >> 9));
  v15 = *v14 + 8 * (v4 & 0x1FF);
  if (a1[1].i64[0] == v13)
  {
    v15 = 0;
  }

  if (v15 == *v14)
  {
    v15 = *(v14 - 1) + 4096;
  }

  *(v15 - 8) = *a2;
  result = vaddq_s64(a1[2], xmmword_2623A7860);
  a1[2] = result;
  return result;
}

void sub_262231354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  operator delete(v10);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_262231380(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_262230FA0((v4 - 48));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_262231404(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *(a2 + 24);
  v4 = *(a3 + 24);
  if (v3 != v4)
  {
    v5 = *(a3 + 16);
    v6 = ((v3 - **(a2 + 16)) >> 3) + ((*(a2 + 16) - v5) << 6);
    v7 = v4 - *v5;
    if (v6 != v7 >> 3)
    {
      sub_2621CC71C(a1, v6 - (v7 >> 3));
    }
  }

  return a1;
}

void sub_2622314D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_2622314EC(const void **result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v15[4] = v2;
    if (v9)
    {
      sub_2621E1EE4(v9);
    }

    v10 = 24 * v6;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = 24 * v6 + 24;
    v11 = v2[1] - *v2;
    v12 = (v10 - v11);
    memcpy((v10 - v11), *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = sub_26220AA90(v15);
  }

  else
  {
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = *a2;
    *(v3 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = (v3 + 24);
  }

  v2[1] = v5;
  return result;
}

uint64_t *sub_262231628(uint64_t *a1, char *a2, uint64_t *a3, char *a4, uint64_t *a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a5 != a3)
  {
    v5 = ((a5 - *a4) >> 3) + ((a4 - a2) << 6);
    v6 = a3 - *a2;
    if (v5 != v6 >> 3)
    {
      sub_2621CC71C(a1, v5 - (v6 >> 3));
    }
  }

  return a1;
}

void sub_2622316D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622316F0(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_2622317F8(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_2622317F8(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_262231840(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_262231890(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (a1[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      sub_262231BA4(a1, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    if (v8 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = a1;
      if (v12)
      {
        sub_2622317F8(v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] = v6 - (v7 << 9); v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      sub_262231BA4(a1, v16);
    }
  }
}

void sub_262231B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_262231B50(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 + ((a2 - *result) >> 3);
    if (v3 < 1)
    {
      result -= (511 - v3) >> 9;
    }

    else
    {
      result += v3 >> 9;
    }
  }

  return result;
}

void sub_262231BA4(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_2622317F8(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

char **sub_262231CA8(char **result, char *a2, char *a3, char *a4, char *a5)
{
  v6 = a4;
  v8 = result;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = &a5[-v10];
      if ((v11 - a2) >> 3 >= v12 >> 3)
      {
        v13 = v12 >> 3;
      }

      else
      {
        v13 = (v11 - a2) >> 3;
      }

      v11 -= 8 * v13;
      a5 -= 8 * v13;
      if (v13)
      {
        result = memmove(a5, v11, 8 * v13);
      }

      if (v11 == a2)
      {
        break;
      }

      v14 = *(v6 - 1);
      v6 -= 8;
      v10 = v14;
      a5 = (v14 + 4096);
    }

    if ((*v6 + 4096) == a5)
    {
      v15 = *(v6 + 1);
      v6 += 8;
      a5 = v15;
    }
  }

  *v8 = v9;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

void *sub_262231D64(void *result, _BYTE *__src, _BYTE *a3, void *a4, char *__dst)
{
  v6 = a4;
  v8 = result;
  if (__src != a3)
  {
    v9 = __src;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      if ((a3 - v9) >> 3 >= v11 >> 3)
      {
        v12 = v11 >> 3;
      }

      else
      {
        v12 = (a3 - v9) >> 3;
      }

      if (v12)
      {
        result = memmove(__dst, v9, 8 * v12);
      }

      v9 += 8 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = v6[1];
      ++v6;
      v10 = v13;
      __dst = v13;
    }

    __dst += 8 * v12;
    if ((*v6 + 4096) == __dst)
    {
      v14 = v6[1];
      ++v6;
      __dst = v14;
    }
  }

  *v8 = a3;
  v8[1] = v6;
  v8[2] = __dst;
  return result;
}

void sub_262231E24(unint64_t *a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x200;
  v4 = v2 - 512;
  if (!v3)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_2622317F8(v9);
  }

  a1[4] = v4;
  v5 = a1[1];
  *&v10 = *v5;
  a1[1] = (v5 + 1);
  sub_262231BA4(a1, &v10);
}

void sub_262231F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_262231F94(char a1, void *__p)
{
  if (a1)
  {
    __p[3] = &unk_2874EF0B8;
    v3 = __p[19];
    if (v3)
    {
      sub_2621D1B78(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_26223200C(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 3)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v10 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_2621CC71C(v7, v11);
    }

    sub_2621CBEB0();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 3)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void sub_262232140(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 4);
        v6 -= 32;
        v7 = v8;
        if (v8)
        {
          *(v4 - 3) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_2622321D0(void *a1, void *a2, __int128 **a3)
{
  v5 = sub_2621D1580(a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
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

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_2621D19D0(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_262232448(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[16 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_2621CBF10(v10);
      }

      sub_2621CBEB0();
    }

    bzero(a1[1], 16 * v6);
    v11 = &v4[16 * v6];
  }

  a1[1] = v11;
}

void sub_262232548(void *a1)
{
  *a1 = &unk_2874EE350;
  v2 = (a1 + 2);
  v3 = a1[2];
  for (i = a1[3]; i != v3; sub_262232668(i))
  {
    i -= 144;
  }

  a1[3] = v3;
  v5 = v2;
  sub_2622325EC(&v5);

  JUMPOUT(0x266727420);
}

void sub_2622325EC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; sub_262232668(i))
    {
      i -= 144;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void sub_262232668(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

void *sub_2622326B4(void *a1)
{
  *a1 = &unk_2874EE350;
  v2 = (a1 + 2);
  v3 = a1[2];
  for (i = a1[3]; i != v3; sub_262232668(i))
  {
    i -= 144;
  }

  a1[3] = v3;
  v6 = v2;
  sub_2622325EC(&v6);
  return a1;
}

void sub_262232738(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v194 = *MEMORY[0x277D85DE8];
  v190 = 0uLL;
  v191 = 0;
  v4 = *a3;
  if ((v4 & 0x80000000) != 0)
  {
    __b[0].__locale_ = (v4 + 2);
  }

  else
  {
    __b[0].__locale_ = *a3;
  }

  sub_2621C9004(&v190, __b);
  v5 = v190;
  v6 = MEMORY[0x277D82670];
  if (*(&v190 + 1) != v190)
  {
    v7 = 0;
    v8 = (*(&v190 + 1) - v190) >> 3;
    v9 = MEMORY[0x277D82680];
    do
    {
      if (*(v5 + 8 * v7) >= 2uLL)
      {
        sub_2621D552C(v6, "runtime_err in ", 15);
        sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../common/reduce_helper.hpp", 118);
        sub_2621D552C(v6, " ", 1);
        v10 = MEMORY[0x266727260](v6, 28);
        sub_2621D552C(v10, " ", 1);
        sub_2621D552C(v10, "format_reduce_axes", 18);
        std::ios_base::getloc((v10 + *(*v10 - 24)));
        v11 = std::locale::use_facet(__b, v9);
        (v11->__vftable[2].~facet_0)(v11, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "reduce axis larger than dim-1");
        std::ios_base::getloc((v6 + *(*v6 - 24)));
        v12 = std::locale::use_facet(__b, v9);
        (v12->__vftable[2].~facet_0)(v12, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v7;
    }

    while (v7 < v8);
  }

  std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
  v13 = v190;
  v171 = (*(&v190 + 1) - v190) >> 3;
  v166 = *(&v190 + 1) - v190;
  if (*(&v190 + 1) - v190 != 8)
  {
    v14 = 0;
    v15 = MEMORY[0x277D82680];
    do
    {
      if (*(v13 + 8 * v14) == *(v13 + 8 * v14 + 8))
      {
        sub_2621D552C(v6, "runtime_err in ", 15);
        sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../common/reduce_helper.hpp", 118);
        sub_2621D552C(v6, " ", 1);
        v16 = MEMORY[0x266727260](v6, 33);
        sub_2621D552C(v16, " ", 1);
        sub_2621D552C(v16, "format_reduce_axes", 18);
        std::ios_base::getloc((v16 + *(*v16 - 24)));
        v17 = std::locale::use_facet(__b, v15);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "duplicate axis in reduce axis");
        std::ios_base::getloc((v6 + *(*v6 - 24)));
        v18 = std::locale::use_facet(__b, v15);
        (v18->__vftable[2].~facet_0)(v18, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v14;
    }

    while (v14 < v171 - 1);
  }

  v19 = 0;
  v20 = v171;
  if (v171 <= 1)
  {
    v20 = 1;
  }

  memset(v189, 0, sizeof(v189));
  v21 = v20 - 1;
  v22 = 1;
  do
  {
    v23 = v22;
    if (*(&v13 + 1) != v13)
    {
      if (*v13 == v19)
      {
LABEL_19:
        __b[0].__locale_ = 1;
        sub_2621C9004(v189, __b);
        goto LABEL_25;
      }

      v24 = 0;
      while (v21 != v24)
      {
        v25 = *(v13 + 8 + 8 * v24++);
        if (v25 == v19)
        {
          if (v24 < v171)
          {
            goto LABEL_19;
          }

          break;
        }
      }
    }

    sub_2621C9004(v189, (a2 + 8 * v19));
LABEL_25:
    v22 = 0;
    v19 = 1;
  }

  while ((v23 & 1) != 0);
  sub_2621D6CA4(__b, v189);
  v186 = 0u;
  v187 = 0u;
  v185[0] = __b[1];
  v185[1] = 1;
  sub_262224008(v172, __b);
  v26 = *(v13 + v166 - 8);
  v170 = v26;
  if (v26 == 1)
  {
    if (v171 != 1)
    {
      v27 = *(v13 - 16 + v166);
      if (*(v13 + 8 * (v171 - 1)) - v27 == 1)
      {
        v28 = (v13 + 8 * v171 - 24);
        v29 = v171 - 2;
        do
        {
          v26 = v27;
          if (!v29)
          {
            break;
          }

          v27 = *v28;
          v30 = v28[1];
          --v28;
          --v29;
        }

        while (v30 - v27 == 1);
        goto LABEL_32;
      }
    }

    v182 = 0;
    v183 = 0;
    v184 = 0;
    v179 = 0;
    v180 = 0;
    v26 = 1;
    v181 = 0;
  }

  else
  {
LABEL_32:
    v182 = 0;
    v183 = 0;
    v184 = 0;
    v179 = 0;
    v180 = 0;
    v181 = 0;
    if (!v26)
    {
      v31 = 1;
      v32 = 1;
      v33 = 1;
LABEL_47:
      v39 = 8 * v31;
      v40 = 1;
      do
      {
        v40 *= *(a2 + v39);
        v39 += 8;
      }

      while (v39 != 16);
      goto LABEL_51;
    }
  }

  v34 = 0;
  v32 = 1;
  while (2)
  {
    v35 = (a2 + 8 * v34);
    v36 = *v35;
    sub_2621C9004(&v182, v35);
    if (*(&v13 + 1) != v13)
    {
      if (*v13 == v34)
      {
LABEL_38:
        *&v193[0] = 0;
        sub_2621C9004(&v179, v193);
        goto LABEL_44;
      }

      v37 = 0;
      while (v21 != v37)
      {
        v38 = *(v13 + 8 + 8 * v37++);
        if (v38 == v34)
        {
          if (v37 < v171)
          {
            goto LABEL_38;
          }

          break;
        }
      }
    }

    sub_2621C9004(&v179, &v185[v34]);
LABEL_44:
    v32 *= v36;
    if (++v34 != v26)
    {
      continue;
    }

    break;
  }

  v33 = 0;
  if (v26 + 1 <= 1)
  {
    v31 = 0;
    v26 = -1;
    goto LABEL_47;
  }

  v40 = 1;
LABEL_51:
  if (v170 == 1)
  {
    v41 = *(a2 + 8 * v26);
  }

  else
  {
    v41 = 1;
  }

  v167 = v41;
  v42 = v174;
  if (v170 == 1)
  {
    v43 = v32;
  }

  else
  {
    v43 = *(a2 + 8 * v26);
  }

  memset(&v193[1], 0, 32);
  if (v170 == 1)
  {
    v32 = 1;
  }

  v193[0] = 0uLL;
  memset(v192, 0, sizeof(v192));
  if (v33)
  {
    __p = 0;
    sub_2621C9004(&v182, &__p);
    v44 = 0;
    __p = 0;
    v177 = 0;
    v178 = 0;
    goto LABEL_73;
  }

  v164 = v32;
  v165 = v174;
  v45 = 0;
  __p = 0;
  v177 = 0;
  v178 = 0;
  v175 = 0;
  if (v26 <= 1)
  {
    v46 = 1;
  }

  else
  {
    v46 = v26;
  }

  while (2)
  {
    if (*(&v13 + 1) == v13)
    {
LABEL_70:
      sub_2621C9004(&__p, &v175);
    }

    else if (*v13 != v45)
    {
      v47 = 0;
      while (v21 != v47)
      {
        v48 = *(v13 + 8 + 8 * v47++);
        if (v48 == v45)
        {
          if (v47 < v171)
          {
            goto LABEL_71;
          }

          goto LABEL_70;
        }
      }

      goto LABEL_70;
    }

LABEL_71:
    v175 = ++v45;
    if (v45 != v46)
    {
      continue;
    }

    break;
  }

  v44 = v26 - 1;
  v32 = v164;
  v42 = v165;
LABEL_73:
  v49 = v40 * v167;
  if (v170 == 1)
  {
    if (*(a2 + 184))
    {
      if (v43)
      {
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = *(a2 + 192);
        v54 = v182;
        v55 = (v53 + 4);
        if (v49 <= 1)
        {
          v56 = 1;
        }

        else
        {
          v56 = v40 * v167;
        }

        v57 = v179;
        v58 = 4 * v56;
        v59 = 1;
        v60 = v42;
        while (1)
        {
          v61 = *(v53 + 4 * v51) * *(v53 + 4 * v51);
          if (v49 < 2)
          {
            break;
          }

          v62 = v49 - 1;
          v63 = v55;
          do
          {
            v64 = *v63++;
            v61 = v61 + (v64 * v64);
            --v62;
          }

          while (v62);
          v51 += v49;
          if (!v59)
          {
            goto LABEL_86;
          }

LABEL_87:
          *v60 = v61;
          v65 = v44;
          do
          {
            v66 = *(v193 + v65) + 1;
            *(v193 + v65) = v66;
            if (v66 != v54[v65])
            {
              break;
            }

            *(v193 + v65) = 0;
            v67 = v65-- <= 0;
          }

          while (!v67);
          if (v33)
          {
            v59 = 0;
            v68 = 0;
          }

          else
          {
            v68 = 0;
            v69 = v193;
            v70 = v57;
            v71 = v26;
            do
            {
              v73 = *v69++;
              v72 = v73;
              v74 = *v70++;
              v68 += v74 * v72;
              --v71;
            }

            while (v71);
            v59 = v68 > v52;
            if (v68 > v52)
            {
              v52 = v68;
            }
          }

          v60 = &v42[v68];
          ++v50;
          v55 = (v55 + v58);
          if (v50 == v43)
          {
            goto LABEL_189;
          }
        }

        ++v51;
        if (v59)
        {
          goto LABEL_87;
        }

LABEL_86:
        v61 = v61 + *v60;
        goto LABEL_87;
      }
    }

    else if (v43)
    {
      v101 = 0;
      v102 = 0;
      v103 = v182;
      v104 = v179;
      v105 = *(a2 + 192);
      v106 = 1;
      v107 = v42;
      v108 = *(a2 + 104);
      v109 = *(a2 + 112);
      do
      {
        v110 = *(v105 + 4 * v109 * *(&v192[0] + 1) + 4 * v108 * *&v192[0]);
        v111 = v110 * v110;
        for (i = 8; i != -8; i -= 8)
        {
          v113 = *(v192 + i) + 1;
          *(v192 + i) = v113;
          if (v113 != *(a2 + i))
          {
            break;
          }

          *(v192 + i) = 0;
        }

        if (v49 >= 2)
        {
          for (j = 1; j != v49; ++j)
          {
            v115 = *(v105 + 4 * v109 * *(&v192[0] + 1) + 4 * v108 * *&v192[0]);
            v111 = v111 + (v115 * v115);
            for (k = 8; k != -8; k -= 8)
            {
              v117 = *(v192 + k) + 1;
              *(v192 + k) = v117;
              if (v117 != *(a2 + k))
              {
                break;
              }

              *(v192 + k) = 0;
            }
          }
        }

        if (!v106)
        {
          v111 = v111 + *v107;
        }

        *v107 = v111;
        v118 = v44;
        do
        {
          v119 = *(v193 + v118) + 1;
          *(v193 + v118) = v119;
          if (v119 != v103[v118])
          {
            break;
          }

          *(v193 + v118) = 0;
          v67 = v118-- <= 0;
        }

        while (!v67);
        if (v33)
        {
          v106 = 0;
          v120 = 0;
        }

        else
        {
          v120 = 0;
          v121 = v193;
          v122 = v104;
          v123 = v26;
          do
          {
            v125 = *v121++;
            v124 = v125;
            v126 = *v122++;
            v120 += v126 * v124;
            --v123;
          }

          while (v123);
          v106 = v120 > v102;
          if (v120 > v102)
          {
            v102 = v120;
          }
        }

        v107 = &v42[v120];
        ++v101;
      }

      while (v101 != v43);
    }
  }

  else if (*(a2 + 184))
  {
    if (v32)
    {
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = v182;
      v79 = 1;
      v80 = v179;
      v81 = v42;
      do
      {
        if (v79)
        {
          if (v49)
          {
            v82 = *(a2 + 192);
            v83 = v81;
            v84 = v40 * v167;
            do
            {
              *v83++ = *(v82 + 4 * v76) * *(v82 + 4 * v76);
              ++v76;
              --v84;
            }

            while (v84);
          }
        }

        else if (v49)
        {
          v85 = *(a2 + 192);
          v86 = v81;
          v87 = v40 * v167;
          do
          {
            *v86 = *v86 + (*(v85 + 4 * v76) * *(v85 + 4 * v76));
            ++v86;
            ++v76;
            --v87;
          }

          while (v87);
        }

        if (v43 >= 2)
        {
          for (m = 1; m != v43; ++m)
          {
            if (v49)
            {
              v89 = *(a2 + 192);
              v90 = v81;
              v91 = v40 * v167;
              do
              {
                *v90 = *v90 + (*(v89 + 4 * v76) * *(v89 + 4 * v76));
                ++v90;
                ++v76;
                --v91;
              }

              while (v91);
            }
          }
        }

        v92 = v44;
        do
        {
          v93 = *(v193 + v92) + 1;
          *(v193 + v92) = v93;
          if (v93 != v78[v92])
          {
            break;
          }

          *(v193 + v92) = 0;
          v67 = v92-- <= 0;
        }

        while (!v67);
        if (v33)
        {
          v79 = 0;
          v94 = 0;
        }

        else
        {
          v94 = 0;
          v95 = v193;
          v96 = v80;
          v97 = v26;
          do
          {
            v99 = *v95++;
            v98 = v99;
            v100 = *v96++;
            v94 += v100 * v98;
            --v97;
          }

          while (v97);
          v79 = v94 > v77;
          if (v94 > v77)
          {
            v77 = v94;
          }
        }

        v81 = &v42[v94];
        ++v75;
      }

      while (v75 != v32);
    }
  }

  else if (v32)
  {
    v127 = 0;
    v128 = 0;
    v129 = v182;
    v130 = 1;
    v131 = v179;
    v132 = v42;
    do
    {
      if (v130)
      {
        if (v49)
        {
          v133 = 0;
          v134 = *(a2 + 192);
          v136 = *(a2 + 104);
          v135 = *(a2 + 112);
          do
          {
            v137 = *(v134 + 4 * v135 * *(&v192[0] + 1) + 4 * v136 * *&v192[0]);
            v132[v133] = v137 * v137;
            for (n = 8; n != -8; n -= 8)
            {
              v139 = *(v192 + n) + 1;
              *(v192 + n) = v139;
              if (v139 != *(a2 + n))
              {
                break;
              }

              *(v192 + n) = 0;
            }

            ++v133;
          }

          while (v133 != v49);
        }
      }

      else if (v49)
      {
        v140 = 0;
        v141 = *(a2 + 192);
        v143 = *(a2 + 104);
        v142 = *(a2 + 112);
        do
        {
          v144 = *(v141 + 4 * v142 * *(&v192[0] + 1) + 4 * v143 * *&v192[0]);
          v132[v140] = v132[v140] + (v144 * v144);
          for (ii = 8; ii != -8; ii -= 8)
          {
            v146 = *(v192 + ii) + 1;
            *(v192 + ii) = v146;
            if (v146 != *(a2 + ii))
            {
              break;
            }

            *(v192 + ii) = 0;
          }

          ++v140;
        }

        while (v140 != v49);
      }

      v147 = v44;
      if (v43 >= 2)
      {
        for (jj = 1; jj != v43; ++jj)
        {
          if (v49)
          {
            v149 = 0;
            v150 = *(a2 + 192);
            v152 = *(a2 + 104);
            v151 = *(a2 + 112);
            do
            {
              v153 = *(v150 + 4 * v151 * *(&v192[0] + 1) + 4 * v152 * *&v192[0]);
              v132[v149] = v132[v149] + (v153 * v153);
              for (kk = 8; kk != -8; kk -= 8)
              {
                v155 = *(v192 + kk) + 1;
                *(v192 + kk) = v155;
                if (v155 != *(a2 + kk))
                {
                  break;
                }

                *(v192 + kk) = 0;
              }

              ++v149;
            }

            while (v149 != v49);
          }
        }

        v147 = v44;
      }

      do
      {
        v156 = *(v193 + v147) + 1;
        *(v193 + v147) = v156;
        if (v156 != v129[v147])
        {
          break;
        }

        *(v193 + v147) = 0;
        v67 = v147-- <= 0;
      }

      while (!v67);
      if (v33)
      {
        v130 = 0;
        v157 = 0;
      }

      else
      {
        v157 = 0;
        v158 = v193;
        v159 = v131;
        v160 = v26;
        do
        {
          v162 = *v158++;
          v161 = v162;
          v163 = *v159++;
          v157 += v163 * v161;
          --v160;
        }

        while (v160);
        v130 = v157 > v128;
        if (v157 > v128)
        {
          v128 = v157;
        }
      }

      v132 = &v42[v157];
      ++v127;
    }

    while (v127 != v32);
  }

LABEL_189:
  if (__p)
  {
    operator delete(__p);
  }

  if (v179)
  {
    operator delete(v179);
  }

  if (v182)
  {
    operator delete(v182);
  }

  if (v189[0])
  {
    operator delete(v189[0]);
  }

  if (v13)
  {
    operator delete(v13);
  }

  sub_262208CB8(a1, v172, *a3);
  v172[0] = &unk_2874EF0B8;
  if (v173)
  {
    sub_2621D1B78(v173);
  }
}

void sub_2622334D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::locale a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a43)
  {
    operator delete(a43);
  }

  if (a33)
  {
    sub_2621D1B78(a33);
  }

  if (a58)
  {
    operator delete(a58);
  }

  if (v58)
  {
    operator delete(v58);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622335D4(uint64_t a1, __n128 a2)
{
  v28 = *MEMORY[0x277D85DE8];
  memset(&v24[1], 0, 32);
  v24[0] = a2;
  result = sub_262224008(a1, v24);
  if (*(a1 + 137) == 1)
  {
    v4 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v5 = sub_2621D552C(v4, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v5, " ", 1);
    v6 = MEMORY[0x277D82670];
    v7 = MEMORY[0x266727260](MEMORY[0x277D82670], 664);
    sub_2621D552C(v7, " ", 1);
    sub_2621D552C(v7, "operator=", 9);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(v25, MEMORY[0x277D82680]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(v25);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5EE8("err", "scalar assign should create a storage first");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v9 = std::locale::use_facet(v25, MEMORY[0x277D82680]);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(v25);
    std::ostream::put();
    result = std::ostream::flush();
  }

  v26 = 0u;
  v27 = 0u;
  *&v25[0].__locale_ = 0u;
  v10 = *(a1 + 104);
  v11 = *(a1 + 144);
  if (*(a1 + 136))
  {
    if (v10)
    {
      v12 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v13 = vdupq_n_s64(v10 - 1);
      v14 = xmmword_2623A7630;
      v15 = xmmword_2623A7620;
      v16 = (v11 + 8);
      v17 = vdupq_n_s64(4uLL);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v13, v15));
        if (vuzp1_s16(v18, *v13.i8).u8[0])
        {
          *(v16 - 2) = 0;
        }

        if (vuzp1_s16(v18, *&v13).i8[2])
        {
          *(v16 - 1) = 0;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v14))).i32[1])
        {
          *v16 = 0;
          v16[1] = 0;
        }

        v14 = vaddq_s64(v14, v17);
        v15 = vaddq_s64(v15, v17);
        v16 += 4;
        v12 -= 4;
      }

      while (v12);
    }
  }

  else if (v10)
  {
    v19 = 0;
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    do
    {
      v22 = 0;
      *(v11 + 4 * v21 * v25[1].__locale_ + 4 * v20 * v25[0].__locale_) = 0;
      do
      {
        v23 = (v25[v22 + 1].__locale_ + 1);
        v25[v22 + 1].__locale_ = v23;
        if (v23 != *(a1 + 16 + v22 * 8))
        {
          break;
        }

        v25[v22-- + 1].__locale_ = 0;
      }

      while (v22 != -2);
      ++v19;
    }

    while (v19 != v10);
  }

  return result;
}

void sub_2622338E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15)
{
  std::locale::~locale(&a15);
  *v15 = &unk_2874EF0B8;
  v17 = v15[16];
  if (v17)
  {
    sub_2621D1B78(v17);
  }

  _Unwind_Resume(a1);
}

void sub_262233938(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  sub_262234D10(&v24, a3);
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *a1 = &unk_2874EF0B8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 257;
  v6 = *(a2 + 120);
  v7 = *(a2 + 128);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v8 = *(a1 + 128);
    *(a1 + 120) = v6;
    *(a1 + 128) = v7;
    if (v8)
    {
      sub_2621D1B78(v8);
    }
  }

  else
  {
    *(a1 + 120) = v6;
    *(a1 + 128) = 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v24;
  v13 = (v25 - v24) >> 3;
  v14 = *(a2 + 104);
  *(a1 + 104) = v14;
  v15 = a1 + 56;
  v16 = 1;
  do
  {
    v17 = v16;
    if (v10 < v13 && v11 == v12[v10])
    {
      *(v5 + 8 * v11) = 1;
      *(v15 + 8 * v11) = 0;
      ++v10;
    }

    else
    {
      *(v5 + 8 * v11) = *(a2 + 8 + 8 * v9);
      *(v15 + 8 * v11) = *(a2 + 56 + 8 * v9++);
    }

    v16 = 0;
    v11 = 1;
  }

  while ((v17 & 1) != 0);
  *(a1 + 137) = 0;
  v18 = (a1 + 64);
  v19 = -2;
  v20 = 1;
  while (1)
  {
    v21 = *(v18 - 6);
    if (v21 != 1)
    {
      break;
    }

LABEL_15:
    --v18;
    if (__CFADD__(v19++, 1))
    {
      v23 = 1;
      goto LABEL_19;
    }
  }

  if (*v18 == v20)
  {
    v20 *= v21;
    goto LABEL_15;
  }

  v23 = 0;
LABEL_19:
  *(a1 + 136) = v23;
  *(a1 + 144) = **(a1 + 120) + 4 * *(&v14 + 1);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_262233AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262233B0C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_262234B80((a1 + 48), *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_262234B80((a1 + 72), *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 3);
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[9];
  *(a1 + 128) = a2[8];
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  v9 = a2[10];
  v10 = a2[11];
  v11 = a2[13];
  *(a1 + 192) = a2[12];
  *(a1 + 208) = v11;
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  v12 = a2[14];
  v13 = a2[15];
  v14 = a2[17];
  *(a1 + 256) = a2[16];
  *(a1 + 272) = v14;
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  sub_262234BFC(a1 + 288, a2 + 18);
  sub_262229F7C(a1 + 984, a2 + 984);
  return a1;
}

void *sub_262233C00(void *a1)
{
  a1[123] = &unk_2874EF6A8;
  v2 = a1[139];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  sub_262233C60(a1 + 36);
  sub_2621C57C8((a1 + 6));
  return a1;
}

void *sub_262233C60(void *a1)
{
  a1[68] = &unk_2874EF0B8;
  v2 = a1[84];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[36] = &unk_2874EF0B8;
  v3 = a1[52];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  sub_2621C57C8((a1 + 6));
  return a1;
}

void sub_262233CE4(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v137 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  if (v7 == v8)
  {
    if (*(a2 + 856) && *(a2 + 1112) == 1 && *(a2 + 1264) == 1)
    {
      v123 = 0u;
      v124 = 0u;
      v122 = 0u;
      v9 = *(a1 + 104);
      v10 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v9)
        {
          v11 = 0;
          v12 = a1 + 16;
          do
          {
            v13 = sub_262234A2C(a2 + 144, &v122);
            v14 = 0;
            *(v10 + 4 * v11) = sqrtf(fabsf(v13 + *(a2 + 1328)));
            do
            {
              v15 = *(&v122 + v14 + 8) + 1;
              *(&v122 + v14 + 8) = v15;
              if (v15 != *(v12 + v14))
              {
                break;
              }

              *(&v122 + v14 + 8) = 0;
              v14 -= 8;
            }

            while (v14 != -16);
            ++v11;
          }

          while (v11 != v9);
        }
      }

      else if (v9)
      {
        v86 = 0;
        v87 = *(a1 + 56);
        v88 = *(a1 + 64);
        v89 = a1 + 16;
        do
        {
          v90 = v87 * v122;
          v91 = v10 + 4 * v88 * *(&v122 + 1);
          v92 = sub_262234A2C(a2 + 144, &v122);
          v93 = 0;
          *(v91 + 4 * v90) = sqrtf(fabsf(v92 + *(a2 + 1328)));
          do
          {
            v94 = *(&v122 + v93 + 8) + 1;
            *(&v122 + v93 + 8) = v94;
            if (v94 != *(v89 + v93))
            {
              break;
            }

            *(&v122 + v93 + 8) = 0;
            v93 -= 8;
          }

          while (v93 != -16);
          ++v86;
        }

        while (v86 != v9);
      }
    }

    else
    {
      v123 = 0u;
      v124 = 0u;
      v122 = 0u;
      v38 = *(a1 + 104);
      v39 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v38)
        {
          v40 = 0;
          v41 = a1 + 16;
          do
          {
            v42 = sub_262234750(a2 + 144, &v122);
            v43 = 0;
            *(v39 + 4 * v40) = sqrtf(fabsf(v42 + *(a2 + 1328)));
            do
            {
              v44 = *(&v122 + v43 + 8) + 1;
              *(&v122 + v43 + 8) = v44;
              if (v44 != *(v41 + v43))
              {
                break;
              }

              *(&v122 + v43 + 8) = 0;
              v43 -= 8;
            }

            while (v43 != -16);
            ++v40;
          }

          while (v40 != v38);
        }
      }

      else if (v38)
      {
        v67 = 0;
        v68 = *(a1 + 56);
        v69 = *(a1 + 64);
        v70 = a1 + 16;
        do
        {
          v71 = v68 * v122;
          v72 = v39 + 4 * v69 * *(&v122 + 1);
          v73 = sub_262234750(a2 + 144, &v122);
          v74 = 0;
          *(v72 + 4 * v71) = sqrtf(fabsf(v73 + *(a2 + 1328)));
          do
          {
            v75 = *(&v122 + v74 + 8) + 1;
            *(&v122 + v74 + 8) = v75;
            if (v75 != *(v70 + v74))
            {
              break;
            }

            *(&v122 + v74 + 8) = 0;
            v74 -= 8;
          }

          while (v74 != -16);
          ++v67;
        }

        while (v67 != v38);
      }
    }
  }

  else
  {
    if (*(a2 + 856) && *(a2 + 1112) == 1 && *(a2 + 1264) == 1)
    {
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v122 = 0u;
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      sub_2621D96E4(&v122, v5, a2, &v113);
      v16 = 0;
      v17 = &v113;
      v18 = 1;
      do
      {
        v19 = *v17;
        v20 = *(v5 + v16);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v18 = 0;
        v17 = &v113 + 1;
        v16 = 1;
      }

      while (v19 == v20);
      if (v19 != v20)
      {
        v21 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v22 = sub_2621D552C(v21, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v22, " ", 1);
        v23 = MEMORY[0x277D82670];
        v24 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v24, " ", 1);
        sub_2621D552C(v24, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v25 = std::locale::use_facet(v119, MEMORY[0x277D82680]);
        (v25->__vftable[2].~facet_0)(v25, 10);
        std::locale::~locale(v119);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v23 + *(*v23 - 24)));
        v26 = std::locale::use_facet(v119, MEMORY[0x277D82680]);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(v119);
        std::ostream::put();
        std::ostream::flush();
      }

      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      *&v119[0].__locale_ = 0u;
      v116 = 0u;
      v117 = 0u;
      v27 = *(a1 + 104);
      v28 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v27)
        {
          v29 = 0;
          v31 = *(&v123 + 1);
          v30 = v124;
          if (((v124 - *(&v123 + 1)) >> 3) <= 1)
          {
            v32 = 1;
          }

          else
          {
            v32 = (v124 - *(&v123 + 1)) >> 3;
          }

          do
          {
            v116 = *&v119[0].__locale_;
            if (v30 != v31)
            {
              v33 = v31;
              v34 = v32;
              do
              {
                v35 = *v33++;
                *(&v116 + v35) = 0;
                --v34;
              }

              while (v34);
            }

            *(v28 + 4 * v29) = sqrtf(fabsf(sub_262234A2C(a2 + 144, &v116) + *(a2 + 1328)));
            for (i = 1; i != -1; --i)
            {
              v37 = (v119[i].__locale_ + 1);
              v119[i].__locale_ = v37;
              if (v37 != *(&v113 + i * 8))
              {
                break;
              }

              v119[i].__locale_ = 0;
            }

            ++v29;
          }

          while (v29 != v27);
        }
      }

      else if (v27)
      {
        v95 = 0;
        v96 = *(&v123 + 1);
        v112 = v124;
        if (((v124 - *(&v123 + 1)) >> 3) <= 1)
        {
          v97 = 1;
        }

        else
        {
          v97 = (v124 - *(&v123 + 1)) >> 3;
        }

        v110 = *(a1 + 56);
        v106 = v97;
        v108 = *(a1 + 64);
        do
        {
          locale = v119[0].__locale_;
          v98 = v119[1].__locale_;
          v116 = *&v119[0].__locale_;
          if (v112 != v96)
          {
            v100 = v96;
            v101 = v106;
            do
            {
              v102 = *v100++;
              *(&v116 + v102) = 0;
              --v101;
            }

            while (v101);
          }

          *(v28 + 4 * v108 * v98 + 4 * v110 * locale) = sqrtf(fabsf(sub_262234A2C(a2 + 144, &v116) + *(a2 + 1328)));
          for (j = 1; j != -1; --j)
          {
            v104 = (v119[j].__locale_ + 1);
            v119[j].__locale_ = v104;
            if (v104 != *(&v113 + j * 8))
            {
              break;
            }

            v119[j].__locale_ = 0;
          }

          ++v95;
        }

        while (v95 != v27);
      }
    }

    else
    {
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v122 = 0u;
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      sub_2621D96E4(&v122, v5, a2, &v113);
      v45 = 0;
      v46 = &v113;
      v47 = 1;
      do
      {
        v48 = *v46;
        v49 = *(v5 + v45);
        if ((v47 & 1) == 0)
        {
          break;
        }

        v47 = 0;
        v46 = &v113 + 1;
        v45 = 1;
      }

      while (v48 == v49);
      if (v48 != v49)
      {
        v50 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v51 = sub_2621D552C(v50, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v51, " ", 1);
        v52 = MEMORY[0x277D82670];
        v53 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v53, " ", 1);
        sub_2621D552C(v53, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v53 + *(*v53 - 24)));
        v54 = std::locale::use_facet(v119, MEMORY[0x277D82680]);
        (v54->__vftable[2].~facet_0)(v54, 10);
        std::locale::~locale(v119);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v52 + *(*v52 - 24)));
        v55 = std::locale::use_facet(v119, MEMORY[0x277D82680]);
        (v55->__vftable[2].~facet_0)(v55, 10);
        std::locale::~locale(v119);
        std::ostream::put();
        std::ostream::flush();
      }

      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      *&v119[0].__locale_ = 0u;
      v116 = 0u;
      v117 = 0u;
      v56 = *(a1 + 104);
      v57 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v56)
        {
          v58 = 0;
          v60 = *(&v123 + 1);
          v59 = v124;
          if (((v124 - *(&v123 + 1)) >> 3) <= 1)
          {
            v61 = 1;
          }

          else
          {
            v61 = (v124 - *(&v123 + 1)) >> 3;
          }

          do
          {
            v116 = *&v119[0].__locale_;
            if (v59 != v60)
            {
              v62 = v60;
              v63 = v61;
              do
              {
                v64 = *v62++;
                *(&v116 + v64) = 0;
                --v63;
              }

              while (v63);
            }

            *(v57 + 4 * v58) = sqrtf(fabsf(sub_262234750(a2 + 144, &v116) + *(a2 + 1328)));
            for (k = 1; k != -1; --k)
            {
              v66 = (v119[k].__locale_ + 1);
              v119[k].__locale_ = v66;
              if (v66 != *(&v113 + k * 8))
              {
                break;
              }

              v119[k].__locale_ = 0;
            }

            ++v58;
          }

          while (v58 != v56);
        }
      }

      else if (v56)
      {
        v76 = 0;
        v77 = *(&v123 + 1);
        v111 = v124;
        if (((v124 - *(&v123 + 1)) >> 3) <= 1)
        {
          v78 = 1;
        }

        else
        {
          v78 = (v124 - *(&v123 + 1)) >> 3;
        }

        v109 = *(a1 + 56);
        v105 = v78;
        v107 = *(a1 + 64);
        do
        {
          v80 = v119[0].__locale_;
          v79 = v119[1].__locale_;
          v116 = *&v119[0].__locale_;
          if (v111 != v77)
          {
            v81 = v77;
            v82 = v105;
            do
            {
              v83 = *v81++;
              *(&v116 + v83) = 0;
              --v82;
            }

            while (v82);
          }

          *(v57 + 4 * v107 * v79 + 4 * v109 * v80) = sqrtf(fabsf(sub_262234750(a2 + 144, &v116) + *(a2 + 1328)));
          for (m = 1; m != -1; --m)
          {
            v85 = (v119[m].__locale_ + 1);
            v119[m].__locale_ = v85;
            if (v85 != *(&v113 + m * 8))
            {
              break;
            }

            v119[m].__locale_ = 0;
          }

          ++v76;
        }

        while (v76 != v56);
      }
    }

    sub_2621C57C8(&v122);
  }
}

void sub_26223471C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::locale a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  std::locale::~locale(&a25);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

float sub_262234750(uint64_t a1, void *a2)
{
  v18[6] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = 0;
  sub_262234890(a1 + 48, a2, &v12, v16, &v11, v15);
  v13 = 0;
  v14 = 0;
  sub_26223494C(a1 + 336, v16, &v14, v18, &v13, v17);
  if (*(a1 + 712) == 1)
  {
    v3 = v14;
    v4 = *(a1 + 720);
  }

  else
  {
    v3 = *(a1 + 632) * v18[0];
    v4 = *(a1 + 720) + 4 * *(a1 + 640) * v18[1];
  }

  v5 = (v4 + 4 * v3);
  if (*(a1 + 968) == 1)
  {
    v6 = v13;
    v7 = *(a1 + 976);
  }

  else
  {
    v6 = *(a1 + 888) * v17[0];
    v7 = *(a1 + 976) + 4 * *(a1 + 896) * v17[1];
  }

  v8 = (v7 + 4 * v6);
  if (*(a1 + 1120))
  {
    v9 = v11;
  }

  else
  {
    v9 = *(a1 + 1040) * v15[0];
  }

  return (*v5 - (*v8 * *(a1 + 824))) + *(*(a1 + 1128) + 4 * v9);
}

uint64_t sub_262234890(uint64_t result, void *a2, uint64_t *a3, void *a4, void *a5, void *a6)
{
  *a5 = 0;
  *a3 = 0;
  v6 = *(result + 24);
  v7 = *(result + 32);
  v8 = *result;
  v9 = *(result + 8);
  *a6 = a2[1];
  *a4 = *a2;
  a4[1] = a2[1];
  v10 = v7 - v6;
  if (v10)
  {
    v11 = v10 >> 3;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    do
    {
      v12 = *v6++;
      a6[v12] = 0;
      --v11;
    }

    while (v11);
  }

  if (v9 != v8)
  {
    v13 = v9 - v8;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    do
    {
      v14 = *v8++;
      a4[v14] = 0;
      --v13;
    }

    while (v13);
  }

  v15 = 0;
  *a5 += *(result + 192) * *a6;
  v16 = *a3;
  v17 = 1;
  do
  {
    v18 = v17;
    v16 += *(result + 144 + 8 * v15) * a4[v15];
    *a3 = v16;
    v15 = 1;
    v17 = 0;
  }

  while ((v18 & 1) != 0);
  return result;
}

uint64_t sub_26223494C(uint64_t result, void *a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  *a5 = 0;
  *a3 = 0;
  v6 = *(result + 24);
  v7 = *(result + 32);
  v8 = *result;
  v9 = *(result + 8);
  *a6 = *a2;
  a6[1] = a2[1];
  *a4 = *a2;
  a4[1] = a2[1];
  v10 = v7 - v6;
  if (v10)
  {
    v11 = v10 >> 3;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    do
    {
      v12 = *v6++;
      a6[v12] = 0;
      --v11;
    }

    while (v11);
  }

  if (v9 != v8)
  {
    v13 = v9 - v8;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    do
    {
      v14 = *v8++;
      a4[v14] = 0;
      --v13;
    }

    while (v13);
  }

  v15 = 0;
  v16 = *a5;
  v17 = 1;
  do
  {
    v18 = v17;
    v16 += *(result + 192 + 8 * v15) * a6[v15];
    *a5 = v16;
    v15 = 1;
    v17 = 0;
  }

  while ((v18 & 1) != 0);
  v19 = 0;
  v20 = *a3;
  v21 = 1;
  do
  {
    v22 = v21;
    v20 += *(result + 144 + 8 * v19) * a4[v19];
    *a3 = v20;
    v19 = 1;
    v21 = 0;
  }

  while ((v22 & 1) != 0);
  return result;
}

float sub_262234A2C(uint64_t a1, void *a2)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v4 = 0;
  v5 = 0;
  sub_262234890(a1 + 48, a2, &v5, v9, &v4, v8);
  v6 = 0;
  v7 = 0;
  sub_26223494C(a1 + 336, v9, &v7, v11, &v6, v10);
  return (*(*(a1 + 720) + 4 * v7) - (*(*(a1 + 976) + 4 * v6) * *(a1 + 824))) + *(*(a1 + 1128) + 4 * v4);
}

uint64_t sub_262234AF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 120);
  if (*(a1 + 408) == v4)
  {
    if (sub_2621D9A90(a1 + 296, a2 + 8))
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 664) == v4)
  {
    if (sub_2621D9A90(a1 + 552, a2 + 8))
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  if (v5 <= v6)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t *sub_262234B80(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621CC71C(result, a4);
  }

  return result;
}

void sub_262234BE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262234BFC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_262234B80((a1 + 48), *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_262234B80((a1 + 72), *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 3);
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[9];
  *(a1 + 128) = a2[8];
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  v9 = a2[10];
  v10 = a2[11];
  v11 = a2[13];
  *(a1 + 192) = a2[12];
  *(a1 + 208) = v11;
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  v12 = a2[14];
  v13 = a2[15];
  v14 = a2[17];
  *(a1 + 256) = a2[16];
  *(a1 + 272) = v14;
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  sub_262223F30(a1 + 288, (a2 + 18));
  v15 = *(a2 + 440);
  v16 = *(a2 + 472);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 472) = v16;
  *(a1 + 440) = v15;
  v17 = *(a2 + 488);
  v18 = *(a2 + 504);
  v19 = *(a2 + 520);
  *(a1 + 536) = *(a2 + 134);
  *(a1 + 504) = v18;
  *(a1 + 520) = v19;
  *(a1 + 488) = v17;
  sub_262223F30(a1 + 544, (a2 + 34));
  return a1;
}

void sub_262234CF4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262234D10(unint64_t **a1, unsigned int *a2)
{
  LODWORD(v3) = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    v4 = *a2;
  }

  else
  {
    v4 = -v3;
  }

  if (v4 >= 2)
  {
    v6 = MEMORY[0x277D82670];
    v7 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v8 = sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/expand_dims_helper.hpp", 121);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = MEMORY[0x266727260](v9, 50);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = sub_2621D552C(v11, "init", 4);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v27, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v27);
    std::ostream::put();
    std::ostream::flush();
    sub_262229DB0("err", "the absolute value of axis should be less than dim");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v14 = std::locale::use_facet(&v27, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v27);
    std::ostream::put();
    std::ostream::flush();
    LODWORD(v3) = *a2;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v3 = v3;
  }

  else
  {
    v3 = v3 + 2;
  }

  v27.__locale_ = v3;
  sub_2621C9004(a1, &v27);
  sub_2622350C4(&v27, *a1, a1[1]);
  v15 = v28;
  v16 = a1[1] - *a1;
  sub_2621C74C4(&v27);
  if (v15 != v16 >> 3)
  {
    v17 = MEMORY[0x277D82670];
    v18 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v19 = sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/expand_dims_helper.hpp", 121);
    v20 = sub_2621D552C(v19, " ", 1);
    v21 = MEMORY[0x266727260](v20, 54);
    v22 = sub_2621D552C(v21, " ", 1);
    v23 = sub_2621D552C(v22, "init", 4);
    std::ios_base::getloc((v23 + *(*v23 - 24)));
    v24 = std::locale::use_facet(&v27, MEMORY[0x277D82680]);
    (v24->__vftable[2].~facet_0)(v24, 10);
    std::locale::~locale(&v27);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5B9C("err", "repeated axis");
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v25 = std::locale::use_facet(&v27, MEMORY[0x277D82680]);
    (v25->__vftable[2].~facet_0)(v25, 10);
    std::locale::~locale(&v27);
    std::ostream::put();
    std::ostream::flush();
  }

  return std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
}

uint64_t sub_2622350C4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_2621CBF58(a1, *v5, v5);
      ++v5;
    }

    while (v5 != a3);
  }

  return a1;
}

void sub_262235140(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v5 = v1;
  __p[161] = *MEMORY[0x277D85DE8];
  v4 = v2;
  sub_262223F30(v9, v2);
  v6 = *&v9[1];
  v7 = *&v9[3];
  v8 = *&v9[5];
  LODWORD(__p[0]) = 1;
  sub_262232738(v14, &v6, __p);
  v9[0] = &unk_2874EF0B8;
  if (v10)
  {
    sub_2621D1B78(v10);
  }

  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  sub_262223F30(v9, v5);
  v6 = *&v9[1];
  v7 = *&v9[3];
  v8 = *&v9[5];
  LODWORD(__p[0]) = 1;
  sub_262232738(v13, &v6, __p);
  v9[0] = &unk_2874EF0B8;
  if (v10)
  {
    sub_2621D1B78(v10);
  }

  v3 = *(v4 + 8);
  v3.n128_u64[1] = *(v5 + 8);
  sub_2622335D4(v12, v3);
  __p[0] = 1;
  sub_2622281E8(&v6, v5, __p);
  sub_2622282B4(v11, &v6);
}

void sub_26223600C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&STACK[0x1640]);
  STACK[0x928] = &unk_2874EF6A8;
  if (STACK[0x9A8])
  {
    sub_2621D1B78(STACK[0x9A8]);
  }

  sub_262233C60((v65 + 288));
  sub_2621C57C8(v65 + 48);
  sub_262233C60(&STACK[0x290]);
  if (a65)
  {
    sub_2621D1B78(a65);
  }

  if (STACK[0x278])
  {
    sub_2621D1B78(STACK[0x278]);
  }

  STACK[0x13E0] = &unk_2874EF0B8;
  if (STACK[0x1460])
  {
    sub_2621D1B78(STACK[0x1460]);
  }

  STACK[0x1478] = &unk_2874EF0B8;
  if (STACK[0x14F8])
  {
    sub_2621D1B78(STACK[0x14F8]);
  }

  STACK[0x1510] = &unk_2874EF6A8;
  if (STACK[0x1590])
  {
    sub_2621D1B78(STACK[0x1590]);
  }

  STACK[0x15A8] = &unk_2874EF6A8;
  if (STACK[0x1628])
  {
    sub_2621D1B78(STACK[0x1628]);
  }

  _Unwind_Resume(a1);
}

void sub_2622363A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = objc_msgSend_count(v3, v4, v5);
  v17 = 3;
  sub_2622364C0(v19, &v18, &v17);
  sub_262224008(a1, v19);
  v8 = 0;
  v9 = 0;
  v10 = (*(a1 + 144) + 8);
  while (v9 < objc_msgSend_count(v3, v6, v7))
  {
    *(v10 - 2) = *(objc_msgSend_points(v3, v11, v12) + v8);
    *(v10 - 1) = *(objc_msgSend_points(v3, v13, v14) + v8 + 4);
    *v10 = *(objc_msgSend_points(v3, v15, v16) + v8 + 8);
    v10 += 3;
    ++v9;
    v8 += 16;
  }
}

_OWORD *sub_2622364C0(_OWORD *a1, void *a2, int *a3)
{
  v4 = 0;
  v16[2] = *MEMORY[0x277D85DE8];
  a1[1] = 0u;
  a1[2] = 0u;
  v5 = 1;
  *a1 = 0u;
  v6 = MEMORY[0x277D82670];
  v7 = MEMORY[0x277D82680];
  v8 = *a3;
  v16[0] = *a2;
  v16[1] = v8;
  v14 = 0;
  do
  {
    v9 = v16[v4];
    if (v9 >= 0xBEBC200)
    {
      sub_2621D552C(v6, "runtime_err in ", 15);
      sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/../tensor/shape.hpp", 118);
      sub_2621D552C(v6, " ", 1);
      v10 = MEMORY[0x266727260](v6, 71);
      sub_2621D552C(v10, " ", 1);
      sub_2621D552C(v10, "Shape", 5);
      std::ios_base::getloc((v10 + *(*v10 - 24)));
      v11 = std::locale::use_facet(&v15, v7);
      (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v15);
      std::ostream::put();
      std::ostream::flush();
      sub_262223C90("err", "shape[", &v14, "]", " is ", &v16[v4], " ,it should <= 6");
      std::ios_base::getloc((v6 + *(*v6 - 24)));
      v12 = std::locale::use_facet(&v15, v7);
      (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&v15);
      std::ostream::put();
      std::ostream::flush();
    }

    v14 = v5;
    *(a1 + v4 * 8) = v9;
    ++v4;
    ++v5;
  }

  while (v4 != 2);
  return a1;
}

__n128 sub_262236750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8) - *(a2 + 8);
  *&v5 = v5;
  *&v5 = fabsf(*&v5) + 0.00000011921;
  v27 = vdivq_f32(vabdq_f32(*(a1 + 64), *(a2 + 64)), vdupq_lane_s32(*&v5, 0));
  objc_msgSend_intrinsics(*(a1 + 16), a2, a3);
  v29 = v6;
  v31 = v7;
  v28 = v8;
  v30 = v9;
  v33 = v10;
  v32 = v11;
  sub_262240264((a1 + 80), &v28, 100, 100, v8, v9, v11, v12, v13, v14);
  objc_msgSend_intrinsics(*(a2 + 16), v15, v16);
  v29 = v17;
  v31 = v18;
  v28 = v19;
  v30 = v20;
  v33 = v21;
  v32 = v22;
  sub_262240264((a2 + 80), &v28, 100, 100, v19, v20, v22, v23, v24, v25);
  return v27;
}

uint64_t sub_262236864(uint64_t a1, CVPixelBufferRef pixelBuffer)
{
  *a1 = pixelBuffer;
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  *(a1 + 8) = CVPixelBufferGetWidth(*a1);
  *(a1 + 12) = CVPixelBufferGetHeight(*a1);
  *(a1 + 16) = CVPixelBufferGetBaseAddress(*a1);
  *(a1 + 24) = CVPixelBufferGetBytesPerRow(*a1);
  return a1;
}

uint64_t sub_2622368FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_262236940(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_262236A0C(result, a4);
  }

  return result;
}

void sub_2622369A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622369BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 144;
    sub_262232668(v3 - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_262236A0C(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2621CBEB0();
}

void sub_262236A5C(uint64_t a1)
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2[0] = xmmword_2623A7870;
  v2[1] = xmmword_2623A7880;
  memset(v1, 0, sizeof(v1));
  sub_2622391E4(v1, v2, v3);
}

id sub_262236B50(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 6);
    if (v15 + 1 > 0x155555555555555)
    {
      sub_2621CBEB0();
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 6);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0xAAAAAAAAAAAAAALL)
    {
      v18 = 0x155555555555555;
    }

    else
    {
      v18 = v17;
    }

    v34 = a1;
    if (v18)
    {
      sub_2621EAE84(v18);
    }

    v19 = 192 * v15;
    v31 = 0;
    v32 = v19;
    v33 = v19;
    v20 = *a2;
    v21 = a2[1];
    v22 = a2[3];
    *(v19 + 32) = a2[2];
    *(v19 + 48) = v22;
    v23 = a2[7];
    v25 = a2[4];
    v24 = a2[5];
    *(v19 + 96) = a2[6];
    *(v19 + 112) = v23;
    *(v19 + 64) = v25;
    *(v19 + 80) = v24;
    *v19 = v20;
    *(v19 + 16) = v21;
    *(v19 + 128) = *(a2 + 16);
    *(v19 + 136) = *(a2 + 34);
    *(v19 + 144) = *(a2 + 18);
    *(v19 + 160) = 0;
    *(v19 + 168) = 0;
    *(v19 + 152) = 0;
    sub_2621C8E70((v19 + 152), *(a2 + 19), *(a2 + 20), (*(a2 + 20) - *(a2 + 19)) >> 2);
    *(v19 + 176) = *(a2 + 22);
    *(v19 + 184) = *(a2 + 92);
    *&v33 = v33 + 192;
    v26 = *(a1 + 8);
    v27 = v32 + *a1 - v26;
    sub_2622117DC(a1, *a1, v26, v27);
    v28 = *a1;
    *a1 = v27;
    v29 = *(a1 + 16);
    v30 = v33;
    *(a1 + 8) = v33;
    *&v33 = v28;
    *(&v33 + 1) = v29;
    v31 = v28;
    v32 = v28;
    result = sub_2622118D8(&v31);
    v14 = v30;
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    *(v5 + 32) = a2[2];
    *(v5 + 48) = v8;
    *v5 = v6;
    *(v5 + 16) = v7;
    v9 = a2[4];
    v10 = a2[5];
    v11 = a2[7];
    *(v5 + 96) = a2[6];
    *(v5 + 112) = v11;
    *(v5 + 64) = v9;
    *(v5 + 80) = v10;
    *(v5 + 128) = *(a2 + 16);
    *(v5 + 136) = *(a2 + 34);
    v12 = *(a2 + 18);
    *(v5 + 152) = 0;
    *(v5 + 144) = v12;
    *(v5 + 160) = 0;
    *(v5 + 168) = 0;
    sub_2621C8E70((v5 + 152), *(a2 + 19), *(a2 + 20), (*(a2 + 20) - *(a2 + 19)) >> 2);
    result = *(a2 + 22);
    *(v5 + 176) = result;
    *(v5 + 184) = *(a2 + 92);
    v14 = v5 + 192;
    *(a1 + 8) = v5 + 192;
  }

  *(a1 + 8) = v14;
  return result;
}

void sub_262236D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_2622118D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_262236D98(uint64_t result, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v5 = a2;
  v5.i32[2] = 1.0;
  v6 = a3;
  v6.i32[2] = 1.0;
  v7 = a4;
  v7.i32[2] = 1.0;
  v8 = a5;
  v8.i32[2] = 1.0;
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), vnegq_f32(v5)), v6, vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL));
  v10 = vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL);
  v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), vnegq_f32(v7)), v8, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  v12 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
  v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), vnegq_f32(v10)), v12, vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL));
  if (fabsf(v13.f32[1]) < 1.0e-10)
  {
    goto LABEL_33;
  }

  v14 = v13.f32[2] / v13.f32[1];
  v15 = (vmovn_s32(vcgtq_f32(a2, a3)).u8[0] & 1) != 0 ? a3.f32[0] : a2.f32[0];
  if (v14 < v15)
  {
    goto LABEL_33;
  }

  v16 = (vmovn_s32(vcgtq_f32(a4, a5)).u8[0] & 1) != 0 ? a5.f32[0] : a4.f32[0];
  if (v14 < v16)
  {
    goto LABEL_33;
  }

  v17 = (vmovn_s32(vcgtq_f32(a3, a2)).u8[0] & 1) != 0 ? a3.f32[0] : a2.f32[0];
  if (v14 > v17)
  {
    goto LABEL_33;
  }

  v18 = (vmovn_s32(vcgtq_f32(a5, a4)).u8[0] & 1) != 0 ? a5.f32[0] : a4.f32[0];
  if (v14 > v18)
  {
    goto LABEL_33;
  }

  v13.f32[0] = v13.f32[0] / v13.f32[1];
  a2.i32[0] = a2.i32[1];
  v19 = a3.f32[1] >= a2.f32[1] ? a2.f32[1] : a3.f32[1];
  if (v13.f32[0] < v19)
  {
    goto LABEL_33;
  }

  v20 = a5.f32[1] >= a4.f32[1] ? a4.f32[1] : a5.f32[1];
  if (v13.f32[0] < v20)
  {
    goto LABEL_33;
  }

  if (a2.f32[1] < a3.f32[1])
  {
    a2.f32[0] = a3.f32[1];
  }

  if (v13.f32[0] <= a2.f32[0] && (a4.f32[1] >= a5.f32[1] ? (v21 = a4.f32[1]) : (v21 = a5.f32[1]), v13.f32[0] <= v21))
  {
    __asm { FMOV            V0.4S, #1.0 }

    *&_Q0 = v13.f32[2] / v13.f32[1];
    DWORD1(_Q0) = v13.i32[0];
    *result = _Q0;
    v22 = 1;
  }

  else
  {
LABEL_33:
    v22 = 0;
    *result = 0;
  }

  *(result + 16) = v22;
  return result;
}

void sub_262236F30(float32x2_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t a4)
{
  v7 = *(a2 + 16);
  v8 = vsubq_f32(*a2, a4);
  v9 = vsubq_f32(v7, *a2);
  v10 = vcvtq_f64_f32(*v9.f32);
  v11 = vmulq_f64(v10, v10);
  v8.f32[0] = -(COERCE_FLOAT(vmulq_f32(v8, v9).i32[1]) + (v8.f32[0] * v9.f32[0])) / vaddvq_f64(v11);
  *&v11.f64[0] = vmla_n_f32(*a2, *v9.f32, v8.f32[0]);
  v42 = *&v11.f64[0];
  LODWORD(v11.f64[1]) = 0;
  v48 = v11;
  v12 = vsubq_f32(v7, a4);
  v13 = *(a2 + 32);
  v14 = *(a2 + 48);
  v15 = vsubq_f32(v13, v7);
  v16 = vcvtq_f64_f32(*v15.f32);
  v12.f32[0] = -(COERCE_FLOAT(vmulq_f32(v12, v15).i32[1]) + (v12.f32[0] * v15.f32[0])) / vaddvq_f64(vmulq_f64(v16, v16));
  *v7.f32 = vmla_n_f32(*v7.f32, *v15.f32, v12.f32[0]);
  v43 = *v7.f32;
  v44 = *a4.f32;
  v7.i32[2] = 0;
  v17 = vsubq_f32(*a2, v14);
  v18 = vsubq_f32(v13, a4);
  v19 = vsubq_f32(v14, v13);
  v20 = vcvtq_f64_f32(*v19.f32);
  v18.f32[0] = -(COERCE_FLOAT(vmulq_f32(v18, v19).i32[1]) + (v18.f32[0] * v19.f32[0])) / vaddvq_f64(vmulq_f64(v20, v20));
  *v13.f32 = vmla_n_f32(*v13.f32, *v19.f32, v18.f32[0]);
  v41 = *v13.f32;
  v13.i32[2] = 0;
  v46 = v13;
  v47 = v7;
  v21 = vsubq_f32(v14, a4);
  v22 = vcvtq_f64_f32(*v17.f32);
  v21.f32[0] = -(COERCE_FLOAT(vmulq_f32(v21, v17).i32[1]) + (v21.f32[0] * v17.f32[0])) / vaddvq_f64(vmulq_f64(v22, v22));
  *v14.f32 = vmla_n_f32(*v14.f32, *v17.f32, v21.f32[0]);
  v40 = *v14.f32;
  v14.i32[2] = 0;
  v45 = v14;
  sub_26220F644(v52, a2);
  v23 = v52[0];
  v24.i64[0] = *v52[0];
  v24.i32[2] = *(v52[0] + 8);
  v50 = *a3;
  v51 = v24;
  v49 = a3[1];
  v25 = sub_262237250(v24, v48, *a3, v49);
  v26 = sub_262237250(v51, v47, v50, v49);
  v27 = sub_262237250(v51, v46, v50, v49);
  v28 = sub_262237250(v51, v45, v50, v49);
  v29 = *(a2 + 80);
  *a1[8].f32 = *(a2 + 64);
  *a1[10].f32 = v29;
  v30 = *(a2 + 112);
  *a1[12].f32 = *(a2 + 96);
  *a1[14].f32 = v30;
  v31 = *(a2 + 16);
  *a1->f32 = *a2;
  *a1[2].f32 = v31;
  v32 = *(a2 + 48);
  *a1[4].f32 = *(a2 + 32);
  *a1[6].f32 = v32;
  if (!v25 && !v26)
  {
    v34 = v42;
    v33 = v43;
    *a1 = v42;
    a1[4] = v43;
    v35 = 14;
    v36 = 12;
    v37 = 8;
    v38 = v44;
LABEL_4:
    v39 = v38;
    a1[6] = v38;
LABEL_11:
    a1[v37] = v34;
    a1[v36] = v33;
    a1[v35] = v39;
    goto LABEL_12;
  }

  if (!v26 && !v27)
  {
    v33 = v43;
    *a1 = v44;
    a1[2] = v43;
    v35 = 14;
    v36 = 10;
    v37 = 8;
    v34 = v44;
    v39 = v41;
    a1[6] = v41;
    goto LABEL_11;
  }

  v39 = v41;
  if (!v27 && !v28)
  {
    v34 = v40;
    *a1 = v40;
    v35 = 12;
    a1[2] = v44;
    v36 = 10;
    v37 = 8;
    v33 = v44;
    a1[4] = v41;
    goto LABEL_11;
  }

  if (!v25 && !v28)
  {
    v34 = v42;
    a1[2] = v42;
    v35 = 14;
    a1[4] = v44;
    v36 = 12;
    v37 = 10;
    v33 = v44;
    v38 = v40;
    goto LABEL_4;
  }

LABEL_12:
  v52[1] = v23;
  operator delete(v23);
}

uint64_t sub_2622371D0(uint64_t a1)
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

BOOL sub_262237250(float32x4_t a1, float32x4_t a2, float32x4_t a3, int32x4_t a4)
{
  v4 = a1;
  v4.i32[2] = 1.0;
  v5 = a2;
  v5.i32[2] = 1.0;
  a3.i32[2] = 1.0;
  a4.i32[2] = 1.0;
  v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), vnegq_f32(v4)), v5, vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL));
  v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a4, a4), a4, 0xCuLL), vnegq_f32(a3)), a4, vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL));
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vnegq_f32(v7)), v9, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  if (fabsf(v10.f32[1]) < 1.0e-10)
  {
    return 0;
  }

  v11 = v10.f32[2] / v10.f32[1];
  if (vmovn_s32(vcgtq_f32(a1, a2)).u8[0])
  {
    v12 = a2.f32[0];
  }

  else
  {
    v12 = a1.f32[0];
  }

  if (v11 >= v12)
  {
    v13 = (vmovn_s32(vcgtq_f32(a2, a1)).u8[0] & 1) != 0 ? a2.f32[0] : a1.f32[0];
    if (v11 <= v13)
    {
      return 1;
    }
  }

  v14 = v10.f32[0] / v10.f32[1];
  a1.i32[0] = a1.i32[1];
  if (a2.f32[1] >= a1.f32[1])
  {
    v15 = a1.f32[1];
  }

  else
  {
    v15 = a2.f32[1];
  }

  if (v14 < v15)
  {
    return 0;
  }

  if (a1.f32[1] < a2.f32[1])
  {
    a1.f32[0] = a2.f32[1];
  }

  return v14 <= a1.f32[0];
}

void sub_26223736C()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = objc_msgSend_initWithObjectsAndKeys_(v0, v1, &unk_2874FAC60, @"Cabinet", &unk_2874FAC90, @"Refrigerator", &unk_2874FAC90, @"Shelf", &unk_2874FAC90, @"Stove", &unk_2874FACA0, @"Bed", &unk_2874FAC60, @"Sink", &unk_2874FAC90, @"Washer", &unk_2874FACB0, @"Toilet", &unk_2874FACC0, @"Bathtub", &unk_2874FAC90, @"Oven", &unk_2874FAC90, @"Dishwasher", &unk_2874FACD0, @"Fireplace", &unk_2874FACE0, @"Chair", &unk_2874FAC60, @"Table", &unk_2874FAC60, @"Screen", &unk_2874FAC60, @"Sofa", &unk_2874FAC60, @"Stairs", &unk_2874FAC60, @"Window", &unk_2874FAC60, @"Door", &unk_2874FAC60, @"BuildInCabinet", &unk_2874FAC60, @"Storage", 0);
  v3 = qword_27FF0C108;
  qword_27FF0C108 = v2;
}

uint64_t *sub_2622374F0(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      sub_2621C6A34();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = *(v18 + 8);
    if (v16.u32[0] > 1uLL)
    {
      v22 = *(v18 + 8);
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && *(v18 + 16) == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void *sub_262237850(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_262237938()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = objc_msgSend_initWithObjectsAndKeys_(v0, v1, &unk_2874FAC70, @"Cabinet", &unk_2874FAC70, @"Refrigerator", &unk_2874FAC70, @"Shelf", &unk_2874FAC70, @"Stove", &unk_2874FAC70, @"Bed", &unk_2874FAC70, @"Sink", &unk_2874FAC70, @"Washer", &unk_2874FAC70, @"Toilet", &unk_2874FAC80, @"Bathtub", &unk_2874FAC70, @"Oven", &unk_2874FAC70, @"Dishwasher", &unk_2874FAC70, @"Fireplace", &unk_2874FAC60, @"Chair", &unk_2874FAC70, @"Table", &unk_2874FAC70, @"Screen", &unk_2874FAC70, @"Sofa", &unk_2874FAC60, @"Stairs", &unk_2874FAC60, @"Window", &unk_2874FAC60, @"Door", &unk_2874FAC60, @"BuildInCabinet", &unk_2874FAC70, @"Storage", 0);
  v3 = qword_27FF0C0F8;
  qword_27FF0C0F8 = v2;
}

void sub_262237A9C()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = objc_msgSend_initWithObjectsAndKeys_(v0, v1, &unk_2874FAC50, @"Cabinet", &unk_2874FAC50, @"Refrigerator", &unk_2874FAC50, @"Shelf", &unk_2874FAC50, @"Stove", &unk_2874FAC50, @"Bed", &unk_2874FAC50, @"Sink", &unk_2874FAC50, @"Washer", &unk_2874FAC50, @"Toilet", &unk_2874FAC50, @"Bathtub", &unk_2874FAC50, @"Oven", &unk_2874FAC50, @"Dishwasher", &unk_2874FAC50, @"Fireplace", &unk_2874FAC60, @"Chair", &unk_2874FAC50, @"Table", &unk_2874FAC50, @"Screen", &unk_2874FAC50, @"Sofa", &unk_2874FAC60, @"Stairs", &unk_2874FAC60, @"Window", &unk_2874FAC60, @"Door", &unk_2874FAC60, @"BuildInCabinet", &unk_2874FAC50, @"Storage", 0);
  v3 = qword_27FF0C0E8;
  qword_27FF0C0E8 = v2;
}

uint64_t sub_262237C28(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2874EE3D0;
  a2[1] = v2;
  return result;
}

uint64_t sub_262237CBC(_OWORD *a1, id *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v70 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isEqualToString_(*a2, a2, @"Fireplace", a4))
  {
    v9 = a5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 11);
  v11 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v10, v10)));
  v12 = vrsqrte_f32(v11);
  v13 = vmul_f32(v12, vrsqrts_f32(v11.u32[0], vmul_f32(v12, v12)));
  *v10.f32 = vmul_n_f32(*v10.f32, vmul_f32(v13, vrsqrts_f32(v11.u32[0], vmul_f32(v13, v13))).f32[0]);
  v14 = vsubq_f32(*(a6 + 16), *a6);
  v15 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v14, v14)));
  v16 = vrsqrte_f32(v15);
  v17 = vmul_f32(v16, vrsqrts_f32(v15, vmul_f32(v16, v16)));
  v18 = vmul_n_f32(*v14.f32, vmul_f32(v17, vrsqrts_f32(v15, vmul_f32(v17, v17))).f32[0]);
  if (vaddv_f32(vmul_f32(*v10.f32, v18)) < 0.99)
  {
    if (qword_27FF0C060 != -1)
    {
      dispatch_once(&qword_27FF0C060, &unk_2874EE100);
    }

    v19 = qword_27FF0C058;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2621C3000, v19, OS_LOG_TYPE_INFO, "Fireplace and its nearest wall should be aligned, skipping the optimization.", buf, 2u);
    }

    return 0xFFFFFFFFLL;
  }

  sub_26220F644(__p, a6);
  v21 = __p[0];
  v22 = *(__p[0] + 3);
  v23 = *(a6 + 48);
  v24 = vsubq_f32(*a6, v23);
  v25 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v24, v24)));
  v26 = vrsqrte_f32(v25);
  v27 = vmul_f32(v26, vrsqrts_f32(v25.u32[0], vmul_f32(v26, v26)));
  v28 = vmul_n_f32(*v24.f32, vmul_f32(v27, vrsqrts_f32(v25.u32[0], vmul_f32(v27, v27))).f32[0]);
  v29 = *(a1 + 4);
  v30 = *(a1 + 5);
  v31 = vaddv_f32(vmul_f32(vsub_f32(*v29.i8, *v23.f32), v28)) / v22;
  v32 = 0.0;
  if (v31 >= 0.0)
  {
    v32 = v31;
  }

  v33 = vaddv_f32(vmul_f32(v28, vsub_f32(*v30.i8, *v23.f32))) / v22;
  if (v33 > 1.0)
  {
    v33 = 1.0;
  }

  if (v32 < v33 && (v32 > 0.0 || v33 < 1.0))
  {
    *__p[0] = vadd_f32(vmul_n_f32(vmul_n_f32(v28, v22), ((v32 + v33) * 0.5) + -0.5), *__p[0]);
    v21[1].f32[1] = v22 * (v33 - v32);
    v29 = *(a1 + 4);
    v30 = *(a1 + 5);
  }

  v30.i32[2] = 1.0;
  v29.i32[2] = 1.0;
  v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), vnegq_f32(v30)), v29, vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
  v36 = vmulq_f32(v35, v35);
  v36.f32[0] = sqrtf(v36.f32[2] + v36.f32[0]);
  v37 = *(a6 + 16);
  v37.i32[2] = 1.0;
  v54 = vdivq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), vdupq_lane_s32(*v36.f32, 0));
  v38 = vmulq_f32(v37, v54);
  v39 = v38.f32[2] + vaddv_f32(*v38.f32);
  if (v39 < 0.01)
  {
    v40 = vabds_f32(0.01, v39);
    if (v40 <= 0.2)
    {
      v21[2].f32[0] = v40 + v21[2].f32[0];
      *v21 = vadd_f32(vmul_f32(vmul_n_f32(v18, 0.01 - v39), 0x3F0000003F000000), *v21);
    }

    else
    {
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v41 = qword_27FF0C058;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2621C3000, v41, OS_LOG_TYPE_DEBUG, "Shifting value is too large, skipping.", buf, 2u);
      }
    }
  }

  v42 = *a6;
  v42.i32[2] = 1.0;
  v43 = vmulq_f32(v54, v42);
  v44 = v43.f32[2] + vaddv_f32(*v43.f32);
  v45 = -0.16;
  if (v44 > 0.0)
  {
    v45 = 0.0;
  }

  if (v44 > v45)
  {
    v46 = vabds_f32(v45, v44);
    if (v46 <= 0.2)
    {
      v48 = __p[0];
      *(__p[0] + 4) = v46 + *(__p[0] + 4);
      *v48 = vadd_f32(vmul_f32(vmul_n_f32(v18, v45 - v44), 0x3F0000003F000000), *v48);
    }

    else
    {
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v47 = qword_27FF0C058;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2621C3000, v47, OS_LOG_TYPE_DEBUG, "Shifting value is too large, skipping.", buf, 2u);
      }
    }
  }

  sub_26220FF88(buf, __p);
  v49 = buf[0];
  v67 = v59;
  v68 = v60;
  v69[0] = v61[0];
  *(v69 + 15) = *(v61 + 15);
  v63 = *&buf[1];
  v64 = v56;
  v65 = v57;
  v66 = v58;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  result = 0;
  v50 = v68;
  *(a6 + 65) = v67;
  v51 = *(v69 + 15);
  *(a6 + 81) = v50;
  *(a6 + 97) = v69[0];
  *(a6 + 112) = v51;
  v52 = v64;
  *(a6 + 1) = v63;
  *(a6 + 17) = v52;
  v53 = v66;
  *(a6 + 33) = v65;
  *a6 = v49;
  *(a6 + 49) = v53;
  return result;
}

void sub_2622381C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622381E8(__n128 *a1, id *a2, int a3, int a4, float a5, uint64_t a6, float32x4_t *a7)
{
  v65[2] = *MEMORY[0x277D85DE8];
  v13 = MEMORY[0x277CBEB98];
  v65[0] = @"Table";
  v65[1] = @"Bed";
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v65, 2, a6);
  v16 = objc_msgSend_setWithArray_(v13, v15, v14);

  v51 = a7[1];
  v48 = *a7;
  v49 = a7[2];
  isEqualToString = objc_msgSend_isEqualToString_(*a2, v17, @"Fireplace");
  v19.i32[1] = v49.i32[1];
  v20 = vsubq_f32(v48, v51);
  v21 = sqrtf(vaddv_f32(*&vmulq_f32(v20, v20)));
  v22 = vsubq_f32(v51, v49);
  v23 = sqrtf(vaddv_f32(*&vmulq_f32(v22, v22)));
  if (v21 >= v23)
  {
    *&v24 = v21;
  }

  else
  {
    *&v24 = v23;
  }

  if (isEqualToString)
  {
    v25 = 0.5;
  }

  else
  {
    v25 = 0.1;
  }

  v50 = a1[5];
  v52 = a1[4];
  v19.i32[0] = v24;
  sub_262238540(v62, a7, 1u, 2u, v52, v50, v19, v25);
  v26.i32[0] = v24;
  sub_262238540(v59, a7, 2u, 3u, v52, v50, v26, v25);
  v27.i32[0] = v24;
  sub_262238540(v56, a7, 3u, 0, v52, v50, v27, v25);
  v28.i32[0] = v24;
  sub_262238540(v53, a7, 0, 1u, v52, v50, v28, v25);
  v30 = a1[6].n128_f32[0] * -0.5;
  if (a4)
  {
    if (a3)
    {
      v32.n128_u64[0] = v50.i64[0];
      v31.n128_u64[0] = v52.i64[0];
      if (v63 == 1 && (v57 & 1) != 0)
      {
        v33 = 2;
        v34 = 1;
        v35 = v56;
        v36 = v62;
LABEL_20:
        v41 = *v35;
        v42 = *v36;
        v43 = a5;
        v38 = 0;
LABEL_27:
        v44 = sub_262238704(v34, v33, v38, a7, v42, v41, v31.n128_u64[0], v32.n128_u64[0], v43, v30);
        goto LABEL_30;
      }
    }

    else
    {
      v32.n128_u64[0] = v50.i64[0];
      v31.n128_u64[0] = v52.i64[0];
      if (v60 == 1 && (v54 & 1) != 0)
      {
        v33 = 3;
        v34 = 2;
        v35 = v53;
        v36 = v59;
        goto LABEL_20;
      }
    }

    sub_2622386B8();
  }

  if (v63)
  {
    v37 = v64 | v58;
    if ((v57 & (v64 | v58)) == 1 && (v60 & (v61 | v55) & 1) == 0)
    {
      if (v57)
      {
        v38 = 0;
        v33 = 2;
        v34 = 1;
        v39 = v56;
        v40 = v62;
        v32.n128_u64[0] = v50.i64[0];
        v31.n128_u64[0] = v52.i64[0];
LABEL_26:
        v41 = *v39;
        v42 = *v40;
        v43 = a5;
        goto LABEL_27;
      }

      goto LABEL_32;
    }

    if ((v60 & 1) == 0)
    {
LABEL_29:
      v44 = 0;
      goto LABEL_30;
    }
  }

  else
  {
    v37 = 0;
    if ((v60 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v44 = 0;
  v45 = v54;
  if ((v54 & (v61 | v55)) == 1 && (v37 & 1) == 0)
  {
    v46 = objc_msgSend_containsObject_(v16, v29, *a2);
    if (v45)
    {
      v38 = v46 ^ 1;
      v31 = a1[4];
      v32 = a1[5];
      v33 = 3;
      v34 = 2;
      v39 = v53;
      v40 = v59;
      goto LABEL_26;
    }

LABEL_32:
    sub_2622386B8();
  }

LABEL_30:

  return v44;
}

void sub_262238540(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int32x4_t a5, int32x4_t a6, int32x2_t a7, float a8)
{
  v10 = *(a2 + 16 * a3);
  v11 = *(a2 + 16 * a4);
  v12 = a5;
  v12.i32[2] = 1.0;
  v13 = a6;
  v13.i32[2] = 1.0;
  v14 = v10;
  v14.i32[2] = 1.0;
  v15 = v11;
  v15.i32[2] = 1.0;
  v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL), vnegq_f32(v12)), v13, vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL));
  v17 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
  v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), vnegq_f32(v14)), v15, vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL));
  v19 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
  v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(v17)), v19, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
  if (fabsf(v20.f32[1]) >= 1.0e-10)
  {
    v22.f32[0] = v20.f32[2] / v20.f32[1];
    __asm { FMOV            V6.4S, #1.0 }

    *&_Q6 = v20.f32[2] / v20.f32[1];
    *(&_Q6 + 1) = v20.f32[0] / v20.f32[1];
    v22.f32[1] = v20.f32[0] / v20.f32[1];
    v28 = vsub_f32(v22, *v10.i8);
    v29 = vmul_f32(v28, v28);
    v30 = vsub_f32(v22, *v11.i8);
    v31 = vmul_f32(v30, v30);
    v32 = vcgt_f32(vdup_lane_s32(a7, 0), vsqrt_f32(vadd_f32(vzip1_s32(v31, v29), vzip2_s32(v31, v29))));
    if ((v32.i32[1] | v32.i32[0]))
    {
      v33 = _Q6;
      v21 = sub_262238E10(*a5.i8, *a6.i8, *&_Q6) <= a8;
      *a1 = v33;
    }

    else
    {
      v21 = 0;
      *a1 = _Q6;
    }

    *(a1 + 16) = 1;
  }

  else
  {
    v21 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *(a1 + 32) = v21;
}

void sub_2622386B8()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, &unk_2874EF5D8, MEMORY[0x277D82618]);
}

uint64_t sub_262238704(unsigned int a1, unsigned int a2, int a3, uint64_t a4, __n128 a5, float32x4_t a6, float32x2_t a7, float32x2_t a8, float a9, float a10)
{
  v18 = *(a4 + 16 * a1);
  v19 = vsub_f32(a5.n128_u64[0], *&v18);
  v20 = vmul_f32(v19, v19);
  v21 = (a4 + 16 * a2);
  v22 = vsub_f32(a5.n128_u64[0], *v21);
  v23 = vmul_f32(v22, v22);
  v24 = vsqrt_f32(vadd_f32(vzip1_s32(v20, v23), vzip2_s32(v20, v23)));
  v102 = v24.f32[0];
  *&v18 = vsub_f32(*&v18, *v21);
  v25 = v24.f32[1];
  v26 = vabds_f32(vaddv_f32(v24), sqrtf(vaddv_f32(vmul_f32(*&v18, *&v18))));
  v27 = (a2 + 1) & 3;
  v28 = (a4 + 16 * ((a2 + 1) & 3));
  v29 = vsubq_f32(*v21->f32, *v28);
  v30 = sqrtf(vaddv_f32(*&vmulq_f32(v29, v29)));
  v99 = a5;
  v31 = sub_262238E10(a7, a8, a5.n128_u64[0]);
  v32 = sub_262238E10(a7, a8, *a6.f32);
  if (v31 >= v32)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  if (v25 >= v102)
  {
    v34 = v102;
  }

  else
  {
    v34 = v25;
  }

  if (a3)
  {
    v35 = v25 < a9;
    if (v26 <= 0.0001)
    {
      v35 = 1;
    }

    if (v33 < (v30 * 0.5) && v35)
    {
      v37 = (a2 - 1) & 3;
      v38 = a2 & 3 ^ 2;
      if (fabsf(a10) > 0.000001)
      {
        v39 = *(a4 + 16 * v38);
        v40 = vsub_f32(*a6.f32, *v39.f32);
        v41 = vmul_f32(v40, v40);
        *v41.i32 = sqrtf(*&v41.i32[1] + (v40.f32[0] * v40.f32[0]));
        if (*v41.i32 <= 0.0 || (*v41.i32 + a10) <= 0.0)
        {
          if (qword_27FF0C060 != -1)
          {
            dispatch_once(&qword_27FF0C060, &unk_2874EE100);
          }

          v55 = qword_27FF0C058;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2621C3000, v55, OS_LOG_TYPE_ERROR, "[WallAlign] The wall thickness is more than the object thickness. Keep the original object box.", buf, 2u);
          }
        }

        else
        {
          *v39.f32 = vmla_n_f32(*v39.f32, vdiv_f32(v40, vdup_lane_s32(v41, 0)), *v41.i32 + a10);
          a6 = v39;
        }

        v56 = *(a4 + 16 * ((a2 - 1) & 3));
        v57 = vsub_f32(v99.n128_u64[0], *v56.f32);
        v58 = vmul_f32(v57, v57);
        *v58.i32 = sqrtf(*&v58.i32[1] + (v57.f32[0] * v57.f32[0]));
        if (*v58.i32 > 0.0 && (*v58.i32 + a10) > 0.0)
        {
          *v56.f32 = vmla_n_f32(*v56.f32, vdiv_f32(v57, vdup_lane_s32(v58, 0)), *v58.i32 + a10);
          v59 = v56;
LABEL_68:
          *v21 = *v59.f32;
          v66 = (a4 + 16 * (a2 + 4));
          *v66 = *v59.f32;
          v67 = v28->i32[2];
          v28->i64[0] = a6.i64[0];
          v68 = a4 + 16 * (v27 | 4u);
          v69 = *(v68 + 8);
          *v68 = a6.i64[0];
          v70 = vsubq_f32(*(a4 + 16 * v37), *v21->f32);
          v71 = (a4 + 16 * v38);
          v72 = vsub_f32(*v71, *a6.f32);
          if (sqrtf(vaddv_f32(*&vmulq_f32(v70, v70))) >= sqrtf(vaddv_f32(vmul_f32(v72, v72))))
          {
            v77 = vsubq_f32(v59, a6);
            v78 = vsubq_f32(*(a4 + 16 * v37), v59);
            v79 = vcvtq_f64_f32(*v78.f32);
            v77.f32[0] = -(COERCE_FLOAT(vmulq_f32(v77, v78).i32[1]) + (v77.f32[0] * v78.f32[0])) / vaddvq_f64(vmulq_f64(v79, v79));
            v21[1].i32[0] = v21[1];
            v80 = vmla_n_f32(*v59.f32, *v78.f32, v77.f32[0]);
            *v21 = v80;
            *v66 = v80;
          }

          else
          {
            v73 = vsubq_f32(a6, v59);
            v74 = vsubq_f32(*v71->f32, a6);
            v75 = vcvtq_f64_f32(*v74.f32);
            v73.f32[0] = -(COERCE_FLOAT(vmulq_f32(v73, v74).i32[1]) + (v73.f32[0] * v74.f32[0])) / vaddvq_f64(vmulq_f64(v75, v75));
            v28->i32[2] = v67;
            v76 = vmla_n_f32(*a6.f32, *v74.f32, v73.f32[0]);
            *v28->f32 = v76;
            *(v68 + 8) = v69;
            *v68 = v76;
          }

          return 0xFFFFFFFFLL;
        }

        if (qword_27FF0C060 != -1)
        {
          dispatch_once(&qword_27FF0C060, &unk_2874EE100);
        }

        v65 = qword_27FF0C058;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          *v106 = 0;
          _os_log_error_impl(&dword_2621C3000, v65, OS_LOG_TYPE_ERROR, "[WallAlign] The wall thickness is more than the object thickness. Keep the original object box.", v106, 2u);
        }
      }

      v59 = v99;
      goto LABEL_68;
    }

    goto LABEL_33;
  }

  v42 = a2 - 1;
  if (v25 >= v102)
  {
    v43 = a1;
  }

  else
  {
    v43 = a2;
  }

  if (v25 >= v102)
  {
    v44 = (a1 - 1) & 3;
  }

  else
  {
    v44 = v27;
  }

  if (v25 >= v102)
  {
    v42 = a1 + 1;
  }

  if (v26 > 0.0001 && v34 >= a9 || v33 >= (v30 * 0.5))
  {
LABEL_33:
    v48 = v34 > 0.3 && v34 > a9;
    if (v48 && v26 <= 0.0001)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  v50 = v43 & 3 ^ 2;
  v51 = v42 & 3;
  if (fabsf(a10) <= 0.000001)
  {
    goto LABEL_77;
  }

  v52 = *(a4 + 16 * v50);
  v53 = vsub_f32(*a6.f32, *v52.f32);
  v54 = vmul_f32(v53, v53);
  *v54.i32 = sqrtf(*&v54.i32[1] + (v53.f32[0] * v53.f32[0]));
  if (*v54.i32 <= 0.0 || (*v54.i32 + a10) <= 0.0)
  {
    if (qword_27FF0C060 != -1)
    {
      dispatch_once(&qword_27FF0C060, &unk_2874EE100);
    }

    v60 = qword_27FF0C058;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *v105 = 0;
      _os_log_error_impl(&dword_2621C3000, v60, OS_LOG_TYPE_ERROR, "[WallAlign] The wall thickness is more than the object thickness. Keep the original object box.", v105, 2u);
    }
  }

  else
  {
    *v52.f32 = vmla_n_f32(*v52.f32, vdiv_f32(v53, vdup_lane_s32(v54, 0)), *v54.i32 + a10);
    a6 = v52;
  }

  v61 = *(a4 + 16 * v51);
  v62 = vsub_f32(v99.n128_u64[0], *v61.f32);
  v63 = vmul_f32(v62, v62);
  *v63.i32 = sqrtf(*&v63.i32[1] + (v62.f32[0] * v62.f32[0]));
  if (*v63.i32 <= 0.0 || (*v63.i32 + a10) <= 0.0)
  {
    if (qword_27FF0C060 != -1)
    {
      dispatch_once(&qword_27FF0C060, &unk_2874EE100);
    }

    v81 = qword_27FF0C058;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      *v104 = 0;
      _os_log_error_impl(&dword_2621C3000, v81, OS_LOG_TYPE_ERROR, "[WallAlign] The wall thickness is more than the object thickness. Keep the original object box.", v104, 2u);
    }

LABEL_77:
    v64 = v99;
    goto LABEL_78;
  }

  *v61.f32 = vmla_n_f32(*v61.f32, vdiv_f32(v62, vdup_lane_s32(v63, 0)), *v63.i32 + a10);
  v64 = v61;
LABEL_78:
  v82 = (a4 + 16 * v43);
  v82->i64[0] = v64.i64[0];
  v83 = (a4 + 16 * (v43 + 4));
  *v83 = *v64.f32;
  v84 = a4 + 16 * v44;
  v85 = *(v84 + 8);
  *v84 = a6.i64[0];
  v86 = a4 + 16 * (v44 | 4);
  v87 = *(v86 + 8);
  *v86 = a6.i64[0];
  v88 = vsubq_f32(*(a4 + 16 * v51), *v82);
  v89 = (a4 + 16 * v50);
  v90 = vsub_f32(*v89, *a6.f32);
  if (sqrtf(vaddv_f32(*&vmulq_f32(v88, v88))) >= sqrtf(vaddv_f32(vmul_f32(v90, v90))))
  {
    v95 = vsubq_f32(v64, a6);
    v96 = vsubq_f32(*(a4 + 16 * v51), v64);
    v97 = vcvtq_f64_f32(*v96.f32);
    v95.f32[0] = -(COERCE_FLOAT(vmulq_f32(v95, v96).i32[1]) + (v95.f32[0] * v96.f32[0])) / vaddvq_f64(vmulq_f64(v97, v97));
    v82->i32[2] = v82->i64[1];
    v98 = vmla_n_f32(*v64.f32, *v96.f32, v95.f32[0]);
    *v82->f32 = v98;
    *v83 = v98;
  }

  else
  {
    v91 = vsubq_f32(a6, v64);
    v92 = vsubq_f32(*v89->f32, a6);
    v93 = vcvtq_f64_f32(*v92.f32);
    v91.f32[0] = -(COERCE_FLOAT(vmulq_f32(v91, v92).i32[1]) + (v91.f32[0] * v92.f32[0])) / vaddvq_f64(vmulq_f64(v93, v93));
    *(v84 + 8) = v85;
    v94 = vmla_n_f32(*a6.f32, *v92.f32, v91.f32[0]);
    *v84 = v94;
    *(v86 + 8) = v87;
    *v86 = v94;
  }

  return 4294967294;
}

float sub_262238E10(float32x2_t a1, float32x2_t a2, float32x2_t a3)
{
  v3 = vsub_f32(a1, a3);
  v4 = 0.0;
  if (sqrtf(vaddv_f32(vmul_f32(v3, v3))) < 0.000001)
  {
    return v4;
  }

  v5 = vsub_f32(a2, a3);
  if (sqrtf(vaddv_f32(vmul_f32(v5, v5))) < 0.000001)
  {
    return v4;
  }

  v7 = vsub_f32(a1, a2);
  v8 = vsub_f32(a3, a1);
  if (sqrtf(vaddv_f32(vmul_f32(v7, v7))) >= 0.000001 && (v9 = vsub_f32(a2, a1), vaddv_f32(vmul_f32(v9, v8)) >= 0.0))
  {
    v11 = vsub_f32(a3, a2);
    if (vaddv_f32(vmul_f32(v7, v11)) >= 0.0)
    {
      return fabsf((-v7.f32[1] * v3.f32[0]) + (v7.f32[0] * v3.f32[1])) / sqrtf(vaddv_f32(vmul_f32(v9, v9)));
    }

    v10 = vmul_f32(v11, v11);
  }

  else
  {
    v10 = vmul_f32(v8, v8);
  }

  return sqrtf(vaddv_f32(v10));
}

void sub_262238EE8(uint64_t *a1, float32x4_t *a2, void *a3, float32_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v5[0] = xmmword_2623A7890;
  v5[1] = xmmword_2623A78A0;
  memset(v4, 0, sizeof(v4));
  sub_2622391E4(v4, v5, &v6);
}

void sub_262239250(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_26223926C(uint64_t *a1, uint64_t a2, void *a3, float32_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v5[0] = xmmword_2623A7890;
  v5[1] = xmmword_2623A78A0;
  memset(__p, 0, sizeof(__p));
  sub_2622391E4(__p, v5, &v6);
}

uint64_t *sub_2622395E8(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621EAE34(result, a4);
  }

  return result;
}

void sub_262239650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2621EAAB0(&a9);
  _Unwind_Resume(a1);
}

void sub_26223AF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char *a61, uint64_t a62, uint64_t a63)
{
  operator delete(v67);
  if (__p)
  {
    operator delete(__p);
  }

  sub_26223B250(&a65);
  if (v66)
  {
    operator delete(v66);
  }

  if (a50)
  {
    operator delete(a50);
  }

  a61 = &a38;
  sub_2621E1D40(&a61);
  a61 = &a41;
  sub_2621E1CB0(&a61);

  _Unwind_Resume(a1);
}

uint64_t sub_26223B250(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 64;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 128;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_26223B31C(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 16 * (v4 - v5) - 1;
  }

  v8 = a1[4];
  v9 = a1[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x80)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v6 < v11)
      {
        if (v10 != v4)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v17 = a1;
      sub_26223B6E4(v12);
    }

    a1[4] = v8 - 128;
    *&v16 = *v5;
    a1[1] = (v5 + 8);
    sub_26223B72C(a1, &v16);
    v5 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v13 = (*&v5[(v9 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v9 & 0x7F));
  result = *a2;
  v15 = *(a2 + 16);
  *v13 = *a2;
  v13[1] = v15;
  ++a1[5];
  return result;
}

void sub_26223B5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_26223B5DC(const void **a1, void *a2, __n128 a3)
{
  v5 = a1[1];
  if (v5 == *a1)
  {
    v7 = a1[2];
    v8 = a1[3];
    if (v7 >= v8)
    {
      if (v8 == v5)
      {
        v10 = 1;
      }

      else
      {
        v10 = (v8 - v5) >> 2;
      }

      sub_26223B6E4(v10);
    }

    v9 = (((v8 - v7) >> 3) + 1) / 2;
    v6 = &v5[8 * v9];
    if (v7 != v5)
    {
      memmove(&v5[8 * v9], v5, v7 - v5);
      v7 = a1[2];
    }

    a1[1] = v6;
    a1[2] = &v7[8 * v9];
  }

  else
  {
    v6 = a1[1];
  }

  *(v6 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_26223B6E4(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_26223B72C(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_26223B6E4(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_26223B830(void *a1, int a2)
{
  v3 = sub_2621C719C(a1, a2);
  if (v3)
  {
    sub_26223C55C(&__p, a1, v3);
    if (__p)
    {
      operator delete(__p);
    }
  }
}

uint64_t sub_26223B87C(float32x4_t *a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, double a6, double a7)
{
  v190 = 0;
  v191 = 0;
  v192 = 0;
  v12 = a5;
  v13 = a4[2];
  if (v13)
  {
    do
    {
      v14 = objc_msgSend_objectAtIndexedSubscript_(v12, v11, *(v13 + 4));
      objc_msgSend_quad(v14, v15, v16);
      v170 = v17;
      objc_msgSend_quad(v14, v18, v19);
      v169 = v20;
      objc_msgSend_quad(v14, v21, v22);
      v162 = v23;
      objc_msgSend_quad(v14, v24, v25);
      if (sqrtf(((v169 - *(&a6 + 1)) * (v169 - *(&a6 + 1))) + ((v170 - *&a6) * (v170 - *&a6))) >= 0.01)
      {
        if (sqrtf(((v26 - *(&a6 + 1)) * (v26 - *(&a6 + 1))) + ((v162 - *&a6) * (v162 - *&a6))) < 0.01)
        {
          v28 = *(v13 + 4);
          LODWORD(v182) = 1;
          HIDWORD(v182) = v28;
          sub_26223C48C(&v190, &v182);
        }
      }

      else
      {
        v27 = *(v13 + 4);
        LODWORD(v182) = 0;
        HIDWORD(v182) = v27;
        sub_26223C48C(&v190, &v182);
      }

      v13 = *v13;
    }

    while (v13);
    v29 = v190;
    v30 = v191;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v32 = (v30 - v29) >> 3;
  if (v32 >= 4)
  {
    printf("WARNING: it looks something wrong! One wall seems to connect with more than 3 other walls");
    goto LABEL_11;
  }

  if (v32 < 2)
  {
    if (v30 - v29 == 8)
    {
      v77 = a1;
      v78 = a2;
      v79 = v29[1];
      v80 = *v29;
      v164 = v29;
      if (v80 >= -1)
      {
        v81 = (v80 + 1) & 1;
      }

      else
      {
        v81 = -((v80 + 1) & 1);
      }

      v82 = objc_msgSend_objectAtIndexedSubscript_(v12, v31, v79);
      objc_msgSend_quad(v82, v83, v84);
      v183 = v85;
      v185 = v86;
      v182 = v87;
      v184 = v88;
      v187 = v89;
      v189 = v90;
      v186 = v91;
      v188 = v92;
      v166 = *(&v182 + v80);
      objc_msgSend_quad(v82, v93, v94);
      v175 = v95;
      v177 = v96;
      v174 = v97;
      v176 = v98;
      v179 = v99;
      v181 = v100;
      v178 = v101;
      v180 = v102;
      v103 = *(&v174 + 4 * v80 + 1);
      objc_msgSend_quad(v82, v104, v105);
      v183 = v106;
      v185 = v107;
      v182 = v108;
      v184 = v109;
      v172 = *(&v182 + v81);
      objc_msgSend_quad(v82, v110, v111);
      v112 = v81;
      v175 = v113;
      v177 = v114;
      v174 = v115;
      v176 = v116;
      v155 = *(&v174 + 4 * v81 + 1);
      v117 = vmuls_lane_f32(v155 - v103, *&a7, 1) + (*&a7 * (*&v172 - *&v166));
      *&v115 = sqrtf(vmuls_lane_f32(*(&a7 + 1), *&a7, 1) + (*&a7 * *&a7));
      v157 = v155 - v103;
      v161 = *&v172 - *&v166;
      v118 = *&v115 * sqrtf((v157 * v157) + (v161 * v161));
      v120 = v117 < (v118 + 0.001) && (v118 + -0.001) < v117;
      sub_26223B830(a4, v79);
      if (a3)
      {
        if (!v120)
        {
          operator new();
        }

        v123 = v78;
        v124 = *v78;
      }

      else
      {
        if (!v120)
        {
          operator new();
        }

        v123 = v78;
        v124 = v78[1];
      }

      *(v124 + 16) = v79;
      objc_msgSend_quad(v82, v121, v122);
      v183 = v141;
      v185 = v143;
      v182 = v140;
      v184 = v142;
      if (a3)
      {
        if (!v120)
        {
          operator new();
        }

        v144 = v77->i64[0];
      }

      else
      {
        if (!v120)
        {
          operator new();
        }

        v144 = v77->i64[1];
      }

      *(v144 + 16) = *(&v182 + v112);
      objc_msgSend_quad(v82, v138, v139);
      v183 = v145;
      v185 = v146;
      v182 = v147;
      v184 = v148;
      v149 = sub_26223C36C(v77, a3, *(&v182 + 2 * v112));
      if (v149)
      {
        v33 = 1;
      }

      else
      {
        v33 = sub_26223B87C(v77, v123, a3, a4, v12, COERCE_DOUBLE(__PAIR64__(LODWORD(v155), v172)), COERCE_DOUBLE(__PAIR64__(LODWORD(v157), LODWORD(v161))));
      }

      v29 = v164;
LABEL_64:
      operator delete(v29);
      goto LABEL_65;
    }

LABEL_11:
    v33 = 0;
    if (!v29)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if (v29 == v30)
  {
    goto LABEL_11;
  }

  v153 = a1;
  v154 = a2;
  v160 = a4;
  v34 = sqrtf(vmuls_lane_f32(*(&a7 + 1), *&a7, 1) + (*&a7 * *&a7));
  v163 = v29;
  while (1)
  {
    v35 = v29[1];
    v36 = *v29;
    v37 = v36 >= -1 ? (v36 + 1) & 1 : -((v36 + 1) & 1);
    v38 = objc_msgSend_objectAtIndexedSubscript_(v12, v31, v35);
    objc_msgSend_quad(v38, v39, v40);
    v183 = v41;
    v185 = v42;
    v182 = v43;
    v184 = v44;
    v187 = v45;
    v189 = v46;
    v186 = v47;
    v188 = v48;
    v165 = *(&v182 + v36);
    objc_msgSend_quad(v38, v49, v50);
    v175 = v51;
    v177 = v52;
    v179 = v53;
    v181 = v54;
    v174 = v55;
    v176 = v56;
    v178 = v57;
    v180 = v58;
    v59 = *(&v174 + 4 * v36 + 1);
    objc_msgSend_quad(v38, v60, v61);
    v183 = v62;
    v185 = v63;
    v182 = v64;
    v184 = v65;
    v171 = *(&v182 + v37);
    objc_msgSend_quad(v38, v66, v67);
    v175 = v68;
    v177 = v69;
    v174 = v70;
    v176 = v71;
    v72 = COERCE_FLOAT(HIDWORD(*(&v174 + 2 * v37))) - v59;
    v73 = (*(&a7 + 1) * v72) + (*&a7 * (*&v171 - *&v165));
    *&v71 = v34 * sqrtf((v72 * v72) + ((*&v171 - *&v165) * (*&v171 - *&v165)));
    v74 = *&v71 + -0.001;
    v75 = *&v71 + 0.001;
    if (v74 < v73 && v73 < v75)
    {
      break;
    }

    v29 += 2;
    if (v29 == v30)
    {
      v33 = 0;
      goto LABEL_48;
    }
  }

  v151 = *(&v174 + v37);
  v158 = COERCE_FLOAT(HIDWORD(*(&v174 + 2 * v37))) - v59;
  v167 = *&v171 - *&v165;
  sub_26223B830(v160, v35);
  if (a3)
  {
    v127 = 0;
  }

  else
  {
    v127 = 1;
  }

  *(v154[v127] + 16) = v35;
  objc_msgSend_quad(v38, v125, v126, v151);
  v183 = v128;
  v185 = v129;
  v182 = v130;
  v184 = v131;
  *(v153->i64[v127] + 16) = *(&v182 + v37);
  v168 = COERCE_DOUBLE(__PAIR64__(LODWORD(v158), LODWORD(v167)));
  v173 = COERCE_DOUBLE(__PAIR64__(v152, v171));
  sub_26223B87C(v153, v154, a3, v160, v12, v173, v168);
  objc_msgSend_quad(v38, v132, v133);
  v183 = v134;
  v185 = v135;
  v182 = v136;
  v184 = v137;
  if (sub_26223C36C(v153, a3, *(&v182 + 2 * v37)))
  {
    v33 = 1;
  }

  else
  {
    v33 = sub_26223B87C(v153, v154, a3, v160, v12, v173, v168);
  }

LABEL_48:
  v29 = v163;
  if (v163)
  {
    goto LABEL_64;
  }

LABEL_65:

  return v33;
}