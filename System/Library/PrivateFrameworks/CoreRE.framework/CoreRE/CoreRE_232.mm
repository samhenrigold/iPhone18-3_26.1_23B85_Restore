void re::RenderGraphSFBSystemShellBlurProvider::provide(re::RenderGraphSFBSystemShellBlurProvider *this, char *__s, char *a3, re::RenderFrame *a4)
{
  v217 = *MEMORY[0x1E69E9840];
  if (!*(this + 112))
  {
    return;
  }

  v8 = 0x9E3779B97F4A7C17;
  v9 = strlen(__s);
  if (v9)
  {
    MurmurHash3_x64_128(__s, v9, 0, __src);
    v10 = (*&__src[8] - 0x61C8864680B583E9 + (*__src << 6) + (*__src >> 2)) ^ *__src;
  }

  else
  {
    v10 = 0;
  }

  v11 = strlen(a3);
  v141 = __s;
  if (v11)
  {
    MurmurHash3_x64_128(a3, v11, 0, __src);
    v8 = ((*&__src[8] - 0x61C8864680B583E9 + (*__src << 6) + (*__src >> 2)) ^ *__src) - 0x61C8864680B583E9;
  }

  v12 = ((v10 >> 2) + (v10 << 6) + v8) ^ v10;
  v143 = v12;
  if (!*(this + 399))
  {
    v30 = *(this + 18);
    if (v30)
    {
      v31 = 352 * v30;
      v13 = this + 176;
      while (*(v13 - 2) != v12)
      {
        v13 += 352;
        v31 -= 352;
        if (!v31)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_16;
    }

LABEL_14:
    *__src = 0x1000000;
    memset(&__src[32], 0, 32);
    __asm { FMOV            V0.2S, #1.0 }

    *&__src[4] = _D0;
    *&__src[12] = xmmword_1E3108BC0;
    *&__src[28] = 1077516698;
    v33 = *(MEMORY[0x1E69E9B18] + 16);
    *&__src[64] = *MEMORY[0x1E69E9B18];
    *&__src[80] = v33;
    v34 = *(MEMORY[0x1E69E9B18] + 48);
    v36 = *MEMORY[0x1E69E9B18];
    v35 = *(MEMORY[0x1E69E9B18] + 16);
    v189 = *(MEMORY[0x1E69E9B18] + 32);
    v190 = v34;
    v37 = *MEMORY[0x1E69E9B18];
    v38 = *(MEMORY[0x1E69E9B18] + 16);
    v39 = *(MEMORY[0x1E69E9B18] + 48);
    v193 = *(MEMORY[0x1E69E9B18] + 32);
    v194 = v39;
    v191 = v37;
    v192 = v38;
    v40 = *(MEMORY[0x1E69E9B18] + 48);
    v197 = *(MEMORY[0x1E69E9B18] + 32);
    v198 = v40;
    v41 = *(MEMORY[0x1E69E9B18] + 16);
    v195 = *MEMORY[0x1E69E9B18];
    v196 = v41;
    v42 = *(MEMORY[0x1E69E9B18] + 48);
    v201 = v193;
    v202 = v42;
    v199 = v36;
    v200 = v35;
    v204 = 0;
    v203 = 0;
    v29 = re::SmallHashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,4ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(this + 128, &v143, __src, 0);
    goto LABEL_15;
  }

  v13 = re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::tryGet(this + 1568, v12);
  if (!v13)
  {
    *__src = 0x1000000;
    memset(&__src[32], 0, 32);
    __asm { FMOV            V0.2S, #1.0 }

    *&__src[4] = _D0;
    *&__src[12] = xmmword_1E3108BC0;
    *&__src[28] = 1077516698;
    v19 = *(MEMORY[0x1E69E9B18] + 16);
    *&__src[64] = *MEMORY[0x1E69E9B18];
    *&__src[80] = v19;
    v20 = *(MEMORY[0x1E69E9B18] + 48);
    v22 = *MEMORY[0x1E69E9B18];
    v21 = *(MEMORY[0x1E69E9B18] + 16);
    v189 = *(MEMORY[0x1E69E9B18] + 32);
    v190 = v20;
    v23 = *MEMORY[0x1E69E9B18];
    v24 = *(MEMORY[0x1E69E9B18] + 16);
    v25 = *(MEMORY[0x1E69E9B18] + 48);
    v193 = *(MEMORY[0x1E69E9B18] + 32);
    v194 = v25;
    v191 = v23;
    v192 = v24;
    v26 = *(MEMORY[0x1E69E9B18] + 48);
    v197 = *(MEMORY[0x1E69E9B18] + 32);
    v198 = v26;
    v27 = *(MEMORY[0x1E69E9B18] + 16);
    v195 = *MEMORY[0x1E69E9B18];
    v196 = v27;
    v28 = *(MEMORY[0x1E69E9B18] + 48);
    v201 = v193;
    v202 = v28;
    v199 = v22;
    v200 = v21;
    v204 = 0;
    v203 = 0;
    v29 = re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(this + 1568, &v143, __src);
LABEL_15:
    v13 = v29;
  }

LABEL_16:
  if (*(this + 112) - 3 <= 1 && ((*v13 & 1) != 0 || v13[1] == 1))
  {
    re::AssetHandle::loadNow(*(this + 12), 0);
    v138 = *(v13 + 20);
    v43 = *(v13 + 3);
    v44 = *(v13 + 4);
    RenderGraph = re::RenderFrame::makeRenderGraph(a4, a3, 0);
    v46 = re::supportedColorPixelFormat((*(a4 + 1) + 208), v45);
    v185 = -1;
    v184 = -1;
    *&__src[8] = 3;
    *&__src[12] = v43;
    *&__src[20] = xmmword_1E3108C40;
    *&__src[16] = v44;
    *&__src[36] = 0;
    __src[40] = 1;
    __asm { FMOV            V8.2S, #1.0 }

    *&__src[44] = _D8;
    *&__src[52] = xmmword_1E30A3B60;
    *&__src[68] = 0x2000000007;
    memset(&__src[76], 255, 20);
    *&v189 = 0;
    BYTE8(v189) = 0;
    *&__src[4] = v46;
    *__src = 2;
    LODWORD(v181) = 0;
    v132 = v46;
    v134 = v44;
    *(&v181 + 4) = v46 | 0x300000000;
    v135 = v43;
    HIDWORD(v181) = v43;
    *&v182[4] = xmmword_1E3108C40;
    *v182 = v44;
    *&v182[20] = 0;
    v182[24] = 1;
    *&v182[28] = _D8;
    *&v182[36] = xmmword_1E30A3B60;
    *&v182[52] = 0x2000000007;
    memset(&v182[60], 255, 20);
    *&v183 = 0;
    BYTE8(v183) = 0;
    __sa = a3;
    if (a3)
    {
      v48 = *a3;
      if (*a3)
      {
        v49 = a3[1];
        if (v49)
        {
          v50 = a3 + 2;
          do
          {
            v48 = 31 * v48 + v49;
            v51 = *v50++;
            v49 = v51;
          }

          while (v51);
        }

        v52 = v48 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v52 = 0;
      }
    }

    else
    {
      v52 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v53 = *(a4 + 1);
    v54 = [*(v53 + 208) supportsFamily:1007];
    v55 = *(v53 + 367);
    re::mtl::Device::isPhysicalHardware((*(a4 + 1) + 208));
    v56 = *(*(a4 + 1) + 128);
    v136 = this;
    if (v56)
    {
      re::BlurManager::getBackdropMaterial(v166, v56);
      v118 = *&v166[8] != 0;
      re::AssetHandle::~AssetHandle(v166);
    }

    else
    {
      v118 = 0;
    }

    v127 = v55 & v54;
    *v166 = &v181;
    *&v166[8] = a4;
    *v165 = 0x730609FCA8E5BE4FLL;
    *&v165[8] = "PassthroughColor";
    *&v166[16] = v165;
    v166[24] = 1;
    *&v166[32] = 65290051;
    *&v166[40] = "Color";
    v166[48] = 0;
    v166[72] = 0;
    *v166 = __src;
    *&v166[8] = a4;
    *&v166[16] = &re::kPassthroughBlurredColorRead;
    v166[24] = 0;
    v166[48] = 0;
    v166[72] = 1;
    *&v166[80] = v52;
    *v166 = __src;
    *&v166[8] = a4;
    *&v166[16] = &re::kPassthroughBlurredColorWrite;
    v166[24] = 0;
    v166[48] = 0;
    v166[72] = 1;
    *&v166[80] = v52;
    *v166 = &v181;
    *&v166[8] = a4;
    *v165 = 0x6723228C5BC8673ALL;
    *&v165[8] = "UnprojectedBlurredPassthroughColor";
    *&v166[16] = v165;
    v166[24] = 1;
    *&v166[32] = 65290051;
    *&v166[40] = "Color";
    v166[48] = 0;
    v166[72] = 0;
    *v166 = &v181;
    *&v166[8] = a4;
    *v165 = 0x4231BC5CFFB1FB38;
    *&v165[8] = "UnprojectedBlurredColor";
    *&v166[16] = v165;
    v166[24] = 1;
    *&v166[32] = 65290051;
    *&v166[40] = "Color";
    v166[48] = 0;
    v166[72] = 0;
    *v166 = __src;
    *&v166[8] = a4;
    *&v166[16] = &re::kOutputPassthroughBlurredColor;
    v166[24] = 0;
    v166[48] = 0;
    v166[72] = 1;
    *&v166[80] = v52;
    *v166 = 0x10CC0F66D471B4F0;
    re::RenderFrame::addTargetOutput(a4, v166, &v169, a3);
    *v166 = __src;
    *&v166[8] = a4;
    *&v166[16] = &re::kOutputPassthroughBlurredColorSRGB;
    v166[24] = 0;
    v166[48] = 0;
    v166[72] = 1;
    *&v166[80] = v52;
    *v166 = 0x23D59E48A3024D6ALL;
    re::RenderFrame::addTargetOutput(a4, v166, &v167, a3);
    v57 = re::RenderGraph::addNode<re::RenderGraphCameraSetupNode>(RenderGraph, "CameraSetup");
    *(v57 + 264) = 1;
    v58 = (*(*v57 + 80))(v57, v141, a3, a4);
    *v166 = 3;
    memset(&v166[12], 255, 24);
    *&v166[8] = 2;
    *&v166[36] = 0;
    v166[40] = 0;
    *&v166[44] = _D8;
    *&v166[52] = xmmword_1E30A3B60;
    *&v166[68] = 0x2000000000;
    memset(&v166[76], 255, 20);
    *&v166[96] = 0;
    v166[104] = 0;
    *v165 = 3;
    memset(&v165[12], 255, 24);
    *&v165[8] = 2;
    *&v165[36] = 0;
    v165[40] = 0;
    *&v165[44] = _D8;
    *&v165[52] = xmmword_1E30A3B60;
    *&v165[68] = 0x2000000000;
    memset(&v165[76], 255, 20);
    *&v165[96] = 0;
    v165[104] = 0;
    v151 = 3;
    v152 = 2;
    v153 = -1;
    *&v154 = -1;
    *(&v154 + 1) = -1;
    v155 = 0;
    v156 = 0;
    v159 = _D8;
    v160 = xmmword_1E30A3B60;
    v161 = 0x2000000000;
    v162 = -1;
    *v163 = -1;
    *&v163[8] = -1;
    *&v163[12] = 0;
    v164 = 0;
    v149 = 0;
    v150 = -1;
    v147 = 0;
    v148 = -1;
    v137 = a4;
    if (v13[1] == 1)
    {
      TextureAlias = re::RenderGraph::addNode<re::SFBSystemShellCreateTextureAliasNode>(RenderGraph, "SetVCAPassthroughAlias");
      *v211 = v169;
      *&v211[8] = v170;
      *&v211[16] = 0;
      *&v211[24] = 2;
      re::DynamicArray<re::TargetRead>::add((TextureAlias + 184), v211);
      *(TextureAlias + 34) = 0x23D59F1355F7D636;
      v60 = re::RenderGraph::addNode<re::SFBSystemShellCreateTextureAliasNode>(RenderGraph, "SetVCAPassthroughSRGBAlias");
      *v211 = v167;
      *&v211[8] = v168;
      *&v211[16] = 0;
      *&v211[24] = 2;
      re::DynamicArray<re::TargetRead>::add((v60 + 184), v211);
      *(v60 + 34) = 0x72FE99054D3CC2B0;
      *&v166[84] = v185;
      *&v166[76] = v184;
      v157 = v186;
      v158 = v187;
      *&v166[41] = v186;
      *&v166[12] = v138;
      *&v166[20] = xmmword_1E3108C40;
      *&v166[8] = 3;
      *&v166[36] = 0;
      v166[40] = 1;
      v166[43] = v187;
      *&v166[44] = _D8;
      *&v166[52] = xmmword_1E30A3B60;
      *&v166[68] = 0x2000000007;
      *&v166[88] = xmmword_1E3062D70;
      v166[104] = 0;
      *&v166[4] = v132;
      *v166 = 2;
      *&v165[89] = *&v166[89];
      *&v165[64] = *&v166[64];
      *&v165[80] = *&v166[80];
      *&v165[32] = *&v166[32];
      *&v165[48] = *&v166[48];
      *v165 = *v166;
      *&v165[16] = *&v166[16];
      *&v165[12] = vshl_n_s32(*&v165[12], 2uLL);
      LODWORD(v151) = 0;
      HIDWORD(v151) = v132;
      v152 = 3;
      v154 = xmmword_1E3108C40;
      v155 = 0;
      v156 = 1;
      v159 = _D8;
      v160 = xmmword_1E30A3B60;
      v161 = 0x2000000005;
      *v163 = v185;
      v162 = v184;
      *&v163[4] = xmmword_1E3062D70;
      v164 = 0;
      v153 = vshl_n_s32(v138, 2uLL);
      if (v127)
      {
        *v211 = &v151;
        *&v211[8] = a4;
        *&v211[16] = &re::kVCARenderTarget;
        v211[24] = 1;
        *&v211[32] = 65290051;
        *&v211[40] = "Color";
        v211[48] = 0;
        BYTE8(v212) = 0;
      }

      else
      {
        *v211 = v165;
        *&v211[8] = a4;
        *&v211[16] = &re::kVCARenderTarget;
        v211[24] = 0;
        v211[48] = 0;
        BYTE8(v212) = 1;
        *&v213 = v52;
      }

      v124 = *v205;
      v130 = *&v205[8];
      *v211 = v166;
      *&v211[8] = a4;
      *&v211[16] = &re::kVCADownsampledColor;
      v211[24] = 0;
      v211[48] = 0;
      BYTE8(v212) = 1;
      *&v213 = v52;
      v123 = *v205;
      v131 = *&v205[12];
      v133 = *&v205[8];
      *v211 = v166;
      *&v211[8] = a4;
      *&v211[16] = &re::kVCABlurredColorRead;
      v211[24] = 0;
      v211[48] = 0;
      BYTE8(v212) = 1;
      *&v213 = v52;
      v122 = *v205;
      v125 = *&v205[12];
      v126 = *&v205[8];
      *v211 = v166;
      *&v211[8] = a4;
      *&v211[16] = &re::kVCABlurredColorWrite;
      v211[24] = 0;
      v211[48] = 0;
      BYTE8(v212) = 1;
      *&v213 = v52;
      v121 = *v205;
      v119 = *&v205[12];
      v120 = *&v205[8];
      *v211 = v166;
      *&v211[8] = a4;
      *&v211[16] = &re::kOutputVCABlurredColorSRGB;
      v211[24] = 0;
      v211[48] = 0;
      BYTE8(v212) = 1;
      *&v213 = v52;
      *v211 = v166;
      *&v211[8] = a4;
      *&v211[16] = &re::kOutputVCOnlyBlurredColorSRGB;
      v211[24] = 0;
      v211[48] = 0;
      BYTE8(v212) = 1;
      *&v213 = v52;
      *v211 = 0x7B9CDD367106FB41;
      re::RenderFrame::addTargetOutput(a4, v211, &v149, a3);
      *v211 = 0x50A43212F8423086;
      re::RenderFrame::addTargetOutput(a4, v211, &v147, a3);
      if ([*(*(a4 + 1) + 208) supportsSeparateDepthStencil])
      {
        HIDWORD(v151) = 252;
        *v211 = &v151;
        *&v211[8] = a4;
        *&v216[0] = 0x23530BF6FEFLL;
        *(&v216[0] + 1) = "VCADepth";
        *&v211[16] = v216;
        v211[24] = 1;
        *&v211[32] = 65919651;
        *&v211[40] = "Depth";
        v211[48] = 0;
        BYTE8(v212) = 0;
        v129 = *&v205[12];
        v142 = *&v205[8];
        HIDWORD(v151) = 253;
        *v211 = &v151;
        v62 = *v205;
        *&v211[8] = a4;
        *&v216[0] = 0x849AF311B97E8;
        *(&v216[0] + 1) = "VCAStencil";
        *&v211[16] = v216;
        v211[24] = 1;
        *&v211[32] = 0x11F25A259CLL;
        *&v211[40] = "Stencil";
        v211[48] = 0;
        BYTE8(v212) = 0;
        v117 = *v205;
        v64 = *&v205[8];
        v65 = *&v205[12];
      }

      else
      {
        HIDWORD(v151) = 260;
        *v211 = &v151;
        *&v211[8] = a4;
        *&v216[0] = 0x7C3C8EACDA68BACDLL;
        *(&v216[0] + 1) = "VCADepthStencil";
        *&v211[16] = v216;
        v211[24] = 1;
        *&v211[32] = 65919651;
        *&v211[40] = "Depth";
        v211[48] = 0;
        BYTE8(v212) = 0;
        v62 = *v205;
        v64 = *&v205[8];
        v65 = *&v205[12];
        v117 = *v205;
        v129 = *&v205[12];
        v142 = *&v205[8];
      }

      v66 = re::globalAllocators(v63);
      v67 = (*(*v66[2] + 32))(v66[2], 272, 8);
      v68 = re::RenderGraphNode::RenderGraphNode(v67, "StencilBlurMeshNode");
      *(v68 + 66) = 1;
      *(v68 + 268) = 0;
      *v68 = &unk_1F5D10A90;
      *v211 = v68;
      re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, v211);
      *(v67 + 24) = *(RenderGraph + 10);
      *(v67 + 32) = *(RenderGraph + 12);
      *(v67 + 48) = *(RenderGraph + 13);
      memset(&v205[8], 0, 18);
      *v211 = v124;
      *&v211[8] = v130;
      *&v211[16] = 0x100000000;
      *&v211[24] = *v205;
      *&v211[34] = 0u;
      *&v211[52] = 0;
      re::DynamicArray<re::TargetWrite>::add((v67 + 224), v211);
      memset(v216 + 8, 0, 18);
      *v211 = v62;
      *&v211[8] = v142;
      *&v211[12] = v129;
      *&v211[16] = 0x200000000;
      *&v211[24] = *&v216[0];
      *&v211[34] = 0u;
      *&v211[52] = 0;
      re::DynamicArray<re::TargetWrite>::add((v67 + 224), v211);
      memset(v215 + 8, 0, 18);
      *v211 = v117;
      *&v211[8] = v64;
      *&v211[12] = v65;
      *&v211[16] = 0x300000000;
      *&v211[24] = *&v215[0];
      *&v211[34] = 0u;
      *&v211[52] = 0;
      re::DynamicArray<re::TargetWrite>::add((v67 + 224), v211);
      if (v127)
      {
        *v211 = v123;
        *&v211[8] = v133;
        *&v211[12] = v131;
        *&v211[16] = 0x500000001;
        *&v211[32] = xmmword_1E30474D0;
        *&v211[48] = 0;
        *&v211[52] = 0;
        re::DynamicArray<re::TargetWrite>::add((v67 + 224), v211);
        *(v67 + 65) = 1;
        *(v67 + 88) = 3;
        re::RenderGraphNode::configure(v67, v141, a3, a4);
        v70 = re::globalAllocators(v69);
        v71 = (*(*v70[2] + 32))(v70[2], 448, 16);
        v72 = re::RenderGraphMRCNode::RenderGraphMRCNode(v71, "VCATiledDownsampleNode");
        *v72 = &unk_1F5D10EC8;
        *v211 = v72;
        re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, v211);
        *(v71 + 24) = *(RenderGraph + 10);
        *(v71 + 32) = *(RenderGraph + 12);
        *(v71 + 48) = *(RenderGraph + 13);
        v61 = this;
        re::AssetHandle::operator=(v71 + 264, this + 11);
        *v211 = "kernelTiledVCADownsample4x";
        *&v211[8] = 26;
        re::DynamicString::operator=((v71 + 288), v211);
        *v211 = v124;
        *&v211[8] = v130;
        *&v211[16] = 0x100000000;
        *&v211[24] = *v205;
        *&v211[34] = *&v205[10];
        *&v211[52] = 0;
        re::DynamicArray<re::TargetWrite>::add((v71 + 224), v211);
        *v211 = v62;
        *&v211[8] = v142;
        *&v211[12] = v129;
        *&v211[16] = 0x200000000;
        *&v211[24] = v216[0];
        *&v211[34] = *(v216 + 10);
        *&v211[52] = 0;
        re::DynamicArray<re::TargetWrite>::add((v71 + 224), v211);
        *v211 = v117;
        *&v211[8] = v64;
        *&v211[12] = v65;
        *&v211[16] = 0x300000000;
        *&v211[24] = v215[0];
        *&v211[34] = *(v215 + 10);
        *&v211[52] = 0;
        re::DynamicArray<re::TargetWrite>::add((v71 + 224), v211);
        *v211 = v124;
        *&v211[8] = v130;
        *&v211[16] = 0;
        *&v211[24] = 0xA00000002;
        re::DynamicArray<re::TargetRead>::add((v71 + 184), v211);
        *v211 = v123;
        *&v211[8] = v133;
        *&v211[12] = v131;
        *&v211[16] = 0x500000001;
        *&v211[32] = xmmword_1E30474D0;
        *&v211[48] = 0;
        *&v211[52] = 0;
        v73 = re::DynamicArray<re::TargetWrite>::add((v71 + 224), v211);
        *(v71 + 88) = 3;
        *(v71 + 336) = 0x800000008;
        *(v71 + 344) = 0;
        *(v71 + 65) = 1;
        v58 = (*(*v71 + 80))(v71, v141, a3, v137, v73);
      }

      else
      {
        *(v67 + 65) = 1;
        *(v67 + 88) = 3;
        re::RenderGraphNode::configure(v67, v141, a3, a4);
        v61 = this;
      }

      v128 = 2;
    }

    else
    {
      v130 = -1;
      v121 = 0;
      v122 = 0;
      v123 = 0;
      v124 = 0;
      v119 = -1;
      v120 = -1;
      v125 = -1;
      v126 = -1;
      v133 = -1;
      v131 = -1;
      v128 = -1;
      v61 = this;
    }

    v74 = *(v61 + 1617);
    v75 = re::globalAllocators(v58);
    v76 = (*(*v75[2] + 32))(v75[2], 512, 16);
    v77 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v76, "PassthroughDownsample");
    *v77 = &unk_1F5D10B38;
    *(v77 + 496) = 1;
    *v211 = v77;
    v78 = RenderGraph;
    re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, v211);
    *(v76 + 24) = *(RenderGraph + 10);
    *(v76 + 32) = *(RenderGraph + 12);
    *(v76 + 48) = *(RenderGraph + 13);
    re::AssetHandle::operator=(v76 + 264, v61 + 11);
    *v211 = "kernelSFBARKitPassthroughDownsample";
    *&v211[8] = 35;
    re::DynamicString::operator=((v76 + 288), v211);
    *(v76 + 496) = 1;
    *(v76 + 424) = v135;
    *(v76 + 428) = 0x100000002;
    *(v76 + 440) = 0x100000001;
    *(v76 + 436) = v134;
    if (v74)
    {
      v79 = &v173;
    }

    else
    {
      v79 = &v171;
    }

    *v211 = *v79;
    v80 = &v174;
    if (!v74)
    {
      v80 = &v172;
    }

    *&v211[8] = *v80;
    v81 = &v174 + 4;
    if (!v74)
    {
      v81 = &v172 + 4;
    }

    *&v211[12] = *v81;
    *&v211[16] = 0x500000002;
    *&v211[32] = xmmword_1E30474D0;
    *&v211[48] = 0;
    *&v211[56] = 0;
    *&v211[52] = 0;
    re::DynamicArray<re::TargetWrite>::add((v76 + 224), v211);
    v82 = v141;
    v83 = v137;
    v84 = re::RenderGraphComputeNodeBase::configure(v76, v141, a3, v137);
    if (v74 == 1)
    {
      *v211 = v181;
      *&v211[16] = *v182;
      v212 = *&v182[48];
      v213 = *&v182[64];
      v214 = v183;
      *&v211[32] = *&v182[16];
      *&v211[48] = *&v182[32];
      *&v211[12] = vshl_n_s32(*&v211[12], 2uLL);
      *v205 = v211;
      v85 = v137;
      *&v205[8] = v137;
      *&v216[0] = 0x304E5AEDEAECE73ELL;
      *(&v216[0] + 1) = "SyntheticColor";
      *&v205[16] = v216;
      v205[24] = 1;
      *&v206 = 65290051;
      *(&v206 + 1) = "Color";
      LOBYTE(v207) = 0;
      v210 = 0;
      *&v211[4] = 252;
      *v205 = v211;
      *&v205[8] = v137;
      *&v216[0] = 0x304E5AEDEAF6829ELL;
      *(&v216[0] + 1) = "SyntheticDepth";
      *&v205[16] = v216;
      v205[24] = 1;
      *&v206 = 65919651;
      *(&v206 + 1) = "Depth";
      LOBYTE(v207) = 0;
      v210 = 0;
      if (v118)
      {
        v87 = *(*(v137 + 1) + 128);
        re::BlurManager::getBackdropMaterial(v216, v87);
        re::DynamicString::DynamicString(v205, (v87 + 192));
        v78 = RenderGraph;
        v88 = re::RenderGraph::addNode<re::RenderGraphFullscreenNode>(RenderGraph, "BackdropPass");
        re::AssetHandle::operator=(v88 + 272, v216);
        re::DynamicString::operator=((v88 + 296), v205);
        *(v88 + 336) = 1;
        v144 = 0uLL;
        LOBYTE(v215[0]) = 0;
        re::RenderGraphMeshNodeBase::setColorAttachment(v88, 0, v146, &v144, 0, v215);
        LOBYTE(v215[0]) = 0;
        v89 = re::RenderGraphMeshNodeBase::setDepthOnlyAttachment(v88, v145, 0, v215, 0.0);
        *(v88 + 65) = 1;
        v90 = v141;
        (*(*v88 + 80))(v88, v141, a3, v137, v89);
        if (*v205 && (v205[8] & 1) != 0)
        {
          (*(**v205 + 40))();
        }

        re::AssetHandle::~AssetHandle(v216);
        v85 = v137;
      }

      else
      {
        v91 = re::globalAllocators(v86);
        v92 = (*(*v91[2] + 32))(v91[2], 368, 8);
        v93 = re::RenderGraphMeshNode::RenderGraphMeshNode(v92, "SkyboxNode");
        *v93 = &unk_1F5D10E20;
        *v205 = v93;
        v78 = RenderGraph;
        re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, v205);
        *(v92 + 24) = *(RenderGraph + 10);
        *(v92 + 32) = *(RenderGraph + 12);
        *(v92 + 48) = *(RenderGraph + 13);
        *v205 = "Skybox";
        *&v205[8] = 6;
        re::DynamicString::operator=((v92 + 272), v205);
        *(v92 + 344) = 0;
        v216[0] = 0uLL;
        v205[0] = 0;
        re::RenderGraphMeshNodeBase::setColorAttachment(v92, 0, v146, v216, 1, v205);
        v205[0] = 0;
        v94 = re::RenderGraphMeshNodeBase::setDepthOnlyAttachment(v92, v145, 0, v205, 0.0);
        *(v92 + 65) = 1;
        v90 = v141;
        (*(*v92 + 80))(v92, v141, a3, v137, v94);
      }

      v95 = re::RenderGraph::addNode<re::SFBSystemShellComputeNode>(v78, "PassthroughDownsampleCompute");
      re::AssetHandle::operator=(v95 + 264, v61 + 11);
      *v205 = "kernelSFBBilerpDownsample4xWithPassthrough";
      *&v205[8] = 42;
      re::DynamicString::operator=((v95 + 288), v205);
      v96 = HIDWORD(v181);
      v97 = *v182;
      v98 = *&v182[8];
      *(v95 + 108) = 1;
      *(v95 + 106) = v96;
      *(v95 + 107) = v98;
      *(v95 + 55) = 0x100000001;
      *(v95 + 109) = v97;
      *v205 = v146[0];
      *&v205[8] = v146[1];
      *&v205[16] = 0;
      *&v205[24] = 2;
      re::DynamicArray<re::TargetRead>::add((v95 + 184), v205);
      *v205 = v173;
      *&v205[8] = v174;
      *&v205[16] = 1;
      *&v205[20] = 0;
      v205[22] = 0;
      *&v205[24] = 2;
      re::DynamicArray<re::TargetRead>::add((v95 + 184), v205);
      *v205 = v171;
      *&v205[8] = v172;
      *&v205[16] = 0x500000002;
      v206 = xmmword_1E30474D0;
      v207 = 0;
      v209 = 0;
      v208 = 0;
      v99 = re::DynamicArray<re::TargetWrite>::add((v95 + 224), v205);
      v83 = v85;
      v84 = (*(*v95 + 80))(v95, v90, a3, v85, v99);
      v82 = v90;
    }

    v100 = re::globalAllocators(v84);
    v101 = (*(*v100[2] + 32))(v100[2], 496, 16);
    v102 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v101, "PassthroughReprojectAndRectify");
    *v102 = &unk_1F5D10BF8;
    *v211 = v102;
    re::DynamicArray<re::TransitionCondition *>::add(v78, v211);
    *(v101 + 24) = *(v78 + 10);
    *(v101 + 32) = *(v78 + 12);
    *(v101 + 48) = *(v78 + 13);
    re::AssetHandle::operator=(v101 + 264, v61 + 11);
    *v211 = "kernelSFBNoReprojectAndNoBlend";
    *&v211[8] = 30;
    re::DynamicString::operator=((v101 + 288), v211);
    *v211 = v179;
    *&v211[8] = v180;
    *&v211[16] = 0x500000000;
    *&v211[32] = xmmword_1E30474D0;
    *&v211[48] = 0;
    *&v211[52] = 0;
    re::DynamicArray<re::TargetWrite>::add((v101 + 224), v211);
    *v211 = v171;
    *&v211[8] = v172;
    *&v211[16] = 1;
    *&v211[20] = 0;
    v211[22] = 0;
    *&v211[24] = 2;
    re::DynamicArray<re::TargetRead>::add((v101 + 184), v211);
    *(v101 + 424) = v135;
    *(v101 + 428) = 0x100000002;
    *(v101 + 440) = 0x100000001;
    *(v101 + 436) = v134;
    re::RenderGraphComputeNodeBase::configure(v101, v82, a3, v83);
    v103 = re::RenderGraph::addNode<re::SFBSystemShellBlurTAANode>(v78, "PassthroughBlurAndFilter");
    re::AssetHandle::operator=(v103 + 264, v61 + 11);
    if (v13[32])
    {
      v104 = "kernelSFBNoBlurAndFilter";
    }

    else
    {
      v104 = "kernelSFBBlurAndFilter";
    }

    v105 = 22;
    if (v13[32])
    {
      v105 = 24;
    }

    *v211 = v104;
    *&v211[8] = v105;
    re::DynamicString::operator=((v103 + 288), v211);
    *(v103 + 106) = v135;
    *(v103 + 428) = 0x100000002;
    *(v103 + 55) = 0x100000001;
    *(v103 + 109) = v134;
    *v211 = v179;
    *&v211[8] = v180;
    *&v211[16] = 0;
    *&v211[24] = 2;
    re::DynamicArray<re::TargetRead>::add((v103 + 184), v211);
    *v211 = v177;
    *&v211[8] = v178;
    *&v211[16] = 2;
    *&v211[20] = 0;
    v211[22] = 0;
    *&v211[24] = 2;
    re::DynamicArray<re::TargetRead>::add((v103 + 184), v211);
    *v211 = v175;
    *&v211[8] = v176;
    *&v211[16] = 0x500000003;
    *&v211[32] = xmmword_1E30474D0;
    *&v211[48] = 0;
    *&v211[52] = 0;
    re::DynamicArray<re::TargetWrite>::add((v103 + 224), v211);
    *v211 = v169;
    *&v211[8] = v170;
    *&v211[16] = 0x500000004;
    *&v211[32] = xmmword_1E30474D0;
    *&v211[48] = 0;
    *&v211[52] = 0;
    re::DynamicArray<re::TargetWrite>::add((v103 + 224), v211);
    *v211 = v167;
    *&v211[8] = v168;
    *&v211[16] = 0x500000006;
    *&v211[32] = xmmword_1E30474D0;
    *&v211[48] = 0;
    *&v211[52] = 0;
    re::DynamicArray<re::TargetWrite>::add((v103 + 224), v211);
    v106 = 8 * v134 + 15;
    *(v103 + 9) = v106 & 0xFFFFFFF0;
    *v211 = 0;
    *&v211[4] = v106 & 0xFFFFFFF0;
    re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureIndexAndStage>::add((v103 + 448), v211);
    (*(*v103 + 80))(v103, v82, a3, v83);
    *(v103 + 496) = 0;
    *(v103 + 126) = v135;
    *(v103 + 125) = v134;
    v107 = re::RenderGraph::addNode<re::SFBSystemShellReprojectNode>(v78, "reprojectFilteredBlur");
    re::AssetHandle::operator=(v107 + 264, v61 + 11);
    *v211 = "kernelSFBReprojectAndSRGBCorrect";
    *&v211[8] = 32;
    re::DynamicString::operator=((v107 + 288), v211);
    *(v107 + 106) = v135;
    *(v107 + 428) = 0x100000002;
    *(v107 + 55) = 0x100000001;
    *(v107 + 109) = v134;
    *v211 = v177;
    *&v211[8] = v178;
    *&v211[16] = 0;
    *&v211[24] = 2;
    re::DynamicArray<re::TargetRead>::add((v107 + 184), v211);
    *v211 = v175;
    *&v211[8] = v176;
    *&v211[16] = 1;
    *&v211[20] = 0;
    v211[22] = 0;
    *&v211[24] = 2;
    re::DynamicArray<re::TargetRead>::add((v107 + 184), v211);
    *v211 = v169;
    *&v211[8] = v170;
    *&v211[16] = 0x500000002;
    *&v211[32] = xmmword_1E30474D0;
    *&v211[48] = 0;
    *&v211[52] = 0;
    re::DynamicArray<re::TargetWrite>::add((v107 + 224), v211);
    *v211 = v167;
    *&v211[8] = v168;
    *&v211[16] = 0x500000003;
    *&v211[32] = xmmword_1E30474D0;
    *&v211[48] = 0;
    *&v211[52] = 0;
    re::DynamicArray<re::TargetWrite>::add((v107 + 224), v211);
    re::RenderGraphComputeNodeBase::configure(v107, v82, a3, v83);
    *(v107 + 125) = v135;
    *(v107 + 124) = v134;
    if (v13[1] == 1)
    {
      if ((v127 & 1) == 0)
      {
        v108 = re::RenderGraph::addNode<re::SFBSystemShellComputeNode>(v78, "VCADownsampleCompute");
        re::AssetHandle::operator=(v108 + 264, v136 + 11);
        *v211 = "kernelSFBBilerpDownsample4x";
        *&v211[8] = 27;
        re::DynamicString::operator=((v108 + 288), v211);
        *(v108 + 108) = 1;
        *(v108 + 106) = v138.i32[0];
        *(v108 + 107) = v128;
        *(v108 + 55) = 0x100000001;
        *(v108 + 109) = v138.i32[1];
        *v211 = v124;
        *&v211[8] = v130;
        *&v211[16] = 0;
        *&v211[24] = 2;
        re::DynamicArray<re::TargetRead>::add((v108 + 184), v211);
        *v211 = v123;
        *&v211[8] = v133;
        *&v211[12] = v131;
        *&v211[16] = 0x500000001;
        *&v211[32] = xmmword_1E30474D0;
        *&v211[48] = 0;
        *&v211[56] = 0;
        *&v211[52] = 0;
        v109 = re::DynamicArray<re::TargetWrite>::add((v108 + 224), v211);
        (*(*v108 + 80))(v108, v82, a3, v137, v109);
      }

      v110 = re::RenderGraph::addNode<re::SFBSystemShellBlurTAANode>(v78, "VCABlurAndFilterAndBlendPassthrough");
      re::AssetHandle::operator=(v110 + 264, v136 + 11);
      if (v13[33])
      {
        v111 = "kernelSFBVCANoBlurAndFilterAndBlendPassthrough";
      }

      else
      {
        v111 = "kernelSFBVCABlurAndFilterAndBlendPassthrough";
      }

      v112 = 44;
      if (v13[33])
      {
        v112 = 46;
      }

      *v211 = v111;
      *&v211[8] = v112;
      re::DynamicString::operator=((v110 + 288), v211);
      *(v110 + 108) = 1;
      *(v110 + 106) = v138.i32[0];
      *(v110 + 107) = v128;
      *(v110 + 109) = v138.i32[1];
      *(v110 + 55) = 0x100000001;
      *v211 = v123;
      *&v211[8] = v133;
      *&v211[12] = v131;
      *&v211[16] = 0;
      *&v211[24] = 2;
      re::DynamicArray<re::TargetRead>::add((v110 + 184), v211);
      *v211 = v167;
      *&v211[8] = v168;
      *&v211[16] = 1;
      *&v211[20] = 0;
      v211[22] = 0;
      *&v211[24] = 2;
      re::DynamicArray<re::TargetRead>::add((v110 + 184), v211);
      *v211 = v122;
      *&v211[8] = v126;
      *&v211[12] = v125;
      *&v211[16] = 2;
      *&v211[20] = 0;
      v211[22] = 0;
      *&v211[24] = 0x500000002;
      re::DynamicArray<re::TargetRead>::add((v110 + 184), v211);
      *v211 = v121;
      *&v211[8] = v120;
      *&v211[12] = v119;
      *&v211[16] = 0x500000003;
      *&v211[32] = xmmword_1E30474D0;
      *&v211[48] = 0;
      *&v211[52] = 0;
      re::DynamicArray<re::TargetWrite>::add((v110 + 224), v211);
      *v211 = v149;
      *&v211[8] = v150;
      *&v211[16] = 0x500000005;
      *&v211[32] = xmmword_1E30474D0;
      *&v211[48] = 0;
      *&v211[52] = 0;
      re::DynamicArray<re::TargetWrite>::add((v110 + 224), v211);
      *v211 = v147;
      *&v211[8] = v148;
      *&v211[16] = 0x500000006;
      *&v211[32] = xmmword_1E30474D0;
      *&v211[48] = 0;
      *&v211[52] = 0;
      re::DynamicArray<re::TargetWrite>::add((v110 + 224), v211);
      v113 = 8 * v138.i32[1] + 15;
      *(v110 + 9) = v113 & 0xFFFFFFF0;
      *v211 = 0;
      *&v211[4] = v113 & 0xFFFFFFF0;
      re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureIndexAndStage>::add((v110 + 448), v211);
      (*(*v110 + 80))(v110, v82, a3, v137);
      *(v110 + 496) = 1;
      v114 = vrev64_s32(v138);
      *(v110 + 500) = v114;
      v115 = re::RenderGraph::addNode<re::SFBSystemShellReprojectNode>(v78, "reprojectVCABlur");
      re::AssetHandle::operator=(v115 + 264, v136 + 11);
      *v211 = "kernelSFBReprojectAndBlendPassthrough";
      *&v211[8] = 37;
      re::DynamicString::operator=((v115 + 288), v211);
      *(v115 + 108) = 1;
      *(v115 + 106) = v138.i32[0];
      *(v115 + 107) = v128;
      *(v115 + 109) = v138.i32[1];
      *(v115 + 55) = 0x100000001;
      *v211 = v122;
      *&v211[8] = v126;
      *&v211[12] = v125;
      *&v211[16] = 0;
      *&v211[24] = 2;
      re::DynamicArray<re::TargetRead>::add((v115 + 184), v211);
      *v211 = v121;
      *&v211[8] = v120;
      *&v211[12] = v119;
      *&v211[16] = 1;
      *&v211[20] = 0;
      v211[22] = 0;
      *&v211[24] = 2;
      re::DynamicArray<re::TargetRead>::add((v115 + 184), v211);
      *v211 = v167;
      *&v211[8] = v168;
      *&v211[16] = 4;
      *&v211[20] = 0;
      v211[22] = 0;
      *&v211[24] = 2;
      re::DynamicArray<re::TargetRead>::add((v115 + 184), v211);
      *v211 = v149;
      *&v211[8] = v150;
      *&v211[16] = 0x500000002;
      *&v211[32] = xmmword_1E30474D0;
      *&v211[48] = 0;
      *&v211[52] = 0;
      re::DynamicArray<re::TargetWrite>::add((v115 + 224), v211);
      *v211 = v147;
      *&v211[8] = v148;
      *&v211[16] = 0x500000005;
      *&v211[32] = xmmword_1E30474D0;
      *&v211[48] = 0;
      *&v211[52] = 0;
      re::DynamicArray<re::TargetWrite>::add((v115 + 224), v211);
      re::RenderGraphComputeNodeBase::configure(v115, v141, __sa, v137);
      *(v115 + 62) = v114;
    }

    else
    {
      v116 = re::RenderGraph::addNode<re::SFBSystemShellCreateTextureAliasNode>(v78, "SetVCAPassthroughSRGBAlias");
      *v211 = v167;
      *&v211[8] = v168;
      *&v211[16] = 0;
      *&v211[24] = 2;
      re::DynamicArray<re::TargetRead>::add((v116 + 184), v211);
      *(v116 + 34) = 0x60DF09E0AF8AD07;
    }
  }
}

