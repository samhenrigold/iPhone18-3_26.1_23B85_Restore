@interface AGXG18PFamilyCommandQueue_mtlnext
- (AGXG18PFamilyCommandQueue_mtlnext)initWithDevice:(id)device descriptor:(id)descriptor isDriverInternal:(BOOL)internal;
- (BOOL)noMergeCommit:(const void *)commit count:(unint64_t)count options:(id)options commitFeedback:(id)feedback error:(id *)error;
- (id).cxx_construct;
- (void)commit:(const void *)commit count:(unint64_t)count;
- (void)commit:(const void *)commit count:(unint64_t)count options:(id)options;
- (void)copyTextureMappingsFromTexture:(id)texture toTexture:(id)toTexture operations:(id *)operations count:(unint64_t)count;
- (void)updateTextureMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count;
@end

@implementation AGXG18PFamilyCommandQueue_mtlnext

- (id).cxx_construct
{
  *(self + 25) = 0;
  *(self + 26) = 0;
  *(self + 24) = 0;
  *(self + 28) = 0;
  *(self + 29) = 0;
  *(self + 27) = 0;
  return self;
}

- (void)commit:(const void *)commit count:(unint64_t)count options:(id)options
{
  if (self)
  {
    v9 = [IOGPUMetal4CommandQueue preCommit:"preCommit:count:options:" count:? options:?];
    v10 = v9;
    if (count < 2)
    {
      [(AGXG18PFamilyCommandQueue_mtlnext *)self noMergeCommit:commit count:count options:options commitFeedback:v9 error:0];
    }

    else
    {
      [AGXG18PFamilyRenderContext_mtlnext mergeRenderEncoders:commit count:count options:options commitFeedback:v9 queue:self error:0];
    }
  }
}

- (void)commit:(const void *)commit count:(unint64_t)count
{
  if (self)
  {
    v7 = [(IOGPUMetal4CommandQueue *)self preCommit:commit count:count options:0];
    v8 = v7;
    if (count < 2)
    {
      [(AGXG18PFamilyCommandQueue_mtlnext *)self noMergeCommit:commit count:count options:0 commitFeedback:v7 error:0];
    }

    else
    {
      [AGXG18PFamilyRenderContext_mtlnext mergeRenderEncoders:commit count:count options:0 commitFeedback:v7 queue:self error:0];
    }
  }
}

- (BOOL)noMergeCommit:(const void *)commit count:(unint64_t)count options:(id)options commitFeedback:(id)feedback error:(id *)error
{
  feedbackCopy2 = feedback;
  if (!self->_isDriverInternal && *(self->_device_objc->_impl + 903))
  {
    selfCopy = self;
    countCopy = count;
    commitCopy = commit;
    AGX::InternalSparseQueue::flushAndSubmitAllMappings(*(self->_device_objc->_impl + 903));
    self = selfCopy;
    commit = commitCopy;
    count = countCopy;
    feedbackCopy2 = feedback;
  }

  [(IOGPUMetal4CommandQueue *)self _commit:commit count:count commitFeedback:feedbackCopy2];
  return 1;
}

