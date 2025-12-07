uint64_t *re::DynamicArray<re::GeomMesh>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = result[1];
      v9 = a2[1];
      *result = v5;
      result[1] = v9;
      *a2 = v4;
      a2[1] = v8;
      v10 = result[2];
      result[2] = a2[2];
      a2[2] = v10;
      v11 = result[4];
      result[4] = a2[4];
      a2[4] = v11;
      ++*(a2 + 6);
      ++*(result + 6);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

re::_anonymous_namespace_ *re::anonymous namespace::computeFrameSizeHelper(const char *a1, const char *a2, uint64_t a3, float a4, float a5)
{
  v5 = a3;
  v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = CTFontCreateWithName(v9, 1.0, 0);
  if (v11)
  {
    v12 = v11;
    v15 = AttributeString;
    if (AttributeString)
    {
      v16 = 12.0;
      if (a4 > 0.0)
      {
        v16 = a4;
      }

      v20 = v16;
      v18 = vmul_n_f32(v17, v20);
      CFRelease(v15);
      v15 = v18;
    }

    CFRelease(v12);
  }

  else
  {
    v15 = 0;
  }

  CFRelease(v10);
  return v15;
}

const __CTFont *re::GeomBuildExtrudedTextOptions::getFontMetrics(re::GeomBuildExtrudedTextOptions *this, const char *a2, float a3)
{
  v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], this, 0x8000100u);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CTFontCreateWithName(v4, 1.0, 0);
  v7 = v6;
  if (v6)
  {
    Ascent = CTFontGetAscent(v6);
    CapHeight = CTFontGetCapHeight(v7);
    XHeight = CTFontGetXHeight(v7);
    Descent = CTFontGetDescent(v7);
    v9.f64[0] = XHeight;
    v9.f64[1] = Descent;
    v10.f64[0] = Ascent;
    v10.f64[1] = CapHeight;
    v11 = vcvt_hight_f32_f64(vcvt_f32_f64(v10), v9);
    v12 = 12.0;
    if (a3 > 0.0)
    {
      v12 = a3;
    }

    v17 = vmulq_n_f32(v11, v12).u64[0];
    CFRelease(v7);
    v7 = v17;
  }

  CFRelease(v5);
  return v7;
}

uint64_t re::anonymous namespace::buildScene(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v198 = *MEMORY[0x1E69E9840];
  v5 = &v167;
  v6.i64[0] = 0x7F0000007FLL;
  v6.i64[1] = 0x7F0000007FLL;
  v176 = vnegq_f32(v6);
  v177 = v6;
  v175 = 0;
  v173 = 0;
  v171 = 0;
  v172 = 0;
  v174 = 0;
  v169 = 0;
  v167 = 0u;
  v168 = 0u;
  v170 = 0x7FFFFFFFLL;
  v7 = *(a2 + 88);
  v8 = *(a2 + 92);
  if (*(a2 + 40))
  {
    v9 = *(a2 + 48);
  }

  else
  {
    v9 = (a2 + 41);
  }

  v10 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v9, 0x8000100u);
  v11 = CTFontCreateWithName(v10, 1.0, 0);
  v13 = v11;
  v14.i32[0] = 12.0;
  if (*(a2 + 64) > 0.0)
  {
    v14.i32[0] = *(a2 + 64);
  }

  v15 = *(a2 + 72);
  v166[1] = 1065353216;
  v166[0] = v15;
  v12.i32[0] = *(a2 + 99);
  v16 = vmovl_u8(v12).u64[0];
  v17 = vext_s8(v16, v16, 4uLL);
  v166[2] = vuzp1_s8(v17, v17).u32[0];
  if (!v10 || !v11)
  {
LABEL_58:
    if (!v10)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v148 = v14;
  if (*(a2 + 8))
  {
    v18 = *(a2 + 16);
  }

  else
  {
    v18 = (a2 + 9);
  }

  if (AttributeString)
  {
    v21 = AttributeString;
    if ((v7 * v8) == 0.0)
    {
    }

    else
    {
      v22 = vdiv_f32(*(a2 + 88), vdup_lane_s32(v148, 0));
    }

    v204.size.width = v22.f32[0];
    v204.size.height = v22.f32[1];
    v204.origin.x = 0.0;
    v204.origin.y = 0.0;
    v23 = CGPathCreateWithRect(v204, 0);
    if (v23)
    {
      Length = CFAttributedStringGetLength(v21);
      v25 = v21;
      v26 = CTFramesetterCreateWithAttributedString(v21);
      if (v26)
      {
        v27 = v26;
        keys.i64[0] = *MEMORY[0x1E69659E8];
        values[0].i64[0] = *MEMORY[0x1E695E4C0];
        v28 = CFDictionaryCreate(0, &keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v199.location = 0;
        v199.length = Length;
        Frame = CTFramesetterCreateFrame(v27, v199, v23, v28);
        CFRelease(v28);
        CFRelease(v27);
      }

      else
      {
        Frame = 0;
      }

      CFRelease(v23);
      v21 = v25;
      v23 = Frame;
    }

    v30 = 0;
    v31.i64[0] = 0;
    LODWORD(v32) = 0;
    HIDWORD(v32) = v148.i32[0];
    v31.i64[1] = *(a2 + 68);
    v33 = *(a2 + 80);
    v33.i64[1] = 0x3F80000000000000;
    values[0] = v148.u32[0];
    values[1] = v32;
    values[2] = v31;
    v194 = xmmword_1E30474D0;
    do
    {
      *(&keys + v30 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(*&values[v30])), xmmword_1E3047680, *values[v30].f32, 1), xmmword_1E30476A0, values[v30], 2), v33, values[v30], 3);
      ++v30;
    }

    while (v30 != 4);
    if (!v23)
    {
      goto LABEL_57;
    }

    v132 = v10;
    v142 = v180;
    v143 = keys;
    v145 = v181;
    v144 = v182;
    theArray = CTFrameGetLines(v23);
    origins = 0;
    Count = CFArrayGetCount(theArray);
    v162[1] = 0;
    v163 = 0;
    v162[0] = 0;
    v164 = 0;
    v35 = Count == 0;
    v133 = v13;
    v140 = Count;
    cf = v23;
    v131 = v21;
    if (Count)
    {
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(v162, Count);
      v36 = origins;
      v37 = Count - v163;
      if (Count > v163)
      {
        v38 = &origins[v163];
        do
        {
          v38->x = 0.0;
          v38->y = 0.0;
          ++v38;
          --v37;
        }

        while (v37);
      }

      v163 = Count;
      ++v164;
      v200.location = 0;
      v200.length = Count;
      CTFrameGetLineOrigins(v23, v200, v36);
      v39 = 0;
      v40 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v39);
        GlyphRuns = CTLineGetGlyphRuns(ValueAtIndex);
        v43 = CFArrayGetCount(GlyphRuns);
        v44 = v43;
        if (v43)
        {
          v45 = 0;
          do
          {
            v46 = CFArrayGetValueAtIndex(GlyphRuns, v45);
            v40 += CTRunGetGlyphCount(v46);
            ++v45;
          }

          while (v44 != v45);
        }

        ++v39;
      }

      while (v39 != v140);
      v47 = v40;
      v48 = 0.0;
      if (!*(a2 + 98))
      {
        v35 = 0;
        v13 = v133;
        goto LABEL_48;
      }

      v49 = 0;
      v50 = v163;
      p_y = &origins->y;
      v52 = INFINITY;
      v13 = v133;
      do
      {
        v53 = CFArrayGetValueAtIndex(theArray, v49);
        BoundsWithOptions = CTLineGetBoundsWithOptions(v53, 0x40uLL);
        if (v50 == v49)
        {
          goto LABEL_170;
        }

        v54 = *p_y;
        p_y += 2;
        v55 = BoundsWithOptions.origin.y + v54;
        if (v52 > v55)
        {
          v52 = v55;
        }

        ++v49;
      }

      while (v140 != v49);
      v56 = *(a2 + 98);
      if (!*(a2 + 98))
      {
        v35 = 0;
        goto LABEL_48;
      }
    }

    else
    {
      v201.location = 0;
      v201.length = 0;
      CTFrameGetLineOrigins(v23, v201, 0);
      v56 = *(a2 + 98);
      if (!*(a2 + 98))
      {
LABEL_53:
        CFRelease(cf);
        if (v162[0] && origins)
        {
          (*(*v162[0] + 40))();
        }

        v21 = v131;
        v10 = v132;
LABEL_57:
        CFRelease(v21);
        goto LABEL_58;
      }

      v47 = 0;
      v52 = INFINITY;
    }

    v57 = 0.0;
    if (v52 >= 0.0)
    {
      v57 = v52;
    }

    v58 = -v57;
    v59 = v57 * -0.5;
    if (v56 == 1)
    {
      v59 = v58;
    }

    v48 = v59;
LABEL_48:
    if (*(a1 + 48) < v47)
    {
      re::DynamicArray<re::RigSplineIKJoint>::setCapacity((a1 + 40), v47);
    }

    if (v172 < v47)
    {
      re::DynamicArray<re::AABB>::setCapacity(&v171, v47);
    }

    if (!v35)
    {
      v61 = 0;
      key = *MEMORY[0x1E6965658];
      v62.i64[0] = 0x7F0000007FLL;
      v62.i64[1] = 0x7F0000007FLL;
      v138 = vnegq_f32(v62);
      while (1)
      {
        v63 = CFArrayGetValueAtIndex(theArray, v61);
        v136 = CTLineGetGlyphRuns(v63);
        v64 = CFArrayGetCount(v136);
        v135 = v64;
        if (v64)
        {
          break;
        }

LABEL_128:
        ++v61;
        v13 = v133;
        if (v61 == v140)
        {
          goto LABEL_53;
        }
      }

      v65 = 0;
      while (1)
      {
        v66 = CFArrayGetValueAtIndex(v136, v65);
        Attributes = CTRunGetAttributes(v66);
        Value = CFDictionaryGetValue(Attributes, key);
        GlyphCount = CTRunGetGlyphCount(v66);
        font = Value;
        v70 = CTFontCopyFullName(Value);
        v149 = CFHash(v70);
        buffer = 0;
        v158[1] = 0;
        v159 = 0;
        v157 = 0;
        v158[0] = 0;
        v160 = 0;
        v154[1] = 0;
        v155 = 0;
        v154[0] = 0;
        v156 = 0;
        v137 = v65;
        if (GlyphCount)
        {
          re::DynamicArray<re::RigNodeConstraint>::setCapacity(v154, GlyphCount);
          v71 = v157;
          if (GlyphCount > v155 && GlyphCount > v155)
          {
            bzero(&v157[v155], 16 * (GlyphCount - v155));
          }

          v155 = GlyphCount;
          ++v156;
          v73 = v71;
        }

        else
        {
          v73 = 0;
        }

        re::DynamicArray<unsigned short>::resize(v158, GlyphCount);
        v202.location = 0;
        v202.length = GlyphCount;
        CTRunGetGlyphs(v66, v202, buffer);
        v203.location = 0;
        v203.length = GlyphCount;
        v147 = v73;
        CTRunGetPositions(v66, v203, v73);
        (**a3)();
        v146 = GlyphCount;
        if (GlyphCount)
        {
          break;
        }

LABEL_121:
        CFRelease(v70);
        if (v154[0] && v147)
        {
          (*(*v154[0] + 40))();
        }

        if (v158[0] && buffer)
        {
          (*(*v158[0] + 40))();
        }

        v65 = v137 + 1;
        if (v137 + 1 == v135)
        {
          goto LABEL_128;
        }
      }

      v50 = 0;
      v74 = v146;
      while (1)
      {
        v75 = v159;
        if (v159 <= v50)
        {
          break;
        }

        (*(*a3 + 8))(a3, buffer[v50]);
        v75 = v159;
        if (v159 <= v50)
        {
          goto LABEL_134;
        }

        v151 = buffer[v50];
        v152 = v70;
        *&v153 = v149;
        *(&v153 + 1) = ((v149 << 6) + (v149 >> 2) - 0x61C8864680B583E9 + v151) ^ v149;
        if (v70)
        {
          CFRetain(v70);
        }

        if (keys.i32[3] == 0x7FFFFFFF)
        {
          v75 = v159;
          if (v159 <= v50)
          {
            goto LABEL_150;
          }

          v5 = *(a1 + 16);
          v75 = buffer[v50];
          v66 = (*(*a3 + 16))(a3);
          if (!v66)
          {
            re::GeomMesh::GeomMesh(&keys, 0);
            v76.n128_u64[0] = 0x7F0000007FLL;
            v76.n128_u64[1] = 0x7F0000007FLL;
            v184 = v138;
            v185 = v76;
            re::internal::build3dGlyph(&keys, font, v75, v166, v76, v138);
            if (re::internal::GeomAttributeManager::attributeByName(v183, "vertexUV"))
            {
              *&v196[32] = 0;
              memset(v196, 0, 28);
              re::DynamicArray<double>::resize(v196, 4uLL);
              v77 = *&v196[16];
              if (!*&v196[16])
              {
                goto LABEL_154;
              }

              **&v196[32] = "vertexUV";
              if (v77 == 1)
              {
                goto LABEL_158;
              }

              *(*&v196[32] + 8) = "vertexNormal";
              if (v77 <= 2)
              {
                goto LABEL_162;
              }

              *(*&v196[32] + 16) = "vertexTangent";
              if (v77 == 3)
              {
                goto LABEL_166;
              }

              *(*&v196[32] + 24) = "vertexBitangent";
              re::internal::buildMeshByConvertingFaceVaryingToVertexHelper(&keys, v196, 0, &keys);
              if (*v196 && *&v196[32])
              {
                (*(**v196 + 40))();
              }
            }

            re::computeAABB(values, &keys);
            v184 = values[0];
            v185 = values[1];
            v66 = (*(*a3 + 24))(a3, &keys);
            re::GeomMesh::~GeomMesh(&keys);
          }

          re::DynamicArray<re::GeomMesh>::add(a1, v66);
          re::DynamicArray<re::AABB>::add(&v171, v66 + 736);
          keys = 0uLL;
          v180.i64[0] = 0;
          if (keys.i32[3] == 0x7FFFFFFF)
          {
            *(v75 + 8) = v151;
            v78 = v152;
            *(v75 + 16) = v152;
            *(v75 + 24) = v153;
            if (v78)
            {
              CFRetain(v78);
            }

            *(v75 + 40) = v5;
            ++HIDWORD(v170);
          }

          v74 = v155;
        }

        else
        {
          v5 = *(v168 + 56 * keys.u32[3] + 40);
        }

        LODWORD(v195) = v5;
        if (v74 <= v50)
        {
          goto LABEL_138;
        }

        v75 = v163;
        if (v163 <= v61)
        {
          goto LABEL_142;
        }

        v75 = v70;
        v79 = v74;
        v80 = 0;
        v147 = v157;
        v81 = &v157[v50];
        *&v82 = v81->x;
        y = v81->y;
        v84 = v61;
        v85 = &origins[v61];
        *&v82 = *&v82 + v85->x;
        *&y = v48 + y + v85->y;
        DWORD1(v82) = LODWORD(y);
        DWORD2(v82) = 0;
        HIDWORD(v82) = 1.0;
        *v196 = xmmword_1E3047670;
        *&v196[16] = xmmword_1E3047680;
        *&v196[32] = xmmword_1E30476A0;
        v197 = v82;
        do
        {
          *(&keys + v80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v143, COERCE_FLOAT(*&v196[v80])), v142, *&v196[v80], 1), v145, *&v196[v80], 2), v144, *&v196[v80], 3);
          v80 += 16;
        }

        while (v80 != 64);
        v61 = &v167;
        values[0] = keys;
        values[1] = v180;
        values[2] = v181;
        v194 = v182;
        v66 = v173;
        if (v173 <= v5)
        {
          goto LABEL_146;
        }

        v86 = re::AABB::transform(v175 + 32 * v5, values, &keys);
        v87 = v176;
        v88 = v177;
        v87.i32[3] = 0;
        v89 = keys;
        v90 = v180;
        v89.i32[3] = 0;
        v88.i32[3] = 0;
        v90.i32[3] = 0;
        v176 = vminnmq_f32(v87, v89);
        v177 = vmaxnmq_f32(v88, v90);
        v91 = *(a1 + 48);
        v92 = *(a1 + 56);
        v5 = &v167;
        v61 = v84;
        v74 = v79;
        v70 = v75;
        if (v92 >= v91)
        {
          v66 = (v92 + 1);
          if (v91 < v92 + 1)
          {
            if (*(a1 + 40))
            {
              v93 = 2 * v91;
              v94 = v91 == 0;
              v95 = 8;
              if (!v94)
              {
                v95 = v93;
              }

              if (v95 <= v66)
              {
                v96 = v66;
              }

              else
              {
                v96 = v95;
              }

              re::DynamicArray<re::RigSplineIKJoint>::setCapacity((a1 + 40), v96);
            }

            else
            {
              re::DynamicArray<re::RigSplineIKJoint>::setCapacity((a1 + 40), v66);
              ++*(a1 + 64);
            }
          }

          v92 = *(a1 + 56);
        }

        v97 = *(a1 + 72) + 80 * v92;
        *(v97 + 16) = values[1];
        *(v97 + 32) = values[2];
        *(v97 + 48) = v194;
        *(v97 + 64) = v195;
        *v97 = values[0];
        ++*(a1 + 56);
        ++*(a1 + 64);
        if (v152)
        {
          CFRelease(v152);
        }

        if (++v50 == v146)
        {
          goto LABEL_121;
        }
      }

      *v196 = 0;
      v182 = 0u;
      v183[0] = 0u;
      v180 = 0u;
      v181 = 0u;
      keys = 0u;
      v98 = MEMORY[0x1E69E9C10];
      v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      values[0].i32[0] = 136315906;
      *(values[0].i64 + 4) = "operator[]";
      values[0].i16[6] = 1024;
      if (v99)
      {
        v100 = 3;
      }

      else
      {
        v100 = 2;
      }

      *(&values[0].i32[3] + 2) = 789;
      values[1].i16[1] = 2048;
      *(values[1].i64 + 4) = v50;
      values[1].i16[6] = 2048;
      *(&values[1].i64[1] + 6) = v75;
      _os_log_send_and_compose_impl(v100, v196, &keys, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", values, 38, cf, v131);
      _os_crash_msg();
      __break(1u);
LABEL_134:
      *v196 = 0;
      v182 = 0u;
      v183[0] = 0u;
      v180 = 0u;
      v181 = 0u;
      keys = 0u;
      v74 = MEMORY[0x1E69E9C10];
      v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      values[0].i32[0] = 136315906;
      *(values[0].i64 + 4) = "operator[]";
      values[0].i16[6] = 1024;
      if (v101)
      {
        v102 = 3;
      }

      else
      {
        v102 = 2;
      }

      *(&values[0].i32[3] + 2) = 789;
      values[1].i16[1] = 2048;
      *(values[1].i64 + 4) = v50;
      values[1].i16[6] = 2048;
      *(&values[1].i64[1] + 6) = v75;
      _os_log_send_and_compose_impl(v102, v196, &keys, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", values, 38, cf, v131);
      _os_crash_msg();
      __break(1u);
LABEL_138:
      *v186 = 0;
      v182 = 0u;
      v183[0] = 0u;
      v180 = 0u;
      v181 = 0u;
      keys = 0u;
      v103 = MEMORY[0x1E69E9C10];
      v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v196 = 136315906;
      *&v196[4] = "operator[]";
      *&v196[12] = 1024;
      if (v104)
      {
        v105 = 3;
      }

      else
      {
        v105 = 2;
      }

      *&v196[14] = 789;
      *&v196[18] = 2048;
      *&v196[20] = v50;
      *&v196[28] = 2048;
      *&v196[30] = v74;
      _os_log_send_and_compose_impl(v105, v186, &keys, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v196, 38, cf, v131);
      _os_crash_msg();
      __break(1u);
LABEL_142:
      *v186 = 0;
      v182 = 0u;
      v183[0] = 0u;
      v180 = 0u;
      v181 = 0u;
      keys = 0u;
      v106 = MEMORY[0x1E69E9C10];
      v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v196 = 136315906;
      *&v196[4] = "operator[]";
      *&v196[12] = 1024;
      if (v107)
      {
        v108 = 3;
      }

      else
      {
        v108 = 2;
      }

      *&v196[14] = 789;
      *&v196[18] = 2048;
      *&v196[20] = v61;
      *&v196[28] = 2048;
      *&v196[30] = v75;
      _os_log_send_and_compose_impl(v108, v186, &keys, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v196, 38, cf, v131);
      _os_crash_msg();
      __break(1u);
LABEL_146:
      *v186 = 0;
      *(v61 + 192) = 0u;
      *(v61 + 208) = 0u;
      *(v61 + 160) = 0u;
      *(v61 + 176) = 0u;
      *(v61 + 144) = 0u;
      v109 = MEMORY[0x1E69E9C10];
      v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v196 = 136315906;
      *&v196[4] = "operator[]";
      *&v196[12] = 1024;
      if (v110)
      {
        v111 = 3;
      }

      else
      {
        v111 = 2;
      }

      *&v196[14] = 789;
      *&v196[18] = 2048;
      *&v196[20] = v5;
      *&v196[28] = 2048;
      *&v196[30] = v66;
      _os_log_send_and_compose_impl(v111, v186, &keys, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v196, 38, cf, v131);
      _os_crash_msg();
      __break(1u);
LABEL_150:
      *v196 = 0;
      *(v5 + 192) = 0u;
      *(v5 + 208) = 0u;
      *(v5 + 160) = 0u;
      *(v5 + 176) = 0u;
      *(v5 + 144) = 0u;
      v112 = MEMORY[0x1E69E9C10];
      v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      values[0].i32[0] = 136315906;
      *(values[0].i64 + 4) = "operator[]";
      values[0].i16[6] = 1024;
      if (v113)
      {
        v114 = 3;
      }

      else
      {
        v114 = 2;
      }

      *(&values[0].i32[3] + 2) = 789;
      values[1].i16[1] = 2048;
      *(values[1].i64 + 4) = v50;
      values[1].i16[6] = 2048;
      *(&values[1].i64[1] + 6) = v75;
      _os_log_send_and_compose_impl(v114, v196, &keys, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", values, 38, cf, v131);
      _os_crash_msg();
      __break(1u);
LABEL_154:
      v178 = 0;
      v194 = 0u;
      v195 = 0u;
      memset(values, 0, sizeof(values));
      v115 = MEMORY[0x1E69E9C10];
      v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v186 = 136315906;
      *&v186[4] = "operator[]";
      v187 = 1024;
      if (v116)
      {
        v117 = 3;
      }

      else
      {
        v117 = 2;
      }

      v188 = 789;
      v189 = 2048;
      v190 = 0;
      v191 = 2048;
      v192 = 0;
      _os_log_send_and_compose_impl(v117, &v178, values, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, cf, v131);
      _os_crash_msg();
      __break(1u);
LABEL_158:
      v178 = 0;
      v194 = 0u;
      v195 = 0u;
      memset(values, 0, sizeof(values));
      v118 = MEMORY[0x1E69E9C10];
      v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v186 = 136315906;
      *&v186[4] = "operator[]";
      v187 = 1024;
      if (v119)
      {
        v120 = 3;
      }

      else
      {
        v120 = 2;
      }

      v188 = 789;
      v189 = 2048;
      v190 = 1;
      v191 = 2048;
      v192 = 1;
      _os_log_send_and_compose_impl(v120, &v178, values, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, cf, v131);
      _os_crash_msg();
      __break(1u);
LABEL_162:
      v178 = 0;
      v194 = 0u;
      v195 = 0u;
      memset(values, 0, sizeof(values));
      v121 = MEMORY[0x1E69E9C10];
      v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v186 = 136315906;
      *&v186[4] = "operator[]";
      v187 = 1024;
      if (v122)
      {
        v123 = 3;
      }

      else
      {
        v123 = 2;
      }

      v188 = 789;
      v189 = 2048;
      v190 = 2;
      v191 = 2048;
      v192 = 2;
      _os_log_send_and_compose_impl(v123, &v178, values, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, cf, v131);
      _os_crash_msg();
      __break(1u);
LABEL_166:
      v178 = 0;
      v194 = 0u;
      v195 = 0u;
      memset(values, 0, sizeof(values));
      v124 = MEMORY[0x1E69E9C10];
      v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v186 = 136315906;
      *&v186[4] = "operator[]";
      v187 = 1024;
      if (v125)
      {
        v126 = 3;
      }

      else
      {
        v126 = 2;
      }

      v188 = 789;
      v189 = 2048;
      v190 = 3;
      v191 = 2048;
      v192 = 3;
      _os_log_send_and_compose_impl(v126, &v178, values, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, cf, v131);
      _os_crash_msg();
      __break(1u);
LABEL_170:
      *v196 = 0;
      *(v5 + 192) = 0u;
      *(v5 + 208) = 0u;
      *(v5 + 160) = 0u;
      *(v5 + 176) = 0u;
      *(v5 + 144) = 0u;
      v127 = MEMORY[0x1E69E9C10];
      v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      values[0].i32[0] = 136315906;
      *(values[0].i64 + 4) = "operator[]";
      values[0].i16[6] = 1024;
      if (v128)
      {
        v129 = 3;
      }

      else
      {
        v129 = 2;
      }

      *(&values[0].i32[3] + 2) = 789;
      values[1].i16[1] = 2048;
      *(values[1].i64 + 4) = v50;
      values[1].i16[6] = 2048;
      *(&values[1].i64[1] + 6) = v50;
      _os_log_send_and_compose_impl(v129, v196, &keys, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", values, 38, cf, v131);
      _os_crash_msg();
      __break(1u);
    }

    goto LABEL_53;
  }

LABEL_59:
  CFRelease(v10);
LABEL_60:
  if (v13)
  {
    CFRelease(v13);
  }

  (*(*a3 + 32))(a3, &v176);
  result = v171;
  if (v171)
  {
    if (v175)
    {
      return (*(*v171 + 40))();
    }
  }

  return result;
}

CFAttributedStringRef re::anonymous namespace::createAttributeString(void *a1, char a2, char a3, const char *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = a2;
  settings.spec = kCTParagraphStyleSpecifierAlignment;
  settings.valueSize = 1;
  settings.value = &v14;
  v13 = a3;
  v18 = 6;
  v19 = 1;
  v20 = &v13;
  v6 = CTParagraphStyleCreate(&settings, 2uLL);
  v7 = *MEMORY[0x1E695E480];
  v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a4, 0x8000100u);
  v9 = *MEMORY[0x1E6965A30];
  keys[0] = *MEMORY[0x1E6965658];
  keys[1] = v9;
  values[0] = a1;
  values[1] = v6;
  v10 = CFDictionaryCreate(v7, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v10)
  {
    v11 = CFAttributedStringCreate(0, v8, v10);
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (v8)
  {
LABEL_3:
    CFRelease(v8);
  }

LABEL_4:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v11;
}

float32x2_t re::anonymous namespace::computeSuggestedFrameSize(re::_anonymous_namespace_ *this, const __CFAttributedString *a2, CGFloat a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v4 = CTFramesetterCreateWithAttributedString(this);
  if (v4)
  {
    v5 = v4;
    keys[0] = *MEMORY[0x1E69659E8];
    values = *MEMORY[0x1E695E4C0];
    v6 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v14.height = 1.79769313e308;
    v13.location = 0;
    v13.length = 0;
    v14.width = a3;
    v7 = CTFramesetterSuggestFrameSizeWithConstraints(v5, v13, v6, v14, &fitRange);
    CFRelease(v6);
    CFRelease(v5);
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x1E695F060];
  }

  return vcvt_f32_f64(v8);
}