void re::SFBSystemShellBlurProvider::registerProviderCommon(re::SFBSystemShellBlurProvider *this, re::RenderGraphManager *a2, const re::AssetHandle *a3, _anonymous_namespace_ *a4, re::ProviderHandle *a5)
{
  v6 = a3;
  v9 = re::globalAllocators(this);
  v10 = (*(*v9[2] + 32))(v9[2], 1632, 16);
  re::RenderGraphSFBSystemShellBlurProvider::RenderGraphSFBSystemShellBlurProvider(v10, v13);
  if (*&v13[0])
  {
    if (BYTE8(v13[0]))
    {
      (*(**&v13[0] + 40))();
    }

    memset(v13, 0, sizeof(v13));
  }

  re::AssetHandle::operator=(v10 + 88, a2);
  *(v10 + 1617) = v6;
  re::RenderGraphManager::addProviderInternal(v12, this, "Camera", v10, -58, 1);
  v11 = re::StringID::operator=(a4, v12);
  *(a4 + 2) = v12[2];
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }
}

void re::RenderGraphSFBSystemShellBlurProvider::~RenderGraphSFBSystemShellBlurProvider(re::RenderGraphSFBSystemShellBlurProvider *this)
{
  re::RenderGraphSFBSystemShellBlurProvider::~RenderGraphSFBSystemShellBlurProvider(this);

  JUMPOUT(0x1E6906520);
}

{
  *(this + 18) = 0;
  ++*(this + 38);
  re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(this + 196);
  *(this + 16) = 0;
  *(this + 34) = 0;
  re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(this + 196);
  *(this + 18) = 0;
  ++*(this + 38);
  re::AssetHandle::~AssetHandle((this + 88));
  re::AssetHandle::~AssetHandle((this + 64));
  re::AssetHandle::~AssetHandle((this + 40));
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

void *re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(uint64_t *a1, unint64_t a2)
{
  result = *a1;
  if (a2 && !result)
  {
    result = re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return result;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 4 || (v7 & 1) == 0))
    {
      if (a2 < 5)
      {
        v14 = a1[4];
        if (v7)
        {
          v15 = a1 + 3;
        }

        else
        {
          v15 = a1[4];
        }

        if (v9)
        {
          v16 = &v15[5 * v9];
          v17 = a1 + 7;
          do
          {
            *v17 = 0;
            *(v17 - 3) = 0;
            *(v17 - 2) = 0;
            *(v17 - 4) = 0;
            *(v17 - 2) = 0;
            v18 = v15[1];
            *(v17 - 4) = *v15;
            *(v17 - 3) = v18;
            *v15 = 0;
            v15[1] = 0;
            v19 = *(v17 - 2);
            *(v17 - 2) = v15[2];
            v15[2] = v19;
            v20 = *v17;
            *v17 = v15[4];
            v15[4] = v20;
            ++*(v15 + 6);
            ++*(v17 - 2);
            re::DynamicArray<unsigned long>::deinit(v15);
            v15 += 5;
            v17 += 5;
          }

          while (v15 != v16);
          result = *a1;
        }

        result = (*(*result + 40))(result, v14);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (is_mul_ok(a2, 0x28uLL))
      {
        v2 = 40 * a2;
        result = (*(*result + 32))(result, 40 * a2, 8);
        if (result)
        {
          v11 = result;
          v12 = *(a1 + 4);
          if (v12)
          {
            v13 = a1 + 3;
          }

          else
          {
            v13 = a1[4];
          }

          v21 = a1[1];
          if (v21)
          {
            v22 = &v13[5 * v21];
            v23 = result + 4;
            do
            {
              *v23 = 0;
              *(v23 - 3) = 0;
              *(v23 - 2) = 0;
              *(v23 - 4) = 0;
              *(v23 - 2) = 0;
              v24 = v13[1];
              *(v23 - 4) = *v13;
              *(v23 - 3) = v24;
              *v13 = 0;
              v13[1] = 0;
              v25 = *(v23 - 2);
              *(v23 - 2) = v13[2];
              v13[2] = v25;
              v26 = *v23;
              *v23 = v13[4];
              v13[4] = v26;
              ++*(v13 + 6);
              ++*(v23 - 2);
              result = re::DynamicArray<unsigned long>::deinit(v13);
              v13 += 5;
              v23 += 5;
            }

            while (v13 != v22);
            v12 = *(a1 + 4);
          }

          if ((v12 & 1) == 0)
          {
            result = (*(**a1 + 40))(*a1, a1[4]);
            v12 = *(a1 + 4);
          }

          *(a1 + 4) = v12 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v11;
          return result;
        }
      }

      else
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 40, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v27, v29);
        __break(1u);
      }

      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v28, v30);
      __break(1u);
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::BlurPlanesRenderFrameData const*,4ul>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  if (!*result)
  {
    v10 = *(v3 + 1);
    result = re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::setCapacity(v3, v10 + 1);
    v11 = *(v3 + 4) + 2;
    *(v3 + 4) = v11;
    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v12 = v3 + 24;
    goto LABEL_19;
  }

  v4 = *(result + 1);
  v5 = *(result + 4);
  if ((v5 & 1) == 0)
  {
    v6 = *(result + 3);
    v8 = v4 >= v6;
    v7 = v4 + 1;
    v8 = !v8 || v6 >= v7;
    if (!v8)
    {
      v9 = 2 * v6;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v7 = v4 + 1;
  if (v7 < 5)
  {
LABEL_11:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v9 = 8;
LABEL_14:
  if (v9 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  result = re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::setCapacity(result, v13);
  if (*(v3 + 4))
  {
    goto LABEL_18;
  }

LABEL_12:
  v12 = *(v3 + 4);
LABEL_19:
  v14 = *(v3 + 1);
  *&v12[8 * v14] = *a2;
  *(v3 + 1) = v14 + 1;
  *(v3 + 4) += 2;
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::BlurPlaneTypeData>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v5) = *a2;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

void re::CameraProjFrustums::~CameraProjFrustums(re::CameraProjFrustums *this)
{
  *(this + 2) = 0;
  ++*(this + 6);
}

{
  *(this + 2) = 0;
  ++*(this + 6);
  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::VCARenderData::FrustumId>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 112 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::VCARenderData::FrustumId>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::DynamicOverflowArray<re::DynamicArray<re::BlurPlaneTypeData>,4ul>::deinit(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      if (*(result + 16))
      {
        v3 = result + 24;
      }

      else
      {
        v3 = *(result + 32);
      }

      v4 = 40 * v2;
      do
      {
        result = re::DynamicArray<unsigned long>::deinit(v3);
        v3 += 40;
        v4 -= 40;
      }

      while (v4);
    }

    v5 = *(v1 + 4);
    if ((v5 & 1) == 0)
    {
      result = (*(**v1 + 40))(*v1, v1[4]);
      v5 = *(v1 + 4);
    }

    *v1 = 0;
    v1[1] = 0;
    *(v1 + 4) = (v5 | 1) + 2;
  }

  return result;
}

uint64_t re::RenderGraphSFBSystemShellBlurProvider::RenderGraphSFBSystemShellBlurProvider(uint64_t a1, const re::DynamicString *a2)
{
  re::DynamicString::DynamicString(&v4, a2);
  *a1 = &unk_1F5CC5700;
  re::DynamicString::DynamicString((a1 + 8), &v4);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  *a1 = &unk_1F5D15740;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 4;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 1568) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 0;
  *(a1 + 1604) = 0x7FFFFFFFLL;
  *(a1 + 1616) = 0;
  return a1;
}

double re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 88;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result + 24;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(result + 32);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  v5 = 40 * v2;
  do
  {
    result = re::DynamicArray<unsigned long>::deinit(v4);
    v4 += 40;
    v5 -= 40;
  }

  while (v5);
  v3 = *(v1 + 16);
LABEL_8:
  *(v1 + 16) = v3 + 2;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 352 * v6 + 16;
  }
}

uint64_t re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 352 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 352 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 352 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 352 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

_anonymous_namespace_ *re::SmallHashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,4ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(uint64_t a1, uint64_t *a2, void *__src, int a4)
{
  __srca[43] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 1468))
  {
    v12 = *(a1 + 16);
    if (!v12)
    {
      v15 = *a2;
      memcpy(&__srca[1], __src, 0x150uLL);
LABEL_25:
      v22 = (a1 + 32 + 352 * v12);
      *v22 = v15;
      memcpy(v22 + 1, __srca, 0x158uLL);
      v24 = *(a1 + 16);
      ++*(a1 + 24);
      *(a1 + 16) = v24 + 1;
      if (v24 == -1)
      {
        re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, 0);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v25, v26);
        __break(1u);
      }

      return (a1 + 32 + 352 * v24 + 16);
    }

    v13 = 352 * v12;
    v14 = (a1 + 32);
    v15 = *a2;
    result = (a1 + 48);
    v16 = 352 * v12;
    do
    {
      if (*(result - 2) == v15)
      {
        return result;
      }

      result = (result + 352);
      v16 -= 352;
    }

    while (v16);
    if ((v12 & 0xFFFFFFFC) == 0)
    {
      memcpy(&__srca[1], __src, 0x150uLL);
      if (v12 < 4)
      {
        goto LABEL_25;
      }

      re::internal::assertLog(4, v21, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
      result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
      __break(1u);
      return result;
    }

    if (!*(a1 + 1440))
    {
      v17 = *a1;
      if (!*a1)
      {
      }

      re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(a1 + 1440, v17, 8);
      v18 = *(a1 + 16);
      if (!v18)
      {
LABEL_19:
        *(a1 + 16) = 0;
        ++*(a1 + 24);
        if (a4)
        {
          goto LABEL_3;
        }

        goto LABEL_20;
      }

      v13 = 352 * v18;
    }

    do
    {
      memset(__srca, 0, 24);
      v19 = 0xBF58476D1CE4E5B9 * (*v14 ^ (*v14 >> 30));
      re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(__srca, a1 + 1440, *v14, (0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31));
      if (HIDWORD(__srca[1]) == 0x7FFFFFFF)
      {
        v20 = re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1 + 1440, __srca[1], __srca[0]);
        *(v20 + 8) = *v14;
        memcpy((v20 + 16), v14 + 2, 0x150uLL);
        ++*(a1 + 1480);
      }

      v14 += 44;
      v13 -= 352;
    }

    while (v13);
    goto LABEL_19;
  }

  if (a4)
  {
LABEL_3:
    v8 = a1 + 1440;
    v9 = a2;
    v10 = __src;
  }

  else
  {
LABEL_20:
    v8 = a1 + 1440;
    v9 = a2;
    v10 = __src;
  }

  return re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(v8, v9, v10);
}