- (void)copyTextureMappingsFromTexture:(id)texture toTexture:(id)toTexture operations:(id *)operations count:(unint64_t)count
{
  sparseTextureTier = [texture sparseTextureTier];
  if (sparseTextureTier != [toTexture sparseTextureTier])
  {
    return;
  }

  *(&self->super.super.super.super.isa + *MEMORY[0x29EDBB750]) = 0;
  *(&self->super.super.super.super.isa + *MEMORY[0x29EDBB758]) = 0;
  v163 = *MEMORY[0x29EDC55E8];
  os_unfair_lock_lock((self + v163));
  v11 = *MEMORY[0x29EDC55E0];
  v12 = *(&self->super.super.super.super.isa + v11);
  selfCopy = self;
  if (!v12)
  {
    [(IOGPUMetal4CommandQueue *)self allocateMappingCommandBuffer];
    v12 = *(&self->super.super.super.super.isa + v11);
  }

  sparseTextureTier2 = [texture sparseTextureTier];
  if (sparseTextureTier2 != 1)
  {
    if (sparseTextureTier2 == 2)
    {
      [(IOGPUMetal4CommandQueue *)self endTier1MappingCommands];
      v14 = v12[15];
      if (!v14)
      {
        [v12 allocateInternalSparseMappingEncoder];
        v14 = v12[15];
      }

      [v14 copyTextureMappingsFromTexture:texture toTexture:toTexture operations:operations count:count];
    }

    goto LABEL_222;
  }

  v160 = v12;
  v15 = *(texture + 74);
  v190 = *(toTexture + 74);
  textureCopy = texture;
  placementSparsePageSize = [texture placementSparsePageSize];
  if (placementSparsePageSize == [toTexture placementSparsePageSize])
  {
    [v160 commitEncoder];
    if (count)
    {
      v17 = 0;
      v18 = 0;
      v19 = v15[56];
      v152 = toTexture + 48;
      v185 = v15 + 99;
      v184 = (v190 + 396);
      v151 = v19 - 1;
      v153 = v15[57];
      v154 = v19;
      v150 = -v19;
      v148 = -v153;
      v149 = v153 - 1;
      operationsCopy = operations;
      v192 = v15;
      while (1)
      {
        v20 = &operations[v17];
        var1 = v20->var1;
        var0 = v20->var0.var0.var0;
        var2 = v20->var0.var0.var2;
        v177 = v20->var0.var1.var0;
        v24 = v20->var0.var1.var2;
        v175 = v20->var0.var1.var1;
        var5 = v20->var5;
        v189 = v20->var2;
        var4 = v20->var4;
        v169 = v20->var3.var0;
        v180 = v20->var3.var1;
        v182 = v20->var0.var0.var1;
        v26 = v20->var3.var2;
        v27 = v15[59];
        v193 = v18;
        if ((*v185 & 0xFF00) == 0x400)
        {
          v28 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v15, 0);
          v29 = (v28 + v27 - 1) & -v27;
          if (!v27)
          {
            v29 = v28;
          }

          v167 = v29;
          v30 = v190;
        }

        else if ((*v185 & 0x10000) != 0)
        {
          v30 = v190;
          if (*v185)
          {
            v31 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v15, 0);
            v32 = (v31 + v27 - 1) & -v27;
            if (!v27)
            {
              v32 = v31;
            }
          }

          else
          {
            v32 = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v15, 0) * v15[33] + 127) & 0xFFFFFFFFFFFFFF80;
          }

          v167 = v32;
        }

        else
        {
          v30 = v190;
          if ((*v185 & 0xFF00) == 0x300)
          {
            v167 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v15, 0);
          }

          else
          {
            v167 = 0;
          }
        }

        v33 = *(v30 + 236);
        v172 = var0;
        if ((*v184 & 0xFF00) == 0x400)
        {
          goto LABEL_34;
        }

        if ((*v184 & 0x10000) != 0)
        {
          break;
        }

        if ((*v184 & 0xFF00) == 0x300)
        {
          v165 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v30, 0);
        }

        else
        {
          v165 = 0;
        }