void re::DynamicArray<re::GeomMesh>::add(_anonymous_namespace_ *this, int8x16_t **a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::GeomMesh>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 736 * v4;
  *v5 = 0;
  *(v5 + 8) = 0;
  bzero((v5 + 16), 0x2C8uLL);
  re::internal::GeomBaseMesh::GeomBaseMesh((v5 + 16));
  *(v5 + 728) = 0;
  re::GeomMesh::copy(a2, v5);
  ++*(this + 2);
  ++*(this + 6);
}

uint64_t *re::HashTable<re::anonymous namespace::FontNameAndGlyphIndexCacheKey,unsigned int,re::Hash<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,true,false>::~HashTable(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = *(v6 + v4 + 16);
          if (v9)
          {
            CFRelease(v9);
            *(v8 + 16) = 0;
            v3 = *(a1 + 8);
          }
        }

        v4 += 56;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

BOOL re::HashTable<re::anonymous namespace::FontNameAndGlyphIndexCacheKey,unsigned int,re::Hash<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,true,false>::findEntry<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(a3 + 24);
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = v4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  if (result)
  {
    v5 = v8;
    goto LABEL_6;
  }

  v10 = *(a2 + 16);
  v11 = *(v10 + 56 * v8) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      if (result)
      {
        break;
      }

      v10 = *(a2 + 16);
      v11 = *(v10 + 56 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v5 = v12;
  }

LABEL_7:
  *v3 = v4;
  *(v3 + 8) = v7;
  *(v3 + 12) = v5;
  *(v3 + 16) = v8;
  return result;
}

BOOL re::EqualTo<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>::operator()(unsigned __int16 *a1, unsigned __int16 *a2)
{
  result = 0;
  if (*(a1 + 3) == *(a2 + 3) && *a1 == *a2)
  {
    v2 = *(a1 + 1);
    v3 = *(a2 + 1);
    if (v2 == v3 || v2 && v3 && CFStringCompare(v2, v3, 0) == kCFCompareEqualTo)
    {
      return 1;
    }
  }

  return result;
}

uint64_t re::HashTable<re::anonymous namespace::FontNameAndGlyphIndexCacheKey,unsigned int,re::Hash<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 24;
            do
            {
              if ((*(v17 - 24) & 0x80000000) != 0)
              {
                *(v18 + 8) = *(v17 - 16);
                v19 = *(v17 - 8);
                *(v18 + 16) = v19;
                *(v18 + 24) = *v17;
                if (v19)
                {
                  *(v17 - 16) = 0;
                  *v17 = 0;
                  *(v17 + 8) = 0;
                  *(v17 - 8) = 0;
                }

                *(v18 + 40) = *(v17 + 16);
              }

              v17 += 56;
              --v16;
            }

            while (v16);
          }
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 56 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 56 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 56 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 48) = a3;
  ++*(a1 + 28);
  return v20 + 56 * v5;
}

void re::anonymous namespace::GlyphCache::setFont(re::_anonymous_namespace_::GlyphCache *this, CFTypeRef cf, unint64_t a3)
{
  v6 = *(this + 4);
  v7 = (a3 << 6) + (a3 >> 2) - 0x61C8864680B583E9 + v6;
  if (cf)
  {
    CFRetain(cf);
  }

  v8 = v7 ^ a3;
  v9 = *(this + 2);
  if (v9)
  {
    CFRelease(v9);
  }

  *(this + 3) = a3;
  *(this + 4) = v8;
  *(this + 4) = v6;
  *(this + 2) = cf;
  if (cf)
  {
    CFRetain(cf);

    CFRelease(cf);
  }
}

uint64_t re::anonymous namespace::GlyphCache::setGlyphIndex(uint64_t this, unint64_t a2)
{
  if (a2 >= 0x10000)
  {
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) glyphIndex (%llu) is too large for a 16-bit unsigned integer", "!overflow", "setGlyphIndex", 102, a2);
    this = _os_crash("assertion failure: (!overflow) glyphIndex (%llu) is too large for a 16-bit unsigned integer", v2);
    __break(1u);
  }

  else
  {
    *(this + 8) = a2;
    *(this + 32) = (a2 + (*(this + 24) << 6) + (*(this + 24) >> 2) - 0x61C8864680B583E9) ^ *(this + 24);
  }

  return this;
}

uint64_t re::anonymous namespace::GlyphCache::cachedGlyph(re::_anonymous_namespace_::GlyphCache *this)
{
  if (v4 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(this + 7) + 832 * v4 + 48;
  }
}

uint64_t re::anonymous namespace::GlyphCache::storeGlyph(uint64_t a1, int8x16_t **a2)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 56) + 832 * HIDWORD(v10) + 48;
  }

  *(v4 + 8) = *(a1 + 8);
  v5 = *(a1 + 16);
  *(v4 + 16) = v5;
  *(v4 + 24) = *(a1 + 24);
  if (v5)
  {
    CFRetain(v5);
  }

  *(v4 + 48) = 0;
  v6 = v4 + 48;
  *(v6 + 8) = 0;
  bzero((v6 + 16), 0x2C8uLL);
  re::internal::GeomBaseMesh::GeomBaseMesh((v6 + 16));
  *(v6 + 728) = 0;
  re::GeomMesh::copy(a2, v6);
  v7 = *(a2 + 47);
  *(v6 + 736) = *(a2 + 46);
  *(v6 + 752) = v7;
  ++*(a1 + 80);
  return v6;
}

BOOL re::HashTable<re::anonymous namespace::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,true,false>::findEntry<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(a3 + 24);
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = v4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  if (result)
  {
    v5 = v8;
    goto LABEL_6;
  }

  v10 = *(a2 + 16);
  v11 = *(v10 + 832 * v8) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      if (result)
      {
        break;
      }

      v10 = *(a2 + 16);
      v11 = *(v10 + 832 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v5 = v12;
  }

LABEL_7:
  *v3 = v4;
  *(v3 + 8) = v7;
  *(v3 + 12) = v5;
  *(v3 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::anonymous namespace::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          if (v14)
          {
            v16 = 0;
            v17 = 832 * v14;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = v13 + v16;
                v20 = v19;
                *(v19 + 8) = *(v13 + v16 + 8);
                v21 = *(v13 + v16 + 16);
                *(v19 + 16) = v21;
                *(v19 + 24) = *(v13 + v16 + 24);
                if (v21)
                {
                  *(v18 + 8) = 0;
                  *(v18 + 24) = 0;
                  *(v18 + 32) = 0;
                  *(v13 + v16 + 16) = 0;
                }

                re::GeomMesh::GeomMesh(v19 + 48, v18 + 48);
                v22 = *(v18 + 800);
                *(v20 + 784) = *(v18 + 784);
                *(v20 + 800) = v22;
              }

              v16 += 832;
            }

            while (v17 != v16);
          }
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + 832 * v5);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 832 * v5);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + 832 * v5;
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v5;
  *(v26 + 816) = a3;
  ++*(a1 + 28);
  return v23 + 832 * v5;
}

uint64_t *re::HashTable<re::anonymous namespace::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,true,false>::~HashTable(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = *(v6 + v4 + 16);
          if (v9)
          {
            CFRelease(v9);
            *(v8 + 16) = 0;
          }

          re::GeomMesh::~GeomMesh((v8 + 48));
          v3 = *(a1 + 8);
        }

        v4 += 832;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