uint64_t re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, uint64_t *a2, const void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(&v10, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 352 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v11, v10);
  *(v7 + 8) = *a2;
  v8 = v7 + 16;
  memcpy((v7 + 16), a3, 0x150uLL);
  ++*(a1 + 40);
  return v8;
}

void re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 352 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

uint64_t re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 8);
            do
            {
              if ((*(v17 - 1) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * (*v17 ^ (*v17 >> 30));
                v19 = (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31);
                v20 = re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v19 % *(a1 + 24), v19);
                *(v20 + 8) = *v17;
                memcpy((v20 + 16), v17 + 1, 0x150uLL);
              }

              v17 += 44;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 352 * v4);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 352 * v4);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = 352 * v4;
  *(v21 + v24) = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *(v21 + v24) = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v21 + 352 * v4;
}

void *re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::move(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 + 2;
  v5 = *a2;
  v6 = a1 + 2;
  if (*a2 >= *a1)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> *,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> *,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> *>(v4, &v4[52 * *a1], v6);
    v10 = *a1;
    if (*a1 != v5)
    {
      v11 = 52 * v10;
      v12 = &v4[52 * v10];
      v13 = &v6[v11];
      do
      {
        *v13 = *v12;
        v14 = *(v12 + 1);
        v15 = *(v12 + 3);
        *(v13 + 2) = *(v12 + 2);
        *(v13 + 3) = v15;
        *(v13 + 1) = v14;
        v16 = *(v12 + 4);
        v17 = *(v12 + 5);
        v18 = *(v12 + 7);
        *(v13 + 6) = *(v12 + 6);
        *(v13 + 7) = v18;
        *(v13 + 4) = v16;
        *(v13 + 5) = v17;
        v19 = *(v12 + 8);
        v20 = *(v12 + 9);
        v21 = *(v12 + 11);
        *(v13 + 10) = *(v12 + 10);
        *(v13 + 11) = v21;
        *(v13 + 8) = v19;
        *(v13 + 9) = v20;
        v13[25] = 0;
        v13[26] = 0;
        v13[24] = 0;
        v22 = v12[25];
        v13[24] = v12[24];
        v13[25] = v22;
        v12[24] = 0;
        v12[25] = 0;
        v23 = v13[26];
        v13[26] = v12[26];
        v12[26] = v23;
        v13[27] = v12[27];
        v12[27] = 0;
        v24 = *(v12 + 21);
        v26 = *(v12 + 18);
        v25 = *(v12 + 19);
        *(v13 + 20) = *(v12 + 20);
        *(v13 + 21) = v24;
        *(v13 + 18) = v26;
        *(v13 + 19) = v25;
        v27 = *(v12 + 22);
        v28 = *(v12 + 23);
        v29 = *(v12 + 25);
        *(v13 + 24) = *(v12 + 24);
        *(v13 + 25) = v29;
        *(v13 + 22) = v27;
        *(v13 + 23) = v28;
        v30 = *(v12 + 15);
        v32 = *(v12 + 16);
        v31 = *(v12 + 17);
        *(v13 + 14) = *(v12 + 14);
        *(v13 + 15) = v30;
        *(v13 + 16) = v32;
        *(v13 + 17) = v31;
        v12 += 52;
        v13 += 52;
      }

      while (v12 != &v4[52 * v5]);
    }
  }

  else
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> *,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> *,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> *>(v4, &v4[52 * v5], v6);
    if (v5 != *a1)
    {
      v7 = -416 * v5 + 416 * *a1;
      v8 = &a1[52 * v5 + 26];
      do
      {
        v9 = v8[3];
        if (v9)
        {

          v8[3] = 0;
        }

        re::FixedArray<CoreIKTransform>::deinit(v8);
        *(v8 - 24) = 0;
        v8 += 52;
        v7 -= 416;
      }

      while (v7);
    }
  }

  *a1 = v5;

  return re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::clear(a2);
}

__n128 std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> *,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> *,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 16);
      v7 = *(v5 + 48);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 48) = v7;
      *(a3 + 16) = v6;
      v8 = *(v5 + 64);
      v9 = *(v5 + 80);
      v10 = *(v5 + 112);
      *(a3 + 96) = *(v5 + 96);
      *(a3 + 112) = v10;
      *(a3 + 64) = v8;
      *(a3 + 80) = v9;
      v11 = *(v5 + 128);
      v12 = *(v5 + 144);
      v13 = *(v5 + 176);
      *(a3 + 160) = *(v5 + 160);
      *(a3 + 176) = v13;
      *(a3 + 128) = v11;
      *(a3 + 144) = v12;
      re::FixedArray<float>::operator=((a3 + 192), (v5 + 192));
      NS::SharedPtr<MTL::Texture>::operator=((a3 + 216), (v5 + 216));
      v14 = *(v5 + 272);
      v16 = *(v5 + 224);
      v15 = *(v5 + 240);
      *(a3 + 256) = *(v5 + 256);
      *(a3 + 272) = v14;
      *(a3 + 224) = v16;
      *(a3 + 240) = v15;
      v17 = *(v5 + 336);
      v19 = *(v5 + 288);
      v18 = *(v5 + 304);
      *(a3 + 320) = *(v5 + 320);
      *(a3 + 336) = v17;
      *(a3 + 288) = v19;
      *(a3 + 304) = v18;
      result = *(v5 + 384);
      v21 = *(v5 + 400);
      v23 = *(v5 + 352);
      v22 = *(v5 + 368);
      *(a3 + 384) = result;
      *(a3 + 400) = v21;
      *(a3 + 352) = v23;
      *(a3 + 368) = v22;
      v5 += 416;
      a3 += 416;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t *re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    v5 = *a2;
    if (*a1)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *a1 = v5;
      *a2 = v4;
      v7 = a1[1];
      a1[1] = a2[1];
      a2[1] = v7;
      v8 = a1[2];
      a1[2] = a2[2];
      a2[2] = v8;
      LODWORD(v8) = *(a1 + 6);
      *(a1 + 6) = *(a2 + 6);
      *(a2 + 6) = v8;
      LODWORD(v8) = *(a1 + 7);
      *(a1 + 7) = *(a2 + 7);
      *(a2 + 7) = v8;
      LODWORD(v8) = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = v8;
      LODWORD(v8) = *(a1 + 9);
      *(a1 + 9) = *(a2 + 9);
      *(a2 + 9) = v8;
LABEL_12:
      ++*(a1 + 10);
      return a1;
    }

    re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear(a1);
    if (*a2)
    {
      v9 = *(a2 + 7);
      if (*(a1 + 6) < v9)
      {
        re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(a1, v9);
      }

      re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(a1, a2);
      goto LABEL_12;
    }
  }

  return a1;
}

void *re::MeshShadowProvider::MeshShadowProvider(void *a1, const re::DynamicString *a2, const re::AssetHandle *a3)
{
  re::DynamicString::DynamicString(v6, a2);
  *a1 = &unk_1F5CC5700;
  re::DynamicString::DynamicString((a1 + 1), v6);
  if (*&v6[0])
  {
    if (BYTE8(v6[0]))
    {
      (*(**&v6[0] + 40))();
    }

    memset(v6, 0, sizeof(v6));
  }

  *a1 = &unk_1F5D158D8;
  re::AssetHandle::AssetHandle((a1 + 5), a3);
  return a1;
}

uint64_t re::MeshShadowProvider::prepareFrame(re::MeshShadowProvider *this, const char *__s, const char *a3, re::RenderFrame *a4)
{
  v78 = *MEMORY[0x1E69E9840];
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, &v74);
    v8 = (*(&v74 + 1) - 0x61C8864680B583E9 + (v74 << 6) + (v74 >> 2)) ^ v74;
  }

  else
  {
    v8 = 0;
  }

  v9 = strlen(a3);
  if (v9)
  {
    MurmurHash3_x64_128(a3, v9, 0, &v74);
    v10 = ((*(&v74 + 1) - 0x61C8864680B583E9 + (v74 << 6) + (v74 >> 2)) ^ v74) - 0x61C8864680B583E9;
  }

  else
  {
    v10 = 0x9E3779B97F4A7C17;
  }

  if ((atomic_load_explicit(&qword_1EE1C18C0, memory_order_acquire) & 1) == 0)
  {
    v45 = __cxa_guard_acquire(&qword_1EE1C18C0);
    if (v45)
    {
      _MergedGlobals_544 = re::getCombinedScopeHash(v45, v46, v47);
      __cxa_guard_release(&qword_1EE1C18C0);
    }
  }

  if (a3)
  {
    v11 = *a3;
    if (*a3)
    {
      v12 = a3[1];
      if (v12)
      {
        v13 = a3 + 2;
        do
        {
          v11 = 31 * v11 + v12;
          v14 = *v13++;
          v12 = v14;
        }

        while (v14);
      }

      v11 &= ~0x8000000000000000;
    }
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v73 = v11;
  v15 = "N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE" & 0x8000000000000000) != 0)
  {
    v16 = ("N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  if (!*(a4 + 12))
  {
    return 0;
  }

  v19 = (_MergedGlobals_544 - 0x61C8864680B583E9 + (v15 << 6) + (v15 >> 2)) ^ v15;
  v20 = *(*(a4 + 13) + 4 * (v19 % *(a4 + 30)));
  if (v20 == 0x7FFFFFFF)
  {
    return 0;
  }

  v21 = ((v8 >> 2) + (v8 << 6) + v10) ^ v8;
  v22 = *(a4 + 14);
  while (*(v22 + 24 * v20 + 8) != v19)
  {
    v20 = *(v22 + 24 * v20) & 0x7FFFFFFF;
    if (v20 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  v23 = *(v22 + 24 * v20 + 16);
  if (!v23)
  {
    return 0;
  }

  v24 = [*(*(a4 + 1) + 208) supportsTexture2DMultisampleArray];
  v25 = v24;
  v26 = *(v23 + 24);
  if (v26 >= 0x800)
  {
    v27 = 2048;
  }

  else
  {
    v27 = v26;
  }

  v28 = *(*a4 + 296);
  if (v24)
  {
    v29 = 0;
  }

  else
  {
    v29 = 2;
  }

  *&v74 = 0xA00000000;
  if (v24)
  {
    v30 = 3;
  }

  else
  {
    v30 = 7;
  }

  v31 = *(v23 + 16);
  DWORD2(v74) = 3;
  HIDWORD(v74) = v31;
  *v75 = v31;
  *&v75[4] = 1;
  *&v75[12] = 0xFFFFFFFF00000001;
  *&v75[8] = v27;
  *&v75[20] = 0;
  v75[24] = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *&v75[28] = _D0;
  *&v75[36] = 0;
  *&v75[44] = v29;
  *v76 = 1;
  *&v76[4] = v30;
  *&v76[8] = xmmword_1E3108CE0;
  BYTE8(v77) = 0;
  *&v76[24] = 0;
  *&v77 = 0;
  *&v71[0] = 0x6AD7693626249265;
  *&v61[0] = 0x6AD7693626249265;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v28, &v73, v71, v61, a4, &v74, &v72);
  v71[4] = *v76;
  v71[5] = *&v76[16];
  v71[6] = v77;
  v71[0] = v74;
  v71[1] = *v75;
  v71[2] = *&v75[16];
  v71[3] = *&v75[32];
  DWORD1(v71[0]) = 20;
  *&v61[0] = 0x2C37E112E1E92C60;
  *&v54 = 0x2C37E112E1E92C60;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v28, &v73, v61, &v54, a4, v71, &v72);
  v65 = 0;
  v66 = 16 * (v27 + 4 * v27);
  v67 = 0;
  v68 = 1065353216;
  v69 = 0xFFFFFFFF00000020;
  v70 = xmmword_1E3062D70;
  *&v61[0] = 0x19DF38FA543D0095;
  *&v54 = 0x19DF38FA543D0095;
  re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v28, &v73, v61, &v54, a4, &v65, &v72, 0);
  v62 = *v76;
  v63 = *&v76[16];
  v64 = v77;
  v61[0] = v74;
  v61[1] = *v75;
  v61[2] = *&v75[16];
  v61[3] = *&v75[32];
  DWORD1(v61[0]) = 250;
  if (v25)
  {
    v37 = *(a4 + 1);
    if (v37[371] != 1 || (*v37 & 1) == 0)
    {
      DWORD1(v62) = 7;
    }
  }

  *&v54 = 0x6B14F36D04976B05;
  *&v49[0] = 0x6B14F36D04976B05;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v28, &v73, &v54, v49, a4, v61, &v72);
  v59 = *&v76[16];
  v60 = v77;
  v54 = v74;
  v55 = *v75;
  v57 = *&v75[32];
  v58 = *v76;
  v56 = *&v75[16];
  HIDWORD(v55) = *(v23 + 96);
  *&v49[0] = 0x284EDEB613E4CA80;
  v53 = 0x284EDEB613E4CA80;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v28, &v73, v49, &v53, a4, &v54, &v72);
  v50 = v58;
  v51 = v59;
  v52 = v60;
  v49[0] = v54;
  v49[1] = v55;
  v49[2] = v56;
  v49[3] = v57;
  DWORD1(v49[0]) = 60;
  if (v25)
  {
    v38 = *(a4 + 1);
    if (v38[371] != 1 || (*v38 & 1) == 0)
    {
      DWORD1(v50) = 7;
    }
  }

  v53 = 0x335A34A7FEF3F24;
  v48 = 0x335A34A7FEF3F24;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v28, &v73, &v53, &v48, a4, v49, &v72);
  v53 = 0x59A6302C4491B15;
  v48 = 0x59A6302C4491B15;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v28, &v73, &v53, &v48, a4, &v54, &v72);
  v39 = (v21 - 0x3869C2019F65CC2) ^ 0x1D5BABFC9CFDFE9ELL;
  if (v25)
  {
    v40 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v27) ^ ((0xBF58476D1CE4E5B9 * v27) >> 27));
    v41 = ((v39 << 6) - 0x61C8864680B583E9 + (v39 >> 2) + (v40 ^ (v40 >> 31))) ^ v39;
    v42 = 0xBF58476D1CE4E5B9 * (*(v23 + 16) ^ (*(v23 + 16) >> 30));
    v39 = ((v41 << 6) - 0x61C8864680B583E9 + (v41 >> 2) + ((0x94D049BB133111EBLL * (v42 ^ (v42 >> 27))) ^ ((0x94D049BB133111EBLL * (v42 ^ (v42 >> 27))) >> 31))) ^ v41;
  }

  v43 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v23 + 28)) ^ ((0xBF58476D1CE4E5B9 * *(v23 + 28)) >> 27));
  return ((v39 << 6) - 0x61C8864680B583E9 + (v39 >> 2) + (v43 ^ (v43 >> 31))) ^ v39;
}