LABEL_37:
        MipInTail = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v15, 1);
        v37 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v30, 1);
        if (MipInTail < var1)
        {
          goto LABEL_14;
        }

        if (v192[16] <= var1)
        {
          goto LABEL_14;
        }

        v40 = v37;
        if (v37 < var4)
        {
          goto LABEL_14;
        }

        if (*(v190 + 64) <= var4)
        {
          goto LABEL_14;
        }

        v41 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::tailSize(v192, 1, 0, v38, v39);
        v44 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::tailSize(v190, 1, 0, v42, v43);
        if ((MipInTail == var1) != (v40 == var4))
        {
          goto LABEL_14;
        }

        v45 = *v185 & 0xFF00;
        v161 = v44;
        v156 = v41;
        if (v45 == 768)
        {
          if (MipInTail == var1)
          {
            v46 = 0;
          }

          else
          {
            v46 = var2;
          }

          v47 = v192;
          if (MipInTail == var1)
          {
            v49 = v192[34];
            v50 = v49 >> (v192[36] + var1);
            if (v50 <= 1)
            {
              v50 = 1;
            }
          }

          else
          {
            v49 = v192[34];
            v50 = v24;
          }

          if (v46 >= v49)
          {
            v51 = v49;
          }

          else
          {
            v51 = v46;
          }

          v189 = v51;
          v52 = v50 + v46;
          if (v52 >= v49)
          {
            v52 = v49;
          }

          v158 = v52;
        }

        else
        {
          if ((*v185 & 0x10000) != 0 || v45 == 1024)
          {
            if (v45 == 1024)
            {
              v48 = 6 * v192[98];
            }

            else
            {
              v48 = v192[98];
            }
          }

          else
          {
            v48 = 1;
          }

          if (v48 <= v189)
          {
            goto LABEL_14;
          }

          v158 = v189 + 1;
          v47 = v192;
        }

        v53 = *v184 & 0xFF00;
        if (v53 == 768)
        {
          if (v40 == var4)
          {
            v54 = 0;
          }

          else
          {
            v54 = v26;
          }

          if (v40 == var4)
          {
            v57 = *(v190 + 136);
            v58 = v57 >> (*(v190 + 144) + var4);
            if (v58 <= 1)
            {
              v58 = 1;
            }
          }

          else
          {
            v57 = *(v190 + 136);
            v58 = v24;
          }

          if (v54 >= v57)
          {
            v56 = v57;
          }

          else
          {
            v56 = v54;
          }

          v59 = v58 + v54;
          if (v59 >= v57)
          {
            v59 = v57;
          }

          v155 = v59;
        }

        else
        {
          if ((*v184 & 0x10000) != 0 || v53 == 1024)
          {
            if (v53 == 1024)
            {
              v55 = 6 * *(v190 + 392);
            }

            else
            {
              v55 = *(v190 + 392);
            }
          }

          else
          {
            v55 = 1;
          }

          if (v55 <= var5)
          {
            goto LABEL_14;
          }

          v56 = var5;
          v155 = var5 + 1;
          v47 = v192;
        }

        placementSparsePageSize2 = [textureCopy placementSparsePageSize];
        v187 = v56;
        switch(placementSparsePageSize2)
        {
          case 'e':
            v62 = 1;
            v64 = 0x4000;
            v63 = 1;
            break;
          case 'f':
            v65 = MipInTail == var1 || *(v185 + 1) << 8 == 256;
            if (v65)
            {
              v62 = 1;
            }

            else
            {
              v62 = 2;
            }

            if (v65)
            {
              v63 = 4;
            }

            else
            {
              v63 = 2;
            }

            v64 = 0x10000;
            break;
          case 'g':
            v61 = MipInTail == var1 || *(v185 + 1) << 8 == 256;
            if (v61)
            {
              v62 = 1;
            }

            else
            {
              v62 = 4;
            }

            if (v61)
            {
              v63 = 16;
            }

            else
            {
              v63 = 4;
            }

            v64 = 0x40000;
            v47 = v192;
            break;
          default:
            goto LABEL_14;
        }

        v66 = v47[32];
        if (*(v47 + 3) == 9)
        {
          if (v66 >= 0x8000)
          {
            v67 = 0x8000;
          }

          else
          {
            v67 = v47[32];
          }

          v68 = (v66 + 0x7FFF) >> 15;
        }

        else
        {
          v67 = v66 >> (*(v47 + 144) + var1);
          if (v67 <= 1)
          {
            v67 = 1;
          }

          v68 = v47[33] >> (*(v47 + 144) + var1);
          if (v68 <= 1)
          {
            v68 = 1;
          }
        }

        v69 = v68;
        v70 = v67;
        v71 = (v63 * v154);
        v72 = v71 - 1;
        v73 = -v71;
        v74 = (v62 * v153);
        v75 = v74 - 1;
        v76 = -v74;
        if (MipInTail == var1)
        {
          LODWORD(v77) = 1;
          v78 = ((v64 + v156 - 1) & -v64) / v64;
        }

        else
        {
          v78 = ((v72 + v70) & v73) / v71;
          v77 = ((v75 + v69) & v76) / v74;
        }

        if (v182 >= v77)
        {
          v79 = v77;
        }

        else
        {
          v79 = v182;
        }

        v157 = v79;
        if (v175 + v182 >= v77)
        {
          v80 = v77;
        }

        else
        {
          v80 = v175 + v182;
        }

        if (v172 >= v78)
        {
          v81 = v78;
        }

        else
        {
          v81 = v172;
        }

        if (v177 + v172 >= v78)
        {
          v82 = v78;
        }

        else
        {
          v82 = v177 + v172;
        }

        v83 = *(v190 + 128);
        if (*(v190 + 24) == 9)
        {
          if (v83 >= 0x8000)
          {
            v84 = 0x8000;
          }

          else
          {
            v84 = *(v190 + 128);
          }

          v85 = (v83 + 0x7FFF) >> 15;
        }

        else
        {
          v84 = v83 >> (*(v190 + 144) + var4);
          if (v84 <= 1)
          {
            v84 = 1;
          }

          v85 = *(v190 + 132) >> (*(v190 + 144) + var4);
          if (v85 <= 1)
          {
            v85 = 1;
          }
        }

        if (v40 == var4)
        {
          LODWORD(v86) = 1;
          v87 = ((v64 + v161 - 1) & -v64) / v64;
        }

        else
        {
          v87 = ((v72 + v84) & v73) / v71;
          v86 = ((v75 + v85) & v76) / v74;
        }

        if (v180 >= v86)
        {
          v88 = v86;
        }

        else
        {
          v88 = v180;
        }

        if (v180 + v175 >= v86)
        {
          v89 = v86;
        }

        else
        {
          v89 = v180 + v175;
        }

        if (v169 >= v87)
        {
          v90 = v87;
        }

        else
        {
          v90 = v169;
        }

        if (v169 + v177 >= v87)
        {
          v91 = v87;
        }

        else
        {
          v91 = v169 + v177;
        }

        if (v172 < v82 && v62 * (v158 - v189) * (v80 - v79))
        {
          v143 = v91;
          v144 = v90;
          v145 = v84;
          v170 = v81;
          v142 = v85;
          v173 = v70;
          v92 = v63;
          v93 = v69;
          v178 = v89;
          v94 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v192, var1, 0);
          v141 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v190, var4, 0);
          0xFFFFFFFFFFFFFFFCLL = [v160 reserveKernelCommandBufferSpace:(16 * v62 * (v158 - v189) * (v80 - v157) + 23) & 0xFFFFFFFFFFFFFFFCLL];
          v96 = 0;
          *0xFFFFFFFFFFFFFFFCLL = 17;
          v97 = *MEMORY[0x29EDC5638];
          v98 = *&textureCopy[v97 + 48];
          v146 = (16 * v62 * (v158 - v189) * (v80 - v157) + 23) & 0xFFFFFFFFFFFFFFFCLL;
          v147 = 0xFFFFFFFFFFFFFFFCLL;
          0xFFFFFFFFFFFFFFFCLL[1] = v146;
          LODWORD(v97) = *&v152[v97];
          0xFFFFFFFFFFFFFFFCLL[2] = v98;
          0xFFFFFFFFFFFFFFFCLL[3] = v97;
          if (v158 > v189 && v187 < v155)
          {
            v96 = 0;
            v99 = ((v151 + v173) & v150) / v154;
            v100 = (v151 + v145) & v150;
            if (v92 * v170 >= v99)
            {
              v101 = ((v151 + v173) & v150) / v154;
            }

            else
            {
              v101 = v92 * v170;
            }

            if (v92 * v82 >= v99)
            {
              v102 = ((v151 + v173) & v150) / v154;
            }

            else
            {
              v102 = v92 * v82;
            }

            v103 = v100 / v154;
            if (v92 * v144 >= (v100 / v154))
            {
              v104 = v100 / v154;
            }

            else
            {
              v104 = v92 * v144;
            }

            if (v92 * v143 >= v103)
            {
              v105 = v100 / v154;
            }

            else
            {
              v105 = v92 * v143;
            }

            v106 = v102 - v101;
            v107 = v105 - v104;
            if (v106 < v107)
            {
              v107 = v106;
            }

            if (v182 < v80)
            {
              v108 = v187;
              if (v180 < v178)
              {
                v96 = 0;
                v174 = (v27 - 1 + ((v167 + v27 - 1) & -v27)) / v27;
                v171 = (v33 - 1 + (-v33 & (v165 + v33 - 1))) / v33;
                v109 = ((v149 + v93) & v148) / v153;
                v110 = v178;
                v168 = v101 + ((v94 + v27 - 1) & -v27) / v27;
                v166 = v104 + ((v141 + v33 - 1) & -v33) / v33;
                v111 = v147 + 5;
                v183 = v88 + 1;
                v112 = ((v149 + v142) & v148) / v153;
                v176 = v80;
                v162 = v88;
                while (1)
                {
                  v113 = 0;
                  v114 = v168 + v189 * v174;
                  v188 = v108;
                  v115 = v166 + v108 * v171;
                  v116 = v88;
                  v117 = v157;
                  do
                  {
                    v118 = v117 * v62;
                    if (++v117 * v62 >= v109)
                    {
                      v119 = v109;
                    }

                    else
                    {
                      v119 = v117 * v62;
                    }

                    v120 = v116 * v62;
                    if (++v116 * v62 >= v112)
                    {
                      v121 = ((v149 + v142) & v148) / v153;
                    }

                    else
                    {
                      v121 = v116 * v62;
                    }

                    v122 = v118 >= v119 || v120 >= v121;
                    if (!v122)
                    {
                      v123 = v62 * (v113 + v88);
                      if (v120 >= v112)
                      {
                        v124 = ((v149 + v142) & v148) / v153;
                      }

                      else
                      {
                        v124 = v120;
                      }

                      if (v62 * (v183 + v113) >= v112)
                      {
                        v125 = ((v149 + v142) & v148) / v153;
                      }

                      else
                      {
                        v125 = v62 * (v183 + v113);
                      }

                      if (v123 >= v112)
                      {
                        v123 = ((v149 + v142) & v148) / v153;
                      }

                      v126 = v125 + ~v123;
                      v181 = ~(v62 * v157);
                      if (v126 >= v119 + v181 - v62 * v113)
                      {
                        v126 = v119 + v181 - v62 * v113;
                      }

                      v127 = v126 + 1;
                      v128 = __CFADD__(v96, v126);
                      if (v127 < 2 || v128)
                      {
                        v131 = v118;
                      }

                      else
                      {
                        v129 = 0;
                        v130 = v127 & 0xFFFFFFFE;
                        v131 = v118 + (v127 & 0xFFFFFFFE);
                        v132 = v127 & 0xFFFFFFFE;
                        v133 = v96;
                        do
                        {
                          v134 = (v118 + v129) * v99;
                          v135 = (v124 + v129) * v103;
                          v136 = &v111[4 * v133];
                          v136[1] = v114 + v134;
                          v136[2] = v107;
                          v137 = &v111[4 * (v133 + 1)];
                          v137[1] = v114 + v99 + v134;
                          v137[2] = v107;
                          v136[3] = v115 + v135;
                          v137[3] = v115 + v103 + v135;
                          v129 += 2;
                          v133 += 2;
                          v132 -= 2;
                        }

                        while (v132);
                        v96 += v130;
                        if (v127 == v130)
                        {
                          LODWORD(v80) = v176;
                          v110 = v178;
                          v88 = v162;
                          goto LABEL_217;
                        }

                        v124 += v130;
                        LODWORD(v80) = v176;
                        v110 = v178;
                        v88 = v162;
                      }

                      v138 = v124 + 1;
                      v139 = v131 + 1;
                      do
                      {
                        v140 = &v111[4 * v96];
                        v140[1] = v114 + v131 * v99;
                        v140[2] = v107;
                        v140[3] = v115 + v124 * v103;
                        ++v96;
                        if (v139 >= v119)
                        {
                          break;
                        }

                        ++v131;
                        ++v124;
                        ++v139;
                        v122 = v138++ >= v121;
                      }

                      while (!v122);
                    }

LABEL_217:
                    if (v117 >= v80)
                    {
                      break;
                    }

                    ++v113;
                  }

                  while (v116 < v110);
                  if (++v189 < v158)
                  {
                    v108 = v188 + 1;
                    if (v188 + 1 < v155)
                    {
                      continue;
                    }
                  }

                  break;
                }
              }
            }
          }

          v147[4] = v96;
          [v160 closeKernelCommands:v146 kernelCommand:?];
          *(&selfCopy->super.super.super.super.isa + *MEMORY[0x29EDC55F0]) = 1;
        }