float32x2_t *re::buildPlane(re *this, unsigned __int16 *a2)
{
  v6 = this;
  v225 = *MEMORY[0x1E69E9840];
  v7 = a2[1];
  v8 = *a2;
  if (v7)
  {
    _ZF = v8 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    LODWORD(v204) = 0;
    *(&v206 + 1) = 0;
    v205 = 0uLL;
    LODWORD(v206) = 0;
    re::DynamicArray<re::BlendNode>::setCapacity(&v204 + 1, 1uLL);
    LODWORD(v206) = v206 + 1;
    re::internal::GeomAttributeManager::GeomAttributeManager(&v207);
    re::internal::GeomAttributeManager::addAttribute(&v207, "vertexPosition", 1, 7);
    if (*(a2 + 20) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(&v207, "vertexUV", 1, 6);
    }

    if (*(a2 + 21) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(&v207, "vertexNormal", 1, 7);
    }

    if (*(a2 + 20) == 1 && *(a2 + 21) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(&v207, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(&v207, "vertexBitangent", 1, 7);
    }

    re::GeomMesh::operator=(v6, &v204);
    re::internal::GeomAttributeManager::~GeomAttributeManager(&v207);
    result = *(&v204 + 1);
    if (*(&v204 + 1) && *(&v206 + 1))
    {
      return (*(**(&v204 + 1) + 40))();
    }
  }

  else
  {
    v11 = v215;
    v12 = a2[2] != 0;
    v13 = *(a2 + 4);
    v14 = v13 > 0.0;
    v15 = *(a2 + 4);
    v16 = vbsl_s8(vcgtz_f32(v15), v15, vneg_f32(v15));
    v17 = *&v16.i32[1];
    if (*&v16.i32[1] >= *v16.i32)
    {
      v18 = *v16.i32;
    }

    else
    {
      v18 = *&v16.i32[1];
    }

    v19 = fabsf(v13);
    if ((v19 + v19) > v18)
    {
      v19 = v18 * 0.5;
    }

    v199 = v19;
    v20 = v19 + v19;
    v21 = *v16.i32 - (v19 + v19);
    v22 = v12 && v14;
    v196 = v16;
    if (!v12 || !v14)
    {
      v21 = *v16.i32;
    }

    v23 = *&v16.i32[1] - v20;
    if (!v12 || !v14)
    {
      v23 = *&v16.i32[1];
    }

    result = re::buildParametricPlane(this, v8, v21, v23, v7);
    if (v22 == 1)
    {
      v202 = a2;
      v25 = *(v6 + 16);
      v3 = *(v6 + 40);
      v26 = *a2;
      v27 = v26 + 1;
      v28 = a2[1];
      v29 = a2[2];
      v195 = v28 + 1;
      v197 = v29 - 1;
      v30 = 2 * (v28 + 1 + v26 + 1) + 4 * (v29 - 1);
      v187 = v28;
      v31 = 2 * (v28 + v26);
      LODWORD(v204) = *(v6 + 16);
      re::DynamicArray<re::GeomCell4>::DynamicArray(&v204 + 8, (v6 + 24));
      if (!v205)
      {
        re::DynamicArray<re::BlendNode>::setCapacity(&v204 + 1, 1uLL);
      }

      v198 = v29;
      v32 = v31 + 4 * v29;
      re::internal::GeomAttributeManager::GeomAttributeManager(&v207, (v6 + 64));
      LODWORD(v204) = v30 + *(v6 + 16);
      v209 = v204;
      if (v210)
      {
        v33 = v211;
        v34 = 8 * v210;
        do
        {
          v35 = *v33++;
          (*(*v35 + 80))(v35, v209);
          v34 -= 8;
        }

        while (v34);
      }

      v36 = v32 + *(v6 + 40);
      re::DynamicArray<re::GeomCell4>::resize(&v204 + 1, v36);
      v212 = v36;
      v11 = v215;
      if (v213)
      {
        v37 = v214;
        v38 = 8 * v213;
        do
        {
          v39 = *v37++;
          (*(*v39 + 80))(v39, v212);
          v38 -= 8;
        }

        while (v38);
      }

      v40 = *a2;
      v41 = re::internal::GeomAttributeManager::attributeByName(&v207, "vertexPosition");
      v42 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v41);
      v45 = (v25 + v40 + 1);
      if (v45 != v25)
      {
        v46 = 0;
        v2 = v43;
        v47 = v43 - v25;
        if (v43 < v25)
        {
          v47 = 0;
        }

        v48 = 16 * v47;
        v4 = v25;
        while (16 * v43 != v46)
        {
          if (v48 == v46)
          {
            goto LABEL_156;
          }

          LODWORD(v44) = *(v42 + v46);
          *(&v44 + 2) = v17 * 0.5;
          *(v42 + 16 * v4++) = v44;
          v46 += 16;
          if (v45 == v4)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_152;
      }

LABEL_41:
      if (v40)
      {
        v49 = 0;
        v2 = *(&v205 + 1);
        v50 = *(&v206 + 1);
        while (1)
        {
          v4 = (v3 + v49);
          if (v2 <= v4)
          {
            break;
          }

          v51 = (v50 + 16 * v4);
          v51[3] = v49;
          *v51 = v25 + v49;
          v51[1] = v25 + v49 + 1;
          v51[2] = ++v49;
          if (v40 == v49)
          {
            goto LABEL_45;
          }
        }

        v203 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v136 = MEMORY[0x1E69E9C10];
        v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v215 = 136315906;
        *&v215[4] = "operator[]";
        *&v215[12] = 1024;
        if (v137)
        {
          v138 = 3;
        }

        else
        {
          v138 = 2;
        }

        *&v215[14] = 789;
        v216 = 2048;
        v217 = v4;
        v218 = 2048;
        v219 = v2;
        _os_log_send_and_compose_impl(v138, &v203, &v220, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v215, 38, v188.u64[0], v188.u64[1]);
        _os_crash_msg();
        __break(1u);
        goto LABEL_120;
      }

LABEL_45:
      v189 = v6;
      v52 = *a2;
      v2 = (v197 + v27 + v25);
      v53.i64[0] = 0;
      v53.i64[1] = LODWORD(v199);
      v188 = v53;
      v220 = v53;
      *v215 = LODWORD(v199);
      v193 = v52 + v3;
      re::buildPlane(re::GeomMesh &,re::GeomBuildPlaneOptions const&)::$_1::operator()(&v202, &v204, v52 + v3, v27 + v25, v52, v197 + v27 + v25, &v220, v215);
      v191 = a2[2];
      v4 = *a2;
      v54 = a2[1];
      v55 = re::internal::GeomAttributeManager::attributeByName(&v207, "vertexPosition");
      v56 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v55);
      DWORD1(v58) = 0;
      *(&v58 + 1) = 0;
      v59 = (v27 + v25 + v198 + v54);
      if (v59 != v2)
      {
        LODWORD(v3) = v57;
        v60 = (v56 + 16 * v2);
        if (v2 <= v57)
        {
          v11 = v57;
        }

        else
        {
          v11 = v2;
        }

        v61 = v59 - v2;
        v62 = (v11 - v2);
        v6 = v4;
        while (v6 < v57)
        {
          if (!v62)
          {
            goto LABEL_164;
          }

          *&v58 = v196.f32[0] * 0.5;
          v63 = v58;
          DWORD2(v63) = *(v56 + 8 + 16 * v6);
          *v60++ = v63;
          v6 = (v6 + v27);
          --v62;
          if (!--v61)
          {
            goto LABEL_53;
          }
        }

LABEL_160:
        v203 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v169 = MEMORY[0x1E69E9C10];
        v170 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v215 = 136315906;
        *&v215[4] = "operator[]";
        if (v170)
        {
          v171 = 3;
        }

        else
        {
          v171 = 2;
        }

        *&v215[12] = 1024;
        *&v215[14] = 621;
        v216 = 2048;
        v217 = v6;
        v218 = 2048;
        v219 = v3;
        _os_log_send_and_compose_impl(v171, &v203, &v220, 80, &dword_1E1C61000, v169, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v215, 38, v188.u64[0], v188.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_164:
        v203 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v172 = MEMORY[0x1E69E9C10];
        v173 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v215 = 136315906;
        *&v215[4] = "operator[]";
        *&v215[12] = 1024;
        if (v173)
        {
          v174 = 3;
        }

        else
        {
          v174 = 2;
        }

        *&v215[14] = 621;
        v216 = 2048;
        v217 = v11;
        v218 = 2048;
        v219 = v3;
        _os_log_send_and_compose_impl(v174, &v203, &v220, 80, &dword_1E1C61000, v172, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v215, 38, v188.u64[0], v188.u64[1]);
        _os_crash_msg();
        __break(1u);
        goto LABEL_168;
      }

LABEL_53:
      if (v54)
      {
        v3 = *(&v205 + 1);
        v64 = *(&v206 + 1);
        v65 = v25 + v198;
        v66 = v193 + v191;
        while (1)
        {
          v11 = v66;
          if (v3 <= v66)
          {
            break;
          }

          v67 = (v64 + 16 * v66);
          v67[2] = v26 + v4 + 1;
          v67[3] = v4;
          v4 = (v4 + v27);
          *v67 = v26 + v65;
          v67[1] = v26 + v65 + 1;
          ++v66;
          ++v65;
          if (!--v54)
          {
            goto LABEL_57;
          }
        }

LABEL_120:
        v203 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v139 = MEMORY[0x1E69E9C10];
        v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v215 = 136315906;
        *&v215[4] = "operator[]";
        *&v215[12] = 1024;
        if (v140)
        {
          v141 = 3;
        }

        else
        {
          v141 = 2;
        }

        *&v215[14] = 789;
        v216 = 2048;
        v217 = v11;
        v218 = 2048;
        v219 = v3;
        _os_log_send_and_compose_impl(v141, &v203, &v220, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v215, 38, v188.u64[0], v188.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_124:
        *v215 = 0;
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        v204 = 0u;
        v142 = MEMORY[0x1E69E9C10];
        v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v220.i32[0] = 136315906;
        *(v11 + 52) = "operator[]";
        v220.i16[6] = 1024;
        if (v143)
        {
          v144 = 3;
        }

        else
        {
          v144 = 2;
        }

        *(v11 + 62) = 621;
        WORD1(v221) = 2048;
        *(v11 + 68) = v25;
        WORD6(v221) = 2048;
        *(v11 + 78) = v25;
        _os_log_send_and_compose_impl(v144, v215, &v204, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v220, 38, v188.u64[0], v188.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_128:
        *v215 = 0;
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        v204 = 0u;
        v145 = MEMORY[0x1E69E9C10];
        v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v220.i32[0] = 136315906;
        *(v11 + 52) = "operator[]";
        v220.i16[6] = 1024;
        if (v146)
        {
          v147 = 3;
        }

        else
        {
          v147 = 2;
        }

        *(v11 + 62) = 613;
        WORD1(v221) = 2048;
        *(v11 + 68) = v2;
        WORD6(v221) = 2048;
        *(v11 + 78) = v2;
        _os_log_send_and_compose_impl(v147, v215, &v204, 80, &dword_1E1C61000, v145, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v220, 38, v188.u64[0], v188.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_132:
        *v215 = 0;
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        v204 = 0u;
        v148 = MEMORY[0x1E69E9C10];
        v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v220.i32[0] = 136315906;
        *(v11 + 52) = "operator[]";
        v220.i16[6] = 1024;
        if (v149)
        {
          v150 = 3;
        }

        else
        {
          v150 = 2;
        }

        *(v11 + 62) = 621;
        WORD1(v221) = 2048;
        *(v11 + 68) = v3;
        WORD6(v221) = 2048;
        *(v11 + 78) = v3;
        _os_log_send_and_compose_impl(v150, v215, &v204, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v220, 38, v188.u64[0], v188.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_136:
        v203 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v151 = MEMORY[0x1E69E9C10];
        v152 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v215 = 136315906;
        *&v215[4] = "operator[]";
        *&v215[12] = 1024;
        if (v152)
        {
          v153 = 3;
        }

        else
        {
          v153 = 2;
        }

        *&v215[14] = 789;
        v216 = 2048;
        v217 = v3;
        v218 = 2048;
        v219 = v4;
        _os_log_send_and_compose_impl(v153, &v203, &v220, 80, &dword_1E1C61000, v151, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v215, 38, v188.u64[0], v188.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_140:
        *v215 = 0;
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        v204 = 0u;
        v154 = MEMORY[0x1E69E9C10];
        v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v220.i32[0] = 136315906;
        *(v11 + 52) = "operator[]";
        v220.i16[6] = 1024;
        if (v155)
        {
          v156 = 3;
        }

        else
        {
          v156 = 2;
        }

        *(v11 + 62) = 621;
        WORD1(v221) = 2048;
        *(v11 + 68) = v2;
        WORD6(v221) = 2048;
        *(v11 + 78) = v2;
        _os_log_send_and_compose_impl(v156, v215, &v204, 80, &dword_1E1C61000, v154, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v220, 38, v188.u64[0], v188.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_144:
        *v215 = 0;
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        v204 = 0u;
        v157 = MEMORY[0x1E69E9C10];
        v158 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v220.i32[0] = 136315906;
        *(v11 + 52) = "operator[]";
        v220.i16[6] = 1024;
        if (v158)
        {
          v159 = 3;
        }

        else
        {
          v159 = 2;
        }

        *(v11 + 62) = 621;
        WORD1(v221) = 2048;
        *(v11 + 68) = v3;
        WORD6(v221) = 2048;
        *(v11 + 78) = v3;
        _os_log_send_and_compose_impl(v159, v215, &v204, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v220, 38, v188.u64[0], v188.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_148:
        v203 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v160 = MEMORY[0x1E69E9C10];
        v161 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v215 = 136315906;
        *(v11 + 4) = "operator[]";
        *&v215[12] = 1024;
        if (v161)
        {
          v162 = 3;
        }

        else
        {
          v162 = 2;
        }

        *(v11 + 14) = 789;
        v216 = 2048;
        *(v11 + 20) = v4;
        v218 = 2048;
        *(v11 + 30) = v3;
        _os_log_send_and_compose_impl(v162, &v203, &v220, 80, &dword_1E1C61000, v160, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v215, 38, v188.u64[0], v188.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_152:
        v203 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v163 = MEMORY[0x1E69E9C10];
        v164 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v215 = 136315906;
        *(v11 + 4) = "operator[]";
        *&v215[12] = 1024;
        if (v164)
        {
          v165 = 3;
        }

        else
        {
          v165 = 2;
        }

        *(v11 + 14) = 621;
        v216 = 2048;
        *(v11 + 20) = v2;
        v218 = 2048;
        *(v11 + 30) = v2;
        _os_log_send_and_compose_impl(v165, &v203, &v220, 80, &dword_1E1C61000, v163, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v215, 38, v188.u64[0], v188.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_156:
        v203 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v166 = MEMORY[0x1E69E9C10];
        v167 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v215 = 136315906;
        *(v11 + 4) = "operator[]";
        *&v215[12] = 1024;
        if (v167)
        {
          v168 = 3;
        }

        else
        {
          v168 = 2;
        }

        *(v11 + 14) = 621;
        v216 = 2048;
        *(v11 + 20) = v4;
        v218 = 2048;
        *(v11 + 30) = v2;
        _os_log_send_and_compose_impl(v168, &v203, &v220, 80, &dword_1E1C61000, v166, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v215, 38, v188.u64[0], v188.u64[1]);
        _os_crash_msg();
        __break(1u);
        goto LABEL_160;
      }

LABEL_57:
      v68 = v193 + v191 + a2[1];
      v6 = (v2 + v195);
      v11 = (v25 - 1);
      v2 = (v6 + v197);
      v220 = LODWORD(v199);
      v69.i64[0] = 0;
      v69.i32[3] = 0;
      v69.f32[2] = -v199;
      v190 = v69;
      v192 = -v199;
      *v215 = v69;
      v200 = v68;
      re::buildPlane(re::GeomMesh &,re::GeomBuildPlaneOptions const&)::$_1::operator()(&v202, &v204, v68, v6, v25 - 1, v6 + v197, &v220, v215);
      v194 = a2[2];
      v70 = *a2;
      v71 = re::internal::GeomAttributeManager::attributeByName(&v207, "vertexPosition");
      v72 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v71);
      v75 = (v6 + v198 + v70);
      if (v75 != v2)
      {
        v4 = v73;
        if (v2 <= v73)
        {
          v6 = v73;
        }

        else
        {
          v6 = v2;
        }

        v76 = (v72 + 16 * v2);
        v77 = v75 - v2;
        v78 = (v2 - v6);
        LODWORD(v3) = v25 - 1;
        while (v3 < v73)
        {
          if (!v78)
          {
            goto LABEL_172;
          }

          LODWORD(v74) = *(v72 + 16 * v3);
          *(&v74 + 2) = v17 * -0.5;
          *v76++ = v74;
          LODWORD(v3) = v3 - 1;
          ++v78;
          if (!--v77)
          {
            goto LABEL_65;
          }
        }

LABEL_168:
        v203 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v175 = MEMORY[0x1E69E9C10];
        v176 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v215 = 136315906;
        *&v215[4] = "operator[]";
        if (v176)
        {
          v177 = 3;
        }

        else
        {
          v177 = 2;
        }

        *&v215[12] = 1024;
        *&v215[14] = 621;
        v216 = 2048;
        v217 = v3;
        v218 = 2048;
        v219 = v4;
        _os_log_send_and_compose_impl(v177, &v203, &v220, 80, &dword_1E1C61000, v175, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v215, 38, v188.u64[0], v188.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_172:
        v203 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v178 = MEMORY[0x1E69E9C10];
        v179 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v215 = 136315906;
        *&v215[4] = "operator[]";
        *&v215[12] = 1024;
        if (v179)
        {
          v180 = 3;
        }

        else
        {
          v180 = 2;
        }

        *&v215[14] = 621;
        v216 = 2048;
        v217 = v6;
        v218 = 2048;
        v219 = v4;
        _os_log_send_and_compose_impl(v180, &v203, &v220, 80, &dword_1E1C61000, v178, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v215, 38, v188.u64[0], v188.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_176:
        v203 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v181 = MEMORY[0x1E69E9C10];
        v182 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v215 = 136315906;
        *&v215[4] = "operator[]";
        if (v182)
        {
          v183 = 3;
        }

        else
        {
          v183 = 2;
        }

        *&v215[12] = 1024;
        *&v215[14] = 621;
        v216 = 2048;
        v217 = v3;
        v218 = 2048;
        v219 = v4;
        _os_log_send_and_compose_impl(v183, &v203, &v220, 80, &dword_1E1C61000, v181, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v215, 38, v188.u64[0], v188.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_180:
        v203 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v184 = MEMORY[0x1E69E9C10];
        v185 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v215 = 136315906;
        *&v215[4] = "operator[]";
        *&v215[12] = 1024;
        if (v185)
        {
          v186 = 3;
        }

        else
        {
          v186 = 2;
        }

        *&v215[14] = 621;
        v216 = 2048;
        v217 = v6;
        v218 = 2048;
        v219 = v4;
        _os_log_send_and_compose_impl(v186, &v203, &v220, 80, &dword_1E1C61000, v184, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v215, 38, v188.u64[0], v188.u64[1]);
        _os_crash_msg();
        __break(1u);
      }

LABEL_65:
      v79 = v200 + v194;
      if (v70)
      {
        v4 = *(&v205 + 1);
        v80 = *(&v206 + 1);
        v81 = v2;
        v82 = v200 + v194;
        do
        {
          v3 = v82;
          if (v4 <= v82)
          {
            goto LABEL_136;
          }

          v83 = (v80 + 16 * v82);
          v83[3] = v11;
          v11 = (v11 - 1);
          *v83 = v81++;
          v83[1] = v81;
          v83[2] = v11;
          v82 = v3 + 1;
        }

        while (v3 + 1 != v79 + v70);
      }

      v84 = v79 + *a2;
      v85 = v2 + v27;
      v3 = (v25 - v27);
      v2 = (v2 + v27 + v197);
      v220 = v190;
      *v215 = LODWORD(v192);
      re::buildPlane(re::GeomMesh &,re::GeomBuildPlaneOptions const&)::$_1::operator()(&v202, &v204, v84, v85, v25 - v27, v2, &v220, v215);
      v201 = a2[2];
      v86 = ~v26;
      v87 = a2[1];
      v88 = re::internal::GeomAttributeManager::attributeByName(&v207, "vertexPosition");
      v89 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v88);
      DWORD1(v91) = 0;
      *(&v91 + 1) = 0;
      v92 = v85 + v198 + v87;
      if (v92 != v2)
      {
        v4 = v90;
        if (v2 <= v90)
        {
          v6 = v90;
        }

        else
        {
          v6 = v2;
        }

        v93 = (v89 + 16 * v2);
        v94 = v92 - v2;
        v95 = (v2 - v6);
        while (v3 < v90)
        {
          if (!v95)
          {
            goto LABEL_180;
          }

          *&v91 = v196.f32[0] * -0.5;
          v96 = v91;
          DWORD2(v96) = *(v89 + 8 + 16 * v3);
          *v93++ = v96;
          v3 = (v3 + v86);
          ++v95;
          if (!--v94)
          {
            goto LABEL_77;
          }
        }

        goto LABEL_176;
      }

LABEL_77:
      v97 = v84 + v201;
      v11 = v215;
      v6 = v189;
      if (v87)
      {
        v3 = *(&v205 + 1);
        v98 = *(&v206 + 1);
        v99 = (2 * v26) ^ 0xFFFFFFFE;
        v100 = 3 * v198 + 2 * v26 + v187;
        v101 = ~v26;
        v102 = v97;
        do
        {
          v4 = v102;
          if (v3 <= v102)
          {
            goto LABEL_148;
          }

          v103 = (v98 + 16 * v102);
          *v103 = v25 + v100;
          v103[1] = v25 + v100 + 1;
          ++v102;
          v103[2] = v25 + v99;
          v103[3] = v25 + v101;
          v101 += v86;
          v99 += v86;
          ++v100;
        }

        while (--v87);
      }

      v104 = a2[1];
      v220 = LODWORD(v192);
      *v215 = v188;
      re::buildPlane(re::GeomMesh &,re::GeomBuildPlaneOptions const&)::$_1::operator()(&v202, &v204, v97 + v104, v2 + v195, 0, v25, &v220, v215);
      re::GeomMesh::operator=(v189, &v204);
      re::internal::GeomAttributeManager::~GeomAttributeManager(&v207);
      result = *(&v204 + 1);
      if (*(&v204 + 1))
      {
        v24 = *(&v206 + 1);
        if (*(&v206 + 1))
        {
          result = (*(**(&v204 + 1) + 40))();
        }
      }
    }

    if (*(a2 + 20) == 1)
    {
      re::addVertexUVs(v6, v24);
      v105 = *(v6 + 16);
      v106 = re::GeomMesh::accessVertexPositions(v6);
      v2 = v107;
      result = re::modifyVertexUVs(v6, v107);
      if (v105)
      {
        v109 = vceqz_f32(v15);
        __asm { FMOV            V0.2S, #1.0 }

        v114 = vbic_s8(vdiv_f32(COERCE_FLOAT32X2_T(-_D0), v196), v109);
        v115 = vbic_s8(0x3F0000003F000000, v109);
        v2 = v2;
        v3 = v108;
        v116 = (v106 + 8);
        v117 = v2;
        v118 = v108;
        while (v117)
        {
          if (!v118)
          {
            goto LABEL_132;
          }

          v119.i32[0] = *(v116 - 2);
          v119.i32[1] = *v116;
          *result++ = vmla_f32(v115, v114, v119);
          v116 += 4;
          --v118;
          --v117;
          if (!--v105)
          {
            goto LABEL_90;
          }
        }

        goto LABEL_128;
      }
    }

LABEL_90:
    if (*(a2 + 21) == 1)
    {
      v120 = *(v6 + 16);
      v121 = re::internal::GeomAttributeManager::attributeByName((v6 + 64), "vertexNormal");
      result = re::GeomAttribute::modifyValues<re::Vector3<float>>(v121);
      if (v120)
      {
        v25 = v122;
        v123 = v122;
        while (v123)
        {
          *result->f32 = xmmword_1E3047680;
          result += 2;
          --v123;
          if (!--v120)
          {
            goto LABEL_95;
          }
        }

        goto LABEL_124;
      }
    }

LABEL_95:
    if (*(a2 + 21) == 1 && (a2[10] & 1) != 0)
    {
      v124 = re::GeomMesh::addAttribute(v6, "vertexTangent", 1, 7);
      v125 = re::GeomMesh::addAttribute(v6, "vertexBitangent", 1, 7);
      v126 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v124);
      LODWORD(v2) = v127;
      result = re::GeomAttribute::modifyValues<re::Vector3<float>>(v125);
      v129 = *(v6 + 16);
      if (v129)
      {
        v2 = v2;
        v3 = v128;
        v130 = v2;
        v131 = v128;
        while (v130)
        {
          *v126 = xmmword_1E3047670;
          if (!v131)
          {
            goto LABEL_144;
          }

          *result->f32 = xmmword_1E306DD20;
          result += 2;
          ++v126;
          --v131;
          --v130;
          if (!--v129)
          {
            goto LABEL_102;
          }
        }

        goto LABEL_140;
      }
    }

LABEL_102:
    v132 = *(a2 + 6);
    if (v132 <= 2)
    {
      if (v132)
      {
        if (v132 != 1)
        {
          return result;
        }

        v134 = xmmword_1E3047680;
        v135 = xmmword_1E3047690;
      }

      else
      {
        v134 = xmmword_1E30476B0;
        v135 = xmmword_1E3047670;
      }

      v204 = v134;
      v205 = v135;
      v133 = xmmword_1E30476A0;
    }

    else
    {
      switch(v132)
      {
        case 5:
          v204 = xmmword_1E3047670;
          v205 = xmmword_1E306DD20;
          v133 = xmmword_1E3047680;
          break;
        case 4:
          v204 = xmmword_1E3047670;
          v205 = xmmword_1E30476A0;
          v133 = xmmword_1E30476B0;
          break;
        case 3:
          v204 = xmmword_1E3047670;
          v205 = xmmword_1E30476B0;
          v133 = xmmword_1E306DD20;
          break;
        default:
          return result;
      }
    }

    v206 = v133;
    return re::transform(v6, &v204);
  }

  return result;
}

void re::buildPlane(re::GeomMesh &,re::GeomBuildPlaneOptions const&)::$_1::operator()(uint64_t a1, int *a2, unsigned int a3, unsigned int a4, int a5, unsigned int a6, float32x4_t *a7, float32x4_t *a8)
{
  LODWORD(v11) = a5;
  v14 = a2;
  v65 = *MEMORY[0x1E69E9840];
  v16 = re::internal::GeomAttributeManager::attributeByName((a2 + 12), "vertexPosition");
  v17 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v16);
  v19 = v18;
  if (v18 <= v11)
  {
    goto LABEL_27;
  }

  v20 = *(*a1 + 4);
  v21 = *v14;
  if (v20 == 1)
  {
    v30 = 1;
LABEL_12:
    v31 = a4 - 1;
    v32 = *(v14 + 3);
    v33 = *(v14 + 5);
    for (i = v21 - a4; ; --i)
    {
      v19 = a3;
      if (v32 <= a3)
      {
        break;
      }

      if (i)
      {
        v35 = v31 + 1;
      }

      else
      {
        v35 = a6;
      }

      v36 = (v33 + 16 * a3);
      *v36 = v11;
      v36[1] = v31++;
      v36[2] = v35;
      v36[3] = -1;
      ++a3;
      if (!--v30)
      {
        return;
      }
    }

    v51 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    v37 = MEMORY[0x1E69E9C10];
    v52 = 136315906;
    v53 = "operator[]";
    v54 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    v55 = 789;
    v56 = 2048;
    v57 = a3;
    v58 = 2048;
    v59 = v32;
    _os_log_send_and_compose_impl(v38, &v51, &v60, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v44, v45);
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v51 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v52 = 136315906;
    v53 = "operator[]";
    v54 = 1024;
    if (v39)
    {
      v40 = 3;
    }

    else
    {
      v40 = 2;
    }

    v55 = 621;
    v56 = 2048;
    v57 = v45;
    v58 = 2048;
    v59 = v46;
    _os_log_send_and_compose_impl(v40, &v51, &v60, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v44, v45);
    _os_crash_msg();
    __break(1u);
LABEL_27:
    v51 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    v41 = MEMORY[0x1E69E9C10];
    v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v52 = 136315906;
    v53 = "operator[]";
    if (v42)
    {
      v43 = 3;
    }

    else
    {
      v43 = 2;
    }

    v54 = 1024;
    v55 = 621;
    v56 = 2048;
    v57 = v11;
    v58 = 2048;
    v59 = v19;
    _os_log_send_and_compose_impl(v43, &v51, &v60, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v44, v45);
    _os_crash_msg();
    __break(1u);
  }

  v22 = v17;
  v47 = *v14;
  v48 = a1;
  v49 = v14;
  v23 = 1.5708 / v20;
  v24 = a4 + (v20 - 1);
  v25 = (v17 + 16 * a4);
  if (a4 <= v18)
  {
    v26 = v18;
  }

  else
  {
    v26 = a4;
  }

  v27 = v24 - a4;
  v50 = a4;
  v45 = v26;
  v46 = v18;
  v28 = v26 - a4;
  v19 = 1;
  do
  {
    if (!v28)
    {
      goto LABEL_23;
    }

    v29 = __sincosf_stret(v23 * v19);
    *v25++ = vaddq_f32(*(v22 + 16 * v11), vaddq_f32(vmulq_n_f32(*a7, v29.__cosval), vmulq_n_f32(*a8, v29.__sinval)));
    ++v19;
    --v28;
    --v27;
  }

  while (v27);
  v14 = v49;
  v30 = *(*v48 + 4);
  a4 = v50;
  v21 = v47;
  if (*(*v48 + 4))
  {
    goto LABEL_12;
  }
}

void re::buildPlane(re::GeomMesh *a1, unsigned __int16 *a2)
{
  re::GeomMesh::GeomMesh(v4, 0);
  re::buildPlane(v4, a2);
  re::DynamicArray<re::GeomMesh>::clear(a1);
  re::DynamicArray<re::GeomMesh>::add(a1, v4);
  re::GeomMesh::~GeomMesh(v4);
}

void dispatchMipGenRect(void *a1, void *a2, void *a3, void *a4, int a5, unsigned int a6, unsigned int a7, unsigned int a8)
{
  v46 = __PAIR64__(a7, a8);
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5 - 1;
  v17 = a4;
  v18 = [v13 width];
  if (v18 >> a5 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18 >> a5;
  }

  v20 = [v13 height];
  if (v20 >> a5 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20 >> a5;
  }

  v22 = [v13 width];
  if (v22 >> v16 <= 1)
  {
    LOBYTE(v23) = 1;
  }

  else
  {
    v23 = v22 >> v16;
  }

  v24 = [v13 height] >> v16;
  if (v24 <= 1)
  {
    LOBYTE(v24) = 1;
  }

  v25.f32[1] = v21;
  __asm { FMOV            V1.2S, #1.0 }

  v25.f32[0] = v19;
  v31 = vdiv_f32(_D1, v25);
  __asm { FMOV            V1.2S, #0.25 }

  v55[0] = v31;
  v55[1] = vmul_f32(v31, _D1);
  v55[2] = vmul_f32(v31, 0x3F0000003F000000);
  v56 = a6;
  BYTE4(v56) = v14 != v13;
  v57 = a5 - 1;
  v58 = a5;
  v33 = v24 & 1;
  _ZF = v33 == 0;
  v34 = (2 * v33) ^ 2;
  v35 = 3;
  if (!_ZF)
  {
    v35 = 1;
  }

  if ((v23 & 1) == 0)
  {
    v34 = v35;
  }

  v36 = v17[2 * v34 + 2];

  v37 = v36;
  [v15 setComputePipelineState:v37];
  [v15 setBytes:v55 length:40 atIndex:0];
  if (v47)
  {
    v38 = [v13 newTextureViewWithPixelFormat:objc_msgSend(v13 textureType:"pixelFormat") levels:objc_msgSend(v13 slices:"textureType"), v16, 1, 0, 1];
    v39 = [v14 newTextureViewWithPixelFormat:objc_msgSend(v14 textureType:"pixelFormat") levels:objc_msgSend(v14 slices:"textureType"), a5, 1, 0, 1];
    v40 = [v14 newTextureViewWithPixelFormat:objc_msgSend(v14 textureType:"pixelFormat") levels:objc_msgSend(v14 slices:"textureType"), 0, 1, 0, 1];
    [v15 setTexture:v38 atIndex:1];
    [v15 setTexture:v39 atIndex:2];
    [v15 setTexture:v38 atIndex:3];
    [v15 setTexture:v40 atIndex:4];
  }

  else
  {
    [v15 setTexture:v13 atIndex:1];
    [v15 setTexture:v14 atIndex:2];
  }

  v41 = [v37 threadExecutionWidth];
  v42 = [v37 maxTotalThreadsPerThreadgroup];
  v43 = v42 / [v37 threadExecutionWidth];
  v44 = [v37 device];
  v45 = [v44 supportsFamily:1004];

  if (v45)
  {
    v52 = v48;
    v53 = HIWORD(v48);
    v54 = 1;
    v49 = v41;
    v50 = v43;
    v51 = 1;
    [v15 dispatchThreads:&v52 threadsPerThreadgroup:&v49];
  }

  else
  {
    v52 = (v48 + v41 - 1) / v41;
    v53 = (HIWORD(v48) + v43 - 1) / v43;
    v54 = 1;
    v49 = v41;
    v50 = v43;
    v51 = 1;
    [v15 dispatchThreadgroups:&v52 threadsPerThreadgroup:&v49];
  }
}

void generateMipmapsForTexture_HierarchicalTiling_traverse(void *a1, void *a2, uint64_t a3, void *a4, int a5, __int32 a6, unsigned int a7, uint64_t a8, uint16x4_t a9)
{
  a9.i32[0] = a6;
  v40 = a9;
  v39 = a1;
  v16 = a2;
  v17 = a4;
  v18 = [v39 width];
  v19 = [v39 height];
  if (v40.u16[1] <= HIWORD(a7))
  {
    v20 = vmovl_u16(v40);
    v21.i64[0] = v18;
    v21.i64[1] = v19;
    v22 = vshlq_u64(v21, vnegq_s64(vdupq_n_s64(a5)));
    v23 = vcgtq_u64(v22, vdupq_n_s64(1uLL));
    v36 = vdupq_n_s64(0x800uLL);
    v37 = vsubq_s64(vandq_s8(v22, v23), vmvnq_s8(v23));
    do
    {
      v20.i32[0] = a6;
      if (a7 >= a6)
      {
        v24 = a6;
        do
        {
          v41 = v20;
          v25 = vshl_n_s32(*v20.i8, 0xBuLL);
          v26.i64[0] = v25.u32[0];
          v26.i64[1] = v25.u32[1];
          v27.i64[0] = 0xFFFFLL;
          v27.i64[1] = 0xFFFFLL;
          v28 = vsubq_s64(v37, vandq_s8(v26, v27));
          v29 = vmovn_s64(vbslq_s8(vcgtq_u64(v36, v28), v28, v36));
          if (a5 >= 2)
          {
            v38 = v29;
            v30 = vadd_s32(v25, v29);
            v31 = vshr_n_u32(vand_s8(vadd_s32(vadd_s32(v30, v30), -1), 0xFFFF0000FFFFLL), 0xBuLL);
            HIWORD(v45) = v31.i16[2];
            LOWORD(v45) = v31.i16[0];
            v32 = vand_s8(vadd_s32(*v41.i8, *v41.i8), 0x1E0000001ELL);
            HIWORD(v44) = v32.i16[2];
            LOWORD(v44) = v32.i16[0];
            v33 = *(a3 + 16);
            v46[0] = *a3;
            v46[1] = v33;
            v47 = *(a3 + 32);
            v35 = v25;
            generateMipmapsForTexture_HierarchicalTiling_traverse(v39, v16, v46, v17, a5 - 1, v44, v45, a8, *&v46[0]);
            v29 = v38;
            v25 = v35;
          }

          HIWORD(v43) = v25.i16[2];
          LOWORD(v43) = v25.i16[0];
          HIWORD(v42) = v29.i16[2];
          LOWORD(v42) = v29.i16[0];
          dispatchMipGenRect(v39, v39, v16, v17, a5, v43, v42, a8);
          ++v24;
          v34 = v41;
          v34.i32[0] = v24;
          v20 = v34;
        }

        while (v24 <= a7);
      }

      ++v20.i32[1];
    }

    while (v20.u16[2] <= HIWORD(a7));
  }
}

void generateMipmapsForTexture(void *a1, void *a2, void *a3, uint64_t a4, void *a5, unsigned __int8 a6)
{
  v36 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a5;
  if (CGRectIsNull(*(a4 + 8)))
  {
    v14 = [v11 width];
    v15 = [v11 height];
    v16 = 0;
  }

  else
  {
    v14 = *(a4 + 24);
    v15 = *(a4 + 32);
    v16 = vcvt_f32_f64(*(a4 + 8));
  }

  v17 = [v11 width];
  v18 = [v11 height];
  v19 = [v11 width];
  v20 = [v11 height];
  if ([v11 mipmapLevelCount] >= 2)
  {
    v21.f32[0] = v17;
    v21.f32[1] = v18;
    v22 = vdiv_f32(v16, v21);
    v21.f32[0] = v14;
    v23 = v15;
    v21.f32[1] = v23;
    v24.f32[0] = v19;
    v24.f32[1] = v20;
    v25 = vdiv_f32(v21, v24);
    v26 = 1;
    do
    {
      v27 = [v11 width];
      if (v27 >> v26 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27 >> v26;
      }

      v29 = [v11 height] >> v26;
      v30.f32[0] = v28;
      if (v29 <= 1)
      {
        v29 = 1;
      }

      v30.f32[1] = v29;
      v31 = vmul_f32(v22, v30);
      v32 = vadd_f32(v31, vmul_f32(v25, v30));
      v33 = vcvt_s32_f32(vrndm_f32(v31));
      HIWORD(v39) = v33.i16[2];
      v34 = vsub_s32(vcvt_s32_f32(vrndp_f32(v32)), v33);
      LOWORD(v39) = v33.i16[0];
      HIWORD(v38) = v34.i16[2];
      LOWORD(v38) = v34.i16[0];
      v35 = v37;
      if ((a6 & (v26 == 1)) == 0)
      {
        v35 = v11;
      }

      dispatchMipGenRect(v35, v11, v12, v13, v26++, v39, v38, v13[160]);
    }

    while ([v11 mipmapLevelCount] > v26);
  }
}

void re::SamplerManager::~SamplerManager(re::SamplerManager *this)
{
  re::FixedArray<re::DynamicString>::deinit(this + 17);
  v2 = *(this + 15);
  if (v2)
  {

    *(this + 15) = 0;
  }

  v3 = *(this + 14);
  if (v3)
  {

    *(this + 14) = 0;
  }

  v4 = *(this + 13);
  if (v4)
  {

    *(this + 13) = 0;
  }

  v5 = *(this + 12);
  if (v5)
  {

    *(this + 12) = 0;
  }

  v6 = *(this + 11);
  if (v6)
  {

    *(this + 11) = 0;
  }

  v7 = *(this + 10);
  if (v7)
  {

    *(this + 10) = 0;
  }

  v8 = *(this + 9);
  if (v8)
  {

    *(this + 9) = 0;
  }

  v9 = *(this + 8);
  if (v9)
  {

    *(this + 8) = 0;
  }

  v10 = *(this + 7);
  if (v10)
  {

    *(this + 7) = 0;
  }

  v11 = *(this + 6);
  if (v11)
  {

    *(this + 6) = 0;
  }

  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 8);
}

BOOL re::SamplerManager::init(id *this, id *a2)
{
  v4 = &v205;
  v218 = *MEMORY[0x1E69E9840];
  v5 = re::ObjCObject::operator=(this, a2 + 26);
  if (!this[18])
  {
    v204 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v119 = MEMORY[0x1E69E9C10];
    v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v120)
    {
      v121 = 3;
    }

    else
    {
      v121 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 0;
    v211 = 2048;
    v212 = 0;
    _os_log_send_and_compose_impl(v121, &v204, &v213, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
    goto LABEL_196;
  }

  v6 = this[19];
  *&v213 = "nearest";
  *(&v213 + 1) = 7;
  re::DynamicString::operator=(v6, &v213);
  v4 = this[18];
  if (v4 <= 1)
  {
LABEL_196:
    v204 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v122 = MEMORY[0x1E69E9C10];
    v123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v123)
    {
      v124 = 3;
    }

    else
    {
      v124 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 1;
    v211 = 2048;
    v212 = v4;
    _os_log_send_and_compose_impl(v124, &v204, &v213, 80, &dword_1E1C61000, v122, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
    goto LABEL_200;
  }

  v7 = this[19];
  *&v213 = "bilinear";
  *(&v213 + 1) = 8;
  re::DynamicString::operator=((v7 + 32), &v213);
  v4 = this[18];
  if (v4 <= 2)
  {
LABEL_200:
    v204 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v125 = MEMORY[0x1E69E9C10];
    v126 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v126)
    {
      v127 = 3;
    }

    else
    {
      v127 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 2;
    v211 = 2048;
    v212 = v4;
    _os_log_send_and_compose_impl(v127, &v204, &v213, 80, &dword_1E1C61000, v125, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
    goto LABEL_204;
  }

  v8 = this[19];
  *&v213 = "trilinear";
  *(&v213 + 1) = 9;
  re::DynamicString::operator=((v8 + 64), &v213);
  v4 = this[18];
  if (v4 <= 3)
  {
LABEL_204:
    v204 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v128 = MEMORY[0x1E69E9C10];
    v129 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v129)
    {
      v130 = 3;
    }

    else
    {
      v130 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 3;
    v211 = 2048;
    v212 = v4;
    _os_log_send_and_compose_impl(v130, &v204, &v213, 80, &dword_1E1C61000, v128, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
    goto LABEL_208;
  }

  v9 = this[19];
  *&v213 = "anisotropic4x";
  *(&v213 + 1) = 13;
  re::DynamicString::operator=((v9 + 96), &v213);
  v4 = this[18];
  if (v4 <= 4)
  {
LABEL_208:
    v204 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v131 = MEMORY[0x1E69E9C10];
    v132 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v132)
    {
      v133 = 3;
    }

    else
    {
      v133 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 4;
    v211 = 2048;
    v212 = v4;
    _os_log_send_and_compose_impl(v133, &v204, &v213, 80, &dword_1E1C61000, v131, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
    goto LABEL_212;
  }

  v10 = this[19];
  *&v213 = "nearestClamp";
  *(&v213 + 1) = 12;
  re::DynamicString::operator=((v10 + 128), &v213);
  v4 = this[18];
  if (v4 <= 5)
  {
LABEL_212:
    v204 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v134 = MEMORY[0x1E69E9C10];
    v135 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v135)
    {
      v136 = 3;
    }

    else
    {
      v136 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 5;
    v211 = 2048;
    v212 = v4;
    _os_log_send_and_compose_impl(v136, &v204, &v213, 80, &dword_1E1C61000, v134, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
    goto LABEL_216;
  }

  v11 = this[19];
  *&v213 = "bilinearClamp";
  *(&v213 + 1) = 13;
  re::DynamicString::operator=((v11 + 160), &v213);
  v4 = this[18];
  if (v4 <= 6)
  {
LABEL_216:
    v204 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v137 = MEMORY[0x1E69E9C10];
    v138 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v138)
    {
      v139 = 3;
    }

    else
    {
      v139 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 6;
    v211 = 2048;
    v212 = v4;
    _os_log_send_and_compose_impl(v139, &v204, &v213, 80, &dword_1E1C61000, v137, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
    goto LABEL_220;
  }

  v12 = this[19];
  *&v213 = "trilinearClamp";
  *(&v213 + 1) = 14;
  re::DynamicString::operator=((v12 + 192), &v213);
  v4 = this[18];
  if (v4 <= 7)
  {
LABEL_220:
    v204 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v140 = MEMORY[0x1E69E9C10];
    v141 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v141)
    {
      v142 = 3;
    }

    else
    {
      v142 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 7;
    v211 = 2048;
    v212 = v4;
    _os_log_send_and_compose_impl(v142, &v204, &v213, 80, &dword_1E1C61000, v140, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
    goto LABEL_224;
  }

  v13 = this[19];
  *&v213 = "nearestClampToZero";
  *(&v213 + 1) = 18;
  re::DynamicString::operator=((v13 + 224), &v213);
  v4 = this[18];
  if (v4 <= 8)
  {
LABEL_224:
    v204 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v143 = MEMORY[0x1E69E9C10];
    v144 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v144)
    {
      v145 = 3;
    }

    else
    {
      v145 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 8;
    v211 = 2048;
    v212 = v4;
    _os_log_send_and_compose_impl(v145, &v204, &v213, 80, &dword_1E1C61000, v143, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
    goto LABEL_228;
  }

  v14 = this[19];
  *&v213 = "bilinearClampToZero";
  *(&v213 + 1) = 19;
  re::DynamicString::operator=((v14 + 256), &v213);
  v4 = this[18];
  if (v4 <= 9)
  {
LABEL_228:
    v204 = 0;
    v25 = &v205;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v146 = MEMORY[0x1E69E9C10];
    v147 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v147)
    {
      v148 = 3;
    }

    else
    {
      v148 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 9;
    v211 = 2048;
    v212 = v4;
    _os_log_send_and_compose_impl(v148, &v204, &v213, 80, &dword_1E1C61000, v146, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v180);
    _os_crash_msg();
    __break(1u);
LABEL_232:
    v204 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v149 = MEMORY[0x1E69E9C10];
    v150 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v150)
    {
      v151 = 3;
    }

    else
    {
      v151 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 0;
    v211 = 2048;
    v212 = 0;
    _os_log_send_and_compose_impl(v151, &v204, &v213, 80, &dword_1E1C61000, v149, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v181);
    _os_crash_msg();
    __break(1u);
LABEL_236:
    v204 = 0;
    v45 = &v205;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v152 = MEMORY[0x1E69E9C10];
    v153 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v153)
    {
      v154 = 3;
    }

    else
    {
      v154 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 1;
    v211 = 2048;
    v212 = v25;
    _os_log_send_and_compose_impl(v154, &v204, &v213, 80, &dword_1E1C61000, v152, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v181);
    _os_crash_msg();
    __break(1u);
LABEL_240:
    v204 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v155 = MEMORY[0x1E69E9C10];
    v156 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v156)
    {
      v157 = 3;
    }

    else
    {
      v157 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 2;
    v211 = 2048;
    v212 = v45;
    _os_log_send_and_compose_impl(v157, &v204, &v213, 80, &dword_1E1C61000, v155, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v181);
    _os_crash_msg();
    __break(1u);
LABEL_244:
    v204 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v158 = MEMORY[0x1E69E9C10];
    v159 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v159)
    {
      v160 = 3;
    }

    else
    {
      v160 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 3;
    v211 = 2048;
    v212 = v45;
    _os_log_send_and_compose_impl(v160, &v204, &v213, 80, &dword_1E1C61000, v158, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v181);
    _os_crash_msg();
    __break(1u);
LABEL_248:
    v204 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v161 = MEMORY[0x1E69E9C10];
    v162 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v162)
    {
      v163 = 3;
    }

    else
    {
      v163 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 4;
    v211 = 2048;
    v212 = v45;
    _os_log_send_and_compose_impl(v163, &v204, &v213, 80, &dword_1E1C61000, v161, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v181);
    _os_crash_msg();
    __break(1u);
LABEL_252:
    v204 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v164 = MEMORY[0x1E69E9C10];
    v165 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v165)
    {
      v166 = 3;
    }

    else
    {
      v166 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 5;
    v211 = 2048;
    v212 = v45;
    _os_log_send_and_compose_impl(v166, &v204, &v213, 80, &dword_1E1C61000, v164, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v181);
    _os_crash_msg();
    __break(1u);
LABEL_256:
    v204 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v167 = MEMORY[0x1E69E9C10];
    v168 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v168)
    {
      v169 = 3;
    }

    else
    {
      v169 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 6;
    v211 = 2048;
    v212 = v45;
    _os_log_send_and_compose_impl(v169, &v204, &v213, 80, &dword_1E1C61000, v167, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v181);
    _os_crash_msg();
    __break(1u);
LABEL_260:
    v204 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v170 = MEMORY[0x1E69E9C10];
    v171 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v171)
    {
      v172 = 3;
    }

    else
    {
      v172 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 7;
    v211 = 2048;
    v212 = v45;
    _os_log_send_and_compose_impl(v172, &v204, &v213, 80, &dword_1E1C61000, v170, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v181);
    _os_crash_msg();
    __break(1u);
LABEL_264:
    v204 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v173 = MEMORY[0x1E69E9C10];
    v174 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v174)
    {
      v175 = 3;
    }

    else
    {
      v175 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 8;
    v211 = 2048;
    v212 = v45;
    _os_log_send_and_compose_impl(v175, &v204, &v213, 80, &dword_1E1C61000, v173, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v181);
    _os_crash_msg();
    __break(1u);
    goto LABEL_268;
  }

  v15 = this[19];
  *&v213 = "trilinearClampToZero";
  *(&v213 + 1) = 20;
  re::DynamicString::operator=((v15 + 288), &v213);
  v16 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v16 setRAddressMode_];
  [v16 setSAddressMode_];
  [v16 setTAddressMode_];
  [v16 setMinFilter_];
  [v16 setMagFilter_];
  [v16 setMipFilter_];
  *&v213 = [*this newSamplerStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 6, &v213);
  if (v213)
  {

    *&v213 = 0;
  }

  v182 = a2;
  if (v16)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), this + 6);
  v17 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v17 setRAddressMode_];
  [v17 setSAddressMode_];
  [v17 setTAddressMode_];
  [v17 setMinFilter_];
  [v17 setMagFilter_];
  [v17 setMipFilter_];
  *&v213 = [*this newSamplerStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 7, &v213);
  if (v213)
  {

    *&v213 = 0;
  }

  if (v17)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), this + 7);
  v18 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v18 setRAddressMode_];
  [v18 setSAddressMode_];
  [v18 setTAddressMode_];
  [v18 setMinFilter_];
  [v18 setMagFilter_];
  [v18 setMipFilter_];
  *&v213 = [*this newSamplerStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 8, &v213);
  if (v213)
  {

    *&v213 = 0;
  }

  if (v18)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), this + 8);
  v19 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v19 setRAddressMode_];
  [v19 setSAddressMode_];
  [v19 setTAddressMode_];
  [v19 setMinFilter_];
  [v19 setMagFilter_];
  [v19 setMipFilter_];
  [v19 setMaxAnisotropy_];
  *&v213 = [*this newSamplerStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 9, &v213);
  if (v213)
  {

    *&v213 = 0;
  }

  if (v19)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), this + 9);
  v20 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v20 setRAddressMode_];
  [v20 setSAddressMode_];
  [v20 setTAddressMode_];
  [v20 setMinFilter_];
  [v20 setMagFilter_];
  [v20 setMipFilter_];
  *&v213 = [*this newSamplerStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 10, &v213);
  if (v213)
  {

    *&v213 = 0;
  }

  if (v20)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), this + 10);
  v21 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v21 setRAddressMode_];
  [v21 setSAddressMode_];
  [v21 setTAddressMode_];
  [v21 setMinFilter_];
  [v21 setMagFilter_];
  [v21 setMipFilter_];
  *&v213 = [*this newSamplerStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 11, &v213);
  if (v213)
  {

    *&v213 = 0;
  }

  if (v21)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), this + 11);
  v22 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v22 setRAddressMode_];
  [v22 setSAddressMode_];
  [v22 setTAddressMode_];
  [v22 setMinFilter_];
  [v22 setMagFilter_];
  [v22 setMipFilter_];
  *&v213 = [*this newSamplerStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 12, &v213);
  if (v213)
  {

    *&v213 = 0;
  }

  if (v22)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), this + 12);
  v23 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v23 setRAddressMode_];
  [v23 setSAddressMode_];
  [v23 setTAddressMode_];
  [v23 setMinFilter_];
  [v23 setMagFilter_];
  [v23 setMipFilter_];
  *&v213 = [*this newSamplerStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 13, &v213);
  if (v213)
  {

    *&v213 = 0;
  }

  if (v23)
  {
  }

  v181 = this + 13;
  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), this + 13);
  v24 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v24 setRAddressMode_];
  [v24 setSAddressMode_];
  [v24 setTAddressMode_];
  [v24 setMinFilter_];
  [v24 setMagFilter_];
  [v24 setMipFilter_];
  *&v213 = [*this newSamplerStateWithDescriptor_];
  v183 = this + 14;
  NS::SharedPtr<MTL::Texture>::operator=(this + 14, &v213);
  if (v213)
  {

    *&v213 = 0;
  }

  if (v24)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), v183);
  v25 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v25 setRAddressMode_];
  [v25 setSAddressMode_];
  [v25 setTAddressMode_];
  [v25 setMinFilter_];
  [v25 setMagFilter_];
  [v25 setMipFilter_];
  *&v213 = [*this newSamplerStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 15, &v213);
  if (v213)
  {

    *&v213 = 0;
  }

  if (v25)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), this + 15);
  SamplerTableByName = re::MaterialManager::findSamplerTableByName(v182[3], "fallback");
  this[16] = SamplerTableByName;
  re::SamplerTable::init(SamplerTableByName, 0xAuLL);
  if (!this[18])
  {
    goto LABEL_232;
  }

  v27 = this[16];
  v28 = this[19];
  v29 = *(v28 + 8);
  if (v29)
  {
    v31 = *(v28 + 16);
    if (!v31)
    {
      v35 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_63;
    }

    LOBYTE(v28) = *v31;
  }

  else
  {
    v30 = v29 >> 8;
    v31 = (v28 + 9);
    LOBYTE(v28) = v30;
  }

  if (v28)
  {
    v28 = v28;
    v32 = v31[1];
    if (v32)
    {
      v33 = v31 + 2;
      do
      {
        v28 = 31 * v28 + v32;
        v34 = *v33++;
        v32 = v34;
      }

      while (v34);
    }

    v35 = v28 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v35 = 0;
  }