void re::MeshShadowProvider::provide(re::MeshShadowProvider *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v155 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1C18D0, memory_order_acquire) & 1) == 0)
  {
    v96 = __cxa_guard_acquire(&qword_1EE1C18D0);
    if (v96)
    {
      qword_1EE1C18C8 = re::getCombinedScopeHash(v96, v97, v98);
      __cxa_guard_release(&qword_1EE1C18D0);
    }
  }

  v105 = this;
  v8 = "N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE" & 0x8000000000000000) != 0)
  {
    v9 = ("N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  v12 = 0x7FFFFFFFLL;
  if (*(a4 + 12))
  {
    v13 = (qword_1EE1C18C8 + (v8 << 6) + (v8 >> 2) - 0x61C8864680B583E9) ^ v8;
    v14 = *(*(a4 + 13) + 4 * (v13 % *(a4 + 30)));
    if (v14 != 0x7FFFFFFF)
    {
      v15 = *(a4 + 14);
      v12 = 0x7FFFFFFFLL;
      while (*(v15 + 24 * v14 + 8) != v13)
      {
        v14 = *(v15 + 24 * v14) & 0x7FFFFFFF;
        if (v14 == 0x7FFFFFFF)
        {
          goto LABEL_12;
        }
      }

      v12 = v14;
    }
  }

LABEL_12:
  v16 = *(*(a4 + 14) + 24 * v12 + 16);
  v17 = [*(*(a4 + 1) + 208) supportsTexture2DMultisampleArray];
  v130 = 2;
  v132 = -1;
  v133 = -1;
  v134 = -1;
  v131 = 2;
  v135 = 0;
  v136 = 1;
  __asm { FMOV            V9.2S, #1.0 }

  v137 = _D9;
  v138 = xmmword_1E3108CF0;
  v139 = 0x2000000000;
  v140 = -1;
  v141 = -1;
  v142 = -1;
  v144 = 0;
  if (a3)
  {
    v23 = *a3;
    if (*a3)
    {
      v24 = a3[1];
      if (v24)
      {
        v25 = a3 + 2;
        do
        {
          v23 = 31 * v23 + v24;
          v26 = *v25++;
          v24 = v26;
        }

        while (v26);
      }

      v27 = ((v23 & 0x7FFFFFFFFFFFFFFFLL) + 0x6EC7A19091F839F0) ^ 0x6AD7693626249265;
    }

    else
    {
      v27 = 0x410C8A6B7DCAB95;
    }

    v143 = v27;
    re::RenderFrame::createTarget(&v129, a4, &v130, "ProjectiveMeshShadowMapTexture");
    v29 = *a3;
    if (*a3)
    {
      v30 = a3[1];
      if (v30)
      {
        v31 = a3 + 2;
        do
        {
          v29 = 31 * v29 + v30;
          v32 = *v31++;
          v30 = v32;
        }

        while (v32);
      }

      v28 = ((v29 & 0x7FFFFFFFFFFFFFFFLL) - 0x48C249494DF020D1) ^ 0x2C37E112E1E92C60;
    }

    else
    {
      v28 = 0x9B0A57A453E6F34FLL;
    }
  }

  else
  {
    v143 = 0x8410C8A6B7DCAB8ALL;
    re::RenderFrame::createTarget(&v129, a4, &v130, "ProjectiveMeshShadowMapTexture");
    v28 = 0x1B0A57A453E6F34ELL;
  }

  v143 = v28;
  re::RenderFrame::createTarget(&v128, a4, &v130, "TiledShadowDepthPrepassDepthAsColorTexture");
  v33 = *(v16 + 24);
  if (v33 >= 0x800)
  {
    v33 = 2048;
  }

  v125.n128_u64[0] = 0xA00000000;
  v34 = *(v16 + 16);
  v125.n128_u32[2] = 8;
  v125.n128_u32[3] = v34;
  *v126 = v34;
  *&v126[4] = 4;
  *&v126[12] = 0xFFFFFFFF00000001;
  *&v126[8] = v33;
  *&v126[20] = 0;
  v126[24] = 0;
  *&v126[28] = _D9;
  *&v126[36] = xmmword_1E3108CF0;
  *&v126[52] = xmmword_1E3108D00;
  *&v126[68] = -1;
  BYTE8(v127) = 0;
  *&v126[72] = 0;
  *&v127 = 0;
  v136 = 0;
  if (a3)
  {
    v35 = *a3;
    if (*a3)
    {
      v36 = a3[1];
      if (v36)
      {
        v37 = a3 + 2;
        do
        {
          v35 = 31 * v35 + v36;
          v38 = *v37++;
          v36 = v38;
        }

        while (v38);
      }

      v39 = ((v35 & 0x7FFFFFFFFFFFFFFFLL) + 0x7E3991D5E64B1818) ^ 0x6B14F36D04976B05;
    }

    else
    {
      v39 = 0x152D62B8E2DC731DLL;
    }

    v143 = v39;
    re::RenderFrame::createTarget(&v124, a4, &v130, "MeshShadowDepthTexture");
    v41 = *a3;
    if (*a3)
    {
      v42 = a3[1];
      if (v42)
      {
        v43 = a3 + 2;
        do
        {
          v41 = 31 * v41 + v42;
          v44 = *v43++;
          v42 = v44;
        }

        while (v44);
      }

      v40 = ((v41 & 0x7FFFFFFFFFFFFFFFLL) - 0x43FD21140289B149) ^ 0x284EDEB613E4CA80;
    }

    else
    {
      v40 = 0x944C005DEE928437;
    }
  }

  else
  {
    v143 = 0x952D62B8E2DC7312;
    re::RenderFrame::createTarget(&v124, a4, &v130, "MeshShadowDepthTexture");
    v40 = 0x144C005DEE928436;
  }

  v143 = v40;
  re::RenderFrame::createTarget(&v123, a4, &v130, "MeshShadowMippedColorTexture");
  v122 = 0;
  v45 = -1;
  v120 = -1;
  v121 = -1;
  v106 = a2;
  if (!v17)
  {
    v103 = 0;
    v102 = -1;
    if (a3)
    {
      goto LABEL_44;
    }

LABEL_50:
    v143 = 0x83ACB02986EA930ELL;
    re::RenderFrame::createTarget(&v117, a4, &v130, "MeshShadowIntermediateTexture");
    v52 = 0xEF58166664F92BFBLL;
    goto LABEL_58;
  }

  v152 = *&v126[48];
  v153 = *&v126[64];
  v154 = v127;
  v150 = v125;
  *v151 = *v126;
  *&v151[16] = *&v126[16];
  *&v151[32] = *&v126[32];
  v150.n128_u32[1] = 250;
  re::RenderFrame::createTarget(&v108, a4, &v150, "MeshShadowDepthMsaaTexture");
  v103 = v108;
  v45 = v109;
  v102 = HIDWORD(v109);
  v119 = v124;
  *(re::RenderGraphResourceDescriptions::targetDescription((a4 + 3672), &v119) + 84) = v45;
  re::RenderFrame::createTarget(&v108, a4, &v125, "MeshShadowColorMsaaTexture");
  v122 = v108;
  v46 = v109;
  v120 = HIDWORD(v109);
  v121 = v109;
  v118 = v123;
  *(re::RenderGraphResourceDescriptions::targetDescription((a4 + 3672), &v118) + 84) = v46;
  if (!a3)
  {
    goto LABEL_50;
  }

LABEL_44:
  v47 = *a3;
  if (*a3)
  {
    v48 = a3[1];
    if (v48)
    {
      v49 = a3 + 2;
      do
      {
        v47 = 31 * v47 + v48;
        v50 = *v49++;
        v48 = v50;
      }

      while (v50);
    }

    v51 = ((v47 & 0x7FFFFFFFFFFFFFFFLL) + 0x636D32B42A3881CLL) ^ 0x59A6302C4491B15;
  }

  else
  {
    v51 = 0x3ACB02986EA9309;
  }

  v143 = v51;
  re::RenderFrame::createTarget(&v117, a4, &v130, "MeshShadowIntermediateTexture");
  v53 = *a3;
  if (*a3)
  {
    v54 = a3[1];
    if (v54)
    {
      v55 = a3 + 2;
      do
      {
        v53 = 31 * v53 + v54;
        v56 = *v55++;
        v54 = v56;
      }

      while (v56);
    }

    v52 = ((v53 & 0x7FFFFFFFFFFFFFFFLL) + 0x6C6DB52C1B1614E0) ^ 0x335A34A7FEF3F24;
  }

  else
  {
    v52 = 0x6F58166664F92BC4;
  }

LABEL_58:
  v143 = v52;
  v136 = 1;
  re::RenderFrame::createTarget(&v116, a4, &v130, "MeshShadowMippedReceiverDepthColorTexture");
  if (v17 && (v57 = *(a4 + 1), v57[371] == 1) && *v57 == 1)
  {
    v152 = *&v126[48];
    v153 = *&v126[64];
    v154 = v127;
    v150 = v125;
    *v151 = *v126;
    *&v151[16] = *&v126[16];
    *&v151[32] = *&v126[32];
    v150.n128_u32[1] = 60;
    re::RenderFrame::createTarget(&v108, a4, &v150, "MeshShadowReceiverDepthColorMsaaTexture");
    v58 = v108;
    v104 = v109;
    v115 = v116;
    *(re::RenderGraphResourceDescriptions::targetDescription((a4 + 3672), &v115) + 84) = v104;
  }

  else
  {
    v58 = 0;
    v104 = -1;
  }

  LODWORD(v108) = 2;
  v109 = -1;
  v110 = 1;
  v111 = 1065353216;
  v112 = 0xFFFFFFFF00000020;
  v113 = -1;
  if (a3)
  {
    v59 = *a3;
    if (*a3)
    {
      v60 = a3[1];
      if (v60)
      {
        v61 = a3 + 2;
        do
        {
          v59 = 31 * v59 + v60;
          v62 = *v61++;
          v60 = v62;
        }

        while (v62);
      }

      v63 = ((v59 & 0x7FFFFFFFFFFFFFFFLL) + 0x1C7D868D2399E17CLL) ^ 0x19DF38FA543D0095;
    }

    else
    {
      v63 = 0x5A2BE7777A4E1E9;
    }
  }

  else
  {
    v63 = 0x85A2BE7777A4E1EELL;
  }

  v114 = v63;
  re::RenderFrame::createBuffer(&v107, a4, &v108, "MeshShadowMipDescriptionBuffer");
  RenderGraph = re::RenderFrame::makeRenderGraph(a4, "MeshShadowRenderGraph", 7uLL);
  v65 = re::globalAllocators(RenderGraph);
  v66 = (*(*v65[2] + 32))(v65[2], 264, 8);
  v67 = re::RenderGraphNode::RenderGraphNode(v66, "CopyShadowTextures");
  *v67 = &unk_1F5D0F188;
  v150.n128_u64[0] = v67;
  re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, &v150);
  v66[3] = *(RenderGraph + 10);
  v66[4] = *(RenderGraph + 12);
  v66[6] = *(RenderGraph + 13);
  v150 = v107;
  *v151 = 0x100000000;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[36] = 0;
  re::DynamicArray<re::TargetWrite>::add((v66 + 18), &v150);
  v150 = v128;
  *v151 = 0x100000000;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[36] = 0;
  re::DynamicArray<re::TargetWrite>::add((v66 + 28), &v150);
  v150 = v129;
  *v151 = 0x100000000;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[36] = 0;
  re::DynamicArray<re::TargetWrite>::add((v66 + 28), &v150);
  v68 = *(v16 + 28);
  v69 = *(a4 + 1);
  if (v69[371] == 1 && *v69 == 1)
  {
    TiledShadowDepthPrepassMap = re::RenderGraph::addNode<re::GenerateTiledShadowDepthPrepassMapNode>(RenderGraph);
    v71 = TiledShadowDepthPrepassMap;
    v150 = v123;
    if (v17)
    {
      *v151 = 0x600000000;
      *&v151[16] = xmmword_1E3047670;
      *&v151[32] = v68;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((TiledShadowDepthPrepassMap + 224), &v150);
      v101 = v122;
      v150.n128_u64[0] = v122;
      v99 = v120;
      v100 = v121;
      v150.n128_u64[1] = __PAIR64__(v120, v121);
      *v151 = 0x100000000;
      *&v151[16] = xmmword_1E3047670;
      *&v151[32] = v68;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((v71 + 224), &v150);
      v150 = v116;
      *v151 = 0x600000001;
      *&v151[16] = xmmword_1E3047670;
      *&v151[32] = v68;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((v71 + 224), &v150);
      v150.n128_u64[0] = v58;
      v150.n128_u64[1] = v104;
      *v151 = 0x100000001;
      *&v151[16] = xmmword_1E3047670;
      *&v151[32] = v68;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((v71 + 224), &v150);
      v150 = v124;
      *v151 = 0x700000000;
      *&v151[16] = xmmword_1E30474D0;
      *&v151[32] = 0;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((v71 + 224), &v150);
      v150.n128_u64[0] = v103;
      v150.n128_u64[1] = __PAIR64__(v102, v45);
      *v151 = 0x200000000;
      *&v151[16] = xmmword_1E30474D0;
      *&v151[32] = 0;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((v71 + 224), &v150);
      ProjectiveMeshShadowMap = re::RenderGraph::addNode<re::GenerateProjectiveMeshShadowMapNode>(RenderGraph);
      memset(v149 + 8, 0, 18);
      v150 = v123;
      *v151 = 0x600000000;
      *&v151[8] = *&v149[0];
      *&v151[18] = 0u;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((ProjectiveMeshShadowMap + 224), &v150);
      v150.n128_u64[0] = v101;
      v150.n128_u64[1] = __PAIR64__(v99, v100);
      *v151 = 0x100000000;
      *&v151[8] = v149[0];
      *&v151[18] = *(v149 + 10);
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((ProjectiveMeshShadowMap + 224), &v150);
      v147 = 0;
      v146 = 0;
      v148 = 0;
      v150 = v116;
      *v151 = 0xA00000001;
      *&v151[8] = v145;
      *&v151[18] = 0u;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((ProjectiveMeshShadowMap + 224), &v150);
      v150 = v124;
      *v151 = 0x700000000;
      *&v151[16] = xmmword_1E30474D0;
      *&v151[32] = 0;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((ProjectiveMeshShadowMap + 224), &v150);
      v150.n128_u64[0] = v103;
      v150.n128_u64[1] = __PAIR64__(v102, v45);
    }

    else
    {
      *v151 = 0x100000000;
      *&v151[16] = xmmword_1E3047670;
      *&v151[32] = v68;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((TiledShadowDepthPrepassMap + 224), &v150);
      v150 = v116;
      *v151 = 0x100000001;
      *&v151[16] = xmmword_1E3047670;
      *&v151[32] = v68;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((v71 + 224), &v150);
      v150 = v124;
      *v151 = 0x200000000;
      *&v151[16] = xmmword_1E30474D0;
      *&v151[32] = 0;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((v71 + 224), &v150);
      ProjectiveMeshShadowMap = re::RenderGraph::addNode<re::GenerateProjectiveMeshShadowMapNode>(RenderGraph);
      memset(v149 + 8, 0, 18);
      v150 = v123;
      *v151 = 0x100000000;
      *&v151[8] = *&v149[0];
      *&v151[18] = 0u;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((ProjectiveMeshShadowMap + 224), &v150);
      memset(v149 + 8, 0, 18);
      v150 = v116;
      *v151 = 0xA00000001;
      *&v151[8] = *&v149[0];
      *&v151[18] = 0u;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((ProjectiveMeshShadowMap + 224), &v150);
      v150 = v124;
    }

    *v151 = 0x200000000;
    *&v151[16] = xmmword_1E30474D0;
    *&v151[32] = 0;
    *&v151[36] = 0;
    re::DynamicArray<re::TargetWrite>::add((ProjectiveMeshShadowMap + 224), &v150);
    v80 = v105;
    v79 = v106;
  }

  else
  {
    v73 = re::RenderGraph::addNode<re::GenerateTiledShadowDepthPrepassMapNode>(RenderGraph);
    v150 = v124;
    *v151 = 0x200000000;
    *&v151[16] = xmmword_1E30474D0;
    *&v151[32] = 0;
    *&v151[36] = 0;
    re::DynamicArray<re::TargetWrite>::add((v73 + 224), &v150);
    v150 = v116;
    *v151 = 0x100000001;
    *&v151[16] = xmmword_1E3047670;
    *&v151[32] = v68;
    *&v151[36] = 0;
    re::DynamicArray<re::TargetWrite>::add((v73 + 224), &v150);
    v74 = re::RenderGraph::addNode<re::GenerateProjectiveMeshShadowMapNode>(RenderGraph);
    v75 = v74;
    if (v17)
    {
      v150 = v123;
      *v151 = 0x600000000;
      *&v151[16] = xmmword_1E3047670;
      *&v151[32] = v68;
      *&v151[40] = 0;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((v74 + 224), &v150);
      v76 = &v122;
      v77 = &v120;
      v78 = &v121;
    }

    else
    {
      v78 = &v123.n128_u32[2];
      v77 = &v123.n128_u32[3];
      v76 = &v123;
    }

    v80 = v105;
    v79 = v106;
    v150.n128_u64[0] = v76->n128_u64[0];
    v81 = *v77;
    v150.n128_u32[2] = *v78;
    v150.n128_u32[3] = v81;
    *v151 = 0x100000000;
    *&v151[16] = xmmword_1E3047670;
    *&v151[32] = v68;
    *&v151[40] = 0;
    *&v151[36] = 0;
    re::DynamicArray<re::TargetWrite>::add((v75 + 224), &v150);
    v150 = v116;
    *v151 = 0;
    *&v151[8] = 2;
    re::DynamicArray<re::TargetRead>::add((v75 + 184), &v150);
  }

  v83 = re::globalAllocators(v82);
  v84 = (*(*v83[2] + 32))(v83[2], 592, 16);
  v85 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v84, "MeshShadowGenerateMips");
  *v85 = &unk_1F5D0F428;
  *(v85 + 31) = 0u;
  *(v85 + 32) = 0u;
  v86 = re::DynamicString::setCapacity((v84 + 496), 0);
  *(v84 + 528) = 0u;
  *(v84 + 544) = 0u;
  re::DynamicString::setCapacity((v84 + 528), 0);
  *(v84 + 576) = 0;
  *(v84 + 560) = 0u;
  v150.n128_u64[0] = v84;
  re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, &v150);
  *(v84 + 24) = *(RenderGraph + 10);
  *(v84 + 32) = *(RenderGraph + 12);
  *(v84 + 48) = *(RenderGraph + 13);
  re::AssetHandle::operator=(v84 + 264, v80 + 5);
  v150.n128_u64[0] = "meshShadowCalculateMip";
  v150.n128_u64[1] = 22;
  re::DynamicString::operator=((v84 + 528), &v150);
  v150.n128_u64[0] = "meshShadowGenerateMip";
  v150.n128_u64[1] = 21;
  re::DynamicString::operator=((v84 + 496), &v150);
  v150 = v123;
  *v151 = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v84 + 184), &v150);
  v150 = v116;
  *v151 = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v84 + 184), &v150);
  v150 = v123;
  *v151 = 0x100000000;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[36] = 0;
  re::DynamicArray<re::TargetWrite>::add((v84 + 224), &v150);
  v150 = v116;
  *v151 = 0x100000000;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[36] = 0;
  re::DynamicArray<re::TargetWrite>::add((v84 + 224), &v150);
  v150 = v107;
  *v151 = 0x500000000;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[36] = 0;
  re::DynamicArray<re::TargetWrite>::add((v84 + 144), &v150);
  re::MeshShadowGenerateMipmapNode::configure(v84, v79, a3, a4);
  v87 = re::RenderGraph::addNode<re::ProjectiveMeshShadowBlurNode>(RenderGraph, "MeshShadowBlurShadowX");
  re::AssetHandle::operator=(v87 + 264, v80 + 5);
  v150.n128_u64[0] = "projectiveMeshShadowDilateHorizontal";
  v150.n128_u64[1] = 36;
  re::DynamicString::operator=((v87 + 288), &v150);
  v88 = v117;
  if ((*(v87 + 320) & 1) == 0)
  {
    *(v87 + 320) = 1;
  }

  *(v87 + 328) = v88;
  v150 = v123;
  *v151 = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v87 + 184), &v150);
  v150 = v116;
  *v151 = 1;
  *&v151[4] = 0;
  v151[6] = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v87 + 184), &v150);
  v150 = v107;
  *v151 = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v87 + 104), &v150);
  v150 = v117;
  *v151 = 0x500000002;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[40] = 0;
  *&v151[36] = 0;
  re::DynamicArray<re::TargetWrite>::add((v87 + 224), &v150);
  *(v87 + 124) = 0;
  re::ProjectiveMeshShadowBlurNode::configure(v87, v79, a3, a4);
  v89 = re::RenderGraph::addNode<re::ProjectiveMeshShadowBlurNode>(RenderGraph, "MeshShadowBlurShadowY");
  re::AssetHandle::operator=(v89 + 264, v80 + 5);
  v150.n128_u64[0] = "projectiveMeshShadowDilateVertical";
  v150.n128_u64[1] = 34;
  re::DynamicString::operator=((v89 + 288), &v150);
  v90 = v129;
  if ((*(v89 + 320) & 1) == 0)
  {
    *(v89 + 320) = 1;
  }

  *(v89 + 328) = v90;
  v150 = v117;
  *v151 = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v89 + 184), &v150);
  v150 = v116;
  *v151 = 1;
  *&v151[4] = 0;
  v151[6] = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v89 + 184), &v150);
  v150 = v107;
  *v151 = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v89 + 104), &v150);
  v150 = v123;
  *v151 = 0x500000002;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[36] = 0;
  re::DynamicArray<re::TargetWrite>::add((v89 + 224), &v150);
  *(v89 + 124) = 1;
  v91 = re::ProjectiveMeshShadowBlurNode::configure(v89, v79, a3, a4);
  v92 = re::globalAllocators(v91);
  v93 = (*(*v92[2] + 32))(v92[2], 496, 16);
  v94 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v93, "MeshShadowGenerateFinalTexture");
  *v94 = &unk_1F5D0F4E8;
  v150.n128_u64[0] = v94;
  re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, &v150);
  v93[3] = *(RenderGraph + 10);
  v93[4] = *(RenderGraph + 12);
  v93[6] = *(RenderGraph + 13);
  re::AssetHandle::operator=((v93 + 33), v80 + 5);
  v150.n128_u64[0] = "meshShadowGenerateFinalTexture";
  v150.n128_u64[1] = 30;
  re::DynamicString::operator=((v93 + 36), &v150);
  v150 = v123;
  *v151 = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v93 + 23), &v150);
  v150 = v116;
  *v151 = 1;
  *&v151[4] = 0;
  v151[6] = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v93 + 23), &v150);
  v150 = v107;
  *v151 = 1;
  *&v151[4] = 0;
  v151[6] = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v93 + 13), &v150);
  v150 = v129;
  *v151 = 0x100000002;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[36] = 0;
  re::DynamicArray<re::TargetWrite>::add((v93 + 28), &v150);
  v150 = v128;
  *v151 = 0x100000003;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[36] = 0;
  v95 = re::DynamicArray<re::TargetWrite>::add((v93 + 28), &v150);
  (*(*v93 + 80))(v93, v79, a3, a4, v95);
  v150.n128_u64[0] = 0x26220881977C39BCLL;
  re::RenderFrame::addTargetOutput(a4, v150.n128_u64, v129.n128_f64, "ProjectiveMeshShadowMapScope");
  v150.n128_u64[0] = 0x25C1E79857068EA3;
  re::RenderFrame::addTargetOutput(a4, v150.n128_u64, v128.n128_f64, "ProjectiveMeshShadowMapScope");
  v150.n128_u64[0] = 0x5878D331D268CBA0;
  re::RenderFrame::addBufferOutput(a4, v150.n128_u64, v107.n128_f64, "ProjectiveMeshShadowMapScope");
}

re::RenderGraphNode *re::RenderGraph::addNode<re::GenerateTiledShadowDepthPrepassMapNode>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  v4 = re::RenderGraphNode::RenderGraphNode(v3, "GenerateTiledShadowDepthPrepassMap");
  *(v4 + 66) = 1;
  *(v4 + 268) = 0;
  *v4 = &unk_1F5D0F230;
  v8 = v4;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 13);
  *(v3 + 3) = *(a1 + 10);
  *(v3 + 4) = v5;
  *(v3 + 6) = v6;
  return v3;
}

re::RenderGraphNode *re::RenderGraph::addNode<re::GenerateProjectiveMeshShadowMapNode>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 264, 8);
  v4 = re::RenderGraphNode::RenderGraphNode(v3, "GenerateProjectiveMeshShadowMap");
  *v4 = &unk_1F5D0F2D8;
  v8 = v4;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 13);
  *(v3 + 3) = *(a1 + 10);
  *(v3 + 4) = v5;
  *(v3 + 6) = v6;
  return v3;
}

re::RenderGraphComputeNodeBase *re::RenderGraph::addNode<re::ProjectiveMeshShadowBlurNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 688, 16);
  v6 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v5, a2);
  *v6 = &unk_1F5D0F5A8;
  *(v6 + 504) = 0u;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0u;
  *(v6 + 568) = 0u;
  *(v6 + 584) = 0u;
  *(v6 + 600) = 0u;
  *(v6 + 616) = 0u;
  *(v6 + 632) = 0u;
  *(v6 + 648) = 0u;
  *(v6 + 664) = 0u;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

void re::MeshShadowProvider::~MeshShadowProvider(re::MeshShadowProvider *this)
{
  re::AssetHandle::~AssetHandle((this + 40));
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  re::AssetHandle::~AssetHandle((this + 40));
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphGenerateMipmapsNode::execute(re::RenderGraphGenerateMipmapsNode *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v11, 5062, 0, 0, 0, 0);
  re::RenderGraphContext::acquireManagedBlitCommandEncoder(&v10, a2, 0);
  v4 = *(this + 30);
  if (v4)
  {
    v5 = *(this + 32);
    v6 = v4 << 6;
    do
    {
      re::RenderGraphContext::metalTexture(a2, v5, 0, 0, &v9);
      re::mtl::BlitCommandEncoder::generateMipmaps(&v10, v9);
      if (v9)
      {
      }

      v5 += 64;
      v6 -= 64;
    }

    while (v6);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v11, v7, v8);
}

void *re::RenderGraphGenerateMipmapsNode::validateAttachmentsDuringGraphBuild(void *result, const char *a2)
{
  v3 = result;
  if (result[15])
  {
    re::DynamicString::format(&v4, "(%s): Buffer reads not supported for RenderGraphGenerateMipmapsNode.", a2, result[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[20])
  {
    re::DynamicString::format(&v4, "(%s): Buffer writes not supported for RenderGraphGenerateMipmapsNode.", a2, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[25])
  {
    re::DynamicString::format(&v4, "(%s): Target reads not supported for RenderGraphGenerateMipmapsNode.", a2, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        return (*(*v4 + 40))();
      }
    }
  }

  return result;
}

void re::RenderGraphTargetCopyNode::setup(_BOOL8 this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v5 = this;
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(this + 240);
  if (v6)
  {
    v7 = v6 << 6;
    v8 = (*(this + 256) + 20);
    do
    {
      if (*v8 != 4)
      {
        *v8 = 4;
        if ((atomic_exchange(&re::RenderGraphTargetCopyNode::setup(re::RenderGraphBuilder &,re::RenderGraphDataStore &)::__FILE____LINE___logged, 1u) & 1) == 0)
        {
          v9 = *re::graphicsLogObjects(this);
          this = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
          if (this)
          {
            v10 = *(v5 + 2);
            *buf = 136315138;
            v12 = v10;
            _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "(%s): Defaulting target write type to kWriteBlit. Other operation types are not supported.", buf, 0xCu);
          }
        }
      }

      v8 += 16;
      v7 -= 64;
    }

    while (v7);
  }

  re::RenderGraphNode::setup(v5, a2, a3);
}

void re::RenderGraphTargetCopyNode::execute(re::RenderGraphTargetCopyNode *this, re::RenderGraphContext *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v31, 5064, 0, 0, 0, 0);
  re::RenderGraphContext::acquireManagedBlitCommandEncoder(&v30, a2, 0);
  if (*(this + 25))
  {
    v4 = 0;
    v5 = 1;
    do
    {
      re::RenderGraphContext::metalTexture(a2, *(this + 27) + 32 * v4, 0, 0, &v29);
      v6 = *(this + 30);
      if (v6 <= v4)
      {
        v32 = 0;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        *v41 = 0u;
        v22 = MEMORY[0x1E69E9C10];
        v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v33 = 136315906;
        v34 = "operator[]";
        v35 = 1024;
        if (v23)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v36 = 789;
        v37 = 2048;
        v38 = v4;
        v39 = 2048;
        v40 = v6;
        _os_log_send_and_compose_impl(v24, &v32, v41, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v26, v27);
        _os_crash_msg();
        __break(1u);
      }

      re::RenderGraphContext::metalTexture(a2, *(this + 32) + (v4 << 6), 0, 0, v41);
      v7 = v29;
      if (*(this + 368) == 1)
      {
        re::mtl::BlitCommandEncoder::textureCopy(&v30, v29, v41[0]);
      }

      else
      {
        v8 = *(this + 34);
        v28 = *(this + 33);
        v9 = *(this + 35);
        v10 = *(this + 36);
        v11 = *(this + 37);
        v12 = [v29 width];
        if (v12 >= *(this + 38))
        {
          v13 = *(this + 38);
        }

        else
        {
          v13 = v12;
        }

        v14 = [v29 height];
        v15 = a2;
        if (v14 >= *(this + 39))
        {
          v16 = *(this + 39);
        }

        else
        {
          v16 = v14;
        }

        v17 = [v29 depth];
        v18 = *(this + 40);
        if (v17 < v18)
        {
          v18 = v17;
        }

        v25 = v16;
        a2 = v15;
        re::mtl::BlitCommandEncoder::textureCopy(&v30, v7, v28, v8, v9, v10, v11, v13, v25, v18, v41[0], *(this + 41), *(this + 42), *(this + 43), *(this + 44), *(this + 45));
      }

      if (v41[0])
      {
      }

      if (v29)
      {
      }

      v4 = v5;
    }

    while (*(this + 25) > v5++);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v31, v20, v21);
}

void *re::RenderGraphTargetCopyNode::validateAttachmentsDuringGraphBuild(void *result, const char *a2)
{
  v3 = result;
  if (result[15])
  {
    re::DynamicString::format(&v4, "(%s): Buffer reads not supported for RenderGraphTargetCopyNode.", a2, result[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[20])
  {
    re::DynamicString::format(&v4, "(%s): Buffer writes not supported for RenderGraphTargetCopyNode.", a2, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[25] != v3[30])
  {
    re::DynamicString::format(&v4, "(%s): Target reads must match up with the same number of target writes for RenderGraphTargetCopyNode.", a2, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        return (*(*v4 + 40))();
      }
    }
  }

  return result;
}

void re::RenderGraphCopyEntityAttributeBufferNode::setup(_BOOL8 this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v5 = this;
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(this + 160);
  if (v6)
  {
    v7 = v6 << 6;
    v8 = (*(this + 176) + 20);
    do
    {
      if (*v8 != 4)
      {
        *v8 = 4;
        if ((atomic_exchange(re::RenderGraphCopyEntityAttributeBufferNode::setup(re::RenderGraphBuilder &,re::RenderGraphDataStore &)::__FILE____LINE___logged, 1u) & 1) == 0)
        {
          v9 = *re::graphicsLogObjects(this);
          this = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
          if (this)
          {
            v10 = *(v5 + 2);
            *buf = 136315138;
            v12 = v10;
            _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "(%s): Defaulting buffer write type to kWriteBlit. Other operation types are not supported.", buf, 0xCu);
          }
        }
      }

      v8 += 16;
      v7 -= 64;
    }

    while (v7);
  }

  re::RenderGraphNode::setup(v5, a2, a3);
}

void re::RenderGraphCopyEntityAttributeBufferNode::execute(re::RenderGraphCopyEntityAttributeBufferNode *this, re::RenderGraphContext *a2)
{
  v117 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v110, 5095, 0, 0, 0, 0);
  v3 = re::RenderGraphDataStore::tryGet<re::CameraData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (v3)
  {
    v6 = v3;
    v7 = *(*a2 + 32);
    v108 = 0;
    v106 = 0u;
    v107 = 0u;
    v109 = 0x7FFFFFFFLL;
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(&v106, v7, 3);
    v84 = *(v6 + 840);
    v82 = *(v84 + 40);
    if (!v82)
    {
      goto LABEL_41;
    }

    v8 = 0;
    v9 = -1;
    v87 = a2;
    while (1)
    {
      v83 = v8;
      v10 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](v84, v8);
      v12 = *(v10 + 16);
      if (v12)
      {
        break;
      }

LABEL_38:
      v8 = v83 + 1;
      if (v83 + 1 == v82)
      {
        goto LABEL_42;
      }
    }

    v13 = *(v10 + 32);
    v14 = v13 + 736 * v12;
    v85 = v14;
    while (1)
    {
      if (*(v13 + 512) == *(this + 33))
      {
        v96[0] = v13;
        v15 = *(v13 + 112);
        v96[1] = *v15;
        v96[2] = v15[1];
        v16 = *(v13 + 8);
        v98[0] = 0;
        v98[1] = v16;
        v99 = xmmword_1E3047670;
        v100 = xmmword_1E3047680;
        v101 = xmmword_1E30476A0;
        v102 = xmmword_1E30474D0;
        v103 = 0;
        v104 = 0;
        v89 = v13;
        if (!*(v13 + 56))
        {
          *&v105 = v98;
          *(&v105 + 1) = 1;
          v91 = 1;
LABEL_11:
          a2 = 0;
          while (1)
          {
            v95[0] = v96;
            v95[1] = a2;
            v17 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(v95, v11);
            v18 = v17[1];
            v19 = v18 >= *v17;
            v20 = v18 - *v17;
            v21 = v19 ? v20 : 0;
            if (v20 != 0 && v19)
            {
              break;
            }

LABEL_35:
            a2 = (a2 + 1);
            if (a2 == v91)
            {
              goto LABEL_36;
            }
          }

          v22 = 0;
LABEL_18:
          v23 = *v95[0];
          v24 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(v95, v11);
          v25 = re::Slice<re::internal::BindPointImplBase const*>::range(v23, *v24, v24[1]);
          if (v26 <= v22)
          {
            re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v22, v26);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v78, v80);
            __break(1u);
LABEL_41:
            v9 = -1;
LABEL_42:
            re::RenderGraphContext::acquireManagedBlitCommandEncoder(v95, a2, 0);
            v37 = *(this + 20);
            if (!v37)
            {
              goto LABEL_81;
            }

            v38 = *(this + 22);
            v86 = v38 + (v37 << 6);
            v39 = 0xBF58476D1CE4E5B9;
            v40 = 0x94D049BB133111EBLL;
            v41 = (v9 + 1);
            v88 = a2;
LABEL_44:
            v90 = v38;
            v42 = re::RenderGraphContext::metalBuffer(a2, v38);
            LOBYTE(v96[0]) = 0;
            v97 = -1;
            v43 = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v96, v42);
            v98[0] = *(v42 + 32);
            if (v9 < 0)
            {
              goto LABEL_78;
            }

            v44 = 0;
            v45 = 0;
LABEL_46:
            if (!v106 || (v46 = (((v44 ^ (v44 >> 30)) * v39) ^ (((v44 ^ (v44 >> 30)) * v39) >> 27)) * v40, v47 = *(*(&v106 + 1) + 4 * ((v46 ^ (v46 >> 31)) % DWORD2(v107))), v47 == 0x7FFFFFFF))
            {
LABEL_51:
              v49 = *re::graphicsLogObjects(v43);
              v43 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
              if (!v43)
              {
                goto LABEL_55;
              }

              v50 = *(this + 2);
              *buf = 136315394;
              v112 = v50;
              v113 = 1024;
              LODWORD(v114) = v44;
              v51 = v49;
              v52 = "(%s): Missing material index: %d";
            }

            else
            {
              v48 = *(*(&v106 + 1) + 4 * ((v46 ^ (v46 >> 31)) % DWORD2(v107)));
              while (v44 != *(v107 + 24 * v48 + 4))
              {
                v48 = *(v107 + 24 * v48) & 0x7FFFFFFF;
                if (v48 == 0x7FFFFFFF)
                {
                  goto LABEL_51;
                }
              }

              v54 = *(v107 + 24 * v47 + 4);
              for (i = *(*(&v106 + 1) + 4 * ((v46 ^ (v46 >> 31)) % DWORD2(v107))); v44 != v54; v47 = i)
              {
                i = *(v107 + 24 * i) & 0x7FFFFFFF;
                v47 = 0x7FFFFFFF;
                if (i == 0x7FFFFFFF)
                {
                  break;
                }

                v54 = *(v107 + 24 * i + 4);
              }

              v56 = *(v107 + 24 * v47 + 8);
              if (v56)
              {
                v94 = *(this + 34) >> 1;
                v57 = v56;
                do
                {
                  v58 = v57;
                  v57 = *v57;
                }

                while (v57 && !v58[8]);
                v59 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v58 + 5, &v94);
                v60 = v56;
                if (v59 != -1)
                {
                  do
                  {
                    v61 = v60;
                    v60 = *v60;
                  }

                  while (v60 && !v61[8]);
                  v62 = LOBYTE(v61[6][2 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v61 + 5, &v94) + 1]);
                  v63 = re::AttributeTable::buffers(v56);
                  if (v64 <= v62)
                  {
                    re::internal::assertLog(6, v64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v62, v64);
                    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v79, v81);
                    __break(1u);
                  }

                  v65 = v63 + 24 * v62;
                  v66 = *(v65 + 5);
                  if (v45 + v66 > HIDWORD(v98[0]))
                  {
                    v76 = *re::graphicsLogObjects(v63);
                    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                    {
                      v77 = *(this + 2);
                      *buf = 136315138;
                      v112 = v77;
                      _os_log_impl(&dword_1E1C61000, v76, OS_LOG_TYPE_DEFAULT, "(%s): Write buffer not large enough for data.", buf, 0xCu);
                    }

LABEL_78:
                    if (v97 != -1)
                    {
                      (off_1F5D15D00[v97])(buf, v96);
                    }

                    a2 = v88;
                    v38 = v90 + 64;
                    if (v90 + 64 == v86)
                    {
LABEL_81:

                      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(&v106);
                      break;
                    }

                    goto LABEL_44;
                  }

                  v92 = *(v65 + 4);
                  v67 = v40;
                  v68 = v39;
                  v69 = *v65;
                  re::BufferSlice::buffer(v96, v64);
                  v70 = v69;
                  v39 = v68;
                  v40 = v67;
                  v41 = (v9 + 1);
                  re::mtl::BlitCommandEncoder::bufferCopy(v95, v70, v92, v96[0], v45 + LODWORD(v98[0]), v66);
                  v45 += v66;
                  goto LABEL_55;
                }

                v73 = *re::graphicsLogObjects(0xFFFFFFFFFFFFFFFFLL);
                v43 = os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT);
                if (v43)
                {
                  v74 = *(this + 2);
                  v75 = *(this + 35);
                  *buf = 136315650;
                  v112 = v74;
                  v113 = 2080;
                  v114 = v75;
                  v115 = 1024;
                  v116 = v44;
                  v51 = v73;
                  v52 = "(%s): Unable to find specified vertex buffer [ %s ] at material index %d.";
                  v53 = 28;
LABEL_54:
                  _os_log_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_DEFAULT, v52, buf, v53);
                }