LABEL_14:
        v17 = (v193 + 1);
        v18 = v193 + 1;
        v15 = v192;
        operations = operationsCopy;
        if (v17 >= count)
        {
          goto LABEL_222;
        }
      }

      if (*v184)
      {
LABEL_34:
        v34 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v30, 0);
        v35 = (v34 + v33 - 1) & -v33;
        if (!v33)
        {
          LODWORD(v35) = v34;
        }
      }

      else
      {
        v35 = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v30, 0) * *(v30 + 132) + 127) & 0xFFFFFFFFFFFFFF80;
      }

      v165 = v35;
      goto LABEL_37;
    }
  }

LABEL_222:

  os_unfair_lock_unlock((selfCopy + v163));
}

- (void)updateTextureMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count
{
  selfCopy = self;
  *(&self->super.super.super.super.isa + *MEMORY[0x29EDBB750]) = 0;
  *(&self->super.super.super.super.isa + *MEMORY[0x29EDBB758]) = 0;
  v8 = *MEMORY[0x29EDC55E8];
  os_unfair_lock_lock((self + v8));
  v9 = *MEMORY[0x29EDC55E0];
  v10 = *(&selfCopy->super.super.super.super.isa + v9);
  v138 = v8;
  if (!v10)
  {
    [(IOGPUMetal4CommandQueue *)selfCopy allocateMappingCommandBuffer];
    v10 = *(&selfCopy->super.super.super.super.isa + v9);
  }

  v133 = v10;
  mappingsCopy = mappings;
  if (![mappings buffer])
  {
    sparseTextureTier = [mappings sparseTextureTier];
    if (sparseTextureTier == 2)
    {
      [(IOGPUMetal4CommandQueue *)selfCopy endTier1MappingCommands];
      v114 = v10[15];
      if (!v114)
      {
        [v10 allocateInternalSparseMappingEncoder];
        v114 = v10[15];
      }

      [v114 updateTextureMappings:mappings heap:heap operations:operations count:count];
      goto LABEL_4;
    }

    if (sparseTextureTier != 1)
    {
      goto LABEL_4;
    }

    v145 = *(mappings + 74);
    [v10 commitEncoder];
    if (!count)
    {
      goto LABEL_4;
    }

    v12 = 0;
    v13 = 0;
    v14 = *(v145 + 224);
    v15 = *(v145 + 228);
    v134 = (v145 + 396);
    v127 = v14 - 1;
    v128 = v14;
    v126 = -v14;
    v123 = v15;
    v116 = -v15;
    v117 = v15 - 1;
    do
    {
      v152 = v13;
      v16 = &operations[v12];
      var0 = v16->var0;
      if (v16->var0 > 1)
      {
        goto LABEL_11;
      }

      v18 = v16->var1.var0.var0;
      var2 = v16->var1.var0.var2;
      v20 = v16->var1.var1.var2;
      var1 = v16->var1.var0.var1;
      v141 = v16->var1.var1.var1;
      v21 = v16->var2;
      var3 = v16->var3;
      var4 = v16->var4;
      v22 = *(v145 + 236);
      v23 = *v134 & 0xFF00;
      v143 = v16->var1.var1.var0;
      if (v23 == 1024)
      {
        goto LABEL_18;
      }

      if ((*v134 & 0x10000) == 0)
      {
        if (v23 == 768)
        {
          v131 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v145, 0);
        }

        else
        {
          v131 = 0;
        }

        goto LABEL_21;
      }

      if (*v134)
      {
LABEL_18:
        v24 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v145, 0);
        v25 = (v24 + v22 - 1) & -v22;
        if (!v22)
        {
          v25 = v24;
        }
      }

      else
      {
        v25 = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v145, 0) * *(v145 + 132) + 127) & 0xFFFFFFFFFFFFFF80;
      }

      v131 = v25;