LABEL_63:
  v203 = v35;
  v202 = this[6];
  re::SamplerTable::setSampler(v27, &v203, &v202);
  if (v202)
  {

    v202 = 0;
  }

  v203 = 0;
  v25 = this[18];
  if (v25 <= 1)
  {
    goto LABEL_236;
  }

  v36 = this[16];
  v37 = this[19];
  v38 = *(v37 + 40);
  if (v38)
  {
    v40 = *(v37 + 48);
    if (!v40)
    {
      v44 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_77;
    }

    LOBYTE(v37) = *v40;
  }

  else
  {
    v39 = v38 >> 8;
    v40 = (v37 + 41);
    LOBYTE(v37) = v39;
  }

  if (v37)
  {
    v37 = v37;
    v41 = v40[1];
    if (v41)
    {
      v42 = v40 + 2;
      do
      {
        v37 = 31 * v37 + v41;
        v43 = *v42++;
        v41 = v43;
      }

      while (v43);
    }

    v44 = v37 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v44 = 0;
  }

LABEL_77:
  v201 = v44;
  v200 = this[7];
  re::SamplerTable::setSampler(v36, &v201, &v200);
  if (v200)
  {

    v200 = 0;
  }

  v201 = 0;
  v45 = this[18];
  if (v45 <= 2)
  {
    goto LABEL_240;
  }

  v46 = this[16];
  v47 = this[19];
  v48 = *(v47 + 72);
  if (v48)
  {
    v50 = *(v47 + 80);
    if (!v50)
    {
      v54 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_91;
    }

    LOBYTE(v47) = *v50;
  }

  else
  {
    v49 = v48 >> 8;
    v50 = (v47 + 73);
    LOBYTE(v47) = v49;
  }

  if (v47)
  {
    v47 = v47;
    v51 = v50[1];
    if (v51)
    {
      v52 = v50 + 2;
      do
      {
        v47 = 31 * v47 + v51;
        v53 = *v52++;
        v51 = v53;
      }

      while (v53);
    }

    v54 = v47 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v54 = 0;
  }

LABEL_91:
  v199 = v54;
  v198 = this[8];
  re::SamplerTable::setSampler(v46, &v199, &v198);
  if (v198)
  {

    v198 = 0;
  }

  v199 = 0;
  v45 = this[18];
  if (v45 <= 3)
  {
    goto LABEL_244;
  }

  v55 = this[16];
  v56 = this[19];
  v57 = *(v56 + 104);
  if (v57)
  {
    v59 = *(v56 + 112);
    if (!v59)
    {
      v63 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_105;
    }

    LOBYTE(v56) = *v59;
  }

  else
  {
    v58 = v57 >> 8;
    v59 = (v56 + 105);
    LOBYTE(v56) = v58;
  }

  if (v56)
  {
    v56 = v56;
    v60 = v59[1];
    if (v60)
    {
      v61 = v59 + 2;
      do
      {
        v56 = 31 * v56 + v60;
        v62 = *v61++;
        v60 = v62;
      }

      while (v62);
    }

    v63 = v56 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v63 = 0;
  }

LABEL_105:
  v197 = v63;
  v196 = this[9];
  re::SamplerTable::setSampler(v55, &v197, &v196);
  if (v196)
  {

    v196 = 0;
  }

  v197 = 0;
  v45 = this[18];
  if (v45 <= 4)
  {
    goto LABEL_248;
  }

  v64 = this[16];
  v65 = this[19];
  v66 = *(v65 + 136);
  if (v66)
  {
    v68 = *(v65 + 144);
    if (!v68)
    {
      v72 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_119;
    }

    LOBYTE(v65) = *v68;
  }

  else
  {
    v67 = v66 >> 8;
    v68 = (v65 + 137);
    LOBYTE(v65) = v67;
  }

  if (v65)
  {
    v65 = v65;
    v69 = v68[1];
    if (v69)
    {
      v70 = v68 + 2;
      do
      {
        v65 = 31 * v65 + v69;
        v71 = *v70++;
        v69 = v71;
      }

      while (v71);
    }

    v72 = v65 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v72 = 0;
  }