LABEL_55:
                if (++v44 == v41)
                {
                  goto LABEL_78;
                }

                goto LABEL_46;
              }

              v71 = *re::graphicsLogObjects(v43);
              v43 = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
              if (!v43)
              {
                goto LABEL_55;
              }

              v72 = *(this + 2);
              *buf = 136315394;
              v112 = v72;
              v113 = 1024;
              LODWORD(v114) = v44;
              v51 = v71;
              v52 = "(%s): Invalid buffer table at material index %d.";
            }

            v53 = 18;
            goto LABEL_54;
          }

          v27 = *(v25 + 8 * v22);
          v28 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::materialIndexForPart(v95, v22);
          v29 = v28;
          v30 = 0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30));
          v31 = (0x94D049BB133111EBLL * (v30 ^ (v30 >> 27))) ^ ((0x94D049BB133111EBLL * (v30 ^ (v30 >> 27))) >> 31);
          if (v106)
          {
            v32 = *(*(&v106 + 1) + 4 * (v31 % DWORD2(v107)));
            if (v32 != 0x7FFFFFFF)
            {
              while (*(v107 + 24 * v32 + 4) != v28)
              {
                v32 = *(v107 + 24 * v32) & 0x7FFFFFFF;
                if (v32 == 0x7FFFFFFF)
                {
                  goto LABEL_23;
                }
              }

              v35 = *re::graphicsLogObjects(v28);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                v36 = *(this + 2);
                *buf = 136315394;
                v112 = v36;
                v113 = 1024;
                LODWORD(v114) = v29;
                _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "(%s): Duplicate material indices detected: %d. Skipping.", buf, 0x12u);
              }

LABEL_31:
              if (++v22 >= v21)
              {
                goto LABEL_35;
              }

              goto LABEL_18;
            }

LABEL_23:
            v11 = v31 % DWORD2(v107);
            v33 = *(*(&v106 + 1) + 4 * v11);
            if (v33 != 0x7FFFFFFF)
            {
              while (*(v107 + 24 * v33 + 4) != v28)
              {
                LODWORD(v33) = *(v107 + 24 * v33) & 0x7FFFFFFF;
                if (v33 == 0x7FFFFFFF)
                {
                  goto LABEL_28;
                }
              }

              goto LABEL_29;
            }
          }

          else
          {
            LODWORD(v11) = 0;
          }

LABEL_28:
          v34 = re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(&v106, v11, v31);
          *(v34 + 4) = v29;
          *(v34 + 8) = v27;
          ++HIDWORD(v109);
LABEL_29:
          if (v29 > v9)
          {
            v9 = v29;
          }

          goto LABEL_31;
        }

        v105 = *(v13 + 48);
        v91 = *(&v105 + 1);
        if (*(&v105 + 1))
        {
          goto LABEL_11;
        }

LABEL_36:
        a2 = v87;
        v13 = v89;
        v14 = v85;
      }

      v13 += 736;
      if (v13 == v14)
      {
        goto LABEL_38;
      }
    }
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v110, v4, v5);
}

void *re::RenderGraphCopyEntityAttributeBufferNode::validateAttachmentsDuringGraphBuild(void *result, const char *a2)
{
  v3 = result;
  if (result[25])
  {
    re::DynamicString::format(&v4, "(%s): Target reads not supported for RenderGraphCopyEntityAttributeBufferNode.", a2, result[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[30])
  {
    re::DynamicString::format(&v4, "(%s): Target writes not supported for RenderGraphCopyEntityAttributeBufferNode.", a2, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[15])
  {
    re::DynamicString::format(&v4, "(%s): Buffer reads not supported for RenderGraphCopyEntityAttributeBufferNode.", a2, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        return (*(*v4 + 40))();
      }
    }
  }

  return result;
}

void re::RenderGraphSynchronizeTargetNode::execute(re::RenderGraphSynchronizeTargetNode *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v11, 5066, 0, 0, 0, 0);
  re::RenderGraphContext::acquireManagedBlitCommandEncoder(&v10, a2, 0);
  v4 = *(this + 30);
  if (v4)
  {
    v5 = *(this + 32);
    v6 = v4 << 6;
    do
    {
      re::RenderGraphContext::metalTexture(a2, v5, 0, 0, &v9);
      if (v9)
      {
      }

      v5 += 64;
      v6 -= 64;
    }

    while (v6);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v11, v7, v8);
}

void *re::RenderGraphSynchronizeTargetNode::validateAttachmentsDuringGraphBuild(void *result, const char *a2)
{
  v3 = result;
  if (result[15])
  {
    re::DynamicString::format(&v4, "(%s): Buffer reads not supported for RenderGraphSynchronizeTargetNode.", a2, result[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[20])
  {
    re::DynamicString::format(&v4, "(%s): Buffer writes not supported for RenderGraphSynchronizeTargetNode.", a2, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[25])
  {
    re::DynamicString::format(&v4, "(%s): Target reads not supported for RenderGraphSynchronizeTargetNode.", a2, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        return (*(*v4 + 40))();
      }
    }
  }

  return result;
}

void re::RenderGraphSynchronizeBufferNode::execute(re::RenderGraphSynchronizeBufferNode *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v12, 5068, 0, 0, 0, 0);
  re::RenderGraphContext::acquireManagedBlitCommandEncoder(&v11, a2, 0);
  v4 = *(this + 20);
  if (v4)
  {
    v5 = *(this + 22);
    v6 = v4 << 6;
    do
    {
      v7 = re::RenderGraphContext::metalBuffer(a2, v5);
      re::BufferSlice::buffer(v7, v8);
      v5 += 64;
      v6 -= 64;
    }

    while (v6);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v12, v9, v10);
}

void *re::RenderGraphSynchronizeBufferNode::validateAttachmentsDuringGraphBuild(void *result, const char *a2)
{
  v3 = result;
  if (result[15])
  {
    re::DynamicString::format(&v4, "(%s): Buffer reads not supported for RenderGraphSynchronizeTextureNode.", a2, result[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[30])
  {
    re::DynamicString::format(&v4, "(%s): Buffer writes not supported for RenderGraphSynchronizeTextureNode.", a2, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[25])
  {
    re::DynamicString::format(&v4, "(%s): Target reads not supported for RenderGraphSynchronizeTextureNode.", a2, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        return (*(*v4 + 40))();
      }
    }
  }

  return result;
}

void re::RenderGraphFillBufferNode::execute(re::RenderGraphFillBufferNode *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v13, 5070, 0, 0, 0, 0);
  re::RenderGraphContext::acquireManagedBlitCommandEncoder(&v12, a2, 0);
  v4 = *(this + 20);
  if (v4)
  {
    v5 = *(this + 22);
    v6 = v4 << 6;
    do
    {
      v7 = re::RenderGraphContext::metalBuffer(a2, v5);
      v9 = re::BufferSlice::buffer(v7, v8);
      re::mtl::BlitCommandEncoder::fillBuffer(&v12, *v9, *(v9 + 32), *(v9 + 36), *(this + 264));
      v5 += 64;
      v6 -= 64;
    }

    while (v6);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v13, v10, v11);
}

void *re::RenderGraphFillBufferNode::validateAttachmentsDuringGraphBuild(void *result, const char *a2)
{
  v3 = result;
  if (result[15])
  {
    re::DynamicString::format(&v4, "(%s): Buffer reads not supported for RenderGraphFillBufferNode.", a2, result[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[30])
  {
    re::DynamicString::format(&v4, "(%s): Buffer writes not supported for RenderGraphFillBufferNode.", a2, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[25])
  {
    re::DynamicString::format(&v4, "(%s): Target reads not supported for RenderGraphFillBufferNode.", a2, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        return (*(*v4 + 40))();
      }
    }
  }

  return result;
}

void *re::allocInfo_RenderGraphGenerateMipmapsNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_545, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_545))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C1A00, "RenderGraphGenerateMipmapsNode");
    __cxa_guard_release(&_MergedGlobals_545);
  }

  return &unk_1EE1C1A00;
}

void re::initInfo_RenderGraphGenerateMipmapsNode(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0x60380926AD0DCD00;
  v9[1] = "RenderGraphGenerateMipmapsNode";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE1C18E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C18E8))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C18E0 = v7;
    __cxa_guard_release(&qword_1EE1C18E8);
  }

  *(this + 2) = 0x10800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C18E0;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphGenerateMipmapsNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphGenerateMipmapsNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphGenerateMipmapsNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphGenerateMipmapsNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphGenerateMipmapsNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D15920;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphGenerateMipmapsNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D15920;
  return result;
}

void *re::allocInfo_RenderGraphTargetCopyNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C18F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C18F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C1A90, "RenderGraphTargetCopyNode");
    __cxa_guard_release(&qword_1EE1C18F0);
  }

  return &unk_1EE1C1A90;
}

void re::initInfo_RenderGraphTargetCopyNode(re *this, re::IntrospectionBase *a2)
{
  v65[0] = 0xB8B72825D799A640;
  v65[1] = "RenderGraphTargetCopyNode";
  if (v65[0])
  {
    if (v65[0])
    {
    }
  }

  *(this + 2) = v66;
  if ((atomic_load_explicit(&qword_1EE1C18F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C18F8))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C1988 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_size_t(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "sourceSlice";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x10800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C1990 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_size_t(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "sourceLevel";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x11000000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C1998 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::introspect_size_t(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "sourceX";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x11800000003;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1C19A0 = v19;
    v20 = re::introspectionAllocator();
    v22 = re::introspect_size_t(1, v21);
    v23 = (*(*v20 + 32))(v20, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "sourceY";
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x12000000004;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE1C19A8 = v23;
    v24 = re::introspectionAllocator();
    v26 = re::introspect_size_t(1, v25);
    v27 = (*(*v24 + 32))(v24, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "sourceZ";
    *(v27 + 16) = v26;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0x12800000005;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE1C19B0 = v27;
    v28 = re::introspectionAllocator();
    v30 = re::introspect_size_t(1, v29);
    v31 = (*(*v28 + 32))(v28, 72, 8);
    *v31 = 1;
    *(v31 + 8) = "sourceWidth";
    *(v31 + 16) = v30;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0x13000000006;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    qword_1EE1C19B8 = v31;
    v32 = re::introspectionAllocator();
    v34 = re::introspect_size_t(1, v33);
    v35 = (*(*v32 + 32))(v32, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "sourceHeight";
    *(v35 + 16) = v34;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0x13800000007;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE1C19C0 = v35;
    v36 = re::introspectionAllocator();
    v38 = re::introspect_size_t(1, v37);
    v39 = (*(*v36 + 32))(v36, 72, 8);
    *v39 = 1;
    *(v39 + 8) = "sourceDepth";
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0x14000000008;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
    qword_1EE1C19C8 = v39;
    v40 = re::introspectionAllocator();
    v42 = re::introspect_size_t(1, v41);
    v43 = (*(*v40 + 32))(v40, 72, 8);
    *v43 = 1;
    *(v43 + 8) = "destSlice";
    *(v43 + 16) = v42;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0x14800000009;
    *(v43 + 40) = 0;
    *(v43 + 48) = 0;
    *(v43 + 56) = 0;
    *(v43 + 64) = 0;
    qword_1EE1C19D0 = v43;
    v44 = re::introspectionAllocator();
    v46 = re::introspect_size_t(1, v45);
    v47 = (*(*v44 + 32))(v44, 72, 8);
    *v47 = 1;
    *(v47 + 8) = "destLevel";
    *(v47 + 16) = v46;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0x1500000000ALL;
    *(v47 + 40) = 0;
    *(v47 + 48) = 0;
    *(v47 + 56) = 0;
    *(v47 + 64) = 0;
    qword_1EE1C19D8 = v47;
    v48 = re::introspectionAllocator();
    v50 = re::introspect_size_t(1, v49);
    v51 = (*(*v48 + 32))(v48, 72, 8);
    *v51 = 1;
    *(v51 + 8) = "destX";
    *(v51 + 16) = v50;
    *(v51 + 24) = 0;
    *(v51 + 32) = 0x1580000000BLL;
    *(v51 + 40) = 0;
    *(v51 + 48) = 0;
    *(v51 + 56) = 0;
    *(v51 + 64) = 0;
    qword_1EE1C19E0 = v51;
    v52 = re::introspectionAllocator();
    v54 = re::introspect_size_t(1, v53);
    v55 = (*(*v52 + 32))(v52, 72, 8);
    *v55 = 1;
    *(v55 + 8) = "destY";
    *(v55 + 16) = v54;
    *(v55 + 24) = 0;
    *(v55 + 32) = 0x1600000000CLL;
    *(v55 + 40) = 0;
    *(v55 + 48) = 0;
    *(v55 + 56) = 0;
    *(v55 + 64) = 0;
    qword_1EE1C19E8 = v55;
    v56 = re::introspectionAllocator();
    v58 = re::introspect_size_t(1, v57);
    v59 = (*(*v56 + 32))(v56, 72, 8);
    *v59 = 1;
    *(v59 + 8) = "destZ";
    *(v59 + 16) = v58;
    *(v59 + 24) = 0;
    *(v59 + 32) = 0x1680000000DLL;
    *(v59 + 40) = 0;
    *(v59 + 48) = 0;
    *(v59 + 56) = 0;
    *(v59 + 64) = 0;
    qword_1EE1C19F0 = v59;
    v60 = re::introspectionAllocator();
    v62 = re::introspect_BOOL(1, v61);
    v63 = (*(*v60 + 32))(v60, 72, 8);
    *v63 = 1;
    *(v63 + 8) = "copyAllSlices";
    *(v63 + 16) = v62;
    *(v63 + 24) = 0;
    *(v63 + 32) = 0x1700000000ELL;
    *(v63 + 40) = 0;
    *(v63 + 48) = 0;
    *(v63 + 56) = 0;
    *(v63 + 64) = 0;
    qword_1EE1C19F8 = v63;
    __cxa_guard_release(&qword_1EE1C18F8);
  }

  *(this + 2) = 0x17800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 15;
  *(this + 8) = &qword_1EE1C1988;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphTargetCopyNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphTargetCopyNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphTargetCopyNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphTargetCopyNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v64 = v66;
}

double re::internal::defaultConstruct<re::RenderGraphTargetCopyNode>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *v3 = &unk_1F5D159B0;
  result = 0.0;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 37) = 0;
  *(v3 + 38) = -1;
  *(v3 + 39) = -1;
  *(v3 + 40) = -1;
  *(v3 + 328) = 0u;
  *(v3 + 344) = 0u;
  *(v3 + 353) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphTargetCopyNode>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *v1 = &unk_1F5D159B0;
  result = 0.0;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 37) = 0;
  *(v1 + 38) = -1;
  *(v1 + 39) = -1;
  *(v1 + 40) = -1;
  *(v1 + 328) = 0u;
  *(v1 + 344) = 0u;
  *(v1 + 353) = 0u;
  return result;
}

void *re::allocInfo_RenderGraphCopyEntityAttributeBufferNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1900))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C1B20, "RenderGraphCopyEntityAttributeBufferNode");
    __cxa_guard_release(&qword_1EE1C1900);
  }

  return &unk_1EE1C1B20;
}

void re::initInfo_RenderGraphCopyEntityAttributeBufferNode(re *this, re::IntrospectionBase *a2)
{
  v17[0] = 0x8896AD266CD311DCLL;
  v17[1] = "RenderGraphCopyEntityAttributeBufferNode";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1C1908, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1908))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C1958 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_uint64_t(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "sourceEntityId";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x10800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C1960 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::IntrospectionInfo<re::StringID>::get(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "attributeName";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x11000000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C1968 = v15;
    __cxa_guard_release(&qword_1EE1C1908);
  }

  *(this + 2) = 0x12000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C1958;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphCopyEntityAttributeBufferNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphCopyEntityAttributeBufferNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphCopyEntityAttributeBufferNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphCopyEntityAttributeBufferNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v16 = v18;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphCopyEntityAttributeBufferNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D15A40;
  *(result + 33) = 0;
  *(result + 34) = 0;
  *(result + 35) = &str_67;
  return result;
}

void re::internal::defaultDestruct<re::RenderGraphCopyEntityAttributeBufferNode>(uint64_t a1, uint64_t a2, id *a3)
{
  re::StringID::destroyString((a3 + 34));

  re::RenderGraphNode::~RenderGraphNode(a3);
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphCopyEntityAttributeBufferNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D15A40;
  *(result + 33) = 0;
  *(result + 34) = 0;
  *(result + 35) = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphCopyEntityAttributeBufferNode>(id *a1)
{
  re::StringID::destroyString((a1 + 34));

  re::RenderGraphNode::~RenderGraphNode(a1);
}

void *re::allocInfo_RenderGraphSynchronizeTargetNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1910))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C1BB0, "RenderGraphSynchronizeTargetNode");
    __cxa_guard_release(&qword_1EE1C1910);
  }

  return &unk_1EE1C1BB0;
}

void re::initInfo_RenderGraphSynchronizeTargetNode(re *this, re::IntrospectionBase *a2)
{
  v17[0] = 0x4E5165E59E70FC96;
  v17[1] = "RenderGraphSynchronizeTargetNode";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1C1918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1918))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C1970 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_size_t(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "slice";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x10800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C1978 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_size_t(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "level";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x11000000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C1980 = v15;
    __cxa_guard_release(&qword_1EE1C1918);
  }

  *(this + 2) = 0x11800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C1970;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphSynchronizeTargetNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphSynchronizeTargetNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphSynchronizeTargetNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphSynchronizeTargetNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v16 = v18;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphSynchronizeTargetNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D15AD0;
  *(result + 33) = 0;
  *(result + 34) = 0;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphSynchronizeTargetNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D15AD0;
  *(result + 33) = 0;
  *(result + 34) = 0;
  return result;
}

void *re::allocInfo_RenderGraphSynchronizeBufferNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1920))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C1C40, "RenderGraphSynchronizeBufferNode");
    __cxa_guard_release(&qword_1EE1C1920);
  }

  return &unk_1EE1C1C40;
}

void re::initInfo_RenderGraphSynchronizeBufferNode(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0x4E4E22A447AD62F4;
  v9[1] = "RenderGraphSynchronizeBufferNode";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE1C1930, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1930))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C1928 = v7;
    __cxa_guard_release(&qword_1EE1C1930);
  }

  *(this + 2) = 0x10800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C1928;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphSynchronizeBufferNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphSynchronizeBufferNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphSynchronizeBufferNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphSynchronizeBufferNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphSynchronizeBufferNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D15B60;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphSynchronizeBufferNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D15B60;
  return result;
}

void *re::allocInfo_RenderGraphFillBufferNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1938))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C1CD0, "RenderGraphFillBufferNode");
    __cxa_guard_release(&qword_1EE1C1938);
  }

  return &unk_1EE1C1CD0;
}

void re::initInfo_RenderGraphFillBufferNode(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x5358828A65A95F3ALL;
  v13[1] = "RenderGraphFillBufferNode";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1C1940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1940))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C1948 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_uint8_t(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "fillValue";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x10800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C1950 = v11;
    __cxa_guard_release(&qword_1EE1C1940);
  }

  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C1948;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphFillBufferNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphFillBufferNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphFillBufferNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphFillBufferNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphFillBufferNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D15BF0;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphFillBufferNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D15BF0;
  return result;
}

void re::RenderGraphGenerateMipmapsNode::~RenderGraphGenerateMipmapsNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphTargetCopyNode::~RenderGraphTargetCopyNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphCopyEntityAttributeBufferNode::~RenderGraphCopyEntityAttributeBufferNode(id *this)
{
  re::StringID::destroyString((this + 34));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  re::StringID::destroyString((this + 34));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphSynchronizeTargetNode::~RenderGraphSynchronizeTargetNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphSynchronizeBufferNode::~RenderGraphSynchronizeBufferNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphFillBufferNode::~RenderGraphFillBufferNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphVisualProxyHighFidelityNode::execute(const char **this, re::RenderGraphContext *a2)
{
  v19[2] = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1C1D68, memory_order_acquire) & 1) == 0)
  {
    v16 = this;
    v18 = __cxa_guard_acquire(&qword_1EE1C1D68);
    this = v16;
    if (v18)
    {
      _MergedGlobals_546 = re::hashString(v16, v17);
      __cxa_guard_release(&qword_1EE1C1D68);
      this = v16;
    }
  }

  v3 = 0x9E3779B97F4A7C17;
  v4 = _MergedGlobals_546;
  v5 = this[4];
  v6 = strlen(v5);
  if (v6)
  {
    MurmurHash3_x64_128(v5, v6, 0, v19);
    v3 = ((v19[1] + 64 * v19[0] + (v19[0] >> 2) - 0x61C8864680B583E9) ^ v19[0]) - 0x61C8864680B583E9;
  }

  v7 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::VisualProxyHighFidelityHandlerData>>(*(a2 + 146), ((v4 >> 2) + (v4 << 6) + v3) ^ v4);
  if (v7)
  {
    v8 = v7;
    if (*(v7 + 24))
    {
      re::RenderGraphContext::makeBlitCommandEncoder(a2, 0, v19);
      v9 = *(v8 + 24);
      if (v9)
      {
        v10 = *(v8 + 40);
        v11 = &v10[2 * v9];
        do
        {
          v12 = [*v10 width];
          v13 = [*v10 height];
          [v10[1] width];
          [v10[1] height];
          v14 = *v10;
          v15 = v10[1];
          v10 += 2;
          re::mtl::BlitCommandEncoder::textureCopy(v19, v14, 0, 0, 0, 0, 0, v12, v13, 1, v15, 0, 0, 0, 0, 0);
        }

        while (v10 != v11);
      }

      re::RenderGraphContext::finishEncoding<re::mtl::BlitCommandEncoder &>(a2, v19, 1);
    }
  }
}

void re::RenderGraphVisualProxyHighFidelityNode::~RenderGraphVisualProxyHighFidelityNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

re::RenderGraphMeshNode *re::RenderGraphMeshNode::RenderGraphMeshNode(re::RenderGraphMeshNode *this, const char *a2)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this, a2);
  *(v3 + 66) = 1;
  *(v3 + 268) = 0;
  *v3 = &unk_1F5D15DC8;
  *(v3 + 17) = 0u;
  *(v3 + 18) = 0u;
  re::DynamicString::setCapacity(this + 34, 0);
  *(this + 42) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 38) = 0;
  *(this + 82) = 0;
  *(this + 86) = 2;
  return this;
}