LABEL_21:
      MipInTail = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v145, 1);
      if (MipInTail < v21 || *(v145 + 64) <= v21)
      {
        goto LABEL_11;
      }

      v27 = MipInTail;
      v28 = *v134 & 0xFF00;
      if (v28 == 768)
      {
        if (MipInTail == v21)
        {
          v29 = 0;
        }

        else
        {
          v29 = var2;
        }

        v30 = v145;
        if (MipInTail == v21)
        {
          v32 = *(v145 + 136);
          if (v32 >> (*(v145 + 144) + v21) <= 1)
          {
            LODWORD(v20) = 1;
          }

          else
          {
            LODWORD(v20) = v32 >> (*(v145 + 144) + v21);
          }
        }

        else
        {
          v32 = *(v145 + 136);
        }

        if (v29 >= v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = v29;
        }

        var3 = v33;
        v34 = v20 + v29;
        if (v34 >= v32)
        {
          v34 = v32;
        }

        v129 = v34;
      }

      else
      {
        if ((*v134 & 0x10000) != 0 || v28 == 1024)
        {
          if (v28 == 1024)
          {
            v31 = 6 * *(v145 + 392);
          }

          else
          {
            v31 = *(v145 + 392);
          }
        }

        else
        {
          v31 = 1;
        }

        if (v31 <= var3)
        {
          goto LABEL_11;
        }

        v129 = var3 + 1;
        v30 = v145;
      }

      placementSparsePageSize = [mappingsCopy placementSparsePageSize];
      switch(placementSparsePageSize)
      {
        case 'e':
          v146 = 1;
          v41 = 0x4000;
          v40 = 1;
          goto LABEL_72;
        case 'f':
          v42 = *(v145 + 397) << 8 == 256 || v27 == v21;
          if (v42)
          {
            v43 = 1;
          }

          else
          {
            v43 = 2;
          }

          v146 = v43;
          if (v42)
          {
            v40 = 4;
          }

          else
          {
            v40 = 2;
          }

          v41 = 0x10000;
LABEL_72:
          v44 = *(v30 + 128);
          if (*(v30 + 24) == 9)
          {
            if (v44 >= 0x8000)
            {
              v45 = 0x8000;
            }

            else
            {
              v45 = *(v30 + 128);
            }

            v46 = (v44 + 0x7FFF) >> 15;
          }

          else
          {
            v45 = v44 >> (*(v30 + 144) + v21);
            if (v45 <= 1)
            {
              v45 = 1;
            }

            v46 = *(v30 + 132) >> (*(v30 + 144) + v21);
            if (v46 <= 1)
            {
              v46 = 1;
            }
          }

          v47 = ((v127 + v45) & v126) / v128;
          v124 = v46;
          if (v27 == v21)
          {
            v136 = v18;
            v48 = v40;
            v49 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::tailSize(v30, 1, 0, v36, v37);
            v52 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::tailSize(v30, 1, 1, v50, v51);
            v40 = v48;
            v18 = v136;
            v53 = v52 / v22;
            LODWORD(v54) = 1;
            v55 = ((v41 + v49 - 1) & -v41) / v41;
          }

          else
          {
            v55 = (((v40 * v128) + v45 - 1) & -(v40 * v128)) / (v40 * v128);
            v53 = v47;
            v54 = (((v146 * v123) + v46 - 1) & -(v146 * v123)) / (v146 * v123);
          }

          if (var1 >= v54)
          {
            v56 = v54;
          }

          else
          {
            v56 = var1;
          }

          v57 = v141 + var1;
          if (v141 + var1 >= v54)
          {
            v57 = v54;
          }

          if (v18 >= v55)
          {
            v58 = v55;
          }

          else
          {
            v58 = v18;
          }

          if (v143 + v18 >= v55)
          {
            v59 = v55;
          }

          else
          {
            v59 = v143 + v18;
          }

          if (v18 >= v59)
          {
            break;
          }

          v137 = v40 * v146;
          v144 = v59 - v58;
          v60 = v40 * v146 * (v129 - var3) * (v57 - v56) * (v59 - v58);
          if (!v60)
          {
            break;
          }

          v118 = v53;
          v61 = v40;
          v142 = v57;
          v122 = v56;
          v62 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v145, v21, 0);
          v63 = (16 * v60 + 23) & 0xFFFFFFFFFFFFFFFCLL;
          v64 = [v133 reserveKernelCommandBufferSpace:v63];
          *v64 = 16;
          v64[1] = v63;
          v65 = *MEMORY[0x29EDC5638];
          v121 = v63;
          if (heap)
          {
            v66 = *(*(heap + *MEMORY[0x29EDC5618]) + v65 + 48);
          }

          else
          {
            v66 = 0;
          }

          v67 = v122;
          v68 = *&mappingsCopy[v65 + 48];
          v64[2] = v66;
          v64[3] = v68;
          v120 = v64;
          if (v129 > var3)
          {
            v69 = v61 * v58 >= v118 ? v118 : v61 * v58;
            v70 = v61 * v59 >= v118 ? v118 : v61 * v59;
            v71 = v146 - 1;
            if (var1 < v142)
            {
              v119 = (v22 - 1 + ((v131 + v22 - 1) & -v22)) / v22;
              v140 = ((v117 + v124) & v116) / v123;
              v72 = v64 + 5;
              v73 = ((v62 + v22 - 1) & -v22) / v22;
              if (v146 == 1)
              {
                v74 = 0;
                v75 = 0;
                v76 = v70 - v69;
                v77 = var3;
                do
                {
                  v78 = v61 * (var4 + v75);
                  v79 = v122;
                  do
                  {
                    if (v79 < v140)
                    {
                      v80 = &v72[4 * v74];
                      *v80 = (*v80 & 0xFE | var0) ^ 1;
                      v80[1] = v78;
                      v80[2] = v76;
                      v80[3] = v79 * v47 + v73 + v119 * v77 + v69;
                      ++v74;
                    }

                    ++v79;
                    v75 += v144;
                    v78 += v61 * v144;
                  }

                  while (v142 != v79);
                  ++v77;
                }

                while (v77 != v129);
                goto LABEL_143;
              }

              if (v61 * v58 < v70)
              {
                v81 = 32 - __clz(v71);
                v82 = 32 - __clz(v144 * v61 - 1);
                v83 = var3;
                v74 = 0;
                if (v82 | v81)
                {
                  v84 = 0;
                  v85 = v119;
                  v86 = ((v117 + v124) & v116) / v123;
                  v115 = selfCopy;
                  v125 = v73;
                  do
                  {
                    v132 = v83;
                    v87 = v73 + v85 * v83;
                    v88 = v67;
                    do
                    {
                      v89 = v88 * v146;
                      v151 = v88 + 1;
                      if ((v88 + 1) * v146 >= v86)
                      {
                        v90 = v86;
                      }

                      else
                      {
                        v90 = (v88 + 1) * v146;
                      }

                      for (; v89 < v90; ++v89)
                      {
                        v91 = v69;
                        do
                        {
                          v92 = 0;
                          v93 = 0;
                          v94 = 1;
                          v95 = v144 * v61 != 1;
                          v96 = v146 != 1;
                          v97 = v82;
                          v98 = v81;
                          do
                          {
                            --v97;
                            v99 = !v95;
                            if (v95)
                            {
                              v100 = ((v94 & (v91 - v69)) << v92) | v93;
                            }

                            else
                            {
                              v97 = 0;
                              v100 = v93;
                            }

                            if (v99)
                            {
                              v101 = v92;
                            }

                            else
                            {
                              v101 = v92 + 1;
                            }

                            v93 = ((v89 & v71 & v94) << v101) | v100;
                            --v98;
                            if (v96)
                            {
                              v102 = v101 + 1;
                            }

                            else
                            {
                              v98 = 0;
                              v93 = v100;
                              v102 = v101;
                            }

                            v94 *= 2;
                            v92 = v102 - 1;
                            v96 = v98 != 0;
                            v95 = v97 != 0;
                          }

                          while (v98 | v97);
                          v103 = v91 - v70;
                          if (v91 - v70 >= 2)
                          {
                            v103 = 2;
                          }

                          v104 = &v72[4 * v74];
                          *v104 = (*v104 & 0xFE | var0) ^ 1;
                          v104[1] = v93 + (v84 + var4) * v137;
                          v104[2] = v103;
                          v104[3] = v91 + v89 * v47 + v87;
                          ++v74;
                          v91 += 2;
                        }

                        while (v91 < v70);
                      }

                      v84 += v144;
                      v86 = v140;
                      v88 = v151;
                    }

                    while (v151 != v142);
                    v83 = v132 + 1;
                    selfCopy = v115;
                    v67 = v122;
                    v85 = v119;
                    LODWORD(v73) = v125;
                  }

                  while (v132 + 1 != v129);
                }

                else
                {
                  v105 = 0;
                  do
                  {
                    v106 = v83;
                    v107 = v73 + v119 * v83;
                    v108 = v122;
                    do
                    {
                      v109 = v108 * v146;
                      if (++v108 * v146 >= v140)
                      {
                        v110 = ((v117 + v124) & v116) / v123;
                      }

                      else
                      {
                        v110 = v108 * v146;
                      }

                      for (; v109 < v110; ++v109)
                      {
                        v111 = v69;
                        do
                        {
                          v112 = v111 - v70;
                          if (v111 - v70 >= 2)
                          {
                            v112 = 2;
                          }

                          v113 = &v72[4 * v74];
                          *v113 = (*v113 & 0xFE | var0) ^ 1;
                          v113[1] = (v105 + var4) * v137;
                          v113[2] = v112;
                          v113[3] = v111 + v109 * v47 + v107;
                          ++v74;
                          v111 += 2;
                        }

                        while (v111 < v70);
                      }

                      v105 += v144;
                    }

                    while (v108 != v142);
                    v83 = v106 + 1;
                  }

                  while (v106 + 1 != v129);
                }

                goto LABEL_143;
              }
            }
          }

          v74 = 0;