LABEL_119:
  v195 = v72;
  v194 = this[10];
  re::SamplerTable::setSampler(v64, &v195, &v194);
  if (v194)
  {

    v194 = 0;
  }

  v195 = 0;
  v45 = this[18];
  if (v45 <= 5)
  {
    goto LABEL_252;
  }

  v73 = this[16];
  v74 = this[19];
  v75 = *(v74 + 168);
  if (v75)
  {
    v77 = *(v74 + 176);
    if (!v77)
    {
      v81 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_133;
    }

    LOBYTE(v74) = *v77;
  }

  else
  {
    v76 = v75 >> 8;
    v77 = (v74 + 169);
    LOBYTE(v74) = v76;
  }

  if (v74)
  {
    v74 = v74;
    v78 = v77[1];
    if (v78)
    {
      v79 = v77 + 2;
      do
      {
        v74 = 31 * v74 + v78;
        v80 = *v79++;
        v78 = v80;
      }

      while (v80);
    }

    v81 = v74 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v81 = 0;
  }

LABEL_133:
  v193 = v81;
  v192 = this[11];
  re::SamplerTable::setSampler(v73, &v193, &v192);
  if (v192)
  {

    v192 = 0;
  }

  v193 = 0;
  v45 = this[18];
  if (v45 <= 6)
  {
    goto LABEL_256;
  }

  v82 = this[16];
  v83 = this[19];
  v84 = *(v83 + 200);
  if (v84)
  {
    v86 = *(v83 + 208);
    if (!v86)
    {
      v90 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_147;
    }

    LOBYTE(v83) = *v86;
  }

  else
  {
    v85 = v84 >> 8;
    v86 = (v83 + 201);
    LOBYTE(v83) = v85;
  }

  if (v83)
  {
    v83 = v83;
    v87 = v86[1];
    if (v87)
    {
      v88 = v86 + 2;
      do
      {
        v83 = 31 * v83 + v87;
        v89 = *v88++;
        v87 = v89;
      }

      while (v89);
    }

    v90 = v83 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v90 = 0;
  }

LABEL_147:
  v191 = v90;
  v190 = this[12];
  re::SamplerTable::setSampler(v82, &v191, &v190);
  if (v190)
  {

    v190 = 0;
  }

  v191 = 0;
  v45 = this[18];
  if (v45 <= 7)
  {
    goto LABEL_260;
  }

  v91 = this[16];
  v92 = this[19];
  v93 = *(v92 + 232);
  if (v93)
  {
    v95 = *(v92 + 240);
    if (!v95)
    {
      v99 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_161;
    }

    LOBYTE(v92) = *v95;
  }

  else
  {
    v94 = v93 >> 8;
    v95 = (v92 + 233);
    LOBYTE(v92) = v94;
  }

  if (v92)
  {
    v92 = v92;
    v96 = v95[1];
    if (v96)
    {
      v97 = v95 + 2;
      do
      {
        v92 = 31 * v92 + v96;
        v98 = *v97++;
        v96 = v98;
      }

      while (v98);
    }

    v99 = v92 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v99 = 0;
  }

LABEL_161:
  v189 = v99;
  v188 = *v181;
  re::SamplerTable::setSampler(v91, &v189, &v188);
  if (v188)
  {

    v188 = 0;
  }

  v189 = 0;
  v45 = this[18];
  if (v45 <= 8)
  {
    goto LABEL_264;
  }

  v100 = this[16];
  v101 = this[19];
  v102 = *(v101 + 264);
  if (v102)
  {
    v104 = *(v101 + 272);
    if (!v104)
    {
      v108 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_175;
    }

    LOBYTE(v101) = *v104;
  }

  else
  {
    v103 = v102 >> 8;
    v104 = (v101 + 265);
    LOBYTE(v101) = v103;
  }

  if (v101)
  {
    v101 = v101;
    v105 = v104[1];
    if (v105)
    {
      v106 = v104 + 2;
      do
      {
        v101 = 31 * v101 + v105;
        v107 = *v106++;
        v105 = v107;
      }

      while (v107);
    }

    v108 = v101 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v108 = 0;
  }

LABEL_175:
  v187 = v108;
  v186 = *v183;
  re::SamplerTable::setSampler(v100, &v187, &v186);
  if (v186)
  {

    v186 = 0;
  }

  v187 = 0;
  v45 = this[18];
  if (v45 <= 9)
  {
LABEL_268:
    v204 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v176 = MEMORY[0x1E69E9C10];
    v177 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v205 = 136315906;
    v206 = "operator[]";
    v207 = 1024;
    if (v177)
    {
      v178 = 3;
    }

    else
    {
      v178 = 2;
    }

    v208 = 468;
    v209 = 2048;
    v210 = 9;
    v211 = 2048;
    v212 = v45;
    _os_log_send_and_compose_impl(v178, &v204, &v213, 80, &dword_1E1C61000, v176, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v179, v181);
    _os_crash_msg();
    __break(1u);
  }

  v109 = this[16];
  v110 = this[19];
  v111 = *(v110 + 296);
  if (v111)
  {
    v113 = *(v110 + 304);
    if (!v113)
    {
      v117 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_189;
    }

    LOBYTE(v110) = *v113;
  }

  else
  {
    v112 = v111 >> 8;
    v113 = (v110 + 297);
    LOBYTE(v110) = v112;
  }

  if (v110)
  {
    v110 = v110;
    v114 = v113[1];
    if (v114)
    {
      v115 = v113 + 2;
      do
      {
        v110 = 31 * v110 + v114;
        v116 = *v115++;
        v114 = v116;
      }

      while (v116);
    }

    v117 = v110 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v117 = 0;
  }

LABEL_189:
  v185 = v117;
  v184 = this[15];
  re::SamplerTable::setSampler(v109, &v185, &v184);
  if (v184)
  {
  }

  return *this != 0;
}

void *re::SamplerTable::init(re::SamplerTable *this, unint64_t a2)
{
  v4 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(this + 8, a2);
  ++*(this + 22);
}

void **re::SamplerTable::setSampler(uint64_t *a1, void *a2, id *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 == -1)
  {
    v12 = a1[10];
    re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 8), a3);
    LOBYTE(v25[0]) = v12;
    return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addOrReplace(a1, a2, v25);
  }

  else
  {
    v7 = *(a1[1] + 16 * v6 + 8);
    v8 = a1[10];
    if (v8 <= v7)
    {
      v16 = 0;
      memset(v25, 0, sizeof(v25));
      v13 = MEMORY[0x1E69E9C10];
      v17 = 136315906;
      v18 = "operator[]";
      v19 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v20 = 789;
      v21 = 2048;
      v22 = v7;
      v23 = 2048;
      v24 = v8;
      _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
      _os_crash_msg();
      __break(1u);
    }

    result = (a1[12] + 8 * v7);
    v10 = *a3;
    v11 = *result;
    if (*a3 != *result)
    {
      result = NS::SharedPtr<MTL::Buffer>::operator=(result, a3);
      if (!v10 || !v11)
      {
        *&v25[0] = a1;
        return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::rehashKeysWith<re::SamplerTable::rehashNames(void)::{lambda(unsigned char)#1}>(a1, v25);
      }
    }
  }

  return result;
}

void re::SamplerManager::deinit(re::SamplerManager *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = 8 * v2;
    do
    {

      *v3++ = 0;
      v4 -= 8;
    }

    while (v4);
  }

  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(this + 8);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 8);
  *(this + 16) = 0;

  *(this + 6) = 0;
  *(this + 7) = 0;

  *(this + 8) = 0;
  *(this + 9) = 0;

  *(this + 10) = 0;
  *(this + 11) = 0;

  *(this + 12) = 0;
  *(this + 13) = 0;

  *(this + 14) = 0;
  *(this + 15) = 0;
  v5 = *this;
  *this = 0;
}

void re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 8 * v2;
    do
    {
      if (*v3)
      {

        *v3 = 0;
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

int8x16_t **re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::rehashKeysWith<re::SamplerTable::rehashNames(void)::{lambda(unsigned char)#1}>(int8x16_t **result, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  result[5] = 0;
  v18 = result;
  v2 = result[2];
  if (v2 >= 0x10)
  {
    v4 = result;
    v5 = 0;
    v6 = *result;
    v7 = v2 >> 4;
    while (1)
    {
      v8 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v6), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19 = v8 ^ 0xFFFFLL;
      if (v8 != 0xFFFFLL)
      {
        break;
      }

      v5 -= 16;
      ++v6;
      if (!--v7)
      {
        return result;
      }
    }

    v9 = __clz(__rbit64(v8 ^ 0xFFFFLL));
    v10 = v9 - v5;
    v20 = v9 - v5;
    if (v9 + 1 != v5)
    {
      do
      {
        i64 = v18[1][v10].i64;
        v12 = *(i64 + 8);
        v13 = *(*a2 + 80);
        if (v13 <= v12)
        {
          v21 = 0;
          memset(v30, 0, sizeof(v30));
          v15 = MEMORY[0x1E69E9C10];
          v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v22 = 136315906;
          v23 = "operator[]";
          v24 = 1024;
          if (v16)
          {
            v17 = 3;
          }

          else
          {
            v17 = 2;
          }

          v25 = 789;
          v26 = 2048;
          v27 = v12;
          v28 = 2048;
          v29 = v13;
          _os_log_send_and_compose_impl(v17, &v21, v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v18, v19);
          _os_crash_msg();
          __break(1u);
        }

        if (*(*(*a2 + 96) + 8 * v12))
        {
          v14 = 0xBF58476D1CE4E5B9 * (*i64 ^ (*i64 >> 30));
          v4[5] = (v4[5] ^ ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))));
        }

        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v18);
        v10 = v20;
      }

      while (v20 != -1);
    }
  }

  return result;
}

void *re::introspect_MeshSortingConfiguration(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Centroid";
    re::introspect_MeshSortingConfiguration(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 3;
    *(v12 + 16) = "FurthestOBB";
    qword_1EE1C6328 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 4;
    *(v14 + 16) = "NearestOBB";
    qword_1EE1C6330 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 24, 8);
    *v16 = 1;
    *(v16 + 8) = 1;
    *(v16 + 16) = "FurthestRadial";
    qword_1EE1C6338 = v16;
    v17 = re::introspectionAllocator();
    v18 = (*(*v17 + 32))(v17, 24, 8);
    *v18 = 1;
    *(v18 + 8) = 2;
    *(v18 + 16) = "NearestRadial";
    qword_1EE1C6340 = v18;
    v19 = re::introspectionAllocator();
    v20 = (*(*v19 + 32))(v19, 24, 8);
    *v20 = 1;
    *(v20 + 8) = 5;
    *(v20 + 16) = "CentroidWithOverride";
    qword_1EE1C6348 = v20;
  }

  {
    v21 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_MeshSortingConfiguration(BOOL)::info, "MeshSortingConfiguration", 1, 1, 1, 1);
    *v21 = &unk_1F5D0C658;
    *(v21 + 8) = &re::introspect_MeshSortingConfiguration(BOOL)::enumTable;
    *(v21 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_MeshSortingConfiguration(BOOL)::isInitialized)
    {
      return &re::introspect_MeshSortingConfiguration(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v23);
    v3 = re::introspect_MeshSortingConfiguration(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v23);
    if (v3)
    {
      return &re::introspect_MeshSortingConfiguration(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_MeshSortingConfiguration(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_MeshSortingConfiguration(BOOL)::info;
    }
  }

  re::introspect_MeshSortingConfiguration(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_MeshSortingConfiguration(BOOL)::info, a2);
  v22[0] = 0x5B547FA33D6536FELL;
  v22[1] = "MeshSortingConfiguration";
  xmmword_1EE1C62F8 = v23;
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_MeshSortingConfiguration(BOOL)::info;
}

void *re::allocInfo_RenderGraphData(re *this)
{
  if ((atomic_load_explicit(_MergedGlobals_424, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(_MergedGlobals_424))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B79F0, "RenderGraphData");
    __cxa_guard_release(_MergedGlobals_424);
  }

  return &unk_1EE1B79F0;
}

void re::initInfo_RenderGraphData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xA3C1F00635BD9A04;
  v8[1] = "RenderGraphData";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_RenderGraphData(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

uint64_t re::RenderGraphDataStore::RenderGraphDataStore(uint64_t a1, unint64_t a2)
{
  *a1 = a2;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  v4 = a1 + 16;
  *(a1 + 52) = 0x7FFFFFFFLL;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  v5 = a1 + 64;
  *(a1 + 100) = 0x7FFFFFFFLL;
  v6 = re::globalAllocators(a1);
  v7 = re::PerFrameAllocatorManager::perFrameAllocator(v6[6], a2);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = v7;
  *(a1 + 212) = 0x7FFFFFFFLL;
  *(a1 + 224) = 0;
  v9 = re::globalAllocators(v8);
  v10 = re::PerFrameAllocatorManager::perFrameAllocator(v9[6], *a1);
  *(a1 + 8) = v10;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v5, v10, 3);
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(a1 + 176, *(a1 + 8), 3);
  return a1;
}

void re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_19_0, 4 * v10);
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

double re::RenderGraphDataStore::deinit(re::RenderGraphDataStore *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 4);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 12);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    re::internal::destroyPersistent<re::RenderGraphData>("deinit", 50, *(*(this + 4) + 24 * v3 + 16));
    v6 = *(this + 12);
    if (v6 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 4) + 24 * v3) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v6;
LABEL_14:
    ;
  }

  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 2);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 8);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 112);

  return re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 22);
}

re *re::internal::destroyPersistent<re::RenderGraphData>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

_anonymous_namespace_ *re::RenderGraphDataStore::add(re::RenderGraphDataStore *this, uint64_t a2, const re::RuntimeRenderGraphDataStruct *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = (*(**(this + 1) + 32))(*(this + 1), 40, 8);
  *v6 = &unk_1F5D03058;
  *(v6 + 8) = 0u;
  v40 = (v6 + 8);
  *(v6 + 24) = 0u;
  v51 = 0;
  v7 = (*(**(this + 1) + 32))(*(this + 1), 144, 8);
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  ArcSharedObject::ArcSharedObject(v7, 0);
  *(v8 + 22) = 0;
  *(v8 + 16) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xFFFFFFFFLL;
  *v8 = &unk_1F5D0C718;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  if (*(a3 + 113))
  {
    v9 = *(a3 + 114);
  }

  else
  {
    v9 = a3 + 905;
  }

  v10 = strlen(v9);
  v11 = (*(**(this + 1) + 32))(*(this + 1), v10 + 1, 0);
  v47 = a3 + 905;
  if (*(a3 + 113))
  {
    v12 = *(a3 + 114);
  }

  else
  {
    v12 = a3 + 905;
  }

  *(v7 + 48) = strcpy(v11, v12);
  v13 = *(a3 + 181);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(a3 + 10);
  }

  *(v7 + 56) = v14;
  *(v7 + 16) = 8;
  if (v14)
  {
    v15 = (*(**(this + 1) + 32))(*(this + 1), 8 * v14 + 23, 0);
    v16 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
    *(v16 - 2) = v14;
    *(v16 - 1) = v15;
    v49 = v16;
    bzero(v16, 8 * v14);
    v13 = *(a3 + 181);
  }

  else
  {
    v49 = 0;
  }

  v42 = v6;
  v43 = v7;
  v41 = a2;
  if (v13)
  {
    v17 = a3 + 696;
    v45 = *(a3 + 182);
    a2 = 0;
    if (v45)
    {
      v18 = *(a3 + 89);
      while (1)
      {
        v19 = *v18;
        v18 += 22;
        if (v19 < 0)
        {
          break;
        }

        if (v45 == ++a2)
        {
          LODWORD(a2) = *(a3 + 182);
          break;
        }
      }
    }

    else
    {
      LODWORD(v45) = 0;
    }

    v44 = a3 + 696;
  }

  else
  {
    v17 = a3 + 56;
    v44 = a3 + 80 * *(a3 + 5) + 56;
    v45 = *(a3 + 5);
  }

  v20 = 0;
  v46 = v13;
  v48 = a3;
  while (v13)
  {
    if (v45 == a2)
    {
      goto LABEL_41;
    }

    v21 = *(v17 + 2) + 88 * a2 + 16;
LABEL_28:
    if (*(a3 + 113))
    {
      v22 = *(a3 + 114);
    }

    else
    {
      v22 = v47;
    }

    v23 = strlen(v22);
    v24 = (*(**(this + 1) + 32))(*(this + 1), v23 + 1, 0);
    strcpy(v24, *(v21 + 8));
    v25 = (*(**(this + 1) + 32))(*(this + 1), 72, 8);
    *v25 = 0u;
    *(v25 + 32) = 0u;
    *(v25 + 64) = 0;
    *(v25 + 48) = 0u;
    *(v25 + 16) = 0u;
    v26 = re::IntrospectionMember::IntrospectionMember(v25);
    *(v26 + 1) = v24;
    *v26 = *v21;
    *(v26 + 9) = *(v21 + 36);
    re::SerializedReference<re::IntrospectionBase const*>::operator=((v25 + 16), (v21 + 16));
    re::SerializedReference<re::IntrospectionBase const*>::operator=((v25 + 48), (v21 + 48));
    *(v25 + 64) = *(v21 + 64);
    v49[v20] = v25;
    v13 = v46;
    if (v46)
    {
      v27 = a2 + 1;
      if (*(v17 + 8) <= (a2 + 1))
      {
        LODWORD(a2) = a2 + 1;
      }

      else
      {
        LODWORD(a2) = *(v17 + 8);
      }

      a3 = v48;
      while (a2 != v27)
      {
        v28 = v27;
        v29 = *(*(v17 + 2) + 88 * v27++);
        if (v29 < 0)
        {
          LODWORD(a2) = v28;
          break;
        }
      }

      ++v20;
    }

    else
    {
      v17 += 80;
      ++v20;
      a3 = v48;
    }
  }

  if (v17 != v44)
  {
    v21 = (v17 + 8);
    goto LABEL_28;
  }

LABEL_41:
  *(v7 + 64) = v49;
  *(v42 + 32) = v7;
  v30 = strlen(*(v7 + 48));
  if (v30)
  {
    MurmurHash3_x64_128(*(v7 + 48), v30, 0, &v52);
    v31 = (v53 - 0x61C8864680B583E9 + (v52 << 6) + (v52 >> 2)) ^ v52;
  }

  else
  {
    v31 = 0;
  }

  v51 = v31;
  re::FixedArray<char>::init<>(v40, *(this + 1), *(a3 + 94));
  if (*(a3 + 190))
  {
    v32 = a3 + 768;
  }

  else
  {
    v32 = *(a3 + 97);
  }

  memcpy(*(v42 + 24), v32, *(v42 + 16));
  v52 = 0;
  v53 = 0;
  v54 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(this + 176, &v51, v31, &v52);
  if (HIDWORD(v53) == 0x7FFFFFFF)
  {
    v33 = re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(this + 176, v53, v52);
    v34 = v51;
    *(v33 + 8) = v51;
    *(v33 + 16) = v7;
    ++*(this + 54);
  }

  else
  {
    v34 = v51;
  }

  v50 = (v41 - 0x61C8864680B583E9 + (v34 << 6) + (v34 >> 2)) ^ v34;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(this + 64, &v50, v50, &v52);
  if (HIDWORD(v53) == 0x7FFFFFFF)
  {
    v35 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(this + 64, v53, v52);
    *(v35 + 8) = v50;
    *(v35 + 16) = v42;
    ++*(this + 26);
  }

  v36 = *(this + 1);
  v37 = (*(*v42 + 16))(v42);
  v38 = (*(*v36 + 32))(v36, 40, 8);
  ArcSharedObject::ArcSharedObject(v38, 0);
  *(v38 + 3) = v43;
  *v38 = &unk_1F5D03098;
  *(v38 + 4) = v37;
  return v38;
}

void *re::SerializedReference<re::IntrospectionBase const*>::operator=(void *a1, void *a2)
{
  v3 = a2[1];
  if (v3)
  {
    if (*(v3 + 8))
    {
      v4 = *(v3 + 16);
    }

    else
    {
      v4 = (v3 + 9);
    }

    re::SerializedReference<re::IntrospectionBase const*>::setString(a1, v4, *v3);
  }

  else
  {
    re::SerializedReference<re::IntrospectionBase const*>::reset(a1);
    *a1 = *a2;
  }

  return a1;
}

void re::FixedArray<char>::init<>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3)
  {
    v5 = (*(*a2 + 32))(a2, a3, 1);
    a1[2] = v5;
    if (v5)
    {
      v7 = v5;
      v8 = a3 - 1;
      if (v8)
      {
        bzero(v5, v8);
        v7 += v8;
      }

      *v7 = 0;
    }

    else
    {
      re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }
  }
}

_anonymous_namespace_ *re::RenderGraphDataStore::createWrappedData(re::RenderGraphDataStore *this, uint64_t a2, const char *__s)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = strlen(__s);
  if (v6)
  {
    MurmurHash3_x64_128(__s, v6, 0, &v15);
    v7 = (v16 + (v15 << 6) + (v15 >> 2) - 0x61C8864680B583E9) ^ v15;
  }

  else
  {
    v7 = 0;
  }

  v8 = re::RenderGraphDataStore::tryGetByTypeNameHash(this, a2, v7);
  IntrospectionByNameHash = re::RenderGraphDataStore::tryGetIntrospectionByNameHash(&v15, this, v7);
  if (!v8 || v15 != 1)
  {
    return 0;
  }

  v10 = re::globalAllocators(IntrospectionByNameHash)[2];
  v11 = (*(*v8 + 16))(v8);
  v12 = (*(*v10 + 32))(v10, 40, 8);
  v13 = v16;
  ArcSharedObject::ArcSharedObject(v12, 0);
  *(v12 + 3) = v13;
  *v12 = &unk_1F5D03098;
  *(v12 + 4) = v11;
  return v12;
}

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re23RenderGraphDataPipeDataE";
  if (("N2re23RenderGraphDataPipeDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re23RenderGraphDataPipeDataE" & 0x7FFFFFFFFFFFFFFFLL);
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

uint64_t re::RenderGraphDataStore::tryGet<re::MipmapGenerationContext>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::MipmapGenerationContext>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::MipmapGenerationContext>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 24))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::DynamicArray<re::RenderProfilerText>>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::DynamicArray<re::RenderProfilerText>>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::DynamicArray<re::RenderProfilerText>>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 56))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::Slice<re::UberClippingParametersEntry>>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::Slice<re::UberClippingParametersEntry>>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::Slice<re::UberClippingParametersEntry>>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 120))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::Slice<unsigned short>>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::Slice<unsigned short>>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::Slice<unsigned short>>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 152))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::ProbeContext>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::ProbeContext>(char const*,char const*)::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::ProbeContext>(char const*,char const*)::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 184))(*(result + 8));
  }

  return result;
}