void re::RenderGraphMeshNode::setup(re::RenderGraphMeshNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v6 = *(this + 35);
  if (v6)
  {
    v7 = v6 >> 1;
  }

  else
  {
    v7 = v6 >> 1;
  }

  if (!v7)
  {
    re::DynamicString::format(&v8, "(%s): No material pass set", a2, *(this + 2));
    re::RenderGraphBuilder::addError(*(a2 + 83), &v8);
    if (v8)
    {
      if (v9)
      {
        (*(*v8 + 40))();
      }
    }
  }

  re::RenderGraphNode::setup(this, a2, a3);
}

uint64_t re::RenderGraphBuilder::addError(_anonymous_namespace_ *a1, uint64_t a2)
{
  v4.n128_u64[0] = 2000;
  v4.n128_u64[1] = &re::GraphicsErrorCategory(void)::instance;
  v5 = *a2;
  v7 = *(a2 + 24);
  v6 = *(a2 + 8);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = re::DynamicArray<re::DetailedError>::add(a1, &v4);
  result = v5;
  if (v5)
  {
    if (v6)
    {
      return (*(*v5 + 40))(v2);
    }
  }

  return result;
}

void re::RenderGraphMeshNode::execute(re::RenderGraphMeshNode *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v28, 5030, 0, 0, 0, 0);
  v4 = re::RenderGraphDataStore::get<re::CameraMatrices>(*(a2 + 146), *(*(a2 + 5) + 48));
  v5 = re::Hash<re::DynamicString>::operator()(&v24, this + 34);
  v6 = re::RenderGraphDataStore::tryGet<re::MeshPassInfoData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (v6)
  {
    MeshPartBucket = re::MeshPassInfoData::getMeshPartBucket(v6, v5);
  }

  else
  {
    MeshPartBucket = 0;
  }

  v8 = re::RenderGraphDataStore::tryGet<re::MeshNodeFilterData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (v8)
  {
    v12 = *(v8 + 8);
    v11 = v12 & 0xFFFFFFFF00000000;
    v12 = v12;
    if (!MeshPartBucket)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
    if (!MeshPartBucket)
    {
      goto LABEL_14;
    }
  }

  v24 = MeshPartBucket;
  v25 = 0;
  v26 = 65280;
  v13 = *(this + 345);
  v27 = v13 == 0;
  v14 = *(this + 344);
  v23[0] = 0;
  if (*(this + 280))
  {
    v15 = *(this + 36);
  }

  else
  {
    v15 = this + 281;
  }

  v16 = *(this + 40);
  v20[0] = *(this + 42);
  v20[1] = v16;
  v21 = 0;
  v22 = 0;
  v17 = *(this + 347);
  if (v17 == 1)
  {
    v19 = *(this + 364);
    v18 = *(this + 348);
  }

  re::RenderGraphMeshNodeBase::sortAndDrawMeshPartsInternal(this, a2, &v24, 1, (v11 | v12), 0, v4, v14, v23, v13, v15, v20, 0, &v17);
LABEL_14:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v28, v9, v10);
}

double re::RenderGraphMultiPassMeshNode::RenderGraphMultiPassMeshNode(re::RenderGraphMultiPassMeshNode *this, const char *a2)
{
  v2 = re::RenderGraphNode::RenderGraphNode(this, a2);
  *(v2 + 66) = 1;
  *(v2 + 268) = 0;
  *v2 = &unk_1F5D15E58;
  result = 0.0;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  *(v2 + 76) = 0;
  *(v2 + 308) = 0x7FFFFFFFLL;
  *(v2 + 41) = 0;
  *(v2 + 42) = 0;
  *(v2 + 40) = 0;
  *(v2 + 86) = 0;
  *(v2 + 54) = 0;
  *(v2 + 22) = 0u;
  *(v2 + 23) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0u;
  *(v2 + 106) = 0;
  *(v2 + 110) = 2;
  *(v2 + 56) = 0;
  *(v2 + 57) = 0;
  *(v2 + 118) = 0;
  *(v2 + 58) = 0;
  return result;
}

void re::RenderGraphMultiPassMeshNode::configure(re::RenderGraphMultiPassMeshNode *this, unint64_t a2, const char **a3, re::RenderFrame *a4)
{
  if ((atomic_load_explicit(&qword_1EE1C1E70, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v41 = *(this + 76);
    v37 = a3;
    v38 = a4;
    v36 = a2;
    if (v41)
    {
      v8 = 0;
      v9 = *(this + 36);
      while (1)
      {
        v10 = *v9;
        v9 += 56;
        if (v10 < 0)
        {
          break;
        }

        if (v41 == ++v8)
        {
          LODWORD(v8) = *(this + 76);
          break;
        }
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    if (v8 == v41)
    {
      break;
    }

    v39 = this;
    while (1)
    {
      v11 = *(this + 36) + 224 * v8;
      if ((*(v11 + 209) & 1) == 0)
      {
        v12 = v11 + 40;
        v13 = *(v11 + 192);
        if (v13)
        {
          v14 = 0;
          v15 = *(v11 + 176);
          while (1)
          {
            v16 = *v15;
            v15 += 14;
            if (v16 < 0)
            {
              break;
            }

            if (v13 == ++v14)
            {
              LODWORD(v14) = v13;
              break;
            }
          }
        }

        else
        {
          LODWORD(v14) = 0;
        }

        if (v14 == v13)
        {
LABEL_31:
          v43 = 0;
        }

        else
        {
          v17 = *(v12 + 136);
          while (1)
          {
            v18 = v17 + 56 * v14;
            v19 = (*(v18 + 16) & 1) != 0 ? *(v18 + 24) : (v18 + 17);
            if (!strcmp("Default", v19))
            {
              break;
            }

            if (v13 <= v14 + 1)
            {
              v20 = v14 + 1;
            }

            else
            {
              v20 = v13;
            }

            while (v20 - 1 != v14)
            {
              LODWORD(v14) = v14 + 1;
              if ((*(v17 + 56 * v14) & 0x80000000) != 0)
              {
                goto LABEL_30;
              }
            }

            LODWORD(v14) = v20;
LABEL_30:
            if (v14 == v13)
            {
              goto LABEL_31;
            }
          }

          v21 = 0x101010101 * *(v17 + 56 * v14 + 40);
          v43 = 1;
          *(v12 + 169) = 1;
          *(v12 + 170) = v21;
          *(v12 + 174) = BYTE4(v21);
        }

        v40 = v12;
        if (v13)
        {
          a2 = 0;
          v22 = *(v12 + 136);
          while (1)
          {
            v23 = *v22;
            v22 += 14;
            if (v23 < 0)
            {
              break;
            }

            if (v13 == ++a2)
            {
              a2 = v13;
              break;
            }
          }
        }

        else
        {
          a2 = 0;
        }

        if (a2 != v13)
        {
          break;
        }
      }

LABEL_61:
      this = v39;
      v32 = *(v39 + 76);
      if (v32 <= v8 + 1)
      {
        v32 = v8 + 1;
      }

      while (v32 - 1 != v8)
      {
        LODWORD(v8) = v8 + 1;
        if ((*(*(v39 + 36) + 224 * v8) & 0x80000000) != 0)
        {
          goto LABEL_67;
        }
      }

      LODWORD(v8) = v32;
LABEL_67:
      if (v8 == v41)
      {
        goto LABEL_68;
      }
    }

    v42 = v12 + 170;
    v24 = *(v12 + 136);
    v25 = qword_1EE1C2020;
    while (1)
    {
      v26 = *v25;
      if (v26)
      {
        break;
      }

LABEL_53:
      if (v13 <= a2 + 1)
      {
        v31 = (a2 + 1);
      }

      else
      {
        v31 = v13;
      }

      while (v31 - 1 != a2)
      {
        a2 = (a2 + 1);
        if ((*(v24 + 56 * a2) & 0x80000000) != 0)
        {
          goto LABEL_60;
        }
      }

      a2 = v31;
LABEL_60:
      if (a2 == v13)
      {
        goto LABEL_61;
      }
    }

    v44 = v25;
    v27 = v24 + 56 * a2;
    this = *(v25 + 1);
    a4 = (v27 + 17);
    while (1)
    {
      a3 = *this;
      if (**this == 1)
      {
        v28 = (v27 + 17);
        if (*(v27 + 16))
        {
          v28 = *(v27 + 24);
        }

        if (!strcmp(a3[2], v28))
        {
          break;
        }
      }

      this = (this + 8);
      if (!--v26)
      {
        v25 = v44;
        goto LABEL_53;
      }
    }

    if ((v43 & 1) == 0)
    {
      *(v40 + 169) = 1;
      *v42 = 0;
      *(v42 + 4) = 0;
    }

    v30 = __clz(__rbit32(*(a3 + 8)));
    if (v30 < 5)
    {
      *(v42 + v30) = *(v24 + 56 * a2 + 40);
      v25 = qword_1EE1C2020;
      v43 = 1;
      goto LABEL_53;
    }

    re::internal::assertLog(6, v29, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v30, 5);
    _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v34, v35);
    __break(1u);
LABEL_74:
    if (__cxa_guard_acquire(&qword_1EE1C1E70))
    {
      re::introspect_MeshPassFilterFlags(0, v33);
      __cxa_guard_release(&qword_1EE1C1E70);
    }
  }

LABEL_68:
  if (*(this + 57))
  {
    re::AssetHandle::loadAsync((this + 448));
  }

  re::RenderGraphNode::configure(this, v36, v37, v38);
}

void re::RenderGraphMultiPassMeshNode::setup(re::RenderGraphMultiPassMeshNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  if (!*(this + 75))
  {
    re::DynamicString::format(&v6, "(%s): No material passes", a2, *(this + 2));
    re::RenderGraphBuilder::addError(*(a2 + 83), &v6);
    if (v6)
    {
      if (v7)
      {
        (*(*v6 + 40))();
      }
    }
  }

  re::RenderGraphNode::setup(this, a2, a3);
}

void re::RenderGraphMultiPassMeshNode::execute(re::RenderGraphMultiPassMeshNode *this, re::RenderGraphContext *a2)
{
  v93 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v87, 5030, 0, 0, 0, 0);
  v4 = *(*a2 + 32);
  v5 = re::RenderGraphDataStore::get<re::CameraMatrices>(*(a2 + 146), *(*(a2 + 5) + 48));
  v80 = re::RenderGraphDataStore::tryGet<re::MeshPassInfoData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!v80)
  {
    goto LABEL_102;
  }

  v8 = *(a2 + 146);
  v9 = *(*(a2 + 5) + 48);
  v10 = "N2re38VisualDepthStaticOcclusionPerFrameDataE";
  if (("N2re38VisualDepthStaticOcclusionPerFrameDataE" & 0x8000000000000000) != 0)
  {
    v11 = ("N2re38VisualDepthStaticOcclusionPerFrameDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  v14 = 0x9E3779B97F4A7C17;
  if (!*(v8 + 64) || (v15 = (v9 + (v10 << 6) + (v10 >> 2) - 0x61C8864680B583E9) ^ v10, v16 = *(*(v8 + 72) + 4 * (v15 % *(v8 + 88))), v16 == 0x7FFFFFFF))
  {
LABEL_10:
    v18 = 0;
  }

  else
  {
    v17 = *(v8 + 80);
    while (*(v17 + 24 * v16 + 8) != v15)
    {
      v16 = *(v17 + 24 * v16) & 0x7FFFFFFF;
      if (v16 == 0x7FFFFFFF)
      {
        goto LABEL_10;
      }
    }

    v18 = *(v17 + 24 * v16 + 16);
  }

  v19 = re::RenderGraphDataStore::get<re::SceneScope>(v8, v9);
  if (*(v19 + 16))
  {
    v20 = *(v19 + 24);
  }

  else
  {
    v20 = (v19 + 17);
  }

  v21 = strlen(v20);
  if (v21)
  {
    MurmurHash3_x64_128(v20, v21, 0, &v88);
    v14 = ((v89 - 0x61C8864680B583E9 + (v88 << 6) + (v88 >> 2)) ^ v88) - 0x61C8864680B583E9;
  }

  if ((atomic_load_explicit(&qword_1EE1C1D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1D80))
  {
    qword_1EE1C1D78 = re::Hash<re::StringSlice>::operator()("RenderGraphDataPipeData", 0x17uLL);
    __cxa_guard_release(&qword_1EE1C1D80);
  }

  v22 = re::RenderGraphDataStore::tryGet<re::MeshSortingCollection>(*(a2 + 146), (v14 + (qword_1EE1C1D78 << 6) + (qword_1EE1C1D78 >> 2)) ^ qword_1EE1C1D78);
  if (v22)
  {
    v23 = 4 * (*(v22 + 172) != 0);
    if (*(v22 + 193))
    {
      v24 = 8;
    }

    else
    {
      v24 = 0;
    }

    if (*(v22 + 192))
    {
      v25 = 3;
    }

    else
    {
      v25 = 1;
    }

    if (v18)
    {
      goto LABEL_25;
    }

LABEL_27:
    v26 = 0;
    goto LABEL_28;
  }

  v23 = 0;
  v24 = 0;
  v25 = 1;
  if (!v18)
  {
    goto LABEL_27;
  }

LABEL_25:
  v26 = *(v18 + 9);
LABEL_28:
  v27 = *(this + 49);
  v28 = *(this + 47);
  if (v28)
  {
    v29 = *(this + 47);
    v30 = *(this + 49);
    while (*v30 != 16)
    {
      ++v30;
      if (!--v29)
      {
        v30 = &v27[v28];
        break;
      }
    }
  }

  else
  {
    v30 = *(this + 49);
  }

  if ((v30 - v27 == v28) | v26 & 1)
  {
    v73 = v5;
    v75 = a2;
    if (v26)
    {
      v31 = 16;
    }

    else
    {
      v31 = 0;
    }

    for (i = 0; v28; --v28)
    {
      v33 = *v27++;
      i |= v33;
    }

    v74 = v22;
    v34 = *(this + 52);
    if (v34)
    {
      v35 = 0;
      v36 = *(this + 54);
      do
      {
        v37 = *v36++;
        v35 |= v37;
        --v34;
      }

      while (v34);
    }

    else
    {
      v35 = 0;
    }

    v92 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v88 = v4;
    re::DynamicArray<re::FilteredMeshPass>::setCapacity(&v88, 0);
    ++v91;
    v39 = *(this + 76);
    if (v39)
    {
      v40 = 0;
      v41 = *(this + 36);
      while (1)
      {
        v42 = *v41;
        v41 += 56;
        if (v42 < 0)
        {
          break;
        }

        if (v39 == ++v40)
        {
          LODWORD(v40) = *(this + 76);
          break;
        }
      }
    }

    else
    {
      LODWORD(v40) = 0;
    }

    if (v40 != v39)
    {
      v43 = v25 | v23 | v24 | v31;
      v81 = i & v43;
      v78 = *(this + 76);
      v79 = v43;
      do
      {
        v44 = *(this + 36) + 224 * v40;
        v45 = *(v44 + 56);
        if (v45)
        {
          v46 = 0;
        }

        else
        {
          v46 = i == 0;
        }

        if (v46)
        {
          v47 = 255;
        }

        else
        {
          v47 = i;
          if (v45)
          {
            v48 = *(v44 + 72);
            v47 = i;
            do
            {
              v49 = *v48++;
              v47 |= v49;
              --v45;
            }

            while (v45);
          }
        }

        v50 = *(v44 + 96);
        v51 = v35;
        if (v50)
        {
          v52 = *(v44 + 112);
          v51 = v35;
          do
          {
            v53 = *v52++;
            v51 |= v53;
            --v50;
          }

          while (v50);
        }

        if ((v47 & v43) != 0 && v81 == i)
        {
          v54 = re::Hash<re::DynamicString>::operator()(v83, (v44 + 8));
          MeshPartBucket = re::MeshPassInfoData::getMeshPartBucket(v80, v54);
          v43 = v79;
          if (MeshPartBucket)
          {
            v56 = MeshPartBucket;
            v57 = *(v44 + 209);
            if (v57 == 1)
            {
              LODWORD(v83[0]) = *(v44 + 210);
              BYTE4(v83[0]) = *(v44 + 214);
            }

            v58 = *(v44 + 208);
            v59 = *(v44 + 215);
            v60 = v90;
            if (v90 >= v89)
            {
              v61 = v90 + 1;
              if (v89 < v90 + 1)
              {
                v76 = v59;
                v77 = v58;
                if (v88)
                {
                  v62 = 2 * v89;
                  if (!v89)
                  {
                    v62 = 8;
                  }

                  if (v62 <= v61)
                  {
                    v63 = v90 + 1;
                  }

                  else
                  {
                    v63 = v62;
                  }

                  re::DynamicArray<re::FilteredMeshPass>::setCapacity(&v88, v63);
                }

                else
                {
                  re::DynamicArray<re::FilteredMeshPass>::setCapacity(&v88, v61);
                  ++v91;
                }

                v43 = v79;
                v59 = v76;
                v58 = v77;
              }

              v60 = v90;
            }

            v64 = &v92[3 * v60];
            *v64 = v56;
            *(v64 + 8) = v57;
            if (v57)
            {
              *(v64 + 9) = v83[0];
              *(v64 + 13) = BYTE4(v83[0]);
            }

            *(v64 + 14) = i;
            *(v64 + 15) = v47;
            *(v64 + 16) = v51 & v43;
            *(v64 + 17) = v58;
            *(v64 + 18) = v59;
            v90 = (v60 + 1);
            ++v91;
            LODWORD(v39) = v78;
          }
        }

        v65 = *(this + 76);
        if (v65 <= v40 + 1)
        {
          v65 = v40 + 1;
        }

        while (v65 - 1 != v40)
        {
          LODWORD(v40) = v40 + 1;
          if ((*(*(this + 36) + 224 * v40) & 0x80000000) != 0)
          {
            goto LABEL_91;
          }
        }

        LODWORD(v40) = v65;
LABEL_91:
        ;
      }

      while (v40 != v39);
    }

    v66 = v90;
    if (v90)
    {
      v67 = re::RenderGraphDataStore::tryGet<re::MeshNodeFilterData>(*(v75 + 146), *(*(v75 + 5) + 48));
      v68 = v67 ? *(v67 + 8) : 0;
      v69 = *(this + 440);
      v86[0] = 0;
      v70 = *(this + 441);
      v71 = *(this + 2);
      v72 = *(this + 42);
      v83[0] = *(this + 44);
      v83[1] = v72;
      v84 = *(this + 442);
      v85 = *(this + 237);
      v82[0] = 0;
      re::RenderGraphMeshNodeBase::sortAndDrawMeshPartsInternal(this, v75, v92, v66, v68, 0, v73, v69, v86, v70, v71, v83, 0, v82);
      if (v74)
      {
        v38.n128_f64[0] = re::RenderGraphMeshNodeBase::drawDebugSortPoints(this, v75, v74, v38.n128_f64[0]);
      }
    }

    if (v88)
    {
      v6 = v92;
      if (v92)
      {
        (*(*v88 + 40))(v38);
      }
    }
  }

LABEL_102:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v87, v6, v7);
}

void re::RenderGraphMultiViewMeshNode::setup(re::RenderGraphMultiViewMeshNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v6 = *(this + 35);
  if (v6)
  {
    v7 = v6 >> 1;
  }

  else
  {
    v7 = v6 >> 1;
  }

  if (!v7)
  {
    re::DynamicString::format(&v8, "(%s): No material pass set", a2, *(this + 2));
    re::RenderGraphBuilder::addError(*(a2 + 83), &v8);
    if (v8)
    {
      if (v9)
      {
        (*(*v8 + 40))();
      }
    }
  }

  re::RenderGraphNode::setup(this, a2, a3);
}

void re::RenderGraphMultiViewMeshNode::execute(re::RenderGraphMultiViewMeshNode *this, re::RenderGraphContext *a2)
{
  v94 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v79, 5097, 0, 0, 0, 0);
  v63 = re::RenderGraphDataStore::get<re::CameraArrayData>(*(a2 + 146), *(*(a2 + 5) + 48));
  v64 = a2;
  v4 = *(a2 + 146);
  v5 = *(*(a2 + 5) + 48);
  v6 = "N2re26MultiViewCullModeArrayDataE";
  if (("N2re26MultiViewCullModeArrayDataE" & 0x8000000000000000) != 0)
  {
    v7 = ("N2re26MultiViewCullModeArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  v10 = 0x7FFFFFFFLL;
  if (*(v4 + 64))
  {
    v11 = (v5 + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6;
    v12 = *(*(v4 + 72) + 4 * (v11 % *(v4 + 88)));
    if (v12 != 0x7FFFFFFF)
    {
      v13 = *(v4 + 80);
      v10 = 0x7FFFFFFFLL;
      while (*(v13 + 24 * v12 + 8) != v11)
      {
        v12 = *(v13 + 24 * v12) & 0x7FFFFFFF;
        if (v12 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      v10 = v12;
    }
  }

LABEL_11:
  v68 = *(*(v4 + 80) + 24 * v10 + 16);
  v69 = re::RenderGraphDataStore::get<re::CameraMatricesArray>(v4, v5);
  v14 = re::RenderGraphDataStore::tryGet<re::MeshPassInfoArrayData>(*(a2 + 146), *(*(a2 + 5) + 48));
  v15 = *(a2 + 146);
  v16 = *(*(a2 + 5) + 48);
  v17 = "N2re17ViewportArrayDataE";
  if (("N2re17ViewportArrayDataE" & 0x8000000000000000) != 0)
  {
    v18 = ("N2re17ViewportArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  v21 = 0x7FFFFFFFLL;
  if (*(v15 + 64))
  {
    v22 = (v16 - 0x61C8864680B583E9 + (v17 << 6) + (v17 >> 2)) ^ v17;
    v23 = *(*(v15 + 72) + 4 * (v22 % *(v15 + 88)));
    if (v23 != 0x7FFFFFFF)
    {
      v24 = *(v15 + 80);
      v21 = 0x7FFFFFFFLL;
      while (*(v24 + 24 * v23 + 8) != v22)
      {
        v23 = *(v24 + 24 * v23) & 0x7FFFFFFF;
        if (v23 == 0x7FFFFFFF)
        {
          goto LABEL_21;
        }
      }

      v21 = v23;
    }
  }

LABEL_21:
  v67 = v14;
  v25 = *(*(v15 + 80) + 24 * v21 + 16);
  v26 = re::RenderGraphDataStore::tryGet<re::MeshNodeFilterData>(v15, v16);
  if (v26)
  {
    v27 = *(v26 + 8);
    v61 = v27;
    v62 = v27 & 0xFFFFFFFF00000000;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v28 = re::Hash<re::DynamicString>::operator()(&v89, this + 34);
  v31 = v67;
  v65 = v28;
  if (*(v69 + 24))
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 873;
    while (1)
    {
      v38 = *(v68 + 16);
      if (v38 <= v36)
      {
        break;
      }

      v38 = *(v25 + 16);
      if (v38 <= v36)
      {
        goto LABEL_43;
      }

      if (v31)
      {
        v38 = *(v31 + 16);
        if (v38 <= v36)
        {
          goto LABEL_47;
        }

        v39 = *(v69 + 40);
        v2 = *(v68 + 24);
        v40 = *(v25 + 24);
        MeshPartBucket = re::MeshPassInfoData::getMeshPartBucket((*(v31 + 24) + v35), v65);
        v31 = v67;
        if (MeshPartBucket)
        {
          v75 = MeshPartBucket;
          v76 = 0;
          v77 = 65280;
          v78 = 1;
          v42 = *(this + 344);
          v74[0] = *(v2 + v33);
          if (v74[0] == 1)
          {
            v74[1] = *(v2 + v33 + 1);
          }

          v43 = this + 281;
          if (*(this + 280))
          {
            v43 = *(this + 36);
          }

          v44 = *(this + 345);
          v45 = *(this + 40);
          v71[0] = *(this + 42);
          v71[1] = v45;
          v72 = 0;
          v73 = 0;
          v2 = *(v63 + 16);
          if (v2 <= v36)
          {
            goto LABEL_51;
          }

          v46 = *(*(v63 + 24) + v37);
          v70[0] = 0;
          re::RenderGraphMeshNodeBase::sortAndDrawMeshPartsInternal(this, v64, &v75, 1, (v62 | v61), (v40 + v34), v39 + v32, v42, v74, v44, v43, v71, v46, v70);
          v31 = v67;
        }
      }

      ++v36;
      v37 += 960;
      v35 += 16;
      v34 += 32;
      v33 += 2;
      v32 += 176;
      if (*(v69 + 24) <= v36)
      {
        goto LABEL_38;
      }
    }

    v75 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v84 = 476;
    v85 = 2048;
    v86 = v36;
    v87 = 2048;
    v88 = v38;
    _os_log_send_and_compose_impl(v49, &v75, &v89, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v59, v60);
    _os_crash_msg();
    __break(1u);
LABEL_43:
    v75 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v84 = 476;
    v85 = 2048;
    v86 = v36;
    v87 = 2048;
    v88 = v38;
    _os_log_send_and_compose_impl(v52, &v75, &v89, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v59, v60);
    _os_crash_msg();
    __break(1u);
LABEL_47:
    v75 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    v84 = 476;
    v85 = 2048;
    v86 = v36;
    v87 = 2048;
    v88 = v38;
    _os_log_send_and_compose_impl(v55, &v75, &v89, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v59, v60);
    _os_crash_msg();
    __break(1u);
LABEL_51:
    v80 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    v84 = 476;
    v85 = 2048;
    v86 = v36;
    v87 = 2048;
    v88 = v2;
    _os_log_send_and_compose_impl(v58, &v80, &v89, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v59, v60);
    _os_crash_msg();
    __break(1u);
  }

LABEL_38:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v79, v29, v30);
}

void re::RenderGraphTextNode::execute(re::RenderGraphTextNode *this, re::RenderGraphContext *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v46, 5032, 0, 0, 0, 0);
  v3 = re::RenderGraphDataStore::get<re::SceneScope>(*(a2 + 146), *(*(a2 + 5) + 48));
  if ((atomic_load_explicit(&qword_1EE1C1D90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1D90))
  {
    qword_1EE1C1D88 = re::Hash<re::StringSlice>::operator()("TextInfo", 8uLL);
    __cxa_guard_release(&qword_1EE1C1D90);
  }

  v4 = qword_1EE1C1D88;
  if (*(v3 + 16))
  {
    v5 = *(v3 + 24);
  }

  else
  {
    v5 = (v3 + 17);
  }

  v6 = strlen(v5);
  if (v6)
  {
    MurmurHash3_x64_128(v5, v6, 0, v47);
    v9 = ((v47[1] - 0x61C8864680B583E9 + (v47[0] << 6) + (v47[0] >> 2)) ^ v47[0]) - 0x61C8864680B583E9;
  }

  else
  {
    v9 = 0x9E3779B97F4A7C17;
  }

  v10 = *(a2 + 146);
  v11 = "N2re27RenderGraphDataStoreWrapperINS_8TextInfoEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_8TextInfoEEE" & 0x8000000000000000) != 0)
  {
    v12 = ("N2re27RenderGraphDataStoreWrapperINS_8TextInfoEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  if (*(v10 + 16))
  {
    v15 = ((((v4 >> 2) + (v4 << 6) + v9) ^ v4) - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
    v16 = *(*(v10 + 24) + 4 * (v15 % *(v10 + 40)));
    if (v16 != 0x7FFFFFFF)
    {
      v17 = *(v10 + 32);
      while (*(v17 + 24 * v16 + 8) != v15)
      {
        v16 = *(v17 + 24 * v16) & 0x7FFFFFFF;
        if (v16 == 0x7FFFFFFF)
        {
          goto LABEL_46;
        }
      }

      v18 = *(v17 + 24 * v16 + 16);
      if (v18)
      {
        re::RenderGraphContext::acquireManagedRenderCommandEncoder(a2, 0, v45);
        v19 = re::RenderGraphDataStore::get<re::CameraMatrices>(*(a2 + 146), *(*(a2 + 5) + 48));
        v20 = re::RenderGraphDataStore::tryGet<re::StencilInfoData>(*(a2 + 146), *(*(a2 + 5) + 48));
        v21 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(a2 + 146), *(*(a2 + 5) + 48));
        if (v21)
        {
          v22 = *(v21 + 65);
        }

        else
        {
          v22 = 0;
        }

        v38 = v18;
        v40 = *(v18 + 16);
        if (v40)
        {
          v39 = *(v40 + 40);
          if (v39)
          {
            for (i = 0; i != v39; ++i)
            {
              v24 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v40, i);
              v25 = *(v24 + 16);
              if (v25)
              {
                v26 = *(v24 + 32);
                v27 = 144 * v25;
                do
                {
                  v28 = *(*(a2 + 1) + 64);
                  re::RenderGraphContext::rtInfo(v47, a2, *(a2 + 5));
                  if (v20)
                  {
                    v29 = *(v20 + 8);
                    v44 = *(v20 + 24);
                    v43 = v29;
                  }

                  else
                  {
                    *&v43 = 134217472;
                    *(&v43 + 1) = 134217472;
                    v44 = 0;
                  }

                  *&v56 = v19 + 8;
                  *(&v56 + 1) = v19 + 48;
                  re::TextManager::render(v28, v47, &v43, v45, *a2, v56, (v19 + 160), v26, v22 & 1, 1);
                  v26 += 144;
                  v27 -= 144;
                }

                while (v27);
              }
            }
          }
        }

        v30 = *(v38 + 8);
        if (v30)
        {
          v31 = *(v30 + 40);
          if (v31)
          {
            for (j = 0; j != v31; ++j)
            {
              v33 = re::BucketArray<unsigned long,4ul>::operator[](v30, j);
              v34 = re::StringID::invalid(v47);
              v47[2] = 0x3F8000003F800000;
              v47[3] = 0x3F8000003F800000;
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              v53 = 0u;
              re::DynamicString::setCapacity(&v52, 0);
              v54 = *v33;
              v35 = *(*(a2 + 1) + 64);
              re::RenderGraphContext::rtInfo(&v43, a2, *(a2 + 5));
              if (v20)
              {
                v36 = *(v20 + 8);
                v42 = *(v20 + 24);
                v41 = v36;
              }

              else
              {
                *&v41 = 134217472;
                *(&v41 + 1) = 134217472;
                v42 = 0;
              }

              *&v57 = v19 + 8;
              *(&v57 + 1) = v19 + 48;
              re::TextManager::render(v35, &v43, &v41, v45, *a2, v57, (v19 + 160), v47, v22 & 1, 1);
              v37 = v52;
              if (v52)
              {
                if (BYTE8(v52))
                {
                  v37 = (*(*v52 + 40))();
                }

                v52 = 0u;
                v53 = 0u;
              }

              if (v47[0])
              {
                if (v47[0])
                {
                }
              }
            }
          }
        }

        re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v45);
      }
    }
  }

LABEL_46:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v46, v7, v8);
}

void re::RenderGraphDebugNode::execute(re::RenderGraphDebugNode *this, re::RenderGraphContext *a2)
{
  v31 = this;
  v73 = *MEMORY[0x1E69E9840];
  v3 = re::RenderGraphDataStore::get<re::CameraData>(*(a2 + 146), *(*(a2 + 5) + 48));
  BYTE8(v59) = 0;
  if ((*(v3 + 862) & 1) == 0)
  {
    re::RenderGraphContext::acquireManagedRenderCommandEncoder(a2, 0, v61);
    LOBYTE(v66[0]) = 1;
    *(v66 + 8) = *v61;
    memset(v61, 0, sizeof(v61));
    re::Optional<re::mtl::RenderCommandEncoder>::operator=(&v59 + 8, v66);
    if (LOBYTE(v66[0]) == 1)
    {
      re::mtl::RenderCommandEncoder::~RenderCommandEncoder((v66 + 8));
    }

    re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v61);
  }

  *&v59 = 0;
  *(&v57 + 1) = 0;
  *&v58 = 0;
  DWORD2(v58) = 0;
  v4 = re::DynamicArray<re::DynamicString>::setCapacity(&v57, 2uLL);
  ++DWORD2(v58);
  v5 = re::DynamicArray<re::DynamicString>::add(&v57, v66);
  v6 = *&v66[0];
  if (*&v66[0] && (BYTE8(v66[0]) & 1) != 0)
  {
    v6 = (*(**&v66[0] + 40))(v5);
  }

  v7 = re::DynamicArray<re::DynamicString>::add(&v57, v66);
  if (*&v66[0] && (BYTE8(v66[0]) & 1) != 0)
  {
    (*(**&v66[0] + 40))(v7);
  }

  if (v58)
  {
    v8 = v59;
    v9 = v59 + 32 * v58;
    v32 = (a2 + 1352);
    do
    {
      v10 = re::RenderGraphDataStore::get<re::CameraMatrices>(*(a2 + 146), *(*(a2 + 5) + 48));
      v11 = re::Hash<re::DynamicString>::operator()(v66, v8);
      MeshPartBucket = re::RenderGraphDataStore::tryGet<re::MeshPassInfoData>(*(a2 + 146), *(*(a2 + 5) + 48));
      if (MeshPartBucket)
      {
        MeshPartBucket = re::MeshPassInfoData::getMeshPartBucket(MeshPartBucket, v11);
        v13 = MeshPartBucket;
      }

      else
      {
        v13 = 0;
      }

      if (*(v8 + 8))
      {
        v14 = *(v8 + 16);
      }

      else
      {
        v14 = (v8 + 9);
      }

      if (*v32)
      {
        MeshPartBucket = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v32, *(v31 + 2), v14);
        v15 = MeshPartBucket;
        if (v13)
        {
LABEL_21:
          v16 = *(*a2 + 32);
          v33 = v13;
          LOBYTE(v34) = 0;
          *(&v34 + 6) = 65280;
          BYTE10(v34) = 1;
          v55 = &v33;
          v56 = 1;
          *&v70 = 0;
          v68 = 0u;
          v69 = 0u;
          v67 = 0u;
          memset(v66, 0, sizeof(v66));
          *(&v69 + 1) = re::globalAllocators(MeshPartBucket)[2];
          WORD4(v70) = 0;
          BYTE12(v70) = 0;
          LOWORD(v72) = 0;
          re::RenderGraphMeshNodeBase::sortMeshParts(0, &v33, 1uLL, a2, v15, v66, v16, v61, v31, v32, SHIDWORD(v32), v33, v34, *(&v34 + 1), v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, *(&v60 + 1), v61[0], v61[1], SBYTE1(v61[1]), SBYTE2(v61[1]), SHIBYTE(v61[1]), v61[2], v61[3], v62, v63, v64, v65, v66[0], *(&v66[0] + 1), *&v66[1], *(&v66[1] + 1), v67, SWORD4(v67), v68, *(&v68 + 1), v69, *(&v69 + 1), 0);
          re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v67 + 8);
          if (v62 >= 2)
          {
            v17 = v9;
            *&v67 = 0;
            memset(v66, 0, 28);
            re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(v66, v62);
            if (v62)
            {
              v18 = 0;
              v19 = v63;
              v20 = (v63 + 12 * v62);
              do
              {
                while (1)
                {
                  v21 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](v13, *v19);
                  if (!*(v21 + 64) || *(v21 + 66) == 0)
                  {
                    break;
                  }

                  v19 = (v19 + 12);
                  v18 = 1;
                  if (v19 == v20)
                  {
                    goto LABEL_34;
                  }
                }

                re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v66, v19);
                v19 = (v19 + 12);
              }

              while (v19 != v20);
              if ((v18 & 1) == 0)
              {
                goto LABEL_35;
              }

LABEL_34:
              re::DynamicArray<re::MeshPartSortResult>::operator=(v61, v66);
            }

LABEL_35:
            if (*&v66[0] && v67)
            {
              (*(**&v66[0] + 40))();
            }

            v9 = v17;
          }

          v23 = (*(*v16 + 32))(v16, 328, 8);
          re::DrawTable::DrawTable(v23, v16, (v62 + 127) >> 7);
          LOBYTE(v42) = 0;
          BYTE4(v44) = 0;
          HIDWORD(v48) = 0;
          LOBYTE(v50) = 0;
          v46 = 0;
          v47 = 0;
          LOBYTE(v48) = 0;
          re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(&v55, v63, v62, a2, v23, v15, &v42);
          if (*v61 && v63)
          {
            (*(**v61 + 40))();
          }

          if (*(v23 + 5))
          {
            re::DrawTableSlice::DrawTableSlice(v66, v23);
            if (*(v8 + 8))
            {
              v24 = *(v8 + 16);
            }

            else
            {
              v24 = v8 + 9;
            }

            v33 = v24;
            *&v34 = v66;
            v25 = *(v10 + 80);
            *(&v34 + 1) = *(v10 + 40);
            v35 = v25;
            v36 = 0;
            LOBYTE(v37) = *(v10 + 160);
            *(&v37 + 1) = 2;
            WORD2(v37) = 0;
            HIBYTE(v39) = 0;
            v40 = v15;
            LOBYTE(v41) = 0;
            re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a2, v61);
            re::RenderGraphContext::encodeDrawCalls(a2, v61, &v33, v26, v27, v28, v29, v30, v31, v32, v33, v34, *(&v34 + 1), v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, *&v52, v53, v54, v55, v56, v57, *(&v57 + 1), v58, v59, v60, v61[0], SBYTE1(v61[0]), SBYTE2(v61[0]), SHIBYTE(v61[0]), v61[1], *&v61[2], v62, v63, *(&v63 + 1), v64, *(&v64 + 1), v65, *(&v65 + 1), v66[0], v66[1], v67, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, v71, v72);
          }
        }
      }

      else
      {
        v15 = 0;
        if (v13)
        {
          goto LABEL_21;
        }
      }

      v8 += 32;
    }

    while (v8 != v9);
  }

  re::DynamicArray<re::DynamicString>::deinit(&v57);
  if (BYTE8(v59) == 1)
  {
    re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&v60);
  }
}