LABEL_143:
          v120[4] = v74;
          [v133 closeKernelCommands:v121 kernelCommand:v115];
          *(&selfCopy->super.super.super.super.isa + *MEMORY[0x29EDC55F0]) = 1;
          break;
        case 'g':
          v38 = *(v145 + 397) << 8 == 256 || v27 == v21;
          if (v38)
          {
            v39 = 1;
          }

          else
          {
            v39 = 4;
          }

          v146 = v39;
          if (v38)
          {
            v40 = 16;
          }

          else
          {
            v40 = 4;
          }

          v41 = 0x40000;
          v30 = v145;
          goto LABEL_72;
      }

LABEL_11:
      v12 = (v152 + 1);
      v13 = v152 + 1;
    }

    while (v12 < count);
  }

LABEL_4:

  os_unfair_lock_unlock((selfCopy + v138));
}

- (AGXG18PFamilyCommandQueue_mtlnext)initWithDevice:(id)device descriptor:(id)descriptor isDriverInternal:(BOOL)internal
{
  v15 = *MEMORY[0x29EDCA608];
  bzero(v13, 0x408uLL);
  lockParameterBufferSizeToMax = [descriptor lockParameterBufferSizeToMax];
  v10 = 0xEFFFFFFFFLL;
  if (lockParameterBufferSizeToMax)
  {
    v10 = 0x1EFFFFFFFFLL;
  }

  v14 = v10;
  v12.receiver = self;
  v12.super_class = AGXG18PFamilyCommandQueue_mtlnext;
  result = [(IOGPUMetal4CommandQueue *)&v12 initWithDevice:device descriptor:descriptor args:v13 argsSize:1040];
  if (result)
  {
    result->_device_objc = device;
    result->_isDriverInternal = internal;
  }

  return result;
}

@end