{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::ProbeContext>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::ProbeContext>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 184))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::BlurGenerationContext>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::BlurGenerationContext>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::BlurGenerationContext>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 216))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::SFBSystemShellBlurContext>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::SFBSystemShellBlurContext>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::SFBSystemShellBlurContext>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 248))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::IBLContext>(uint64_t a1, uint64_t a2)
{
  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, a2);
  if (result)
  {
    v3 = *(**(result + 8) + 376);

    return v3();
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::BlurPlanesRenderFrameData>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::BlurPlanesRenderFrameData>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::BlurPlanesRenderFrameData>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 416))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::SceneCRWSReferencePosition>(uint64_t a1, uint64_t a2)
{
  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, a2);
  if (result)
  {
    v3 = *(**(result + 8) + 912);

    return v3();
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::MeshSortingCollection>(uint64_t a1, uint64_t a2)
{
  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, a2);
  if (result)
  {
    v3 = *(**(result + 8) + 976);

    return v3();
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::DepthMitigationRenderData>(uint64_t a1, uint64_t a2)
{
  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, a2);
  if (result)
  {
    v3 = *(**(result + 8) + 1072);

    return v3();
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::UIShadowRenderData>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::UIShadowRenderData>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::UIShadowRenderData>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 1168))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::AnchorTransformData>(uint64_t a1, int a2, char *__s)
{
  v10[2] = *MEMORY[0x1E69E9840];
  {
    re::RenderGraphDataStore::tryGet<re::AnchorTransformData>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v9);
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::RenderGraphDataStore::tryGet<re::AnchorTransformData>(char const*,char const*)const::kRenderGraphDataPipeDataScopeHash;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v10);
    v5 = ((v10[1] - 0x61C8864680B583E9 + (v10[0] << 6) + (v10[0] >> 2)) ^ v10[0]) - 0x61C8864680B583E9;
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  if (result)
  {
    return (*(**(result + 8) + 1200))(*(result + 8));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::VirtualEnvironmentProbeContext>(uint64_t a1, uint64_t a2)
{
  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(a1, a2);
  if (result)
  {
    v3 = *(**(result + 8) + 1232);

    return v3();
  }

  return result;
}

void re::RuntimeRenderGraphData::~RuntimeRenderGraphData(re::RuntimeRenderGraphData *this)
{
  *this = &unk_1F5D03058;
  re::FixedArray<CoreIKTransform>::deinit(this + 1);
}

{
  *this = &unk_1F5D03058;
  re::FixedArray<CoreIKTransform>::deinit(this + 1);

  JUMPOUT(0x1E6906520);
}

re::IntrospectionMember *re::IntrospectionMember::IntrospectionMember(re::IntrospectionMember *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 3) = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 16);
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 7) = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *(this + 16) = 0;
  return this;
}

re::DynamicString *re::SerializedReference<re::IntrospectionBase const*>::setString(uint64_t a1, const char *a2, uint64_t a3)
{
  re::SerializedReference<re::IntrospectionBase const*>::reset(a1);
  v6 = (*(*a3 + 32))(a3, 32, 8);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *v6 = a3;
  *(v6 + 1) = 0;
  re::DynamicString::setCapacity(v6, 0);
  *(a1 + 8) = v6;
  v8[0] = a2;
  v8[1] = strlen(a2);
  return re::DynamicString::operator=(v6, v8);
}

uint64_t re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 24 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 24 * v4;
}

void re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(a1, v9);
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v4, *(v7 + v5 + 8) % *(v4 + 24), *(v7 + v5 + 8));
        v8 = *(a2 + 16) + v5;
        v10 = *(v8 + 8);
        v9 = *(v8 + 16);
        *(result + 8) = v10;
        *(result + 16) = v9;
        v2 = *(a2 + 32);
      }

      v5 += 24;
    }
  }

  return result;
}

void re::RenderGraphDataWrapper::~RenderGraphDataWrapper(re::RenderGraphDataWrapper *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphScopeOutput::addTargetToLane(uint64_t a1, unint64_t *a2, double *a3, int a4)
{
  v8 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a1 + 40, a2);
  if (v8)
  {
    goto LABEL_10;
  }

  v13 = 0u;
  v14 = 0u;
  v10 = 0uLL;
  v12 = 0;
  v11 = 0;
  v15 = 0;
  v16 = 0u;
  v17 = -1;
  v18 = 0;
  v19 = -1;
  v20 = 0;
  v21 = -1;
  re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(a1 + 40, a2, &v10);
  if (*(&v13 + 1))
  {
    if (v16)
    {
      (*(**(&v13 + 1) + 40))();
    }

    *&v16 = 0;
    v14 = 0uLL;
    *(&v13 + 1) = 0;
    ++v15;
  }

  if (v10.n128_u64[0] && v13)
  {
    (*(*v10.n128_u64[0] + 40))();
  }

  v8 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a1 + 40, a2);
  if (v8)
  {
LABEL_10:
    *(v8 + 5) = *a3;
    if (a4)
    {
      re::DynamicArray<re::RenderGraphTargetHandle>::add(v8, a3);
    }
  }

  else
  {
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "outputList", "addTargetToLane", 13);
    _os_crash("assertion failure: (outputList) ");
    __break(1u);
  }
}

uint64_t re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 144 * v6 + 16;
  }
}

void re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(uint64_t a1, unint64_t *a2, __n128 *a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addInternal<re::WeakStringID const&,re::RenderGraphScopeOutput::Lane>(a1, &v7, a2, a3);
  }
}

double re::DynamicArray<re::RenderGraphTargetHandle>::add(_anonymous_namespace_ *this, double *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraphTargetHandle>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 16 * v4);
  *v5 = 0.0;
  v5[1] = NAN;
  *v5 = *a2;
  result = a2[1];
  v5[1] = result;
  *(this + 2) = v4 + 1;
  ++*(this + 6);
  return result;
}

double re::RenderGraphScopeOutput::inheritPropertiesFromLane(uint64_t a1, unint64_t *a2, double *a3)
{
  v6 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a1 + 88, a2);
  if (!v6)
  {
    v14 = 0u;
    v15 = 0u;
    v11 = 0uLL;
    v13 = 0;
    v12 = 0;
    v16 = 0;
    v17 = 0u;
    v18 = -1;
    v19 = 0;
    v20 = -1;
    v21 = 0;
    v22 = -1;
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(a1 + 88, a2, &v11);
    v6 = v9;
    if (*(&v14 + 1))
    {
      if (v17)
      {
        (*(**(&v14 + 1) + 40))();
      }

      *&v17 = 0;
      v15 = 0uLL;
      *(&v14 + 1) = 0;
      ++v16;
    }

    if (v11.n128_u64[0] && v14)
    {
      (*(*v11.n128_u64[0] + 40))();
    }
  }

  re::DynamicArray<re::RenderGraphTargetHandle>::add(v6, a3);
  v7 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a1 + 40, a2);
  if (!v7)
  {
    v14 = 0u;
    v15 = 0u;
    v11 = 0uLL;
    v13 = 0;
    v12 = 0;
    v16 = 0;
    v17 = 0u;
    v18 = -1;
    v19 = 0;
    v20 = -1;
    v21 = 0;
    v22 = -1;
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(a1 + 40, a2, &v11);
    v7 = v10;
    if (*(&v14 + 1))
    {
      if (v17)
      {
        (*(**(&v14 + 1) + 40))();
      }

      *&v17 = 0;
      v15 = 0uLL;
      *(&v14 + 1) = 0;
      ++v16;
    }

    if (v11.n128_u64[0] && v14)
    {
      (*(*v11.n128_u64[0] + 40))();
    }
  }

  return re::DynamicArray<re::RenderGraphTargetHandle>::add(v7, a3);
}

{
  v6 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a1 + 40, a2);
  if (!v6)
  {
    v14 = 0u;
    v15 = 0u;
    v11 = 0uLL;
    v13 = 0;
    v12 = 0;
    v16 = 0;
    v17 = 0u;
    v18 = -1;
    v19 = 0;
    v20 = -1;
    v21 = 0;
    v22 = -1;
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(a1 + 40, a2, &v11);
    v6 = v9;
    if (*(&v14 + 1))
    {
      if (v17)
      {
        (*(**(&v14 + 1) + 40))();
      }

      *&v17 = 0;
      v15 = 0uLL;
      *(&v14 + 1) = 0;
      ++v16;
    }

    if (v11.n128_u64[0] && v14)
    {
      (*(*v11.n128_u64[0] + 40))();
    }
  }

  re::DynamicArray<re::RenderGraphTargetHandle>::add((v6 + 40), a3);
  v7 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a1 + 88, a2);
  if (!v7)
  {
    v14 = 0u;
    v15 = 0u;
    v11 = 0uLL;
    v13 = 0;
    v12 = 0;
    v16 = 0;
    v17 = 0u;
    v18 = -1;
    v19 = 0;
    v20 = -1;
    v21 = 0;
    v22 = -1;
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(a1 + 88, a2, &v11);
    v7 = v10;
    if (*(&v14 + 1))
    {
      if (v17)
      {
        (*(**(&v14 + 1) + 40))();
      }

      *&v17 = 0;
      v15 = 0uLL;
      *(&v14 + 1) = 0;
      ++v16;
    }

    if (v11.n128_u64[0] && v14)
    {
      (*(*v11.n128_u64[0] + 40))();
    }
  }

  return re::DynamicArray<re::RenderGraphTargetHandle>::add((v7 + 40), a3);
}

void re::RenderGraphScopeOutput::addBufferToLane(uint64_t a1, unint64_t *a2, double *a3, int a4)
{
  v8 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a1 + 88, a2);
  if (v8)
  {
    goto LABEL_10;
  }

  v13 = 0u;
  v14 = 0u;
  v10 = 0uLL;
  v12 = 0;
  v11 = 0;
  v15 = 0;
  v16 = 0u;
  v17 = -1;
  v18 = 0;
  v19 = -1;
  v20 = 0;
  v21 = -1;
  re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(a1 + 88, a2, &v10);
  if (*(&v13 + 1))
  {
    if (v16)
    {
      (*(**(&v13 + 1) + 40))();
    }

    *&v16 = 0;
    v14 = 0uLL;
    *(&v13 + 1) = 0;
    ++v15;
  }

  if (v10.n128_u64[0] && v13)
  {
    (*(*v10.n128_u64[0] + 40))();
  }

  v8 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a1 + 88, a2);
  if (v8)
  {
LABEL_10:
    *(v8 + 96) = *a3;
    if (a4)
    {
      re::DynamicArray<re::RenderGraphTargetHandle>::add((v8 + 40), a3);
    }
  }

  else
  {
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "outputList", "addBufferToLane", 49);
    _os_crash("assertion failure: (outputList) ");
    __break(1u);
  }
}

uint64_t re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + 144 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 144 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 144 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 144 * v8) & 0x7FFFFFFF;
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
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

__n128 re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addInternal<re::WeakStringID const&,re::RenderGraphScopeOutput::Lane>(uint64_t a1, uint64_t a2, unint64_t *a3, __n128 *a4)
{
  v7 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  v7[1].n128_u64[0] = 0;
  ++v7;
  v7[2].n128_u64[0] = 0;
  v7[1].n128_u32[2] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  v9 = a4->n128_u64[0];
  v10 = a4->n128_u64[1];
  v7[-1].n128_u64[1] = v8;
  v7->n128_u64[0] = v9;
  v7->n128_u64[1] = v10;
  a4->n128_u64[0] = 0;
  a4->n128_u64[1] = 0;
  v11 = v7[1].n128_u64[0];
  v7[1].n128_u64[0] = a4[1].n128_u64[0];
  a4[1].n128_u64[0] = v11;
  v12 = v7[2].n128_u64[0];
  v7[2].n128_u64[0] = a4[2].n128_u64[0];
  a4[2].n128_u64[0] = v12;
  ++a4[1].n128_u32[2];
  ++v7[1].n128_u32[2];
  v7[4].n128_u64[1] = 0;
  v7[3].n128_u64[0] = 0;
  v7[3].n128_u64[1] = 0;
  v7[2].n128_u64[1] = 0;
  v7[4].n128_u32[0] = 0;
  v13 = a4[3].n128_u64[0];
  v7[2].n128_u64[1] = a4[2].n128_u64[1];
  v7[3].n128_u64[0] = v13;
  a4[2].n128_u64[1] = 0;
  a4[3].n128_u64[0] = 0;
  v14 = v7[3].n128_u64[1];
  v7[3].n128_u64[1] = a4[3].n128_u64[1];
  a4[3].n128_u64[1] = v14;
  v15 = v7[4].n128_u64[1];
  v7[5].n128_u64[0] = 0;
  v16 = a4[5].n128_u64[0];
  v7[4].n128_u64[1] = a4[4].n128_u64[1];
  a4[4].n128_u64[1] = v15;
  ++a4[4].n128_u32[0];
  ++v7[4].n128_u32[0];
  v7[5].n128_u64[1] = -1;
  v7[5].n128_u64[0] = v16;
  v7[5].n128_u64[1] = a4[5].n128_u64[1];
  v7[6].n128_u64[0] = 0;
  v7[6].n128_u64[1] = -1;
  v7[6] = a4[6];
  result = a4[7];
  v7[7] = result;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 9);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    v5 = v4;
    if (v4 == *(a1 + 6))
    {
      v7 = *(a1 + 7);
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
          memset(v36, 0, 36);
          *&v36[36] = 0x7FFFFFFFLL;
          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v36, v9, v8);
          v11 = *v36;
          *v36 = *a1;
          *a1 = v11;
          v12 = *&v36[16];
          *&v36[16] = a1[2];
          a1[2] = v12;
          v14 = *&v36[24];
          *&v36[24] = *(a1 + 3);
          v13 = *&v36[32];
          *(a1 + 3) = v14;
          ++*&v36[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 128;
            do
            {
              v18 = (*&v36[16] + v17);
              if ((*(*&v36[16] + v17 - 128) & 0x80000000) != 0)
              {
                v19 = 0xBF58476D1CE4E5B9 * (*(v18 - 15) ^ (*(v18 - 15) >> 30));
                v20 = (0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31);
                v21 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, v20 % *(a1 + 6), v20);
                v22 = *(v18 - 15);
                *(v21 + 48) = 0;
                *(v21 + 40) = 0;
                *(v21 + 24) = 0;
                *(v21 + 32) = 0;
                *(v21 + 8) = v22;
                *(v21 + 16) = 0;
                v23 = *(v18 - 13);
                *(v21 + 16) = *(v18 - 14);
                *(v21 + 24) = v23;
                *(v18 - 14) = 0;
                *(v18 - 13) = 0;
                v24 = *(v21 + 32);
                *(v21 + 32) = *(v18 - 12);
                *(v18 - 12) = v24;
                v25 = *(v21 + 48);
                *(v21 + 48) = *(v18 - 10);
                *(v18 - 10) = v25;
                ++*(v18 - 22);
                ++*(v21 + 40);
                *(v21 + 88) = 0;
                *(v21 + 64) = 0;
                *(v21 + 72) = 0;
                *(v21 + 56) = 0;
                *(v21 + 80) = 0;
                v26 = *(v18 - 8);
                *(v21 + 56) = *(v18 - 9);
                *(v21 + 64) = v26;
                *(v18 - 9) = 0;
                *(v18 - 8) = 0;
                v27 = *(v21 + 72);
                *(v21 + 72) = *(v18 - 7);
                *(v18 - 7) = v27;
                v28 = *(v21 + 88);
                *(v21 + 96) = 0;
                v29 = *(v18 - 4);
                *(v21 + 88) = *(v18 - 5);
                *(v18 - 5) = v28;
                ++*(v18 - 12);
                ++*(v21 + 80);
                *(v21 + 104) = -1;
                *(v21 + 96) = v29;
                *(v21 + 104) = *(v18 - 3);
                *(v21 + 112) = 0;
                *(v21 + 120) = -1;
                *(v21 + 112) = *(v18 - 2);
                *(v21 + 120) = *(v18 - 1);
                *(v21 + 128) = *v18;
              }

              ++v16;
              v17 += 144;
            }

            while (v16 < v15);
          }

          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v36);
        }
      }

      else
      {
        if (v8)
        {
          v32 = 2 * v7;
        }

        else
        {
          v32 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v5 = *(a1 + 8);
    }

    *(a1 + 8) = v5 + 1;
    v30 = a1[2];
    v31 = *(v30 + 144 * v4);
  }

  else
  {
    v30 = a1[2];
    v31 = *(v30 + 144 * v4);
    *(a1 + 9) = v31 & 0x7FFFFFFF;
  }

  v33 = 144 * v4;
  *(v30 + v33) = v31 | 0x80000000;
  v34 = a1[1];
  *(v30 + v33) = *(v34 + 4 * a2) | 0x80000000;
  *(v34 + 4 * a2) = v4;
  ++*(a1 + 7);
  return v30 + 144 * v4;
}

void re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 144 * v10, 16);
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

double re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *v8 = v7 & 0x7FFFFFFF;
          *(v8 + 8) = 0;
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 56);
          re::DynamicArray<unsigned long>::deinit(v8 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 144;
      }

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

_anonymous_namespace_ *re::DynamicArray<re::RenderGraphTargetHandle>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RenderGraphTargetHandle>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraphTargetHandle>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderGraphTargetHandle>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphTargetHandle>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_15;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_15:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 16 * v9);
        v11 = v7;
        v12 = v5[4];
        do
        {
          *v11 = 0;
          v11[1] = -1;
          *v11 = *v12;
          v11[1] = v12[1];
          v12 += 2;
          v11 += 2;
        }

        while (v12 != v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

__n64 MetalEmulation::getCubeDir(MetalEmulation *this, int a2, int a3, float a4)
{
  result.n64_f32[0] = (((2 * this) | 1u) / a4) + -1.0;
  v6 = (((2 * a2) | 1u) / a4) + -1.0;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v7 = -1.0;
        break;
      case 4:
        v7 = -v6;
        break;
      case 5:
        result.n64_f32[0] = -result.n64_f32[0];
        v7 = -v6;
        break;
      default:
LABEL_12:
        v7 = 0.0;
        result.n64_u32[0] = 0;
        break;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v7 = -v6;
      result.n64_u32[0] = -1.0;
      goto LABEL_15;
    }

    v7 = 1.0;
    if (a3 != 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = -v6;
    result.n64_u32[0] = 1.0;
  }

LABEL_15:
  result.n64_f32[1] = v7;
  return result;
}

uint64_t MetalEmulation::hash3D(__n128 a1)
{
  v1 = vdup_n_s32(0x45D9F3Bu);
  v2 = vmul_s32(veor_s8(vshr_n_u32(a1.n128_u64[0], 0x10uLL), a1.n128_u64[0]), v1);
  v3 = vmul_s32(veor_s8(vshr_n_u32(v2, 0x10uLL), v2), v1);
  v4 = veor_s8(vshr_n_u32(v3, 0x10uLL), v3);
  v5 = (v4.i32[1] + (v4.i32[0] << 6) + (v4.i32[0] >> 2) - 1640531527) ^ v4.i32[0];
  v6 = (73244475 * (a1.n128_u32[2] ^ a1.n128_u16[5])) ^ ((73244475 * (a1.n128_u32[2] ^ a1.n128_u16[5])) >> 16);
  return (((73244475 * v6) ^ ((73244475 * v6) >> 16)) + (v5 << 6) + (v5 >> 2) - 1640531527) ^ v5;
}

uint64_t ___ZN2re22MaterialParameterTable16kDefaultNameHashEv_block_invoke()
{
  v1[2] = *MEMORY[0x1E69E9840];
  result = MurmurHash3_x64_128("Default", 7uLL, 0, v1);
  re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash = (v1[1] + (v1[0] << 6) + (v1[0] >> 2) - 0x61C8864680B583E9) ^ v1[0];
  return result;
}

uint64_t ___ZN2re22MaterialParameterTable13kFadeNameHashEv_block_invoke()
{
  v1[2] = *MEMORY[0x1E69E9840];
  result = MurmurHash3_x64_128("Fade", 4uLL, 0, v1);
  re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash = (v1[1] + (v1[0] << 6) + (v1[0] >> 2) - 0x61C8864680B583E9) ^ v1[0];
  return result;
}

BOOL re::MaterialParameterHandle::isParameterType(uint64_t a1, int a2)
{
  v2 = *(a1 + 12) & 7;
  if (v2 > 2)
  {
    if (v2 == 4)
    {
      v3 = 192;
      return v3 == a2;
    }

    if (v2 == 3)
    {
      v3 = 128;
      return v3 == a2;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      v3 = 64;
      return v3 == a2;
    }

LABEL_8:
    v3 = 0;
    return v3 == a2;
  }

  v3 = *(a1 + 24);
  if (v3 == 48 || v3 == 34)
  {
    return a2 == 34 || a2 == 48;
  }

  return v3 == a2;
}

uint64_t re::TextureParameterTable::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    re::DynamicArray<re::TextureViews<re::TextureHandle>>::deinit(a1 + 200);
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(a1 + 136);
    if (a2[25])
    {
      v5 = a2[27];
      re::DynamicArray<re::TextureViews<re::TextureHandle>>::setCapacity((a1 + 200), v5);
      ++*(a1 + 224);
      v32 = a2 + 17;
      v6 = a2[19];
      if (v6 >= 0x10)
      {
        v7 = 0;
        v8 = a2[17];
        v9 = v6 >> 4;
        while (1)
        {
          v10 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v33 = v10 ^ 0xFFFFLL;
          if (v10 != 0xFFFFLL)
          {
            break;
          }

          v7 -= 16;
          ++v8;
          if (!--v9)
          {
            goto LABEL_10;
          }
        }

        v11 = __clz(__rbit64(v10 ^ 0xFFFFLL));
        v12 = v11 - v7;
        v34 = v11 - v7;
        if (v11 + 1 != v7)
        {
          do
          {
            v13 = v32[1] + 16 * v12;
            v14 = *(v13 + 9);
            v31 = *v13;
            v15 = re::TextureHandleTable::textureHandleAt((a2 + 16), v14);
            re::TextureHandle::TextureHandle(v30, v15);
            re::TextureHandleTable::setTexture((a1 + 128), &v31, v30);
            re::TextureHandle::invalidate(v30);
            v31 = 0;
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v32);
            v12 = v34;
          }

          while (v34 != -1);
        }
      }
    }

LABEL_10:
    re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(a1 + 304);
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(a1 + 240);
    *(a1 + 344) = 0;
    if (a2[38])
    {
      v17 = a2[40];
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((a1 + 304), v17);
      ++*(a1 + 328);
      v32 = a2 + 30;
      v18 = a2[32];
      if (v18 >= 0x10)
      {
        v19 = 0;
        v20 = a2[30];
        v21 = v18 >> 4;
        while (1)
        {
          v22 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v20), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v33 = v22 ^ 0xFFFFLL;
          if (v22 != 0xFFFFLL)
          {
            break;
          }

          v19 -= 16;
          ++v20;
          if (!--v21)
          {
            goto LABEL_20;
          }
        }

        v23 = __clz(__rbit64(v22 ^ 0xFFFFLL));
        v24 = v23 - v19;
        v34 = v23 - v19;
        if (v23 + 1 != v19)
        {
          do
          {
            v25 = v32[1] + 16 * v24;
            v26 = *(v25 + 8);
            v29 = *v25;
            v28 = *re::SamplerTable::samplerAt((a2 + 30), v26);
            re::SamplerTable::setSampler((a1 + 240), &v29, &v28);
            if (v28)
            {

              v28 = 0;
            }

            v29 = 0;
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v32);
            v24 = v34;
          }

          while (v34 != -1);
        }
      }
    }