uint64_t re::DynamicArray<re::MeshPartSortResult>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::AnimationLibraryMeshMappingData>::copy(a1, a2);
      }

      else
      {
        *(a1 + 16) = 0;
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::copy(a1, a2);
    }
  }

  return a1;
}

re::RenderGraphMaterialReplaceNode *re::RenderGraphMaterialReplaceNode::RenderGraphMaterialReplaceNode(re::RenderGraphMaterialReplaceNode *this, const char *a2)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this, a2);
  *(v3 + 66) = 1;
  *(v3 + 268) = 0;
  *v3 = &unk_1F5D16098;
  *(v3 + 17) = 0u;
  *(v3 + 18) = 0u;
  *(v3 + 19) = 0u;
  *(v3 + 20) = 0u;
  v4 = re::DynamicString::setCapacity(this + 38, 0);
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  re::DynamicString::setCapacity(this + 42, 0);
  *(this + 184) = 2;
  return this;
}

void re::RenderGraphMaterialReplaceNode::configure(re::RenderGraphMaterialReplaceNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v8 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((this + 280));
  *(this + 34) = v8;
  if (v8)
  {

    re::RenderGraphNode::configure(this, a2, a3, a4);
  }
}

void re::RenderGraphMaterialReplaceNode::execute(re::RenderGraphMaterialReplaceNode *this, re::RenderGraphContext *a2)
{
  v101 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(&v87, 5046, 0, 0, 0, 0);
  v63 = *(*(this + 34) + 1776);
  v4 = re::RenderGraphDataStore::get<re::CameraMatrices>(*(a2 + 146), *(*(a2 + 5) + 48));
  v5 = re::Hash<re::DynamicString>::operator()(&v93, this + 38);
  MeshPartBucket = re::RenderGraphDataStore::tryGet<re::MeshPassInfoData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (MeshPartBucket)
  {
    MeshPartBucket = re::MeshPassInfoData::getMeshPartBucket(MeshPartBucket, v5);
    v9 = MeshPartBucket;
  }

  else
  {
    v9 = 0;
  }

  if (*(a2 + 338))
  {
LABEL_53:
    MeshPartBucket = re::DrawCallRecorder::allocateDrawCallRecorderGroup(a2 + 169, *(this + 2), "MaterialReplace");
    v59 = MeshPartBucket;
    if (!v9)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v59 = 0;
    if (!v9)
    {
      goto LABEL_51;
    }
  }

  v10 = *(*a2 + 32);
  v64 = v9;
  LOBYTE(v65) = 0;
  *(&v65 + 6) = 65280;
  BYTE10(v65) = 1;
  *&v86 = &v64;
  *(&v86 + 1) = 1;
  memset(v95, 0, sizeof(v95));
  v93 = 0u;
  v94 = 0u;
  v96 = re::globalAllocators(MeshPartBucket)[2];
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v11 = v59;
  re::RenderGraphMeshNodeBase::sortMeshParts(0, &v64, 1uLL, a2, v59, &v93, v10, &v88, v44, v46, SHIDWORD(v46), v48, v50, v52, v54, v56, v57, v58, v59, v61, *(&v61 + 1), v62, v63, v64, v65, *(&v65 + 1), v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, *(&v79 + 1), v80, v81, v82, v83, v84, v85, SHIDWORD(v85), v86, v87, v88, v89, v90, *(&v90 + 1), v91, *(&v91 + 1), v92, SWORD4(v92), v93, *(&v93 + 1), v94, *(&v94 + 1), *v95);
  re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v95[8]);
  if (v89 >= 2)
  {
    *v95 = 0;
    *&v94 = 0;
    v93 = 0uLL;
    DWORD2(v94) = 0;
    re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(&v93, v89);
    if (v89)
    {
      v12 = 0;
      v13 = v90;
      v14 = (v90 + 12 * v89);
      do
      {
        while (1)
        {
          v15 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](v9, *v13);
          if (!*(v15 + 64) || *(v15 + 66) == 0)
          {
            break;
          }

          v13 = (v13 + 12);
          v12 = 1;
          if (v13 == v14)
          {
            goto LABEL_19;
          }
        }

        re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(&v93, v13);
        v13 = (v13 + 12);
      }

      while (v13 != v14);
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_19:
      re::DynamicArray<re::MeshPartSortResult>::operator=(&v88, &v93);
    }

LABEL_20:
    if (v93 && *v95)
    {
      (*(*v93 + 40))();
    }
  }

  v9 = (*(*v10 + 32))(v10, 328, 8);
  re::DrawTable::DrawTable(v9, v10, (v89 + 127) >> 7);
  LOBYTE(v72) = 0;
  BYTE4(v74) = 0;
  DWORD1(v77) = 0;
  LOBYTE(v78) = 0;
  v76 = 0uLL;
  LOBYTE(v77) = 0;
  re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(&v86, v90, v89, a2, v9, v11, &v72);
  if (v88 && v90)
  {
    (*(*v88 + 40))();
  }

  v17 = re::Hash<re::DynamicString>::operator()(&v93, this + 42);
  v18 = *(v9 + 5);
  if (v18)
  {
    v19 = v17;
    v56 = v4;
    v57 = this;
    v58 = a2;
    this = 0;
    v61 = xmmword_1E304F3C0;
    __asm { FMOV            V9.2S, #1.0 }

    while (1)
    {
      v4 = re::BucketArray<re::DrawCall,128ul>::operator[](v9, this);
      PrioritizedPassTechniqueMapping = re::MaterialParameterTableLayers::getPrioritizedPassTechniqueMapping(*(v4 + 72), v5);
      if (PrioritizedPassTechniqueMapping)
      {
        break;
      }

LABEL_45:
      this = (this + 1);
      if (v18 == this)
      {
        if (*(v9 + 5))
        {
          re::DrawTableSlice::DrawTableSlice(&v93, v9);
          if (*(v57 + 344))
          {
            v37 = *(v57 + 44);
          }

          else
          {
            v37 = v57 + 345;
          }

          v64 = v37;
          *&v65 = &v93;
          v38 = *(v56 + 80);
          *(&v65 + 1) = *(v56 + 40);
          v66 = v38;
          v67 = 0;
          LOBYTE(v68) = *(v56 + 160);
          *(&v68 + 1) = *(v57 + 368);
          WORD2(v68) = *(v57 + 369);
          HIBYTE(v70) = 0;
          v71.n128_u64[0] = v60;
          v71.n128_u8[8] = 0;
          re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(v58, &v88);
          re::RenderGraphContext::encodeDrawCalls(v58, &v88, &v64, v39, v40, v41, v42, v43, v45, v47, v49, v51, v53, v55, v56, v57, v58, v60, 0x3F8000003F800000, 0x3F800000, v62, v63, v64, v65, *(&v65 + 1), v66, v67, v68, v69, v70, *&v71, v72, v73, v74, v75, v76, *(&v76 + 1), v77, v78, v79, v80, SBYTE1(v80), SBYTE2(v80), SHIBYTE(v80), v81, v85, v86, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, *(&v89 + 1), v90, v91, v92, v93, *(&v93 + 1), v94, *(&v94 + 1), *v95, *&v95[16], *&v95[24]);
        }

        goto LABEL_51;
      }
    }

    re::globalAllocators(PrioritizedPassTechniqueMapping);
    v25 = (*(*v10 + 32))(v10, 336, 16);
    *v25 = 0u;
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0u;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0u;
    *(v25 + 72) = 0u;
    *(v25 + 88) = 0u;
    *(v25 + 104) = 0u;
    *(v25 + 120) = 0;
    *(v25 + 192) = 0;
    *(v25 + 200) = 0;
    *(v25 + 208) = 0;
    *(v25 + 224) = 0;
    *(v25 + 128) = 0u;
    *(v25 + 144) = 0u;
    *(v25 + 160) = 0u;
    *(v25 + 176) = 0;
    *(v25 + 184) = v10;
    *(v25 + 232) = xmmword_1E304F3C0;
    *(v25 + 248) = 0;
    *(v25 + 252) = 10854;
    *(v25 + 256) = _D9;
    *(v25 + 264) = 0;
    *(v25 + 272) = 0;
    *(v25 + 320) = 0;
    *(&v94 + 1) = re::globalAllocators(v25)[2];
    *v95 = &v93;
    *&v93 = &unk_1F5D161B8;
    v26 = (*(*v10 + 16))(v10, v25, &v93);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v93);
    a2 = *(v4 + 72);
    v27 = *a2;
    v28 = *(a2 + 2);
    *(v26 + 16) = *(a2 + 1);
    *(v26 + 32) = v28;
    *v26 = v27;
    v29 = *(a2 + 3);
    v30 = *(a2 + 4);
    v31 = *(a2 + 5);
    *(v26 + 96) = *(a2 + 12);
    *(v26 + 64) = v30;
    *(v26 + 80) = v31;
    *(v26 + 48) = v29;
    v32 = *(a2 + 104);
    *(v26 + 120) = *(a2 + 15);
    *(v26 + 104) = v32;
    if (v26 != a2)
    {
      re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::copy((v26 + 128), a2 + 128);
    }

    *(v26 + 192) = *(a2 + 96);
    *(v26 + 200) = *(a2 + 50);
    if (*(v26 + 208))
    {
      if ((*(a2 + 208) & 1) == 0)
      {
        *(v26 + 208) = 0;
        goto LABEL_37;
      }
    }

    else
    {
      if ((*(a2 + 208) & 1) == 0)
      {
        goto LABEL_37;
      }

      *(v26 + 208) = 1;
    }

    *(v26 + 216) = *(a2 + 27);
LABEL_37:
    v33 = *(a2 + 14);
    v34 = *(a2 + 15);
    *(v26 + 249) = *(a2 + 249);
    *(v26 + 224) = v33;
    *(v26 + 240) = v34;
    if (*(v26 + 272))
    {
      if ((*(a2 + 272) & 1) == 0)
      {
        *(v26 + 272) = 0;
LABEL_43:
        *(v26 + 320) = *(a2 + 40);
        *(v26 + 56) = v63;
        *(v4 + 72) = v26;
        v36 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v26, v19);
        if (!v7)
        {
          v52 = 0;
          v54 = 0;
          v48 = "operator[]";
          v50 = 264;
          re::internal::assertLog(6, 0);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()");
          __break(1u);
          goto LABEL_53;
        }

        *(v4 + 44) = *v36;
        goto LABEL_45;
      }
    }

    else
    {
      if ((*(a2 + 272) & 1) == 0)
      {
        goto LABEL_43;
      }

      *(v26 + 272) = 1;
    }

    v35 = *(a2 + 19);
    *(v26 + 288) = *(a2 + 18);
    *(v26 + 304) = v35;
    goto LABEL_43;
  }

LABEL_51:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&v87, v7, v8);
}

void *re::allocInfo_RenderGraphMeshNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1D98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2130, "RenderGraphMeshNode");
    __cxa_guard_release(&qword_1EE1C1D98);
  }

  return &unk_1EE1C2130;
}

void re::initInfo_RenderGraphMeshNode(re *this, re::IntrospectionBase *a2)
{
  v31[0] = 0x11A172C87C45D5CELL;
  v31[1] = "RenderGraphMeshNode";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE1C1DA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1DA0))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C1F28 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::IntrospectionInfo<re::DynamicString>::get(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "materialPassName";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x11000000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C1F30 = v11;
    v12 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::TechniqueTagFilter>>::get(v12);
    v13 = (*(*v12 + 32))(v12, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "excludedTechniqueTags";
    *(v13 + 16) = &qword_1EE1C1F60;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x13000000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1C1F38 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::mtl::introspect_CullMode(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "cullMode";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x15800000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1C1F40 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::mtl::introspect_TriangleFillMode(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "fillMode";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x15900000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1C1F48 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_BOOL(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "useSubFrustums";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x15A00000005;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1C1F50 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_MeshSortMode(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "sortMode";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x10800000006;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1C1F58 = v29;
    __cxa_guard_release(&qword_1EE1C1DA0);
  }

  *(this + 2) = 0x17000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1C1F28;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphMeshNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphMeshNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphMeshNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphMeshNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v30 = v32;
}

void re::IntrospectionInfo<re::DynamicArray<re::TechniqueTagFilter>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1C1E78, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1C1E78);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1C1F60);
      qword_1EE1C1F60 = &unk_1F5D16210;
      __cxa_guard_release(&qword_1EE1C1E78);
    }
  }

  if ((byte_1EE1C1D71 & 1) == 0)
  {
    v1 = qword_1EE1C1E68;
    if (qword_1EE1C1E68 || (v1 = re::allocInfo_TechniqueTagFilter(a1), qword_1EE1C1E68 = v1, re::initInfo_TechniqueTagFilter(v1, v2), (byte_1EE1C1D71 & 1) == 0))
    {
      byte_1EE1C1D71 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1C1F60, 0);
      qword_1EE1C1F70 = 0x2800000003;
      dword_1EE1C1F78 = v3;
      word_1EE1C1F7C = 0;
      *&xmmword_1EE1C1F80 = 0;
      *(&xmmword_1EE1C1F80 + 1) = 0xFFFFFFFFLL;
      qword_1EE1C1F90 = v1;
      qword_1EE1C1F98 = 0;
      qword_1EE1C1F60 = &unk_1F5D16210;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&v13, &qword_1EE1C1F60);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1C1F80 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::allocInfo_RenderGraphMultiPassMeshNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1DB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C21C0, "RenderGraphMultiPassMeshNode");
    __cxa_guard_release(&qword_1EE1C1DB0);
  }

  return &unk_1EE1C21C0;
}

void re::initInfo_RenderGraphMultiPassMeshNode(re *this, re::IntrospectionBase *a2)
{
  v52[0] = 0x5BAAD2E756B69C82;
  v52[1] = "RenderGraphMultiPassMeshNode";
  if (v52[0])
  {
    if (v52[0])
    {
    }
  }

  *(this + 2) = v53;
  if ((atomic_load_explicit(&qword_1EE1C1DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1DB8))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C20C8 = v7;
    v8 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v8, v9);
    v10 = (*(*v8 + 32))(v8, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "materialPasses";
    *(v10 + 16) = &qword_1EE1C2028;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x11000000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1C20D0 = v10;
    v11 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::TechniqueTagFilter>>::get(v11);
    v12 = (*(*v11 + 32))(v11, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "excludedTechniqueTags";
    *(v12 + 16) = &qword_1EE1C1F60;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x14000000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C20D8 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::mtl::introspect_CullMode(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "cullMode";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x1B800000003;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1C20E0 = v16;
    v17 = re::introspectionAllocator();
    v19 = re::mtl::introspect_TriangleFillMode(1, v18);
    v20 = (*(*v17 + 32))(v17, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "fillMode";
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x1B900000004;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1C20E8 = v20;
    v21 = re::introspectionAllocator();
    v23 = re::introspect_BOOL(1, v22);
    v24 = (*(*v21 + 32))(v21, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "useSubFrustums";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x1D800000005;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1C20F0 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::introspect_MeshSortMode(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "sortMode";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x10800000006;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1C20F8 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::introspect_uint16_t(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "fadeGroupRenderPassOrder";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x1BA0000000ALL;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1C2100 = v32;
    v33 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshPassFilterFlags>>::get(v33, v34);
    v35 = (*(*v33 + 32))(v33, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "globalRequiredFilters";
    *(v35 + 16) = &qword_1EE1C1FA0;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0x1680000000CLL;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE1C2108 = v35;
    v36 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshPassFilterFlags>>::get(v36, v37);
    v38 = (*(*v36 + 32))(v36, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "globalExcludedFilters";
    *(v38 + 16) = &qword_1EE1C1FA0;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x1900000000DLL;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE1C2110 = v38;
    v39 = re::introspectionAllocator();
    v41 = re::introspect_AssetHandle(1, v40);
    v42 = (*(*v39 + 32))(v39, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "depthPatchMaterial";
    *(v42 + 16) = v41;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0x1C00000000ELL;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE1C2118 = v42;
    v43 = re::introspectionAllocator();
    v45 = re::introspect_BOOL(1, v44);
    v46 = (*(*v43 + 32))(v43, 72, 8);
    *v46 = 1;
    *(v46 + 8) = "forceColorWriteMaskNone";
    *(v46 + 16) = v45;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0x1DA0000000FLL;
    *(v46 + 40) = 0;
    *(v46 + 48) = 0;
    *(v46 + 56) = 0;
    *(v46 + 64) = 0;
    qword_1EE1C2120 = v46;
    v47 = re::introspectionAllocator();
    v49 = re::introspect_BOOL(1, v48);
    v50 = (*(*v47 + 32))(v47, 72, 8);
    *v50 = 1;
    *(v50 + 8) = "enableBreakthroughStencilPrepass";
    *(v50 + 16) = v49;
    *(v50 + 24) = 0;
    *(v50 + 32) = 0x1DB00000010;
    *(v50 + 40) = 0;
    *(v50 + 48) = 0;
    *(v50 + 56) = 0;
    *(v50 + 64) = 0;
    qword_1EE1C2128 = v50;
    __cxa_guard_release(&qword_1EE1C1DB8);
  }

  *(this + 2) = 0x1E000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 13;
  *(this + 8) = &qword_1EE1C20C8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphMultiPassMeshNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphMultiPassMeshNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphMultiPassMeshNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphMultiPassMeshNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v51 = v53;
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C1E80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E80))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1C2028);
    qword_1EE1C2028 = &unk_1F5D162A8;
    __cxa_guard_release(&qword_1EE1C1E80);
  }

  if ((byte_1EE1C1D72 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v3 = v2;
    v4 = qword_1EE1C1E50;
    if (!qword_1EE1C1E50)
    {
      v4 = re::allocInfo_MeshPassFilters(v2);
      qword_1EE1C1E50 = v4;
      re::initInfo_MeshPassFilters(v4, v5);
    }

    if ((byte_1EE1C1D72 & 1) == 0)
    {
      byte_1EE1C1D72 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1C2028, 0);
      qword_1EE1C2038 = 0x3000000007;
      dword_1EE1C2040 = v6;
      word_1EE1C2044 = 0;
      *&xmmword_1EE1C2048 = 0;
      *(&xmmword_1EE1C2048 + 1) = 0xFFFFFFFFLL;
      qword_1EE1C2058 = v3;
      qword_1EE1C2060 = 0;
      qword_1EE1C2068 = v4;
      qword_1EE1C2070 = 0;
      qword_1EE1C2028 = &unk_1F5D162A8;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, &qword_1EE1C2028);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = *(v3 + 32);
      v18 = *(v4 + 2);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1C2048 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshPassFilterFlags>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C1E88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E88))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1C1FA0);
    qword_1EE1C1FA0 = &unk_1F5D16348;
    __cxa_guard_release(&qword_1EE1C1E88);
  }

  if ((byte_1EE1C1D73 & 1) == 0)
  {
    re::introspect_MeshPassFilterFlags(1, a2);
    if ((byte_1EE1C1D73 & 1) == 0)
    {
      byte_1EE1C1D73 = 1;
      v2 = dword_1EE1C1FF8;
      ArcSharedObject::ArcSharedObject(&qword_1EE1C1FA0, 0);
      qword_1EE1C1FB0 = 0x2800000003;
      dword_1EE1C1FB8 = v2;
      word_1EE1C1FBC = 0;
      *&xmmword_1EE1C1FC0 = 0;
      *(&xmmword_1EE1C1FC0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1C1FD0 = &qword_1EE1C1FE0;
      qword_1EE1C1FD8 = 0;
      qword_1EE1C1FA0 = &unk_1F5D16348;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&v12, &qword_1EE1C1FA0);
      if (v13)
      {
        v5 = *&v14[7];
      }

      else
      {
        v5 = v14;
      }

      if (v12 && (v13 & 1) != 0)
      {
        (*(*v12 + 40))();
      }

      v9 = xmmword_1EE1C2000;
      if (v16)
      {
        v8 = v16;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v15);
        re::TypeBuilder::TypeBuilder(&v12, v15);
        v11 = v9;
        re::TypeBuilder::beginListType(&v12, &v10, 1, 0x28uLL, 8uLL, &v11);
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE1C1FC0 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void *re::allocInfo_RenderGraphMultiViewMeshNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1DC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1DC0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2250, "RenderGraphMultiViewMeshNode");
    __cxa_guard_release(&qword_1EE1C1DC0);
  }

  return &unk_1EE1C2250;
}

void re::initInfo_RenderGraphMultiViewMeshNode(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x60120976EB70A1AALL;
  v11[1] = "RenderGraphMultiViewMeshNode";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1C1DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1DD0))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1C1DA8;
    if (!qword_1EE1C1DA8)
    {
      v7 = re::allocInfo_RenderGraphMeshNode(v5);
      qword_1EE1C1DA8 = v7;
      re::initInfo_RenderGraphMeshNode(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "RenderGraphMeshNode";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 3;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1C1DC8 = v9;
    __cxa_guard_release(&qword_1EE1C1DD0);
  }

  *(this + 2) = 0x17000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C1DC8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphMultiViewMeshNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphMultiViewMeshNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphMultiViewMeshNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphMultiViewMeshNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

re::RenderGraphMeshNode *re::internal::defaultConstruct<re::RenderGraphMultiViewMeshNode>(int a1, int a2, re::RenderGraphMeshNode *this)
{
  result = re::RenderGraphMeshNode::RenderGraphMeshNode(this);
  *result = &unk_1F5D15EE8;
  return result;
}

re::RenderGraphMeshNode *re::internal::defaultConstructV2<re::RenderGraphMultiViewMeshNode>(re::RenderGraphMeshNode *a1)
{
  result = re::RenderGraphMeshNode::RenderGraphMeshNode(a1);
  *result = &unk_1F5D15EE8;
  return result;
}

void *re::allocInfo_RenderGraphTextNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1DD8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C22E0, "RenderGraphTextNode");
    __cxa_guard_release(&qword_1EE1C1DD8);
  }

  return &unk_1EE1C22E0;
}

void re::initInfo_RenderGraphTextNode(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0x11A173223CF8F44ELL;
  v9[1] = "RenderGraphTextNode";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE1C1DE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1DE8))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C1DE0 = v7;
    __cxa_guard_release(&qword_1EE1C1DE8);
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000110;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C1DE0;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphTextNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphTextNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphTextNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphTextNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphTextNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *(result + 66) = 1;
  *(result + 268) = 0;
  *result = &unk_1F5D15F78;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphTextNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *(result + 66) = 1;
  *(result + 268) = 0;
  *result = &unk_1F5D15F78;
  return result;
}

void *re::allocInfo_RenderGraphDebugNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1DF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1DF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2370, "RenderGraphDebugNode");
    __cxa_guard_release(&qword_1EE1C1DF0);
  }

  return &unk_1EE1C2370;
}

void re::initInfo_RenderGraphDebugNode(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0x228CD849C812213ALL;
  v9[1] = "RenderGraphDebugNode";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE1C1E00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E00))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C1DF8 = v7;
    __cxa_guard_release(&qword_1EE1C1E00);
  }

  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C1DF8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphDebugNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphDebugNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphDebugNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphDebugNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphDebugNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *(result + 66) = 1;
  *(result + 268) = 0;
  *result = &unk_1F5D16008;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphDebugNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *(result + 66) = 1;
  *(result + 268) = 0;
  *result = &unk_1F5D16008;
  return result;
}

void *re::allocInfo_RenderGraphMaterialReplaceNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1E08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2400, "RenderGraphMaterialReplaceNode");
    __cxa_guard_release(&qword_1EE1C1E08);
  }

  return &unk_1EE1C2400;
}

void re::initInfo_RenderGraphMaterialReplaceNode(re *this, re::IntrospectionBase *a2)
{
  v25[0] = 0xAF16046478AEDAELL;
  v25[1] = "RenderGraphMaterialReplaceNode";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&qword_1EE1C1E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E10))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C1EA8 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_AssetHandle(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "material";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x11800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C1EB0 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::IntrospectionInfo<re::DynamicString>::get(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "techniqueToReplace";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x13000000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C1EB8 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::IntrospectionInfo<re::DynamicString>::get(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "techniqueToUse";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x15000000003;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1C1EC0 = v19;
    v20 = re::introspectionAllocator();
    v22 = re::mtl::introspect_CullMode(1, v21);
    v23 = (*(*v20 + 32))(v20, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "cullMode";
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x17000000004;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE1C1EC8 = v23;
    __cxa_guard_release(&qword_1EE1C1E10);
  }

  *(this + 2) = 0x17800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1C1EA8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphMaterialReplaceNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphMaterialReplaceNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphMaterialReplaceNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphMaterialReplaceNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v24 = v26;
}

void *re::allocInfo_RenderGraphDebugMaterialsNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1E18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E18))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2490, "RenderGraphDebugMaterialsNode");
    __cxa_guard_release(&qword_1EE1C1E18);
  }

  return &unk_1EE1C2490;
}

void re::initInfo_RenderGraphDebugMaterialsNode(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0x86C8A26ABC359026;
  v9[1] = "RenderGraphDebugMaterialsNode";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE1C1E28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E28))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C1E20 = v7;
    __cxa_guard_release(&qword_1EE1C1E28);
  }

  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C1E20;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphDebugMaterialsNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphDebugMaterialsNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphDebugMaterialsNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphDebugMaterialsNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphDebugMaterialsNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *(result + 66) = 1;
  *(result + 268) = 0;
  *result = &unk_1F5CB4F88;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphDebugMaterialsNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *(result + 66) = 1;
  *(result + 268) = 0;
  *result = &unk_1F5CB4F88;
  return result;
}

void re::introspect_MeshPassFilterFlags(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1C1E30, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1C1E38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E38))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1C1FE0, "MeshPassFilterFlags", 1, 1, 1, 1);
      qword_1EE1C1FE0 = &unk_1F5D0C658;
      qword_1EE1C2020 = &re::introspect_MeshPassFilterFlags(BOOL)::enumTable;
      dword_1EE1C1FF0 = 9;
      __cxa_guard_release(&qword_1EE1C1E38);
    }

    if (v2)
    {
      if (_MergedGlobals_547)
      {
        return;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v47);
      v3 = _MergedGlobals_547;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v47);
      if (v3)
      {
        return;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (_MergedGlobals_547)
      {
        goto LABEL_46;
      }
    }

    _MergedGlobals_547 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1C1FE0, a2);
    v44 = 0xF30C980373391EA2;
    v45 = "MeshPassFilterFlags";
    v48 = 0x31CD534126;
    v49 = "uint8_t";
    v9 = v47[0];
    v10 = v47[1];
    if (v48)
    {
      if (v48)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v45);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v43);
    __break(1u);
LABEL_49:
    if (__cxa_guard_acquire(&qword_1EE1C1E30))
    {
      v33 = re::introspectionAllocator();
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 1;
      *(v34 + 16) = "Default";
      qword_1EE1C1ED0 = v34;
      v35 = re::introspectionAllocator();
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 8) = 2;
      *(v36 + 16) = "TwoPassSortGroup";
      qword_1EE1C1ED8 = v36;
      v37 = re::introspectionAllocator();
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 8) = 4;
      *(v38 + 16) = "RenderPassGroup";
      qword_1EE1C1EE0 = v38;
      v39 = re::introspectionAllocator();
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 8) = 8;
      *(v40 + 16) = "RenderOnTop";
      qword_1EE1C1EE8 = v40;
      v41 = re::introspectionAllocator();
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 8) = 16;
      *(v42 + 16) = "RenderToFarPlane";
      qword_1EE1C1EF0 = v42;
      __cxa_guard_release(&qword_1EE1C1E30);
    }
  }

  v11 = qword_1EE1C2020;
  v48 = v9;
  v49 = v10;
  re::TypeBuilder::beginEnumType(v47, &v44, 1, 1, &v48);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v46.var0 = 2 * v16;
        v46.var1 = v15;
        re::TypeBuilder::addEnumConstant(v47, v20, &v46);
        if (*&v46.var0)
        {
          if (*&v46.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v46.var0 = 2 * v25;
          v46.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v47, v29, &v46);
          if (*&v46.var0)
          {
            if (*&v46.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v47, v31);
  xmmword_1EE1C2000 = v46;
  if (v44)
  {
    if (v44)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }
}

void *re::allocInfo_MeshPassFilters(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1E40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E40))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2520, "MeshPassFilters");
    __cxa_guard_release(&qword_1EE1C1E40);
  }

  return &unk_1EE1C2520;
}

void re::initInfo_MeshPassFilters(re *this, re::IntrospectionBase *a2)
{
  v26[0] = 0xBC5389F7EA012CBALL;
  v26[1] = "MeshPassFilters";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE1C1E48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E48))
  {
    v5 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshPassFilterFlags>>::get(v5, v6);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "included";
    *(v7 + 16) = &qword_1EE1C1FA0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 1;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C1EF8 = v7;
    v8 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshPassFilterFlags>>::get(v8, v9);
    v10 = (*(*v8 + 32))(v8, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "excluded";
    *(v10 + 16) = &qword_1EE1C1FA0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x2800000002;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1C1F00 = v10;
    v11 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v11, v12);
    v13 = (*(*v11 + 32))(v11, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "renderPassGroupOrder";
    *(v13 + 16) = &qword_1EE1C2078;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x7800000004;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1C1F08 = v13;
    v14 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshPassFilterFlags>>::get(v14, v15);
    v16 = (*(*v14 + 32))(v14, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "required";
    *(v16 + 16) = &qword_1EE1C1FA0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x5000000005;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1C1F10 = v16;
    v17 = re::introspectionAllocator();
    v19 = re::introspect_BOOL(1, v18);
    v20 = (*(*v17 + 32))(v17, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "overrideDepthBiasPriorityWithRenderPassOrder";
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0xA800000006;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1C1F18 = v20;
    v21 = re::introspectionAllocator();
    v23 = re::introspect_BOOL(1, v22);
    v24 = (*(*v21 + 32))(v21, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "portalRecursible";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0xAF00000007;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1C1F20 = v24;
    __cxa_guard_release(&qword_1EE1C1E48);
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1C1EF8;
  *(this + 9) = re::internal::defaultConstruct<re::MeshPassFilters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshPassFilters>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshPassFilters>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshPassFilters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v25 = v27;
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C1E90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E90))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1C2078);
    qword_1EE1C2078 = &unk_1F5D163E0;
    __cxa_guard_release(&qword_1EE1C1E90);
  }

  if ((byte_1EE1C1D74 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v4 = re::introspect_uint16_t(1, v3);
    if ((byte_1EE1C1D74 & 1) == 0)
    {
      v5 = v4;
      byte_1EE1C1D74 = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1C2078, 0);
      qword_1EE1C2088 = 0x3000000007;
      dword_1EE1C2090 = v6;
      word_1EE1C2094 = 0;
      *&xmmword_1EE1C2098 = 0;
      *(&xmmword_1EE1C2098 + 1) = 0xFFFFFFFFLL;
      qword_1EE1C20A8 = v2;
      qword_1EE1C20B0 = 0;
      qword_1EE1C20B8 = v5;
      qword_1EE1C20C0 = 0;
      qword_1EE1C2078 = &unk_1F5D163E0;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, &qword_1EE1C2078);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1C2098 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::MeshPassFilters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *a3 = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 140) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a3 + 156) = 0x7FFFFFFFLL;
  *(a3 + 168) = 0;
  *(a3 + 175) = 1;
  return result;
}

uint64_t re::internal::defaultDestruct<re::MeshPassFilters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a3 + 120));
  re::DynamicArray<unsigned long>::deinit(a3 + 80);
  re::DynamicArray<unsigned long>::deinit(a3 + 40);

  return re::DynamicArray<unsigned long>::deinit(a3);
}

double re::internal::defaultConstructV2<re::MeshPassFilters>(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 140) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a1 + 156) = 0x7FFFFFFFLL;
  *(a1 + 168) = 0;
  *(a1 + 175) = 1;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::MeshPassFilters>(uint64_t a1)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 120));
  re::DynamicArray<unsigned long>::deinit(a1 + 80);
  re::DynamicArray<unsigned long>::deinit(a1 + 40);

  return re::DynamicArray<unsigned long>::deinit(a1);
}

void *re::allocInfo_TechniqueTagFilter(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1E58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E58))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C25B0, "TechniqueTagFilter");
    __cxa_guard_release(&qword_1EE1C1E58);
  }

  return &unk_1EE1C25B0;
}

void re::initInfo_TechniqueTagFilter(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x3F8C2D11870B6C4;
  v14[1] = "TechniqueTagFilter";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1C1E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E60))
  {
    v5 = re::introspectionAllocator();
    v7 = re::IntrospectionInfo<re::StringID>::get(1, v6);
    v8 = (*(*v5 + 32))(v5, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "name";
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1C1E98 = v8;
    v9 = re::introspectionAllocator();
    v11 = re::IntrospectionInfo<re::StringID>::get(1, v10);
    v12 = (*(*v9 + 32))(v9, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "value";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x1000000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C1EA0 = v12;
    __cxa_guard_release(&qword_1EE1C1E60);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C1E98;
  *(this + 9) = re::internal::defaultConstruct<re::TechniqueTagFilter>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TechniqueTagFilter>;
  *(this + 13) = re::internal::defaultConstructV2<re::TechniqueTagFilter>;
  *(this + 14) = re::internal::defaultDestructV2<re::TechniqueTagFilter>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::TechniqueTagFilter>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[2] = 0;
  a3[3] = &str_67;
}

void re::internal::defaultDestruct<re::TechniqueTagFilter>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::TechniqueTagFilter>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[2] = 0;
  result[3] = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::TechniqueTagFilter>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void re::RenderGraphMultiPassMeshNode::~RenderGraphMultiPassMeshNode(id *this)
{
  re::RenderGraphMultiPassMeshNode::~RenderGraphMultiPassMeshNode(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D15E58;
  re::AssetHandle::~AssetHandle((this + 56));
  re::DynamicArray<unsigned long>::deinit((this + 50));
  re::DynamicArray<unsigned long>::deinit((this + 45));
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((this + 40));
  re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 34);

  re::RenderGraphNode::~RenderGraphNode(this);
}

void re::RenderGraphMultiViewMeshNode::~RenderGraphMultiViewMeshNode(id *this)
{
  re::RenderGraphMeshNode::~RenderGraphMeshNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphTextNode::~RenderGraphTextNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphDebugNode::~RenderGraphDebugNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphMaterialReplaceNode::~RenderGraphMaterialReplaceNode(id *this)
{
  re::RenderGraphMaterialReplaceNode::~RenderGraphMaterialReplaceNode(this);

  JUMPOUT(0x1E6906520);
}

{
  re::DynamicString::deinit((this + 42));
  re::DynamicString::deinit((this + 38));
  re::AssetHandle::~AssetHandle((this + 35));

  re::RenderGraphNode::~RenderGraphNode(this);
}

void *re::internal::Callable<re::RenderGraphMaterialReplaceNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D161B8;
  return result;
}

void *re::internal::Callable<re::RenderGraphMaterialReplaceNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D161B8;
  return result;
}

double re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 224;
      }

      while (v4 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t *re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(uint64_t *result)
{
  if ((*result & 0x80000000) != 0)
  {
    v2 = result;
    *result &= ~0x80000000;
    v3 = result + 10;
    re::DynamicString::deinit((result + 1));
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v2 + 20);
    re::DynamicArray<unsigned long>::deinit((v2 + 15));
    re::DynamicArray<unsigned long>::deinit(v3);

    return re::DynamicArray<unsigned long>::deinit((v2 + 5));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::MeshNodeFilterData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re18MeshNodeFilterDataE";
  if (("N2re18MeshNodeFilterDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re18MeshNodeFilterDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

void *re::DynamicArray<re::FilteredMeshPass>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::FilteredMeshPass>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 24 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v12 = *(v8 + 8);
          *(v11 + 8) = v12;
          if (v12 == 1)
          {
            v13 = *(v8 + 9);
            *(v11 + 13) = *(v8 + 13);
            *(v11 + 9) = v13;
          }

          v14 = *(v8 + 14);
          *(v11 + 18) = *(v8 + 18);
          *(v11 + 14) = v14;
          v8 += 24;
          v11 += 3;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::TechniqueTagFilter>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::TechniqueTagFilter>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::TechniqueTagFilter>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::TechniqueTagFilter>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::TechniqueTagFilter>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::VideoMaterialAttachment>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::TechniqueTagFilter>::addElement(re::Allocator **a1, re *this, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 32 * v9);
  *v15 = 0;
  v15[1] = &str_67;
  v15[2] = 0;
  v15[3] = &str_67;
  v16 = *(a4 + 16) + 1;
  *(a4 + 16) = v16;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 32 * v16 - 32);
  re::introspectionInitElement(this, a3, a1[6], v17);
  return v17;
}

unint64_t re::IntrospectionDynamicArray<re::TechniqueTagFilter>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 32 * v8;
      do
      {
        re::StringID::destroyString((v9 + 16));
        re::StringID::destroyString(v9);
        v9 += 32;
        v10 -= 32;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::ecs2::VideoMaterialAttachment>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 32 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 32;
        v14 -= 32;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 32 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

re::RenderGraphMeshNode *re::RenderGraphMeshNode::RenderGraphMeshNode(re::RenderGraphMeshNode *this)
{
  v2 = re::RenderGraphNode::RenderGraphNode(this);
  *(v2 + 66) = 1;
  *(v2 + 268) = 0;
  *v2 = &unk_1F5D15DC8;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  re::DynamicString::setCapacity(this + 34, 0);
  *(this + 42) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 38) = 0;
  *(this + 82) = 0;
  *(this + 86) = 2;
  return this;
}

void *re::IntrospectionHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v18 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  HIDWORD(v18) = 0x7FFFFFFF;
  HIBYTE(v19) = 1;
  v8 = re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, v11);
  v9.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v17 + 1);
  if (v15)
  {
    if (*&v17[0])
    {
      (*(*v15 + 40))(v9.n128_f64[0]);
    }

    *&v17[0] = 0;
    *&v16 = 0;
    v15 = 0uLL;
    ++DWORD2(v16);
  }

  if (*(&v12 + 1))
  {
    if (*(&v14 + 1))
    {
      (*(**(&v12 + 1) + 40))(v9);
    }

    *(&v14 + 1) = 0;
    v13 = 0uLL;
    *(&v12 + 1) = 0;
    LODWORD(v14) = v14 + 1;
  }

  if (*&v11[0] && v12)
  {
    (*(**&v11[0] + 40))(v9);
  }

  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 56;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 224 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 40);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 224 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v17, 0, 36);
      *&v17[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v17, v4, a2);
      v5 = *v17;
      *v17 = *a1;
      *a1 = v5;
      v6 = *&v17[16];
      v7 = *(a1 + 16);
      *&v17[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v17[24];
      *&v17[24] = *(a1 + 24);
      v8 = *&v17[32];
      *(a1 + 24) = v9;
      ++*&v17[40];
      v10 = v8;
      if (v8)
      {
        do
        {
          if ((*v7 & 0x80000000) != 0)
          {
            v11 = re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v7 + 216) % *(a1 + 24), *(v7 + 216));
            *(v11 + 24) = 0u;
            *(v11 + 8) = 0u;
            *(v11 + 32) = *(v7 + 32);
            v12 = *(v7 + 16);
            *(v11 + 8) = *(v7 + 8);
            *(v7 + 8) = 0;
            v13 = *(v7 + 24);
            *(v7 + 32) = 0;
            v15 = *(v11 + 16);
            v14 = *(v11 + 24);
            *(v11 + 16) = v12;
            *(v11 + 24) = v13;
            *(v7 + 16) = v15;
            *(v7 + 24) = v14;
            re::MeshPassFilters::MeshPassFilters(v11 + 40, v7 + 40);
          }

          v7 += 224;
          --v10;
        }

        while (v10);
      }

      re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v17);
    }
  }

  else
  {
    if (a2)
    {
      v16 = a2;
    }

    else
    {
      v16 = 3;
    }
  }
}