LABEL_20:
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(a1, a2);
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy((a1 + 64), (a2 + 8));
    re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::copy((a1 + 352), (a2 + 44));
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::copy((a1 + 416), (a2 + 52));
  }

  return a1;
}

void re::TextureHandleTable::setTexture(uint64_t *a1, uint64_t *a2, os_unfair_lock_s **a3)
{
  re::TextureHandle::metalTexture(&v11, a3);
  v6 = v11;
  if (v11)
  {
    re::TextureHandle::metalTexture(&v10, a3);
    v7 = v10;
    v8 = [v10 protectionOptions];
    if (v7)
    {
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *a2;
  re::TextureTableImpl<re::TextureHandle>::setTexture(a1, &v9, a3, v8);
}

unint64_t re::TextureHandleTable::textureHandleAt(re::TextureHandleTable *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 11);
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

  return *(this + 13) + 40 * a2;
}

unint64_t re::SamplerTable::samplerAt(re::SamplerTable *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 10);
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

    v12 = 797;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 12) + 8 * a2;
}

uint64_t *re::TextureParameterTable::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(a1, a2);
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(a1 + 8, a2 + 8);
    if (a2[25])
    {
      re::TextureTableImpl<re::TextureHandle>::operator=((a1 + 16), (a2 + 16));
    }

    if (a2[38])
    {
      re::SamplerTable::operator=(a1 + 30, a2 + 30);
    }

    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(a1 + 44, a2 + 44);
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(a1 + 52, a2 + 52);
  }

  return a1;
}

uint64_t *re::SamplerTable::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(a1, a2);
  }

  re::DynamicArray<re::TextureViews<re::TextureHandle>>::operator=(a1 + 8, a2 + 8);
  a1[13] = a2[13];
  return a1;
}

double re::TextureParameterTable::deinit(re::TextureParameterTable *this)
{
  re::DynamicArray<re::TextureViews<re::TextureHandle>>::deinit(this + 200);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 136);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 304);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 240);
  *(this + 43) = 0;
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 64);
  re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::deinit(this + 352);

  return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 416);
}

int8x16_t **re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(int8x16_t **result)
{
  v1 = result;
  result[5] = 0;
  result[6] = 0;
  v2 = result[2];
  result[3] = 0;
  result[4] = v2;
  v12[0] = result;
  if (v2 >= 0x10)
  {
    v3 = 0;
    v4 = *result;
    v5 = v2 >> 4;
    while (1)
    {
      v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v12[1] = v6 ^ 0xFFFFLL;
      if (v6 != 0xFFFFLL)
      {
        break;
      }

      v3 -= 16;
      ++v4;
      if (!--v5)
      {
        goto LABEL_9;
      }
    }

    v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
    v8 = v7 - v3;
    v13 = v7 - v3;
    if (v7 + 1 != v3)
    {
      do
      {
        v9 = &v1[1]->i64[5 * v8];
        v9[4] = 0;
        v9[2] = 0;
        *v9 = 0;
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v12);
        v8 = v13;
      }

      while (v13 != -1);
      v2 = v1[2];
    }
  }

LABEL_9:
  if (v2 >= 0x10)
  {
    v10 = 0;
    v11.i64[0] = -1;
    v11.i64[1] = -1;
    do
    {
      (*v1)[v10++] = v11;
    }

    while (v10 < v1[2] >> 4);
  }

  return result;
}

int8x16_t **re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::clear(int8x16_t **result)
{
  v1 = result;
  result[5] = 0;
  result[6] = 0;
  v2 = result[2];
  result[3] = 0;
  result[4] = v2;
  v12[0] = result;
  if (v2 >= 0x10)
  {
    v3 = 0;
    v4 = *result;
    v5 = v2 >> 4;
    while (1)
    {
      v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v12[1] = v6 ^ 0xFFFFLL;
      if (v6 != 0xFFFFLL)
      {
        break;
      }

      v3 -= 16;
      ++v4;
      if (!--v5)
      {
        goto LABEL_9;
      }
    }

    v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
    v8 = v7 - v3;
    v13 = v7 - v3;
    if (v7 + 1 != v3)
    {
      do
      {
        v9 = &v1[1][v8];
        v9->i64[0] = 0;
        v9->i64[1] = 0;
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v12);
        v8 = v13;
      }

      while (v13 != -1);
      v2 = v1[2];
    }
  }

LABEL_9:
  if (v2 >= 0x10)
  {
    v10 = 0;
    v11.i64[0] = -1;
    v11.i64[1] = -1;
    do
    {
      (*v1)[v10++] = v11;
    }

    while (v10 < v1[2] >> 4);
  }

  return result;
}

uint64_t *re::ShaderParameterTable::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(a1, a2);
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(a1 + 8, a2 + 8);
    re::ConstantTable::operator=((a1 + 16), (a2 + 16));
    re::BufferTable::operator=((a1 + 30), (a2 + 30));
  }

  return a1;
}

uint64_t re::ConstantTable::operator=(uint64_t a1, uint64_t a2)
{
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(a1 + 8, (a2 + 8));
  if (a1 != a2)
  {
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 48), (a2 + 48));
  }

  return a1;
}

double re::ShaderParameterTable::deinit(re::ShaderParameterTable *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 136);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 176);
  re::BufferTable::deinit((this + 240));
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this);

  return re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 64);
}

uint64_t re::MaterialParameterTable::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::ShaderParameterTable::operator=((a1 + 24), (a2 + 24));
    re::TextureParameterTable::operator=((a1 + 552), (a2 + 552));
    re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(a1 + 1032, a2 + 1032);
    if (*(a1 + 1080))
    {
      if (*(a2 + 1080))
      {
        *(a1 + 1081) = *(a2 + 1081);
      }

      else
      {
        *(a1 + 1080) = 0;
      }
    }

    else if (*(a2 + 1080))
    {
      *(a1 + 1080) = 1;
      *(a1 + 1081) = *(a2 + 1081);
    }

    if (*(a1 + 1092))
    {
      if ((*(a2 + 1092) & 1) == 0)
      {
        *(a1 + 1092) = 0;
LABEL_14:
        *(a1 + 1112) = *(a2 + 1112);
        *(a1 + 1120) = *(a2 + 1120);
        return a1;
      }
    }

    else
    {
      if ((*(a2 + 1092) & 1) == 0)
      {
        goto LABEL_14;
      }

      *(a1 + 1092) = 1;
    }

    v4 = *(a2 + 1096);
    *(a1 + 1104) = *(a2 + 1104);
    *(a1 + 1096) = v4;
    goto LABEL_14;
  }

  return a1;
}

uint64_t re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 24) < v4)
        {
          re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(a1, a2);
        ++*(a1 + 40);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(a1, v5, v6);
        re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

uint64_t re::MaterialParameterTable::MaterialParameterTable(uint64_t a1, uint64_t *a2, void *a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CD3BF8;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(v6 + 24) = 0u;
  *(a1 + 152) = &unk_1F5CC38C8;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = 0;
  *(a1 + 352) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 424) = 1;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 432) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 464) = 0;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0;
  re::ShaderParameterTable::operator=((v6 + 24), a2);
  *(a1 + 784) = 0;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = &unk_1F5CC8148;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 868) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 888) = 0u;
  re::TextureParameterTable::operator=(a1 + 552, a3);
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0x7FFFFFFF00000000;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1092) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1122) = 0;
  return a1;
}

unint64_t re::MaterialParameterTable::handle@<X0>(re::MaterialParameterTable *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 25, a2);
  if (v6 != -1)
  {
    v7 = *(a1 + 26) + 16 * v6;
    v8 = *(v7 + 8);
    v9 = *(v7 + 10);
    result = re::MaterialParameterTable::hash(a1);
    v11 = *(v7 + 11);
    v12 = 1;
    goto LABEL_10;
  }

  if (re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 3, a2) != -1)
  {
    result = re::MaterialParameterTable::hash(a1);
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v12 = 17;
    goto LABEL_10;
  }

  v13 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 86, a2);
  if (v13 != -1)
  {
    v8 = *(*(a1 + 87) + 16 * v13 + 9);
    result = re::MaterialParameterTable::hash(a1);
    v11 = 0;
    v12 = 2;
LABEL_7:
    v9 = 1;
    goto LABEL_10;
  }

  if (re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 69, a2) != -1)
  {
    result = re::MaterialParameterTable::hash(a1);
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v12 = 18;
    goto LABEL_10;
  }

  v14 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 33, a2);
  if (v14 != -1)
  {
    v8 = *(*(a1 + 34) + 16 * v14 + 8);
    result = re::MaterialParameterTable::hash(a1);
    v11 = 0;
    v12 = 3;
    goto LABEL_7;
  }

  if (re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 11, a2) != -1)
  {
    result = re::MaterialParameterTable::hash(a1);
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v12 = 19;
    goto LABEL_10;
  }

  v15 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 99, a2);
  if (v15 != -1)
  {
    v8 = *(*(a1 + 100) + 16 * v15 + 8);
    result = re::MaterialParameterTable::hash(a1);
    v11 = 0;
    v12 = 4;
    goto LABEL_7;
  }

  if (re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 77, a2) == -1)
  {
    v8 = 0;
    v9 = 0;
    v12 = 0;
    result = 0;
    v11 = 0;
  }

  else
  {
    result = re::MaterialParameterTable::hash(a1);
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v12 = 20;
  }

LABEL_10:
  *a3 = *a2;
  *(a3 + 8) = v8;
  *(a3 + 10) = v9;
  *(a3 + 12) = v12;
  *(a3 + 16) = result;
  *(a3 + 24) = v11;
  return result;
}

unint64_t re::MaterialParameterTable::hash(re::MaterialParameterTable *this)
{
  if (*(this + 1120) == 1)
  {
    return *(this + 139);
  }

  v2 = (*(this + 17) + ((*(this + 75) - 0x61C8864680B583E9) << 6) + ((*(this + 75) - 0x61C8864680B583E9) >> 2) - 0x61C8864680B583E9) ^ (*(this + 75) - 0x61C8864680B583E9);
  v3 = (*(this + 83) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v4 = (*(this + 92) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v5 = (*(this + 39) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
  v6 = (*(this + 105) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v7 = (*(this + 9) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6;
  v8 = (*(this + 31) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7;
  v9 = (*(this + 119) + (v8 << 6) + (v8 >> 2) - 0x61C8864680B583E9) ^ v8;
  v1 = (*(this + 127) + (v9 << 6) + (v9 >> 2) - 0x61C8864680B583E9) ^ v9;
  if (*(this + 1080) == 1)
  {
    if (*(this + 1081) == 255)
    {
      v11 = 0x9E3779B97F4A7C17;
    }

    else
    {
      v10 = 0xBF58476D1CE4E5B9 * (*(this + 1081) ^ (*(this + 1081) >> 30));
      v11 = ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31)) - 0x61C8864680B583E9;
    }

    v1 ^= (v1 >> 2) + (v1 << 6) + v11;
  }

  if (*(this + 1092) == 1)
  {
    v12 = ((v1 << 6) - 0x61C8864680B583E9 + (v1 >> 2) + *(this + 274)) ^ v1;
    v13 = (*(this + 275) - 0x61C8864680B583E9 + (v12 << 6) + (v12 >> 2)) ^ v12;
    v1 = (*(this + 276) - 0x61C8864680B583E9 + (v13 << 6) + (v13 >> 2)) ^ v13;
  }

  *(this + 1120) = 1;
  *(this + 139) = v1;
  return v1;
}

BOOL re::MaterialParameterTable::BOOLValue(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = *(a1 + 176);
  if (v3 <= v2)
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

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 192) + v2) != 0;
}

float re::MaterialParameterTable::floatValue(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = *(a1 + 176);
  if (v3 <= v2)
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

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 192) + v2);
}

uint64_t re::MaterialParameterTable::intValue(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = *(a1 + 176);
  if (v3 <= v2)
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

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 192) + v2);
}

uint64_t re::MaterialParameterTable::vector2FValue(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = *(a1 + 176);
  if (v3 <= v2)
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

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 192) + v2);
}

double re::MaterialParameterTable::int2Value(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = *(a1 + 176);
  if (v3 <= v2)
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

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 192) + v2);
}

double re::MaterialParameterTable::vector3FValue(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = *(a1 + 176);
  if (v3 <= v2)
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

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 192) + v2);
}

double re::MaterialParameterTable::int3Value(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = *(a1 + 176);
  if (v3 <= v2)
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

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 192) + v2);
}

uint64_t re::MaterialParameterTable::vector4FValue(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = *(a1 + 176);
  if (v3 <= v2)
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

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 192) + v2);
}

__n128 re::MaterialParameterTable::int4Value(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = *(a1 + 176);
  if (v3 <= v2)
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

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 192) + v2);
}

__n128 re::MaterialParameterTable::matrix3x3FValue@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>, __n128 a6@<Q2>)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  v7 = *(a1 + 176);
  if (v7 <= v6)
  {
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v9 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v17 = 797;
    v18 = 2048;
    v19 = v6;
    v20 = 2048;
    v21 = v7;
    _os_log_send_and_compose_impl(v10, &v13, v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(a1 + 192) + v6;
  a4.n128_u64[0] = *v8;
  a5.n128_u64[0] = *(v8 + 16);
  a6.n128_u64[0] = *(v8 + 32);
  a4.n128_u32[2] = *(v8 + 8);
  a5.n128_u32[2] = *(v8 + 24);
  a6.n128_u32[2] = *(v8 + 40);
  *a3 = a4;
  a3[1] = a5;
  a3[2] = a6;
  result.n128_f64[0] = a4.n128_f64[0];
  result.n128_f32[2] = a4.n128_f32[2];
  return result;
}

__n128 re::MaterialParameterTable::matrix4x4FValue@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v4 = *(a1 + 176);
  if (v4 <= v3)
  {
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v10 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 797;
    v18 = 2048;
    v19 = v3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(a1 + 192) + v3;
  result = *v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 32);
  v9 = *(v5 + 48);
  *a3 = *v5;
  a3[1] = v7;
  a3[2] = v8;
  a3[3] = v9;
  return result;
}

unint64_t re::BufferTable::bufferAt(re::BufferTable *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 10);
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

    v12 = 797;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 12) + 24 * a2;
}

void re::MaterialParameterTable::bindingValue(re *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 12) & 7;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      *buf = *a2;
      v7 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 11, buf);
      v8 = *(a1 + 12);
      goto LABEL_17;
    }

    if (v6 == 4)
    {
      *buf = *a2;
      v7 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 77, buf);
      v8 = *(a1 + 78);
      goto LABEL_17;
    }
  }

  else
  {
    if (v6 == 1)
    {
      *buf = *a2;
      v7 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 3, buf);
      v8 = *(a1 + 4);
      goto LABEL_17;
    }

    if (v6 == 2)
    {
      *buf = *a2;
      v7 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 69, buf);
      v8 = *(a1 + 70);
LABEL_17:
      v14 = v8 + 40 * v7;
      *a3 = *(v14 + 8);
      *(a3 + 8) = *(v14 + 16);
      *(a3 + 16) = *(v14 + 24);
      *(a3 + 24) = *(v14 + 32);
      return;
    }
  }

  v9 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = *a2;
    if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
    }

    else if (v15)
    {
      v16 = re::WeakStringID::debugStr(void)const::msg;
      snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", v15);
    }

    else
    {
      v16 = &str_67;
    }

    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Attempted to get a binding from an invalid handle %s", buf, 0xCu);
  }

  *a3 = 3;
  v10 = re::StringID::invalid(buf);
  v11 = buf[0];
  *(a3 + 8) = *buf >> 1;
  if (v11)
  {
    if (buf[0])
    {
    }
  }

  *(a3 + 16) = 0;
  v12 = re::StringID::invalid(buf);
  v13 = buf[0];
  *(a3 + 24) = *buf >> 1;
  if (v13)
  {
    if (buf[0])
    {
    }
  }
}

uint64_t re::MaterialParameterTable::buildPerFrameDestructor(re::MaterialParameterTable *this, re::Allocator *a2)
{
  v6[5] = *MEMORY[0x1E69E9840];
  result = (*(*a2 + 24))(a2);
  if ((result & 1) == 0 && (*(this + 96) || *(this + 43) || *(this + 109) || *(this + 6) || *(this + 14) || *(this + 72) || *(this + 80)))
  {
    v5 = re::globalAllocators(result)[2];
    v6[0] = &unk_1F5D03170;
    v6[3] = v5;
    v6[4] = v6;
    (*(*a2 + 16))(a2, this, v6);
    return re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v6);
  }

  return result;
}

void *re::MaterialParameterTable::passTechniqueHashTable(re::MaterialParameterTable *this, uint64_t a2, int a3)
{
  v7 = a2;
  result = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 1032, &v7);
  if (!result)
  {
    if (!a3)
    {
      return &re::MaterialParameterTable::passTechniqueHashTable(unsigned long,BOOL)const::kDummy;
    }

    if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
    {
      dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
    }

    v6 = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
    result = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 1032, &v6);
    if (!result)
    {
      return &re::MaterialParameterTable::passTechniqueHashTable(unsigned long,BOOL)const::kDummy;
    }
  }

  return result;
}

double re::MaterialParameterTable::initPassTechniqueMappings(re::MaterialParameterTable *this, re::Allocator *a2, signed int a3, uint64_t a4)
{
  v11 = a4;
  if (!*(this + 129))
  {
    re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(this + 1032, a2, 1);
  }

  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v10 = 0x7FFFFFFFLL;
  re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v8, a2, a3);
  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(this + 1032, &v11, v8);
  return re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v8);
}

void re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 72 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_75, 4 * v10);
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

uint64_t re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addInternal<unsigned long const&,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 72 * HIDWORD(v9) + 16;
  }
}

uint64_t re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  v7 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v11, v10);
    *(v8 + 8) = *a2;
    result = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::HashTable(v8 + 16, a3);
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    return re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::operator=(*(a1 + 16) + 72 * v7 + 16, a3);
  }

  return result;
}

uint64_t re::MaterialParameterTable::appendPassTechniqueMappingsFrom(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  if (!*(a1 + 129))
  {
  }

  result = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 1032, &v13);
  if (!result)
  {
    return re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(a1 + 1032, &v13, a2);
  }

  v6 = result;
  v7 = *(a2 + 32);
  if (v7)
  {
    v8 = 0;
    v9 = *(a2 + 16);
    while (1)
    {
      v10 = *v9;
      v9 += 6;
      if (v10 < 0)
      {
        break;
      }

      if (v7 == ++v8)
      {
        LODWORD(v8) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 != v7)
  {
    v11 = *(a2 + 16);
    do
    {
      result = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v6, (v11 + 24 * v8 + 8), (v11 + 24 * v8 + 16));
      if (*(a2 + 32) <= (v8 + 1))
      {
        v12 = v8 + 1;
      }

      else
      {
        v12 = *(a2 + 32);
      }

      v11 = *(a2 + 16);
      while (v12 - 1 != v8)
      {
        LODWORD(v8) = v8 + 1;
        if ((*(v11 + 24 * v8) & 0x80000000) != 0)
        {
          goto LABEL_21;
        }
      }

      LODWORD(v8) = v12;
LABEL_21:
      ;
    }

    while (v8 != v7);
  }

  return result;
}

uint64_t re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v10);
  v6 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v11, v10);
    *(v7 + 8) = *a2;
    *(v7 + 16) = *a3;
    result = v7 + 16;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v9 = *(a1 + 16) + 24 * v6;
    *(v9 + 16) = *a3;
    return v9 + 16;
  }

  return result;
}

{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  result = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v8);
  v7 = HIDWORD(v9);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v9, v8);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 24 * v7 + 16) = *a3;
  }

  return result;
}

uint64_t re::MaterialParameterTable::addPassTechniqueMapping(re::MaterialParameterTable *this, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v13 = a2;
  v11 = a4;
  v4 = (this + 1032);
  v5 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 1032, &v11);
  if (!v5)
  {
    v6 = *v4;
    memset(v8, 0, sizeof(v8));
    v9 = 0;
    v10 = 0x7FFFFFFFLL;
    re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v8, v6, 1);
    v5 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(v4, &v11, v8);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v8);
  }

  return re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v5, &v13, &v12);
}

double re::MaterialParameterTable::clearPassTechniqueMappings(re::MaterialParameterTable *this)
{
  v2 = *(this + 129);
  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(this + 1032);
  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  v3 = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;

  return re::MaterialParameterTable::initPassTechniqueMappings(this, v2, 1, v3);
}

void re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_14, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 32);
        }

        v4 += 72;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void *re::MaterialParameterTableDelta::init(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  *(a1 + 16) = a2;
  re::DynamicArray<BOOL>::setCapacity((a1 + 16), 0);
  ++*(v3 + 40);
  *(v3 + 56) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::ConstantLocation>,true>>::setCapacity((v3 + 56), 0);
  ++*(v3 + 80);
  *(v3 + 96) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::setCapacity((v3 + 96), 0);
  ++*(v3 + 120);
  *(v3 + 136) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::setCapacity((v3 + 136), 0);
  ++*(v3 + 160);
  *(v3 + 176) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::setCapacity((v3 + 176), 0);
  *(v3 + 216) = a2;
  v3 += 216;
  ++*(v3 - 16);
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::setCapacity(v3, 0);
  ++*(v3 + 24);
  *(v3 + 40) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::setCapacity((v3 + 40), 0);
  ++*(v3 + 64);
  *(v3 + 80) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::setCapacity((v3 + 80), 0);
  ++*(v3 + 104);
  *(v3 + 120) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::setCapacity((v3 + 120), 0);
  ++*(v3 + 144);
  *(v3 + 160) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::setCapacity((v3 + 160), 0);
  ++*(v3 + 184);
  *(v3 + 200) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<unsigned int>,true>>::setCapacity((v3 + 200), 0);
  ++*(v3 + 224);
  *(v3 + 240) = a2;
  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::setCapacity((v3 + 240), 0);
  ++*(v3 + 264);
  *(v3 + 280) = a2;
  result = re::DynamicArray<re::PassTechniqueMappingDelta>::setCapacity((v3 + 280), 0);
  ++*(v3 + 304);
  return result;
}

uint64_t re::MaterialParameterTableDelta::deinit(re::MaterialParameterTableDelta *this)
{
  v3 = (this + 96);
  v2 = *(this + 12);
  if (v2)
  {
    v4 = *(this + 16);
    if (v4)
    {
      v5 = *(this + 14);
      if (v5)
      {
        v6 = (v4 + 40);
        v7 = 56 * v5;
        do
        {
          if (*(v6 - 32) == 1)
          {
            v8 = *v6;
            if (v8 != -1)
            {
              (off_1F5D03150[v8])(&v19, v6 - 6);
            }

            *v6 = -1;
          }

          *(v6 - 5) = 0;
          v6 += 14;
          v7 -= 56;
        }

        while (v7);
        v2 = *(this + 12);
        v4 = *(this + 16);
      }

      (*(*v2 + 40))(v2, v4);
    }

    *(this + 16) = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = 0;
    ++*(this + 30);
  }

  v9 = *(this + 17);
  if (v9)
  {
    v10 = *(this + 21);
    if (v10)
    {
      v11 = *(this + 19);
      if (v11)
      {
        v12 = (v10 + 16);
        v13 = 32 * v11;
        do
        {
          if (*(v12 - 8) == 1)
          {
            re::TextureHandle::invalidate(v12);
          }

          *(v12 - 2) = 0;
          v12 += 4;
          v13 -= 32;
        }

        while (v13);
        v9 = *(this + 17);
        v10 = *(this + 21);
      }

      (*(*v9 + 40))(v9, v10);
    }

    *(this + 21) = 0;
    *(this + 18) = 0;
    *(this + 19) = 0;
    *(this + 17) = 0;
    ++*(this + 40);
  }

  result = *(this + 22);
  if (result)
  {
    v15 = *(this + 26);
    if (v15)
    {
      v16 = *(this + 24);
      if (v16)
      {
        v17 = (v15 + 16);
        v18 = 24 * v16;
        do
        {
          if (*(v17 - 8) == 1)
          {
            if (*v17)
            {

              *v17 = 0;
            }
          }

          *(v17 - 2) = 0;
          v17 += 3;
          v18 -= 24;
        }

        while (v18);
        result = *(this + 22);
        v15 = *(this + 26);
      }

      result = (*(*result + 40))(result, v15);
    }

    *(this + 26) = 0;
    *(this + 23) = 0;
    *(this + 24) = 0;
    *(this + 22) = 0;
    ++*(this + 50);
  }

  return result;
}

void re::MaterialParameterTableDelta::encodeClear(re::MaterialParameterTableDelta *this)
{
  *(this + 4) = 0;
  ++*(this + 10);
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    v3 = 0;
    v4 = v2 + 0xFFFFFFFFFFFFFFFLL;
    v5 = v4 & 0xFFFFFFFFFFFFFFFLL;
    v6 = (v4 & 0xFFFFFFFFFFFFFFFLL) - (v4 & 1) + 2;
    v7 = vdupq_n_s64(v5);
    v8 = (*(this + 11) + 16);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v3), xmmword_1E3049620)));
      if (v9.i8[0])
      {
        *(v8 - 2) = 0;
      }

      if (v9.i8[4])
      {
        *v8 = 0;
      }

      v3 += 2;
      v8 += 4;
    }

    while (v6 != v3);
  }

  ++*(this + 20);
  v10 = *(this + 14);
  *(this + 14) = 0;
  if (v10)
  {
    v11 = (*(this + 16) + 40);
    v12 = 56 * v10;
    do
    {
      if (*(v11 - 32) == 1)
      {
        v13 = *v11;
        if (v13 != -1)
        {
          (off_1F5D03150[v13])(&v51, v11 - 6);
        }

        *v11 = -1;
      }

      *(v11 - 5) = 0;
      v11 += 14;
      v12 -= 56;
    }

    while (v12);
  }

  ++*(this + 30);
  v14 = *(this + 19);
  *(this + 19) = 0;
  if (v14)
  {
    v15 = (*(this + 21) + 16);
    v16 = 32 * v14;
    do
    {
      if (*(v15 - 8) == 1)
      {
        re::TextureHandle::invalidate(v15);
      }

      *(v15 - 2) = 0;
      v15 += 4;
      v16 -= 32;
    }

    while (v16);
  }

  ++*(this + 40);
  v17 = *(this + 24);
  *(this + 24) = 0;
  if (v17)
  {
    v18 = (*(this + 26) + 16);
    v19 = 24 * v17;
    do
    {
      if (*(v18 - 8) == 1 && *v18)
      {

        *v18 = 0;
      }

      *(v18 - 2) = 0;
      v18 += 3;
      v19 -= 24;
    }

    while (v19);
  }

  ++*(this + 50);
  v20 = *(this + 29);
  *(this + 29) = 0;
  if (v20)
  {
    v21 = 48 * v20;
    v22 = (*(this + 31) + 24);
    do
    {
      if (*(v22 - 16) == 1)
      {
        v22[2] = 0;
        *v22 = 0;
      }

      *(v22 - 3) = 0;
      v22 += 6;
      v21 -= 48;
    }

    while (v21);
  }

  ++*(this + 60);
  v23 = *(this + 34);
  *(this + 34) = 0;
  if (v23)
  {
    v24 = 48 * v23;
    v25 = (*(this + 36) + 24);
    do
    {
      if (*(v25 - 16) == 1)
      {
        v25[2] = 0;
        *v25 = 0;
      }

      *(v25 - 3) = 0;
      v25 += 6;
      v24 -= 48;
    }

    while (v24);
  }

  ++*(this + 70);
  v26 = *(this + 39);
  *(this + 39) = 0;
  if (v26)
  {
    v27 = 48 * v26;
    v28 = (*(this + 41) + 24);
    do
    {
      if (*(v28 - 16) == 1)
      {
        v28[2] = 0;
        *v28 = 0;
      }

      *(v28 - 3) = 0;
      v28 += 6;
      v27 -= 48;
    }

    while (v27);
  }

  ++*(this + 80);
  v29 = *(this + 44);
  *(this + 44) = 0;
  if (v29)
  {
    v30 = 48 * v29;
    v31 = (*(this + 46) + 24);
    do
    {
      if (*(v31 - 16) == 1)
      {
        v31[2] = 0;
        *v31 = 0;
      }

      *(v31 - 3) = 0;
      v31 += 6;
      v30 -= 48;
    }

    while (v30);
  }

  ++*(this + 90);
  v32 = *(this + 49);
  *(this + 49) = 0;
  if (v32)
  {
    v33 = 24 * v32;
    v34 = (*(this + 51) + 16);
    do
    {
      if (*(v34 - 8) == 1)
      {
        *v34 = 0;
      }

      *(v34 - 2) = 0;
      v34 += 3;
      v33 -= 24;
    }

    while (v33);
  }

  ++*(this + 100);
  v35 = *(this + 54);
  *(this + 54) = 0;
  if (v35)
  {
    v36 = 0;
    v37 = v35 + 0xFFFFFFFFFFFFFFFLL;
    v38 = v37 & 0xFFFFFFFFFFFFFFFLL;
    v39 = (v37 & 0xFFFFFFFFFFFFFFFLL) - (v37 & 1) + 2;
    v40 = vdupq_n_s64(v38);
    v41 = (*(this + 56) + 16);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v36), xmmword_1E3049620)));
      if (v42.i8[0])
      {
        *(v41 - 2) = 0;
      }

      if (v42.i8[4])
      {
        *v41 = 0;
      }

      v36 += 2;
      v41 += 4;
    }

    while (v39 != v36);
  }

  ++*(this + 110);
  v43 = *(this + 59);
  *(this + 59) = 0;
  if (v43)
  {
    v44 = 0;
    v45 = v43 + 0xFFFFFFFFFFFFFFFLL;
    v46 = v45 & 0xFFFFFFFFFFFFFFFLL;
    v47 = (v45 & 0xFFFFFFFFFFFFFFFLL) - (v45 & 1) + 2;
    v48 = vdupq_n_s64(v46);
    v49 = (*(this + 61) + 16);
    do
    {
      v50 = vmovn_s64(vcgeq_u64(v48, vorrq_s8(vdupq_n_s64(v44), xmmword_1E3049620)));
      if (v50.i8[0])
      {
        *(v49 - 2) = 0;
      }

      if (v50.i8[4])
      {
        *v49 = 0;
      }

      v44 += 2;
      v49 += 4;
    }

    while (v47 != v44);
  }

  ++*(this + 120);
  *(this + 64) = 0;
  ++*(this + 130);
  if (*(this + 536) == 1)
  {
    *(this + 536) = 0;
  }

  if (*(this + 548) == 1)
  {
    *(this + 548) = 0;
  }

  *(this + 564) = 1;
}

uint64_t applyBindingChanges(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result)
  {
    v4 = 48 * result;
    v5 = a2 + 16;
    do
    {
      v6 = (v5 - 16);
      if (*(v5 - 8) == 1)
      {
        result = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace(a3, v6, v5);
      }

      else
      {
        result = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::remove(a3, v6);
      }

      v5 += 48;
      v4 -= 48;
    }

    while (v4);
  }

  return result;
}

uint64_t re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v7 = 5 * v6;
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::updateKvpsHash(a1, (a1[1] + 40 * v6));
    v8 = a1[1] + 8 * v7;
    *(v8 + 8) = *a3;
    *(v8 + 16) = *(a3 + 8);
    *(v8 + 24) = *(a3 + 16);
    *(v8 + 32) = *(a3 + 24);
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::updateKvpsHash(a1, v8);
    return a1[1] + 8 * v7 + 8;
  }
}

{
  v6 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v7 = 5 * v6;
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::updateKvpsHash(a1, (a1[1] + 40 * v6));
    v8 = a1[1] + 8 * v7;
    *(v8 + 8) = *a3;
    *(v8 + 16) = *(a3 + 8);
    *(v8 + 24) = *(a3 + 16);
    *(v8 + 32) = *(a3 + 24);

    return re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::updateKvpsHash(a1, v8);
  }
}

BOOL re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::remove(uint64_t a1, unint64_t *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 != 0;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0x80;
    }

    v5->i8[v3 & 0xF] = v9;
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::updateHashes(a1, (*(a1 + 8) + 40 * v3));
    v10 = *(a1 + 16);
    v11 = (*(a1 + 8) + 40 * v4);
    *v11 = 0;
    v11[4] = 0;
    v11[2] = 0;
    v12.i64[0] = -1;
    v12.i64[1] = v8;
    v13 = vaddq_s64(*(a1 + 24), v12);
    *(a1 + 24) = v13;
    if (v10 >= 0x11 && v13.i64[0] < v10 >> 2)
    {
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

void re::MaterialParameterTableDelta::applyDeltaChange(re::MaterialParameterTableDelta *this)
{
  v104 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(this + 1);
  v4 = (WeakRetained - 1);
  if (WeakRetained)
  {
    v5 = (WeakRetained - 1);
  }

  else
  {
    v5 = 0;
  }

  if (WeakRetained)
  {
    v6 = WeakRetained;
    if (*(this + 564) == 1)
    {
      WeakRetained[21] = 0;
      ++*(WeakRetained + 44);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(WeakRetained + 24);
      v6[42] = 0;
      ++*(v6 + 86);
      re::BucketArray<re::BufferSlice,8ul>::clear((v6 + 50));
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(v6 + 32);
      re::DynamicArray<re::FixedArray<unsigned long>>::clear((v6 + 57));
      v6[64] = 0;
      ++*(v6 + 130);
      *(v6 + 134) = 0;
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(v6 + 2);
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(v6 + 10);
      v7 = v6[95];
      v6[95] = 0;
      if (v7)
      {
        v8 = v6[97];
        v9 = 40 * v7;
        do
        {
          if (v8[1].i8[0] == 1)
          {
            v10 = v8[1].i64[1];
            if (v10)
            {

              v8[1].i64[1] = 0;
            }
          }

          re::TextureHandle::invalidate(v8);
          v8 = (v8 + 40);
          v9 -= 40;
        }

        while (v9);
      }

      ++*(v6 + 192);
      v6[88] = 0;
      *(v6 + 45) = 0u;
      v11 = v6[87];
      v6[89] = v11;
      v99[0] = v6 + 85;
      if (v11 > 0xF)
      {
        v12 = 0;
        v13 = v6[85];
        v14 = v11 >> 4;
        while (1)
        {
          v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v99[1] = (v15 ^ 0xFFFFLL);
          if (v15 != 0xFFFFLL)
          {
            break;
          }

          v12 -= 16;
          ++v13;
          if (!--v14)
          {
            goto LABEL_20;
          }
        }

        v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
        v17 = v16 - v12;
        *&v100 = v16 - v12;
        if (v16 + 1 != v12)
        {
          do
          {
            v6[86][v17].i64[0] = 0;
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v99);
            v17 = v100;
          }

          while (v100 != -1);
          v11 = v6[87];
        }

LABEL_20:
        if (v11 >= 0x10)
        {
          v18 = 0;
          v19.i64[0] = -1;
          v19.i64[1] = -1;
          do
          {
            v6[85][v18++] = v19;
          }

          while (v18 < v6[87] >> 4);
        }
      }

      re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear((v6 + 106));
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(v6 + 98);
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(v6 + 68);
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(v6 + 76);
      re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::clear(v6 + 112);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(v6 + 120);
      ++*(v6 + 1113);
      ++*(v6 + 1114);
      re::MaterialParameterTable::clearPassTechniqueMappings(v4);
      if (*(v6 + 1072) == 1)
      {
        *(v6 + 1072) = 0;
      }

      if (*(v6 + 1084) == 1)
      {
        *(v6 + 1084) = 0;
      }
    }

    v20 = *(this + 9);
    if (v20)
    {
      v21 = *(this + 11);
      v22 = 16 * v20;
      do
      {
        if (*(v21 + 8) == 1)
        {
          v23 = *(v21 + 12);
          v99[0] = (*(this + 6) + *(v21 + 10));
          v99[1] = v23;
          re::ConstantTable::setConstant(v6 + 18, v21, v99, *(v21 + 13));
        }

        else
        {
          v99[0] = *v21;
          re::removeNameMappedConstant(v99, v6 + 24, v6 + 19);
        }

        v21 += 16;
        v22 -= 16;
      }

      while (v22);
      if (*(this + 9))
      {
        ++v5[1121];
      }
    }

    v24 = *(this + 14);
    if (v24)
    {
      v25 = 56 * v24;
      v26 = (*(this + 16) + 16);
      do
      {
        v27 = (v26 - 16);
        v28 = (v5 + 264);
        if (*(v26 - 8) == 1)
        {
          re::BufferTable::setBuffer(v28, v27, v26);
        }

        else
        {
          re::BufferTable::removeBuffer(v28, v27);
        }

        v26 = (v26 + 56);
        v25 -= 56;
      }

      while (v25);
    }

    v29 = *(this + 19);
    if (v29)
    {
      v30 = 32 * v29;
      v31 = (*(this + 21) + 16);
      do
      {
        if (*(v31 - 8) == 1)
        {
          v90 = *(v31 - 2);
          re::TextureHandle::TextureHandle(v89, v31);
          re::TextureHandleTable::setTexture(v5 + 85, &v90, v89);
          re::TextureHandle::invalidate(v89);
          v90 = 0;
        }

        else
        {
          v99[0] = *(v31 - 2);
          re::removeNameMappedProtectedTexture<re::DynamicArray<re::TextureViews<re::TextureHandle>>>(v99, v5 + 86, (v5 + 752));
        }

        v31 = (v31 + 32);
        v30 -= 32;
      }

      while (v30);
    }

    v32 = *(this + 59);
    if (v32)
    {
      v33 = *(this + 61);
      for (i = 16 * v32; i; i -= 16)
      {
        v35 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v5 + 86, v33);
        if (v35 != -1)
        {
          v36 = *(v33 + 8);
          if (v36 == 1)
          {
            v1 = *(v33 + 9);
          }

          v37 = *(*(v5 + 87) + 16 * v35 + 9);
          v38 = *(v5 + 96);
          if (v38 <= v37)
          {
            v91 = 0;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            *v99 = 0u;
            v82 = MEMORY[0x1E69E9C10];
            v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v92 = 136315906;
            *&v92[4] = "operator[]";
            v93 = 1024;
            if (v83)
            {
              v84 = 3;
            }

            else
            {
              v84 = 2;
            }

            v94 = 789;
            v95 = 2048;
            v96 = v37;
            v97 = 2048;
            v98 = v38;
            _os_log_send_and_compose_impl(v84, &v91, v99, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v85, v86);
            _os_crash_msg();
            __break(1u);
          }

          v39 = *(v5 + 98) + 40 * *(*(v5 + 87) + 16 * v35 + 9);
          if (*(v33 + 8) && *(v39 + 32))
          {
            if (*(v39 + 33) != v1)
            {
              goto LABEL_59;
            }
          }

          else if ((v36 & 1) != 0 || *(v39 + 32))
          {
LABEL_59:
            if (*(v39 + 32))
            {
              if ((v36 & 1) == 0)
              {
                *(v39 + 32) = 0;
LABEL_65:
                LOBYTE(v99[0]) = 0;
                re::Optional<NS::SharedPtr<MTL::Texture>>::operator=(v39 + 16, v99);
                if (LOBYTE(v99[0]) == 1 && v99[1])
                {
                }

                goto LABEL_68;
              }
            }

            else
            {
              if ((v36 & 1) == 0)
              {
                goto LABEL_65;
              }

              *(v39 + 32) = 1;
            }

            *(v39 + 33) = v1;
            goto LABEL_65;
          }
        }

LABEL_68:
        v33 += 16;
      }
    }

    if (*(this + 19) || *(this + 59))
    {
      ++v5[1122];
    }

    v40 = *(this + 24);
    if (v40)
    {
      v41 = *(this + 26);
      v42 = &v41[3 * v40];
      do
      {
        if (*(v41 + 8) == 1)
        {
          v88 = *v41;
          v87 = v41[2];
          re::SamplerTable::setSampler(v5 + 99, &v88, &v87);
          if (v87)
          {

            v87 = 0;
          }

          v88 = 0;
        }

        else
        {
          *v92 = *v41;
          v43 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v5 + 99, v92);
          if (v43 != -1)
          {
            v44 = *(v5 + 100) + 16 * v43;
            re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::removeStableAt((v5 + 856), *(v44 + 8));
            v45 = *(v44 + 8);
            v99[0] = v5 + 792;
            v46 = *(v5 + 101);
            if (v46 >= 0x10)
            {
              v47 = 0;
              v48 = *(v5 + 99);
              v49 = v46 >> 4;
              while (1)
              {
                v50 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v48), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
                v99[1] = (v50 ^ 0xFFFFLL);
                if (v50 != 0xFFFFLL)
                {
                  break;
                }

                v47 -= 16;
                ++v48;
                if (!--v49)
                {
                  goto LABEL_88;
                }
              }

              v51 = __clz(__rbit64(v50 ^ 0xFFFFLL));
              v52 = v51 - v47;
              *&v100 = v51 - v47;
              if (v51 + 1 != v47)
              {
                do
                {
                  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::updateKvpsHash((v5 + 792), *(v5 + 100) + 16 * v52);
                  v53 = *(v5 + 100);
                  v54 = v100;
                  v55 = v53 + 16 * v100;
                  v58 = *(v55 + 8);
                  v56 = (v55 + 8);
                  v57 = v58;
                  if (v58 >= v45)
                  {
                    *v56 = v57 - 1;
                    v53 = *(v5 + 100);
                    v54 = v100;
                  }

                  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::updateKvpsHash((v5 + 792), v53 + 16 * v54);
                  re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v99);
                  v52 = v100;
                }

                while (v100 != -1);
              }
            }

LABEL_88:
            re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::remove((v5 + 792), v92);
          }
        }

        v41 += 3;
      }

      while (v41 != v42);
    }

    applyBindingChanges(*(this + 29), *(this + 31), v5 + 3);
    applyBindingChanges(*(this + 34), *(this + 36), v5 + 11);
    applyBindingChanges(*(this + 39), *(this + 41), v5 + 69);
    applyBindingChanges(*(this + 44), *(this + 46), v5 + 77);
    v59 = *(this + 49);
    if (v59)
    {
      v60 = 24 * v59;
      v61 = (*(this + 51) + 16);
      do
      {
        v62 = v61 - 2;
        v63 = (v5 + 904);
        if (*(v61 - 8) == 1)
        {
          re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::addOrReplace(v63, v62, v61);
        }

        else
        {
          re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::remove(v63, v62);
        }

        v61 += 3;
        v60 -= 24;
      }

      while (v60);
    }

    v64 = *(this + 54);
    if (v64)
    {
      v65 = 16 * v64;
      v66 = (*(this + 56) + 12);
      do
      {
        v67 = v66 - 3;
        v68 = (v5 + 968);
        if (*(v66 - 4) == 1)
        {
          re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addOrReplace(v68, v67, v66);
        }

        else
        {
          re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::remove(v68, v67);
        }

        v66 += 4;
        v65 -= 16;
      }

      while (v65);
    }

    v69 = *(this + 64);
    if (v69)
    {
      v70 = *(this + 66);
      v71 = v70 + 40 * v69;
      do
      {
        if (*(v70 + 32) == 1)
        {
          re::MaterialParameterTable::clearPassTechniqueMappings(v5);
        }

        else
        {
          v72 = *(v70 + 8);
          if (*(v70 + 16) == 1)
          {
            re::MaterialParameterTable::addPassTechniqueMapping(v5, *(v70 + 8), *(v70 + 24), *v70);
          }

          else
          {
            *v92 = *v70;
            v73 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet((v5 + 1032), v92);
            if (v73)
            {
              v74 = *v73;
              if (!*v73 || (v74 = v72 % *(v73 + 24), v75 = *(*(v73 + 8) + 4 * v74), v75 == 0x7FFFFFFF))
              {
                v76 = 0x7FFFFFFF;
                goto LABEL_112;
              }

              v77 = *(v73 + 16);
              if (*(v77 + 24 * v75 + 8) == v72)
              {
                v76 = *(*(v73 + 8) + 4 * v74);
LABEL_112:
                v75 = 0x7FFFFFFF;
              }

              else
              {
                v78 = *(v77 + 24 * v75) & 0x7FFFFFFF;
                if (v78 == 0x7FFFFFFF)
                {
LABEL_119:
                  v76 = 0x7FFFFFFF;
                }

                else if (*(v77 + 24 * v78 + 8) == v72)
                {
                  v76 = *(v77 + 24 * v75) & 0x7FFFFFFF;
                }

                else
                {
                  v79 = *(v77 + 24 * v78) & 0x7FFFFFFF;
                  if (v79 == 0x7FFFFFFF)
                  {
                    v76 = 0x7FFFFFFF;
                  }

                  else
                  {
                    while (1)
                    {
                      v75 = v79;
                      if (*(v77 + 24 * v79 + 8) == v72)
                      {
                        break;
                      }

                      v79 = *(v77 + 24 * v79) & 0x7FFFFFFF;
                      LODWORD(v78) = v75;
                      if (v79 == 0x7FFFFFFF)
                      {
                        goto LABEL_119;
                      }
                    }

                    v76 = v79;
                  }

                  v75 = v78;
                }
              }

              v99[0] = v72;
              v99[1] = __PAIR64__(v76, v74);
              LODWORD(v100) = v75;
              re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::removeInternal(v73, v99);
            }
          }
        }

        v70 += 40;
      }

      while (v70 != v71);
    }

    if (*(this + 536))
    {
      v80 = *(this + 537);
      if ((v5[1080] & 1) == 0)
      {
        v5[1080] = 1;
      }

      *(v5 + 1081) = v80;
    }

    if (*(this + 548) == 1)
    {
      *(v99 + 3) = *(this + 69);
      *(&v99[1] + 3) = *(this + 140);
      if (v5[1092])
      {
        v81 = *(this + 69);
        *(v5 + 276) = *(this + 140);
        *(v5 + 137) = v81;
      }

      else
      {
        v5[1092] = 1;
        *(v5 + 137) = *(v99 + 3);
        *(v5 + 276) = *(&v99[1] + 3);
      }
    }

    v5[1120] = 0;
  }
}