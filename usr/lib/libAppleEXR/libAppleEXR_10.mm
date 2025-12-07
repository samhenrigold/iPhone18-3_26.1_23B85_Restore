const char *__cdecl axr_property_flags_get_name(axr_property_flags_t flags)
{
  if (flags <= axr_property_flags_part_info_v1 && (flags & 0xFF00) <= 0x100)
  {
    return kPropertiesFlagsNames[flags | ((flags & 0xFF00) >> 7)];
  }

  else
  {
    return "<invalid axr_property_flags_t>";
  }
}

size_t axr_type_get_size(axr_type_t a1)
{
  v1 = 4;
  if (a1 == axr_type_half)
  {
    v1 = 2;
  }

  if (a1 <= axr_type_float)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

const char *__cdecl axr_level_mode_get_name(axr_level_mode_t mode)
{
  v1 = mode & 0xF;
  if (v1 >= 3)
  {
    v1 = 3;
  }

  return axr_level_mode_get_name_kLevelMode[v1];
}

uint32_t axr_get_version(void)
{
  result = axr_get_version_version;
  if (axr_get_version_version)
  {
    return result;
  }

  memset(&v14, 0, sizeof(v14));
  result = dladdr(axr_data_create, &v14);
  if (!result)
  {
    return result;
  }

  dli_fbase = v14.dli_fbase;
  if (!v14.dli_fbase)
  {
    return 0;
  }

  if (*v14.dli_fbase != -889275714 && *v14.dli_fbase != -1095041334)
  {
    goto LABEL_16;
  }

  v3 = *(v14.dli_fbase + 1);
  if (!v3)
  {
    return 0;
  }

  v4 = bswap32(v3);
  for (i = (v14.dli_fbase + 16); *(i - 2) != 16777228; i += 5)
  {
    if (!--v4)
    {
      return 0;
    }
  }

  v6 = *i;
  if (!v6)
  {
    return 0;
  }

  dli_fbase = v14.dli_fbase + v6;
LABEL_16:
  v8 = *(dli_fbase + 8);
  v7 = dli_fbase + 32;
  v9 = *(v7 - 3);
  v10 = v8 != 13;
  v11 = v8 != 13 && v9 >= 9;
  if (v11)
  {
    do
    {
      v12 = v7[1];
      v11 = v9 >= v12;
      v9 -= v12;
      if (!v11)
      {
        v9 = 0;
      }

      v7 = (v7 + v12);
      v10 = *v7 != 13;
    }

    while (*v7 != 13 && v9 > 8);
  }

  result = 0;
  if (v9 >= 8 && !v10)
  {
    result = v7[4];
    axr_get_version_version = result;
  }

  return result;
}

uint64_t ChunkLayout_Print(char *a1, size_t a2, unsigned int a3)
{
  if (a3 > 3)
  {
    return snprintf(a1, a2, "<unknown layout: %x>");
  }

  else
  {
    return snprintf(a1, a2, "%s");
  }
}

const char *__cdecl axr_channel_type_get_name(axr_channel_type_t type)
{
  if (type <= axr_channel_type_v)
  {
    return off_29EE51578[type];
  }

  else
  {
    return "<invalid channel type>";
  }
}

const char *__cdecl axr_line_order_get_name(axr_line_order_t line_orderType)
{
  if (line_orderType >= (axr_line_order_random_y|axr_line_order_decreasing_y))
  {
    v1 = axr_line_order_random_y|axr_line_order_decreasing_y;
  }

  else
  {
    v1 = line_orderType;
  }

  return axr_line_order_get_name_kLineOrderNames[v1];
}

AXRLogicalImageList *AXRLogicalImageList::AXRLogicalImageList(AXRLogicalImageList *a1, NSObject *a2)
{
  v135 = *MEMORY[0x29EDCA608];
  *(a1 + 1) = 0;
  v83 = (a1 + 8);
  *a1 = 0;
  *(a1 + 2) = 0;
  if (!a2)
  {
    return a1;
  }

  v2 = a2;
  isa = a2[12].isa;
  if (!isa)
  {
    return a1;
  }

  v105 = 0;
  AXRLogicalImageList::LoadDefaultGroups(a1, &a2[2], &v105);
  v3 = 0;
  __dst = v103;
  v102 = 32;
  do
  {
    layer_count = axr_data_get_layer_count(v2, v3);
    memset(&v101, 0, sizeof(v101));
    axr_data_get_part_info(&v101, v2, v3, axr_part_info_current);
    if (!layer_count)
    {
      goto LABEL_160;
    }

    for (i = 0; i != layer_count; ++i)
    {
      __src[1] = 0;
      __src[0] = 0;
      *&v118 = 0;
      v5 = v2[11].isa;
      if (v3 && v5)
      {
        v6 = 1;
        do
        {
          v5 = v5[1];
          if (v6 >= v3)
          {
            break;
          }

          ++v6;
        }

        while (v5);
      }

      if (!v5)
      {
        if (GetFlagsOnceToken == -1)
        {
          goto LABEL_181;
        }

        goto LABEL_182;
      }

      Part::GetLayerInfo(__src, v5, i);
      v7 = v118;
      if (!v118)
      {
        continue;
      }

      if (v102 < v118)
      {
        v72 = __dst;
        if (__dst == v103)
        {
          v72 = 0;
          __dst = 0;
        }

        v8 = reallocf(v72, 4 * v118);
        __dst = v8;
        v102 = v7;
        if (!v8)
        {
          continue;
        }
      }

      else
      {
        v8 = __dst;
        if (!__dst)
        {
          continue;
        }
      }

      memcpy(v8, __src[1], 4 * v118);
      v9 = __src[0];
      __s1[0] = 0;
      if (!v118)
      {
        continue;
      }

      v10 = v118;
      v11 = v105;
      if (!v105)
      {
        if (v101.view)
        {
          strncpy(__s1, v101.view, 0x100uLL);
        }

LABEL_26:
        v17 = *v83;
        if (*v83)
        {
          v16 = 0;
          do
          {
            v18 = v17;
            if (!v16)
            {
              if (*(v17 + 32))
              {
                v16 = 0;
              }

              else
              {
                v16 = v17;
              }
            }

            if (!strcmp(__s1, (v17 + 32)))
            {
              v16 = v18;
              goto LABEL_47;
            }

            v17 = *v18;
          }

          while (*v18);
          if (v11)
          {
            if (v16)
            {
              goto LABEL_36;
            }

            v20 = &unk_296B90CDB;
          }

          else
          {
            v20 = __s1;
          }
        }

        else
        {
LABEL_37:
          v18 = 0;
          if (v11)
          {
            v20 = &unk_296B90CDB;
          }

          else
          {
            v20 = __s1;
          }
        }

        v21 = malloc_type_malloc(0x120uLL, 0x102004010D29A0BuLL);
        v16 = v21;
        if (!v21)
        {
          continue;
        }

        *v21 = 0u;
        *(v21 + 1) = 0u;
        strlcpy(v21 + 32, v20, 0x100uLL);
        v22 = v83;
        if (v18)
        {
          v22 = v18;
        }

        *v22 = v16;
        ++*a1;
LABEL_47:
        strncpy(__s, v9, 0x100uLL);
        v113 = 0;
        v19 = v10;
        if (!v11)
        {
          goto LABEL_57;
        }

        goto LABEL_48;
      }

      v12 = strrchr(__src[0], 46);
      v13 = v9;
      if (v12)
      {
        v15 = *v12;
        v14 = v12 + 1;
        if (v15)
        {
          v13 = v14;
        }

        else
        {
          v13 = v9;
        }
      }

      strncpy(__s1, v13, 0x100uLL);
      __s1[255] = 0;
      if (__s1[0])
      {
        goto LABEL_26;
      }

      v16 = *v83;
      if (!*v83)
      {
        goto LABEL_37;
      }

LABEL_36:
      strncpy(__s, v9, 0x100uLL);
      v113 = 0;
      v19 = v10;
LABEL_48:
      if (*(v16 + 32))
      {
        v23 = strrchr(__s, 46);
        v24 = v23;
        v25 = v23 ? v23 + 1 : __s;
        if (!strcmp(v25, v16 + 32))
        {
          if (v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = __s;
          }

          *v26 = 0;
        }
      }

LABEL_57:
      if (!__s[0] && v101.name && *v101.name)
      {
        strncpy(__s, v101.name, 0x100uLL);
        v113 = 0;
      }

      v27 = 0;
      v28 = 0;
      do
      {
        v134 = 0;
        v133 = 0u;
        v132 = 0u;
        v131 = 0u;
        v130 = 0u;
        v129 = 0u;
        v128 = 0u;
        v127 = 0u;
        v126 = 0u;
        v125 = 0u;
        v124 = 0u;
        v123 = 0u;
        v122 = 0u;
        v121 = 0u;
        v120 = 0u;
        v119 = 0u;
        v118 = 0u;
        *__src = 0u;
        AXRData::GetChannelInfo(&v2[2], v3, v8[v27], __src);
        v28 |= 1 << SBYTE4(__src[0]);
        ++v27;
      }

      while (v19 != v27);
      v85 = v16 + 3;
      v86 = v16;
      v93 = v8;
      do
      {
        v29 = 0;
        v30 = &kColorModelInfo;
        while ((*v30 & ~v28) != 0)
        {
          ++v29;
          v30 += 2;
          if (v29 == 12)
          {
            v31 = 0;
            v32 = 0;
            goto LABEL_71;
          }
        }

        if (v29 >= 0xC)
        {
          v31 = 0;
        }

        else
        {
          v31 = v30;
        }

        if (v29 >= 0xC)
        {
          v32 = 0;
        }

        else
        {
          v32 = *v30;
        }

LABEL_71:
        v111 = 0;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        memset(v106, 0, sizeof(v106));
        v33 = v2[11].isa;
        if (v3 && v33)
        {
          v34 = 1;
          do
          {
            v33 = *(v33 + 1);
            if (v34 >= v3)
            {
              break;
            }

            ++v34;
          }

          while (v33);
        }

        if (!v33)
        {
          if (GetFlagsOnceToken == -1)
          {
LABEL_181:
            AXRLogError("Error: image index %lu out of range [0,%lu]", v4, v3, v2[12].isa - 1);
            __break(1u);
          }

LABEL_182:
          AXRLogicalImageList::AXRLogicalImageList();
          goto LABEL_181;
        }

        v35 = v19;
        v36 = v2;
        Part::GetImageInfo(v106, v33, v2[3].isa);
        if (SDWORD1(v106[0]) >= SLODWORD(v106[0]))
        {
          v37 = DWORD1(v106[0]) - LODWORD(v106[0]) + 1;
        }

        else
        {
          v37 = 0;
        }

        if (SHIDWORD(v106[0]) >= SDWORD2(v106[0]))
        {
          v38 = HIDWORD(v106[0]) - DWORD2(v106[0]) + 1;
        }

        else
        {
          v38 = 0;
        }

        v89 = v38;
        v90 = v37;
        if (!v31)
        {
          v134 = 0;
          v133 = 0u;
          v132 = 0u;
          v131 = 0u;
          v130 = 0u;
          v129 = 0u;
          v128 = 0u;
          v127 = 0u;
          v126 = 0u;
          v125 = 0u;
          v124 = 0u;
          v123 = 0u;
          v122 = 0u;
          v121 = 0u;
          v120 = 0u;
          v119 = 0u;
          v118 = 0u;
          *__src = 0u;
          AXRData::GetChannelInfo(&v2[2], v3, *v93, __src);
          v53 = BYTE4(__src[0]);
          v54 = __src[0];
          v55 = *v93;
          v99 = v35 - 1;
          memmove(v93, v93 + 1, 4 * (v35 - 1));
          v56 = strrchr(&v118 + 8, 46);
          if (v56)
          {
            v57 = v56 + 1;
          }

          else
          {
            v57 = &v118 + 8;
          }

          if (*v57)
          {
            if (__s[0])
            {
              snprintf(__str, 0x100uLL, "%s.%s", __s, v57);
LABEL_140:
              v116 = 0;
              v66 = strlen(__str);
              if (v66 + 1 >= 2)
              {
                v67 = v66 + 1;
              }

              else
              {
                v67 = 256;
              }

              v68 = malloc_type_malloc(v67 + 80, 0x102004069052ED8uLL);
              v65 = v68;
              v69 = 1 << v53;
              if (v68)
              {
                *v68 = 0;
                *(v68 + 1) = v69;
                *(v68 + 4) = v90;
                *(v68 + 5) = v89;
                *(v68 + 6) = v54;
                *(v68 + 7) = v3;
                *(v68 + 8) = i;
                *(v68 + 36) = xmmword_296B8FAB0;
                *(v68 + 13) = v55;
                *(v68 + 7) = 0;
                *(v68 + 8) = 0;
                *(v68 + 18) = v29;
                strlcpy(v68 + 76, __str, v67);
              }

              v100 = v69;
              goto LABEL_146;
            }
          }

          else
          {
            v57 = __s;
          }

          strncpy(__str, v57, 0x100uLL);
          goto LABEL_140;
        }

        v39 = v3;
        v100 = 0;
        v40 = 0;
        v41 = 0;
        v94 = 0;
        v42 = 0;
        memset(__str, 255, sizeof(__str));
        v91 = -1;
        v43 = v19;
        v92 = v31;
        v87 = v31 + 12;
        while (v42 < v43)
        {
          v96 = v41;
          v98 = v40;
          v44 = &v93[v42];
          v45 = 4 * (~v42 + v43);
          while (1)
          {
            v134 = 0;
            v133 = 0u;
            v132 = 0u;
            v131 = 0u;
            v130 = 0u;
            v129 = 0u;
            v128 = 0u;
            v127 = 0u;
            v126 = 0u;
            v125 = 0u;
            v124 = 0u;
            v123 = 0u;
            v122 = 0u;
            v121 = 0u;
            v120 = 0u;
            v119 = 0u;
            v118 = 0u;
            *__src = 0u;
            AXRData::GetChannelInfo(&v36[2], v39, *v44, __src);
            v46 = 1 << SBYTE4(__src[0]);
            if (((1 << SBYTE4(__src[0])) & v32) != 0)
            {
              break;
            }

            ++v42;
            ++v44;
            v45 -= 4;
            if (v43 == v42)
            {
              v40 = v98;
              v41 = v96;
              v31 = v92;
              goto LABEL_113;
            }
          }

          v47 = 0;
          v40 = v98;
          v48 = v91;
          while (1)
          {
            v49 = v87[v47];
            if (v49 != -1 && HIDWORD(__src[0]) == v49)
            {
              break;
            }

            if (++v47 == 4)
            {
              goto LABEL_112;
            }
          }

          if (v91 == -1)
          {
            v48 = __src[0];
          }

          else if (v91 != LODWORD(__src[0]))
          {
            goto LABEL_109;
          }

          v91 = v48;
          if ((v46 & 0x200) == 0)
          {
            goto LABEL_111;
          }

          if (v98)
          {
            if (v98 != HIDWORD(__src[1]))
            {
              goto LABEL_109;
            }
          }

          else
          {
            v40 = HIDWORD(__src[1]);
          }

          if (!v96)
          {
            v98 = v40;
            v96 = v118;
            goto LABEL_111;
          }

          if (v96 == v118)
          {
            v98 = v40;
LABEL_111:
            *&__str[4 * v47] = *v44;
            memmove(v44, v44 + 1, v45);
            v93[--v43] = -1;
            v32 &= ~v46;
            v100 |= v46;
            ++v94;
            v40 = v98;
            goto LABEL_112;
          }

LABEL_109:
          ++v42;
LABEL_112:
          v41 = v96;
          v31 = v92;
          if (!v32)
          {
            break;
          }
        }

LABEL_113:
        v99 = v43;
        v51 = *(v31 + 2);
        if (v100 == v28)
        {
          v3 = v39;
          v52 = v94;
        }

        else
        {
          v58 = 0;
          v59 = &dword_296B8FAC8;
          v3 = v39;
          v52 = v94;
          while ((*(v59 - 1) & ~v100) != 0)
          {
            ++v58;
            v59 += 4;
            if (v58 == 12)
            {
              goto LABEL_127;
            }
          }

          if (v58 <= 0xB)
          {
            v51 = *v59;
          }
        }

LABEL_127:
        if (v51 == 1)
        {
          if ((vminvq_u32(vandq_s8(vcgeq_f32(xmmword_296B8FA90, vabsq_f32(vmlaq_f32(xmmword_296B8FA80, xmmword_296B8FA70, v107))), vcgeq_f32(xmmword_296B8FA90, vabsq_f32(vmlaq_f32(xmmword_296B8FAA0, xmmword_296B8FA70, v108))))) & 0x80000000) == 0)
          {
            v51 = 1;
          }

          else
          {
            v51 = 7;
          }
        }

        if (v52)
        {
          v95 = v52;
          v60 = v41;
          v61 = v40;
          v97 = *__str;
          v62 = strlen(__s);
          if (v62 + 1 >= 2)
          {
            v63 = v62 + 1;
          }

          else
          {
            v63 = 256;
          }

          v64 = malloc_type_malloc(v63 + 80, 0x102004069052ED8uLL);
          v65 = v64;
          if (v64)
          {
            *v64 = 0;
            *(v64 + 1) = v100;
            *(v64 + 4) = v90;
            *(v64 + 5) = v89;
            *(v64 + 6) = v91;
            *(v64 + 7) = v3;
            *(v64 + 8) = i;
            *(v64 + 9) = v51;
            *(v64 + 10) = v61;
            *(v64 + 11) = v60;
            *(v64 + 12) = v95;
            *(v64 + 52) = v97;
            *(v64 + 17) = 0;
            *(v64 + 18) = v29;
            strlcpy(v64 + 76, __s, v63);
          }
        }

        else
        {
          v65 = 0;
        }

LABEL_146:
        v2 = v36;
        v19 = v99;
        if (!v65)
        {
          break;
        }

        *v65 = 0;
        v70 = v85;
        v71 = *v85;
        if (*v85)
        {
          do
          {
            if (*(v65 + 18) < *(v71 + 18))
            {
              break;
            }

            v70 = v71;
            v71 = *v71;
          }

          while (v71);
        }

        v28 &= ~v100;
        *v65 = v71;
        *v70 = v65;
        ++v86[1];
      }

      while (v99);
    }

LABEL_160:
    ++v3;
  }

  while (v3 != isa);
  if (v105)
  {
    v73 = *v83;
    if (*v83)
    {
      v74 = 0;
      v75 = 0;
      v76 = *v83;
      do
      {
        if (v76[32])
        {
          if (!strncmp(v76 + 32, "left", 0x100uLL))
          {
            v74 = 1;
          }

          else
          {
            v75 |= strncmp(v76 + 32, "right", 0x100uLL) == 0;
          }
        }

        v76 = *v76;
      }

      while (v76);
      if ((v75 ^ v74))
      {
        v78 = *(v73 + 32);
        v77 = (v73 + 32);
        if (!v78)
        {
          if (v75)
          {
            v79 = "right";
          }

          else
          {
            v79 = "left";
          }

          strncpy(v77, v79, 0x100uLL);
        }
      }
    }
  }

  if (__dst != v103)
  {
    free(__dst);
  }

  return a1;
}

uint64_t AXRLogicalImageList::LoadDefaultGroups(AXRLogicalImageList *this, const AXRData *a2, BOOL *a3)
{
  v55 = *MEMORY[0x29EDCA608];
  v5 = *(a2 + 10) == 1;
  *a3 = v5;
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *(a2 + 9);
  if (!v6)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

LABEL_66:
    AXRLogError("Error: image index %lu out of range [0,%lu]", a2, 0, *(a2 + 10) - 1);
    __break(1u);
  }

  v7 = *(v6 + 248);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = 0;
  v9 = *(v6 + 301) ? 255 : 31;
  while (1)
  {
    v10 = *(a2 + 9);
    if (!v10)
    {
      if (GetFlagsOnceToken == -1)
      {
        goto LABEL_66;
      }

      goto LABEL_74;
    }

    Part::GetImageProperty(&__dst, v10, *(a2 + 1), *(a2 + 3), v8);
    v11 = *(&__dst + 1);
    v12 = *(&v40 + 1);
    v13 = v40;
    if (!strncmp(__dst, "multiView", v9) && !strncmp(v11, "stringvector", v9))
    {
      break;
    }

    if (v7 == ++v8)
    {
      goto LABEL_12;
    }
  }

  if (!v13)
  {
LABEL_12:
    *a3 = 0;
    goto LABEL_13;
  }

  if (v13 >= 4)
  {
    v22 = (this + 8);
    do
    {
      v23 = *v12;
      v24 = v13 - 4;
      if (v23 > 0xFE || v24 < v23)
      {
        break;
      }

      v26 = v12 + 1;
      memcpy(&__dst, v12 + 1, *v12);
      *(&__dst + v23) = 0;
      v27 = *v22;
      if (*v22)
      {
        v28 = 0;
        while (1)
        {
          v29 = v27;
          if (!v28)
          {
            if (v27[32])
            {
              v28 = 0;
            }

            else
            {
              v28 = v27;
            }
          }

          if (!strcmp(&__dst, v27 + 32))
          {
            break;
          }

          v27 = *v29;
          if (!*v29)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        v29 = 0;
LABEL_43:
        v30 = malloc_type_malloc(0x120uLL, 0x102004010D29A0BuLL);
        if (v30)
        {
          v31 = v30;
          *v30 = 0u;
          *(v30 + 1) = 0u;
          strlcpy(v30 + 32, &__dst, 0x100uLL);
          if (v29)
          {
            v32 = v29;
          }

          else
          {
            v32 = (this + 8);
          }

          *v32 = v31;
          ++*this;
        }
      }

      v12 = (v26 + v23);
      v13 = v24 - v23;
    }

    while (v13 > 3);
  }

LABEL_13:
  if (*a3 || *this)
  {
    return 1;
  }

  v14 = *(a2 + 9);
  if (!v14)
  {
    if (GetFlagsOnceToken == -1)
    {
      goto LABEL_66;
    }

LABEL_74:
    AXRLogicalImageList::AXRLogicalImageList();
    goto LABEL_66;
  }

  v15 = *(v14 + 248);
  if (!v15)
  {
    return 1;
  }

  v16 = 0;
  if (*(v14 + 301))
  {
    v17 = 255;
  }

  else
  {
    v17 = 31;
  }

  while (2)
  {
    v18 = *(a2 + 9);
    if (!v18)
    {
      if (GetFlagsOnceToken == -1)
      {
        goto LABEL_66;
      }

      goto LABEL_74;
    }

    Part::GetImageProperty(&__dst, v18, *(a2 + 1), *(a2 + 3), v16);
    v19 = *(&__dst + 1);
    v20 = v40;
    if (strncmp(__dst, "view", v17) || strncmp(v19, "string", v17))
    {
      if (v15 == ++v16)
      {
        return 1;
      }

      continue;
    }

    break;
  }

  if (v20)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    __dst = 0u;
    v40 = 0u;
    if (v20 <= 0xFF)
    {
      memcpy(&__dst, *(&v20 + 1), v20);
      *(&__dst + v20) = 0;
    }

    v33 = *(this + 1);
    if (v33)
    {
      while (1)
      {
        v34 = v33;
        if (!strcmp(&__dst, v33 + 32))
        {
          break;
        }

        v33 = *v34;
        if (!*v34)
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      v34 = 0;
LABEL_58:
      v35 = malloc_type_malloc(0x120uLL, 0x102004010D29A0BuLL);
      if (v35)
      {
        v36 = v35;
        *v35 = 0u;
        *(v35 + 1) = 0u;
        strlcpy(v35 + 32, &__dst, 0x100uLL);
        if (v34)
        {
          v37 = v34;
        }

        else
        {
          v37 = (this + 8);
        }

        *v37 = v36;
        ++*this;
      }
    }
  }

  return 1;
}

BOOL AXRLogicalImageList::IsEqual(AXRLogicalImageList *this, const AXRLogicalImageList *a2)
{
  if (*this != *a2)
  {
    return 0;
  }

  v2 = (a2 + 8);
  v3 = (this + 8);
  while (1)
  {
    v3 = *v3;
    v2 = *v2;
    if (!v2 || v3 == 0)
    {
      break;
    }

    if (!AXRImageGroup::IsEqual(v3, v2))
    {
      return 0;
    }
  }

  return v3 == v2;
}

BOOL AXRImageGroup::IsEqual(AXRImageGroup *this, const AXRImageGroup *a2)
{
  if (!a2 || *(this + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (a2 == this)
  {
    return 1;
  }

  v2 = *(this + 3);
  if (*(this + 1))
  {
    v3 = *(a2 + 3);
    if (v2)
    {
      goto LABEL_6;
    }

    return v3 == 0;
  }

  v3 = 0;
  if (!v2)
  {
    return v3 == 0;
  }

LABEL_6:
  while (1)
  {
    result = AXRImageLayer::IsEqual(v2, v3);
    if (!result)
    {
      break;
    }

    v2 = *v2;
    v3 = *v3;
    if (!v2)
    {
      return v3 == 0;
    }
  }

  return result;
}

size_t AXRImageGroup::GetSerializedSize(AXRImageGroup *this)
{
  v2 = strlen(this + 32) + 13;
  for (i = *(this + 3); i; i = *i)
  {
    v2 += strlen(i + 76) + 4 * *(i + 12) + 49;
  }

  return v2;
}

AXRImageGroup *AXRImageGroup::Deserialize(const void **this, char **a2, unint64_t *a3, axr_flags_t a4, axr_error_t *a5, axr_error_t *a6)
{
  v7 = *a2;
  if (*a2 <= 3)
  {
    if (a5)
    {
      v8 = 0;
      v9 = axr_error_data_truncated;
LABEL_4:
      *a5 = v9;
      return v8;
    }

    return 0;
  }

  v12 = *this + 4;
  v13 = **this;
  *this = v12;
  v14 = v7 - 4;
  *a2 = v14;
  if (v13 != 1735946849)
  {
    if (a5 && *a5 == axr_error_success)
    {
      v8 = 0;
      v9 = axr_error_data_corrupted;
      goto LABEL_4;
    }

    return 0;
  }

  if (v14)
  {
    v17 = *v12 + 291;
  }

  else
  {
    v17 = 291;
  }

  v18 = malloc_type_malloc(v17, 0xA3D950CFuLL);
  if (!v18)
  {
    if (a5)
    {
      v8 = 0;
      v9 = axr_error_insufficient_memory;
      goto LABEL_4;
    }

    return 0;
  }

  v8 = v18;
  v21 = axr_error_success;
  AXRImageGroup::AXRImageGroup(v18, this, a2, a3, a4, &v21);
  if (v21)
  {
    for (i = *(v8 + 3); i; i = *(v8 + 3))
    {
      *(v8 + 3) = *i;
      MEMORY[0x29C25E8F0]();
    }

    free(v8);
    v8 = 0;
    if (a5)
    {
      v9 = v21;
      goto LABEL_4;
    }
  }

  return v8;
}

BOOL AXRImageGroup::Serialize(AXRImageGroup *this, void **a2, unint64_t *a3)
{
  v3 = *a3 - 4;
  if (*a3 < 4)
  {
    return 0;
  }

  v7 = *a2;
  *v7 = 1735946849;
  v8 = v7 + 1;
  *a2 = v8;
  *a3 = v3;
  v9 = strlen(this + 32);
  v10 = v9 >= 0xFF ? 255 : v9;
  if (v3 <= v10)
  {
    return 0;
  }

  v11 = v10 + 1;
  *v8 = v10;
  memcpy(v8 + 1, this + 32, v10);
  v12 = *a2 + v11;
  *a2 = v12;
  v13 = *a3 - v11;
  *a3 = v13;
  v14 = v13 >= 8;
  v15 = v13 - 8;
  if (!v14)
  {
    return 0;
  }

  *v12 = bswap64(*(this + 1));
  *a2 = v12 + 1;
  *a3 = v15;
  v16 = (this + 24);
  do
  {
    v16 = *v16;
    v17 = v16 == 0;
  }

  while (v16 && AXRImageLayer::Serialize(v16, a2, a3));
  return v17;
}

BOOL SerializeString(const char *a1, void **a2, unint64_t *a3)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = &unk_296B90CDB;
  }

  v6 = strlen(v5);
  if (v6 >= 0xFF)
  {
    v7 = 255;
  }

  else
  {
    v7 = v6;
  }

  v8 = *a3;
  if (*a3 > v7)
  {
    v9 = *a2;
    *v9 = v7;
    memcpy(v9 + 1, v5, v7);
    *a2 = *a2 + v7 + 1;
    *a3 -= v7 + 1;
  }

  return v8 > v7;
}

BOOL AXRImageLayer::Serialize(AXRImageLayer *this, void **a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *a3 - 4;
  if (*a3 >= 4)
  {
    v5 = *a2;
    v6 = *a2;
    *v6 = 1819441249;
    *a2 = v6 + 1;
    *a3 = v4;
    if (v4 >= 8)
    {
      *(v5 + 1) = bswap64(*(this + 1));
      *a2 = v5 + 3;
      *a3 = v3 - 12;
      if (v3 - 12 >= 4)
      {
        v5[3] = bswap32(*(this + 4));
        *a2 = v5 + 4;
        *a3 = v3 - 16;
        if (v3 - 16 >= 4)
        {
          v5[4] = bswap32(*(this + 5));
          *a2 = v5 + 5;
          *a3 = v3 - 20;
          if (v3 - 20 >= 4)
          {
            v5[5] = bswap32(*(this + 6));
            *a2 = v5 + 6;
            *a3 = v3 - 24;
            if (v3 - 24 >= 4)
            {
              v5[6] = bswap32(*(this + 7));
              *a2 = v5 + 7;
              *a3 = v3 - 28;
              if (v3 - 28 >= 4)
              {
                v5[7] = bswap32(*(this + 8));
                *a2 = v5 + 8;
                *a3 = v3 - 32;
                if (v3 - 32 >= 4)
                {
                  v5[8] = bswap32(*(this + 9));
                  *a2 = v5 + 9;
                  *a3 = v3 - 36;
                  if (v3 - 36 >= 4)
                  {
                    v5[9] = bswap32(*(this + 10));
                    *a2 = v5 + 10;
                    *a3 = v3 - 40;
                    if (v3 - 40 >= 4)
                    {
                      v5[10] = bswap32(*(this + 11));
                      *a2 = v5 + 11;
                      *a3 = v3 - 44;
                      if (v3 - 44 >= 4)
                      {
                        v5[11] = bswap32(*(this + 12));
                        v7 = v5 + 12;
                        *a2 = v7;
                        *a3 = v3 - 48;
                        if (!*(this + 12))
                        {
                          return SerializeString(this + 76, a2, a3);
                        }

                        v8 = 0;
                        for (i = v3 - 52; i < 0xFFFFFFFFFFFFFFFCLL; i -= 4)
                        {
                          *v7++ = bswap32(*(this + v8 + 13));
                          *a2 = v7;
                          *a3 = i;
                          if (++v8 >= *(this + 12))
                          {
                            return SerializeString(this + 76, a2, a3);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

void AXRImageGroup::AXRImageGroup(AXRImageGroup *this, const void **a2, char **a3, unint64_t *a4, axr_flags_t a5, axr_error_t *a6)
{
  *(this + 32) = 0;
  v8 = this + 32;
  *this = 0u;
  *(this + 1) = 0u;
  v9 = *a3;
  if (*a3 && ((v10 = a5, v14 = *a2, v17 = *v14, v15 = v14 + 1, v16 = v17, *a2 = v15, v18 = v9 - 1, *a3 = v18, !v17) ? (*v8 = 0, v20 = *a3) : (v18 >= v16 ? (v19 = v16) : (v19 = v18), memcpy(this + 32, v15, v19), v8[v19] = 0, *a2 = *a2 + v19, v20 = &(*a3)[-v19], *a3 = v20), v20 > 7))
  {
    v21 = **a2;
    *a2 = *a2 + 8;
    *a3 = v20 - 8;
    if (v21)
    {
      v22 = 0;
      v23 = bswap64(v21);
      v24 = 1;
      do
      {
        v25 = AXRImageLayer::Deserialize(a2, a3, a4, v10, a6, a6);
        if (!v25)
        {
          break;
        }

        v26 = v22 ? v22 : (this + 24);
        *v26 = v25;
        ++*(this + 1);
        v27 = v23 > v24++;
        v22 = v25;
      }

      while (v27);
    }
  }

  else if (a6)
  {
    *a6 = axr_error_data_truncated;
  }
}

char *AXRImageLayer::Deserialize(int **this, char **a2, unint64_t *a3, int a4, uint64_t *a5, axr_error_t *a6)
{
  v53 = *MEMORY[0x29EDCA608];
  if (a3 != 1)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a4) & 2) != 0)
    {
      AXRLogError("%s: error unhandled version (%d)", a2, "Deserialize", a3);
    }

    if (a5)
    {
      result = 0;
      v9 = -3;
      goto LABEL_43;
    }

    return 0;
  }

  v7 = *a2;
  if (*a2 <= 3)
  {
    goto LABEL_3;
  }

  v12 = *this;
  v13 = *(*this)++;
  *a2 = (v7 - 4);
  if (v13 != 1819441249)
  {
    goto LABEL_41;
  }

  if (v7 - 4 <= 7)
  {
    goto LABEL_3;
  }

  v14 = bswap64(*(v12 + 4));
  *this = (v12 + 12);
  *a2 = (v7 - 12);
  *&v49 = v14;
  if (v7 - 12 <= 3)
  {
    goto LABEL_3;
  }

  v15 = bswap32(*(v12 + 12));
  *this = (v12 + 16);
  *a2 = (v7 - 16);
  DWORD2(v49) = v15;
  if (v7 - 16 <= 3)
  {
    goto LABEL_3;
  }

  v16 = bswap32(*(v12 + 16));
  *this = (v12 + 20);
  *a2 = (v7 - 20);
  HIDWORD(v49) = v16;
  if (v7 - 20 <= 3)
  {
    goto LABEL_3;
  }

  v17 = bswap32(*(v12 + 20));
  *this = (v12 + 24);
  *a2 = (v7 - 24);
  LODWORD(v50) = v17;
  if (v7 - 24 <= 3)
  {
    goto LABEL_3;
  }

  v18 = bswap32(*(v12 + 24));
  *this = (v12 + 28);
  *a2 = (v7 - 28);
  DWORD1(v50) = v18;
  if (v7 - 28 <= 3)
  {
    goto LABEL_3;
  }

  v19 = bswap32(*(v12 + 28));
  *this = (v12 + 32);
  *a2 = (v7 - 32);
  DWORD2(v50) = v19;
  if (v7 - 32 <= 3)
  {
    goto LABEL_3;
  }

  v20 = bswap32(*(v12 + 32));
  *this = (v12 + 36);
  *a2 = (v7 - 36);
  HIDWORD(v50) = v20;
  if (v7 - 36 <= 3)
  {
    goto LABEL_3;
  }

  v21 = bswap32(*(v12 + 36));
  *this = (v12 + 40);
  *a2 = (v7 - 40);
  LODWORD(v51[0]) = v21;
  if (v7 - 40 <= 3)
  {
    goto LABEL_3;
  }

  v22 = bswap32(*(v12 + 40));
  *this = (v12 + 44);
  *a2 = (v7 - 44);
  DWORD1(v51[0]) = v22;
  if (v7 - 44 <= 3)
  {
    goto LABEL_3;
  }

  v23 = *(v12 + 44);
  v24 = bswap32(v23);
  v25 = (v12 + 48);
  *this = (v12 + 48);
  v26 = (v7 - 48);
  *a2 = (v7 - 48);
  DWORD2(v51[0]) = v24;
  if (v17 > 2 || v20 - 8 < 0xFFFFFFF7 || v21 > v15 || v22 > v16 || v24 > 4)
  {
LABEL_41:
    if (a5)
    {
      result = 0;
      v9 = -6;
      goto LABEL_43;
    }

    return 0;
  }

  v46 = v14;
  v27 = v25;
  if (v23)
  {
    v28 = v51 + 3;
    if (v24 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v24;
    }

    v30 = (v7 - 52);
    while (v30 < 0xFFFFFFFFFFFFFFFCLL)
    {
      v31 = *v27++;
      *this = v27;
      *a2 = v30;
      *v28++ = bswap32(v31);
      v30 -= 4;
      if (!--v29)
      {
        v26 = v30 + 4;
        goto LABEL_35;
      }
    }

LABEL_3:
    if (a5)
    {
      result = 0;
      v9 = -4;
LABEL_43:
      *a5 = v9;
      return result;
    }

    return 0;
  }

LABEL_35:
  if (!v26)
  {
    if (a5)
    {
      v39 = 0;
      v45 = -4;
      goto LABEL_53;
    }

    return 0;
  }

  v34 = *v27;
  v32 = (v27 + 1);
  v33 = v34;
  *this = v32;
  v35 = v26 - 1;
  *a2 = v26 - 1;
  if (v34)
  {
    v36 = v32;
    if (v35 >= v33)
    {
      v37 = v33;
    }

    else
    {
      v37 = (v26 - 1);
    }

    memcpy(__dst, v32, v37);
    __dst[v37] = 0;
    *this = (v36 + v37);
    *a2 = &v35[-v37];
  }

  else
  {
    __dst[0] = 0;
  }

  v38 = malloc_type_malloc(v33 + 81, 0x102004069052ED8uLL);
  if (v38)
  {
    v39 = v38;
    v40 = 0;
    v41 = &kColorModelInfo;
    do
    {
      v42 = *v41;
      v41 += 2;
      if ((v42 & ~v46) == 0)
      {
        break;
      }

      ++v40;
    }

    while (v40 != 12);
    *v38 = 0;
    v43 = v50;
    *(v38 + 8) = v49;
    *(v38 + 24) = v43;
    v44 = v51[1];
    *(v38 + 40) = v51[0];
    *(v38 + 56) = v44;
    *(v38 + 18) = v40;
    strlcpy(v38 + 76, __dst, v33 + 1);
    return v39;
  }

  if (!a5)
  {
    return 0;
  }

  v39 = 0;
  v45 = -5;
LABEL_53:
  *a5 = v45;
  return v39;
}

void *AXRImageGroup::GetDebugDescription(AXRImageGroup *this, const char *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%sview: %p %s\n", a2, this, this + 32];
  snprintf(__str, 0x20uLL, "%s\t", a2);
  for (i = *(this + 3); i; i = *i)
  {
    v4 = [v4 stringByAppendingString:{AXRImageLayer::GetDebugDescription(i, __str)}];
  }

  return v4;
}

uint64_t AXRImageLayer::GetDebugDescription(AXRImageLayer *this, const char *a2)
{
  v2 = a2;
  v31 = *MEMORY[0x29EDCA608];
  v4 = *(this + 1);
  if (!v4)
  {
    v6 = __str;
    v7 = 1023;
LABEL_17:
    snprintf(v6, v7, "<none>");
    goto LABEL_18;
  }

  v24 = *(this + 1);
  v5 = "{%s";
  v6 = __str;
  v7 = 1023;
  do
  {
    v8 = __clz(v4);
    v9 = v8 ^ 0x3F;
    name = axr_channel_type_get_name((v8 ^ 0x3F));
    if (name)
    {
      v11 = name;
      v12 = strstr(name, "axr_channel_type_");
      v13 = 17;
      if (v11 != v12)
      {
        v13 = 0;
      }

      v14 = &v11[v13];
    }

    else
    {
      v14 = 0;
    }

    v15 = snprintf(v6, v7, v5, v14);
    if (v15 >= v7)
    {
      v16 = v7;
    }

    else
    {
      v16 = v15;
    }

    v17 = v16 & ~(v16 >> 31);
    v7 -= v17;
    v6 += v17;
    v5 = " | %s";
    v18 = 1 << v9 == v4;
    v4 ^= 1 << v9;
  }

  while (!v18);
  if (!v24)
  {
    v2 = a2;
    goto LABEL_17;
  }

  snprintf(v6, v7, "}");
  v2 = a2;
LABEL_18:
  v19 = 0;
  v20 = *(this + 9);
  v21 = v26;
  do
  {
    if (v19 >= *(this + 12))
    {
      *v21 = 0;
    }

    else if (v19)
    {
      snprintf(v21, 6uLL, ", %u");
    }

    else
    {
      snprintf(v26, 6uLL, "%u");
    }

    ++v19;
    v21 += 6;
  }

  while (v19 != 4);
  if ((v20 - 8) >= 0xFFFFFFF7)
  {
    v22 = v20 + 1;
  }

  else
  {
    v22 = 0;
  }

  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%simage %p %s\n%s\tchannel types: %s\n%s\tsize:          {w: %u, h: %u}\n%s\ttype:          %s\n%s\tpart index:    %u\n%s\tlayer index:   %u\n%s\tcolorspace:    %s\n%s\txChromaSampl:  %u\n%s\tyChromaSsmpl:  %u\n%s\tchannel count: %u\n%s\tchannels:      {%s%s%s%s}\n", v2, this, this + 76, v2, __str, v2, *(this + 4), *(this + 5), v2, axr_type_get_name(*(this + 6)), v2, *(this + 7), v2, *(this + 8), v2, off_29EE51628[v22], v2, *(this + 10), v2, *(this + 11), v2, *(this + 12), v2, v26, &v27, &v28, v29];
}

NSObject *AXRImageLayer::CreateDecoder(uint64_t a1, axr_data_t fileData, int a3, unint64_t levelIndex, axr_flags_t flags, double a6)
{
  v6 = flags;
  v17 = axr_decoder_create(fileData, *(a1 + 28), levelIndex, flags);
  if (!v17)
  {
    return v17;
  }

  v18 = *(a1 + 48);
  if ((v6 & 2) != 0)
  {
    if (v18 <= 3 && (*(a1 + 8) & 0x10) != 0)
    {
      AXRLogDebug("axr_logical_image_info_create_decoder: channel list already has an alpha channel but alpha parameter is numeric, indicating to add another one.", v10, v11, v12, v13, v14, v15, v16);
    }

    if ((v18 - 2) >= 2)
    {
      if (v18 == 4)
      {
        v19 = "axr_logical_image_info_create_decoder: channel count = 4. Attempt to add a fifth channel (constant alpha) ignored.";
        goto LABEL_14;
      }

      if (v18 != 1)
      {
        v19 = "axr_logical_image_info_create_decoder: channel count = lu unsupported by axr_decoder_read_pixels.";
        goto LABEL_14;
      }

      if (a6 == 1.0 && *(a1 + 8) == 1024)
      {
        v19 = "axr_logical_image_info_create_decoder memory waste: Adding constant opaque alpha channel to monochrome data";
LABEL_14:
        AXRLogDebug(v19, v10, v11, v12, v13, v14, v15, v16);
      }
    }
  }

  if (!((v18 > 3) | (a3 ^ 1) & 1) && axr_decoder_append_constant_value_channel(v17, a6, *(a1 + 24), axr_channel_type_alpha, axr_flags_default))
  {
    goto LABEL_28;
  }

  if (v18)
  {
    v20 = (a1 + 52);
    v21 = v18;
    while (1)
    {
      v22 = *v20++;
      if (axr_decoder_append_channel(v17, v22, axr_flags_default))
      {
        goto LABEL_28;
      }

      if (!--v21)
      {
        if (v18 > 3)
        {
          return v17;
        }

        if (v18 == 2 && axr_decoder_append_constant_value_channel(v17, 0.0, *(a1 + 24), axr_channel_type_blue, axr_flags_default))
        {
          goto LABEL_28;
        }

        if ((a3 & 1) == 0)
        {
          goto LABEL_27;
        }

        return v17;
      }
    }
  }

  if ((a3 & 1) == 0)
  {
LABEL_27:
    if (axr_decoder_append_constant_value_channel(v17, a6, *(a1 + 24), axr_channel_type_alpha, axr_flags_default))
    {
LABEL_28:

      return 0;
    }
  }

  return v17;
}

uint64_t axr_logical_image_list_get_default_view_index(axr_logical_image_list_t list)
{
  if (!list)
  {
    axr_logical_image_list_get_default_view_index_cold_1(list, v1);
  }

  return 0;
}

const char *__cdecl axr_logical_image_list_get_view_name(axr_logical_image_list_t list, unint64_t viewIndex)
{
  if (list)
  {
    if (list[2].isa <= viewIndex)
    {
      goto LABEL_8;
    }

    v2 = list + 3;
    v3 = viewIndex + 1;
    do
    {
      v2 = v2->isa;
      --v3;
    }

    while (v3);
    if (v2)
    {
      return &v2[4];
    }

    else
    {
LABEL_8:
      axr_logical_image_list_get_view_name_cold_1();
      return v5;
    }
  }

  else
  {
    axr_logical_image_list_get_view_name_cold_2(0, viewIndex);
    return &unk_296B90CDB;
  }
}

unint64_t axr_logical_image_list_get_image_count(axr_logical_image_list_t list, unint64_t viewIndex)
{
  if (list)
  {
    if (list[2].isa <= viewIndex)
    {
      goto LABEL_8;
    }

    v2 = list + 3;
    v3 = viewIndex + 1;
    do
    {
      v2 = v2->isa;
      --v3;
    }

    while (v3);
    if (v2)
    {
      return v2[1].isa;
    }

    else
    {
LABEL_8:
      axr_logical_image_list_get_image_count_cold_1();
      return v5;
    }
  }

  else
  {
    axr_logical_image_list_get_image_count_cold_2(0, viewIndex);
    return 0;
  }
}

unint64_t axr_logical_image_list_get_default_image_index(axr_logical_image_list_t list, unint64_t viewIndex)
{
  if (list)
  {
    if (list[2].isa <= viewIndex)
    {
      goto LABEL_8;
    }

    v2 = list + 3;
    v3 = viewIndex + 1;
    do
    {
      v2 = v2->isa;
      --v3;
    }

    while (v3);
    if (v2)
    {
      return v2[2].isa;
    }

    else
    {
LABEL_8:
      axr_logical_image_list_get_default_image_index_cold_1();
      return v5;
    }
  }

  else
  {
    axr_logical_image_list_get_default_image_index_cold_2(0, viewIndex);
    return 0;
  }
}

const char *__cdecl axr_logical_image_list_get_image_name(axr_logical_image_list_t list, unint64_t viewIndex, unint64_t imageIndex)
{
  if (!list)
  {
    axr_logical_image_list_get_image_name_cold_3(0, viewIndex);
    return &unk_296B90CDB;
  }

  if (list[2].isa <= viewIndex)
  {
    goto LABEL_12;
  }

  v3 = list + 3;
  v4 = viewIndex + 1;
  do
  {
    v3 = v3->isa;
    --v4;
  }

  while (v4);
  if (!v3)
  {
LABEL_12:
    axr_logical_image_list_get_image_name_cold_2();
    return v8;
  }

  if (v3[1].isa <= imageIndex)
  {
    goto LABEL_13;
  }

  v5 = v3 + 3;
  v6 = imageIndex + 1;
  do
  {
    v5 = v5->isa;
    --v6;
  }

  while (v6);
  if (!v5)
  {
LABEL_13:
    axr_logical_image_list_get_image_name_cold_1();
    return v8;
  }

  return &v5[9].isa + 4;
}

axr_logical_image_info_t *__cdecl axr_logical_image_list_get_image_info(axr_logical_image_info_t *__return_ptr retstr, axr_logical_image_info_t *list, unint64_t viewIndex, unint64_t imageIndex, axr_logical_image_info_struct_version_t version)
{
  if (list)
  {
    if (*&list->type <= viewIndex)
    {
      goto LABEL_12;
    }

    p_layerIndex = &list->layerIndex;
    v6 = viewIndex + 1;
    do
    {
      p_layerIndex = *p_layerIndex;
      --v6;
    }

    while (v6);
    if (p_layerIndex)
    {
      if (*(p_layerIndex + 1) <= imageIndex)
      {
        goto LABEL_13;
      }

      v7 = p_layerIndex + 6;
      v8 = imageIndex + 1;
      do
      {
        v7 = *v7;
        --v8;
      }

      while (v8);
      if (v7)
      {
        v9 = *(v7 + 2);
        v10 = *(v7 + 6);
        v11 = *(v7 + 14);
        *&retstr->xChromaSampling = *(v7 + 10);
        *&retstr->channels[1] = v11;
        *&retstr->channelMask = v9;
        *&retstr->type = v10;
      }

      else
      {
LABEL_13:
        axr_logical_image_list_get_image_info_cold_1();
      }
    }

    else
    {
LABEL_12:
      axr_logical_image_list_get_image_info_cold_2();
    }
  }

  else
  {
    axr_logical_image_list_get_image_info_cold_3(retstr, viewIndex);
  }

  return list;
}

axr_decoder_t axr_logical_image_list_create_decoder(axr_logical_image_list_t list, axr_data_t data, unint64_t viewIndex, unint64_t imageIndex, double alpha, BOOL isAlphaFirst, unint64_t levelIndex, axr_flags_t flags)
{
  if (!list)
  {
    axr_logical_image_list_create_decoder_cold_3(flags, &v13);
    return v13;
  }

  if (list[2].isa <= viewIndex)
  {
    goto LABEL_13;
  }

  v8 = list + 3;
  v9 = viewIndex + 1;
  do
  {
    v8 = v8->isa;
    --v9;
  }

  while (v9);
  if (!v8)
  {
LABEL_13:
    axr_logical_image_list_create_decoder_cold_2(flags, &v13);
    return v13;
  }

  if (v8[1].isa <= imageIndex)
  {
    goto LABEL_14;
  }

  v10 = v8 + 3;
  v11 = imageIndex + 1;
  do
  {
    v10 = v10->isa;
    --v11;
  }

  while (v11);
  if (!v10)
  {
LABEL_14:
    axr_logical_image_list_create_decoder_cold_1(flags, &v13);
    return v13;
  }

  return AXRImageLayer::CreateDecoder(v10, data, isAlphaFirst, levelIndex, flags, alpha);
}

size_t axr_logical_image_list_get_serialized_size(axr_logical_image_list_t list)
{
  if (!list)
  {
    return 0;
  }

  isa = list[3].isa;
  if (!isa)
  {
    return 16;
  }

  v2 = 16;
  do
  {
    v2 += AXRImageGroup::GetSerializedSize(isa);
    isa = *isa;
  }

  while (isa);
  return v2;
}

char *AXRData::GetChannelInfo@<X0>(AXRData *this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(this + 9);
  if (a2 && v4)
  {
    v5 = 1;
    do
    {
      v4 = *(v4 + 1);
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v4);
  }

  if (!v4)
  {
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_12;
    }

    while (1)
    {
      AXRLogError("Error: image index %lu out of range [0,%lu]", a2, a2, *(this + 10) - 1);
      __break(1u);
LABEL_12:
      [OS_axr_data debugDescription];
    }
  }

  v6 = *(this + 1);
  v7 = *(this + 3);

  return Part::GetChannelInfo(v4, v6, v7, a3, a4);
}

void AXRLogicalImageList::~AXRLogicalImageList(AXRLogicalImageList *this)
{
  v1 = *(this + 1);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  if (v1)
  {
    do
    {
      v2 = *v1;
      while (1)
      {
        v3 = v1[3];
        if (!v3)
        {
          break;
        }

        v1[3] = *v3;
        MEMORY[0x29C25E8F0]();
      }

      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

double OUTLINED_FUNCTION_3()
{
  result = 0.0;
  v0[2] = 0u;
  v0[3] = 0u;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t ChannelDescription::Print(ChannelDescription *this, char *a2, size_t a3, char *a4, axr_flags_t a5)
{
  v8 = &a4[*this];
  name = axr_channel_type_get_name(*(this + 32));
  v10 = axr_type_get_name(*(this + 18));
  if (*(this + 132))
  {
    v11 = "YES";
  }

  else
  {
    v11 = "NO";
  }

  v12 = 32;
  if (*(this + 18) == 1)
  {
    v12 = 16;
  }

  return snprintf(a2, a3, "\t\tname:         %s\n\t\tchannel type: %s\n\t\tpixel type:   %s\n\t\tchannel bits: %u\n\t\tx sampling:   %d\n\t\ty sampling:   %d\n\t\tis linear:    %s\n", v8, name, v10, v12, *(this + 20), *(this + 26), v11);
}

uint64_t ChannelDescription::ConfigureChannelType(uint64_t a1, char *__s1, size_t a3, void *a4)
{
  v5 = a3;
  v8 = 0;
  v9 = __s1;
  do
  {
    if (a3 - 1 == v8)
    {
      v12 = 0;
      v11 = __s1;
      goto LABEL_9;
    }

    v10 = v9[a3 - 1];
    ++v8;
    --v9;
  }

  while (v10 != 46);
  v11 = &v9[a3 + 1];
  if (a3 + 1 == v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 - (v9[a3] == 46) - v8 + 1;
  }

  v5 = v8 - 1;
LABEL_9:
  v13 = *a4;
  if (*a4)
  {
    while (v13[2] != v12 || strncmp(__s1, v13[1], v12))
    {
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v14 = malloc_type_calloc(1uLL, v12 + 41, 0x10300409A5B3759uLL);
    v13 = v14;
    if (v14)
    {
      v14[1] = v14 + 5;
      v14[2] = v12;
      memcpy(v14 + 5, __s1, v12);
    }

    *v13 = *a4;
    *a4 = v13;
  }

  v15 = v13[4];
  *(a1 + 16) = v13[3];
  v13[3] = a1;
  v13[4] = v15 + 1;
  v16 = &dword_29EE51678;
  v17 = 27;
  while (1)
  {
    result = strncasecmp(v11, *(v16 - 1), v5);
    if (!result)
    {
      break;
    }

    v16 += 4;
    if (!--v17)
    {
      return result;
    }
  }

  *(a1 + 128) = *v16;
  return result;
}

uint64_t ChannelDescription::IdentifyChannels(uint64_t a1, float32x4_t *a2)
{
  v2 = *a2;
  v2.i32[2] = a2->i32[2];
  v2.i32[3] = a2[1].i32[0];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v2, xmmword_296B8FB80)))) & 1) == 0 && a2[1].f32[1] == 1.0 && a2[1].f32[2] == 0.0 && fabsf((a2->f32[3] * 3.0) + -1.0) <= 0.001 && fabsf((a2[1].f32[3] * 3.0) + -1.0) <= 0.001)
  {
    v3 = *(a1 + 128) - 1;
    if (v3 <= 2)
    {
      *(a1 + 128) = dword_296B8FB94[v3];
    }
  }

  return 0;
}

void ChannelDescription::ParseChList(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, _DWORD *a8, uint64_t *a9)
{
  v10 = a7;
  v13 = a3;
  v15 = a9;
  *a9 = 0;
  v16 = *a7;
  if (*a7)
  {
    do
    {
      v17 = v16;
      v16 = *(v16 + 8);
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  if (a3 >= 2)
  {
    while (1)
    {
      v18 = (a2 + result);
      v19 = strnlen((a2 + result), v13 - 1);
      if (!v19)
      {
        return;
      }

      v27 = 0;
      v28 = v19 + 1;
      do
      {
        if (v18[v27] < 32)
        {
          return;
        }

        ++v27;
      }

      while (v19 != v27);
      v29 = v13 - v28 >= 0x10;
      v13 = v13 - v28 - 16;
      if (!v29)
      {
        break;
      }

      v48 = a6;
      v49 = v10;
      v50 = a8;
      v30 = v28 + a2;
      v31 = v28 + a2 + result;
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = *(v31 + 12);
      if (*v31 > 2u || v33 == 0 || v34 == 0)
      {
        if (v32 < 3)
        {
          if (v33)
          {
            if (!v34)
            {
              if (GetFlagsOnceToken != -1)
              {
                [OS_axr_data debugDescription];
              }

              if (((kDefaultAXRLogFlags | a4) & 2) != 0)
              {
                v43 = "Error: y sampling rate for channel must be at least 1";
                goto LABEL_40;
              }
            }
          }

          else
          {
            if (GetFlagsOnceToken != -1)
            {
              [OS_axr_data debugDescription];
            }

            if (((kDefaultAXRLogFlags | a4) & 2) != 0)
            {
              v43 = "Error: x sampling rate for channel must be at least 1";
              goto LABEL_40;
            }
          }
        }

        else
        {
          if (GetFlagsOnceToken != -1)
          {
            [OS_axr_data debugDescription];
          }

          if (((kDefaultAXRLogFlags | a4) & 2) != 0)
          {
            v43 = "Error: channel has unknown data type";
            goto LABEL_40;
          }
        }

LABEL_41:
        v42 = -6;
LABEL_43:
        *v15 = v42;
        return;
      }

      if (v33 >= 0xD0A7)
      {
        if (GetFlagsOnceToken != -1)
        {
          [OS_axr_data debugDescription];
        }

        if (((kDefaultAXRLogFlags | a4) & 2) != 0)
        {
          AXRLogDebug("Error: x sampling rate for channel is ridiculously large at %d", v20, v21, v22, v23, v24, v25, v26, v33);
        }

        goto LABEL_41;
      }

      if (v34 >= 0xD0A7)
      {
        if (GetFlagsOnceToken != -1)
        {
          [OS_axr_data debugDescription];
        }

        if (((kDefaultAXRLogFlags | a4) & 2) == 0)
        {
          goto LABEL_41;
        }

        v44 = v34;
        v43 = "Error: y sampling rate for channel is ridiculously large at %d";
LABEL_40:
        AXRLogDebug(v43, v20, v21, v22, v23, v24, v25, v26, v44);
        goto LABEL_41;
      }

      v45 = v19 + 1;
      v46 = a4;
      v47 = v15;
      v37 = *(v31 + 4);
      v38 = ChannelDescription::operator new(0x88uLL);
      if (!v38)
      {
        v42 = -5;
        goto LABEL_43;
      }

      v39 = v38;
      v40 = *v50;
      *v38 = a2;
      v38[6] = v40;
      v38[18] = v32;
      SamplingRate::SamplingRate((v38 + 20), v33);
      SamplingRate::SamplingRate((v39 + 104), v34);
      a2 = v30 + 16;
      *(v39 + 132) = v37 != 0;
      a6 = v48;
      ChannelDescription::ConfigureChannelType(v39, v18, v45, v48);
      v10 = v49;
      a8 = v50;
      if (*v49)
      {
        v41 = (v17 + 8);
      }

      else
      {
        v41 = v49;
      }

      *v41 = v39;
      ++*v50;
      v17 = v39;
      a4 = v46;
      v15 = v47;
      if (v13 <= 1)
      {
        return;
      }
    }

    v42 = -4;
    goto LABEL_43;
  }
}

char *ChannelDescription::GetChannelInfo@<X0>(ChannelDescription *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 18);
  v5 = *(this + 32);
  *a3 = v4;
  *(a3 + 4) = v5;
  if (v4 == 1)
  {
    v6 = 16;
  }

  else
  {
    v6 = 32;
  }

  v7 = *(this + 20);
  *(a3 + 8) = v6;
  *(a3 + 12) = v7;
  *(a3 + 16) = *(this + 26);
  *(a3 + 20) = 0;
  *(a3 + 20) = *(this + 132);
  result = strncpy((a3 + 24), &a2[*this], 0x100uLL);
  *(a3 + 279) = 0;
  return result;
}

uint64_t ChannelDescription::CreateMipLevels(ChannelDescription *this, const void *a2, const Part *a3, unint64_t a4, axr_level_mode_t a5)
{
  if (*(this + 5))
  {
    return 0;
  }

  v6 = a5;
  v7 = a4;
  v9 = *(a3 + 156);
  v10 = HIDWORD(v9);
  LODWORD(v11) = (*(this + 12) + v9 * *(this + 21)) >> *(this + 22);
  HIDWORD(v11) = (*(this + 15) + HIDWORD(v9) * *(this + 27)) >> *(this + 28);
  *(this + 6) = v11;
  v12 = HIDWORD(a4);
  v45 = a5 & 0xF;
  if ((a5 & 0xF) != 0)
  {
    v32 = a5 & 0xF0;
    v33 = 63 - __clz(a4);
    if (!a4)
    {
      LODWORD(v33) = 0;
    }

    v34 = 63 - __clz(v12);
    if (!v12)
    {
      LODWORD(v34) = 0;
    }

    v35 = 64 - __clz(a4 - 1);
    if (a4 <= 1uLL)
    {
      v36 = 0;
    }

    else
    {
      v36 = v35;
    }

    v37 = 64 - __clz(v12 - 1);
    if (a4 >> 33)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v39 = v32 == 16;
    if (v32 == 16)
    {
      v40 = v36;
    }

    else
    {
      v40 = v33;
    }

    if (v39)
    {
      v41 = v38;
    }

    else
    {
      v41 = v34;
    }

    if (v40 + 1 <= (v41 + 1))
    {
      v42 = v41 + 1;
    }

    else
    {
      v42 = v40 + 1;
    }

    if (v45 == 1)
    {
      v43 = v42;
    }

    else
    {
      v43 = (v40 + 1);
    }

    if (v45 == 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = (v41 + 1);
    }

    v13 = v43 | (v44 << 32);
  }

  else
  {
    v13 = 0x100000001;
  }

  *(this + 28) = v13;
  result = malloc_type_calloc((v13 * HIDWORD(v13)), 8uLL, 0x2004093837F09uLL);
  *(this + 5) = result;
  if (!result)
  {
    return -5;
  }

  v14 = *(this + 8);
  if (v14)
  {
    v15 = 0;
    v16 = v6 >> 4;
    v17 = v7 - v16;
    v18 = v12 - v16;
    if (v9 <= 1)
    {
      LODWORD(v9) = 1;
    }

    v19 = v9 - 1;
    if (v10 <= 1)
    {
      LODWORD(v10) = 1;
    }

    v20 = v10 - 1;
    v21 = *(this + 7);
    while (!v21)
    {
LABEL_32:
      result = 0;
      if (++v15 >= v14)
      {
        return result;
      }
    }

    v22 = 0;
    while (1)
    {
      v23 = v45 == 2 ? v15 : v22;
      v24 = (v17 + (v16 << v22)) >> v22;
      v25 = v24 <= 1 ? 1 : v24;
      LODWORD(v26) = (v18 + (v16 << v23)) >> v23;
      v26 = v26 <= 1 ? 1 : v26;
      v27 = v19 + v25;
      v28 = __CFADD__(v19, v25) ? (v27 - 0xFFFFFFFF / v9 * v9) / v9 + 0xFFFFFFFF / v9 : v27 / v9;
      v29 = v20 + v26;
      v30 = v20 + v26 < v26 ? (v29 - 0xFFFFFFFF / v10 * v10) / v10 + 0xFFFFFFFF / v10 : v29 / v10;
      result = DecompressedLocations::CreateDecompressedLocations(result, v28 | (v30 << 32), v25 | (v26 << 32), ((*(this + 12) + *(this + 21) * v25) >> *(this + 22)) | (((*(this + 15) + *(this + 27) * v26) >> *(this + 28)) << 32));
      v21 = *(this + 7);
      v31 = v22 + v15 * v21;
      *(*(this + 5) + 8 * v31) = result;
      if (!*(*(this + 5) + 8 * v31))
      {
        return -5;
      }

      if (++v22 >= v21)
      {
        v14 = *(this + 8);
        goto LABEL_32;
      }
    }
  }

  return 0;
}

void *DecompressedLocations::CreateDecompressedLocations(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = (a3 >> 29) & 0x7FFFFFFF8;
  result = malloc_type_malloc(v8 * a2 + 8 * a2 + 24, 0x1000040504FFAC1uLL);
  if (result)
  {
    result[1] = a3;
    result[2] = a4;
    *result = a2;
    if (v7)
    {
      v10 = (v7 + 1) & 0x1FFFFFFFELL;
      v11 = vdupq_n_s64(v7 - 1);
      v12 = &result[v7 + 3];
      v13 = xmmword_296B8F100;
      v14 = result + 4;
      v15 = vdupq_n_s64(2uLL);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v11, v13));
        if (v16.i8[0])
        {
          *(v14 - 1) = v12;
        }

        if (v16.i8[4])
        {
          *v14 = v12 + v8;
        }

        v13 = vaddq_s64(v13, v15);
        v12 = (v12 + ((a3 >> 28) & 0xFFFFFFFF0));
        v14 += 2;
        v10 -= 2;
      }

      while (v10);
    }
  }

  return result;
}

void SamplingRate::SamplingRate(SamplingRate *this, unsigned int a2)
{
  v2 = a2 - 1;
  v3 = 64 - __clz(v2);
  if (a2 <= 1)
  {
    LODWORD(v3) = 0;
  }

  v4 = v3 + 31;
  *this = a2;
  *(this + 1) = (v2 + (1 << v4)) / a2;
  *(this + 2) = v4;
  *(this + 2) = ~(-1 << v4);
}

axr_error_t axr_introspect_data(const void *fileData, size_t fileSize, axr_flags_t flags)
{
  v3 = flags;
  v4 = flags & 0xFFFFFFFFFFFFFFF8;
  if ((flags & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    if (fileSize < 8)
    {
      return -4;
    }

    axr_introspect_data__Assert_file_exists_and_nonnull(fileData, fileSize);
    axr_introspect_data__Assert_file_header_is_as_big_as_claimed(fileData, fileSize);
    axr_introspect_data__Assert_file_data_is_as_big_as_claimed(fileData, fileSize);
    if (*fileData != 20000630)
    {
      return -2;
    }

    v15 = *(fileData + 1);
    if ((v15 & 0x800) != 0)
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | v3) & 2) == 0)
      {
        return -3;
      }

      v16 = "This version of AppleEXR does not support deep tile or deep scanline images.";
    }

    else
    {
      if ((v15 & 0xFFFFE100) == 0 && *(fileData + 1) < 3u)
      {
        return 0;
      }

      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | v3) & 2) == 0)
      {
        return -3;
      }

      v16 = "File format too new.";
    }

    AXRLogDebug(v16, v8, v9, v10, v11, v12, v13, v14);
    return -3;
  }

  if (GetFlagsOnceToken != -1)
  {
    [OS_axr_data debugDescription];
  }

  if (((kDefaultAXRLogFlags | v3) & 2) != 0)
  {
    AXRLogError("Invalid flag bit 0x%16llx passed to axr_is_recognizable_file.", fileSize, v4);
  }

  return -1;
}

void AXRData::~AXRData(AXRData *this)
{
  *this = &unk_2A1DE9318;
  v2 = *(this + 4);
  if (v2)
  {
    (*(v2 + 16))(v2, *(this + 1), *(this + 2));
    _Block_release(*(this + 4));
    *(this + 4) = 0;
  }

  v3 = *(this + 9);
  if (v3)
  {
    do
    {
      v4 = *(v3 + 1);
      Part::~Part(v3);
      free(v5);
      v3 = v4;
    }

    while (v4);
  }
}

{
  AXRData::~AXRData(this);

  JUMPOUT(0x29C25E8F0);
}

void Part::Destroy(Part *this)
{
  Part::~Part(this);

  free(v1);
}

size_t AXRData::DebugDescription(AXRData *this, char *a2)
{
  v2 = MEMORY[0x2A1C7C4A8](this, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v19 = *MEMORY[0x29EDCA608];
  axr_flags_get_name(buf, 0x2000uLL, *(v2 + 24));
  v8 = *(v7 + 8);
  v9 = v8[1];
  v10 = "YES";
  if ((v9 & 0x400) != 0)
  {
    v11 = "YES";
  }

  else
  {
    v11 = "NO";
  }

  if ((v9 & 0x800) != 0)
  {
    v12 = "YES";
  }

  else
  {
    v12 = "NO";
  }

  if ((v9 & 0x1000) == 0)
  {
    v10 = "NO";
  }

  v13 = snprintf(v6, v4, "fileData:        %p\nfile size:       %lu bytes\ncreation flags:  %s\ndata destructor: %p\nfile version:    %u\nlong names:      %s\nnon-image parts: %s\nmultipart file:  %s\nreserved bits:   0x%8.8x  (should be 0)\npart count:      %lu\n", v8, *(v7 + 16), buf, *(v7 + 32), v8[1], v11, v12, v10, v9 & 0xFFFFE100, *(v7 + 80));
  if (v13 < v4)
  {
    if (*(v7 + 80))
    {
      v14 = 0;
      v15 = (v7 + 72);
      while (v4 > v13)
      {
        v16 = *v15;
        if (!*v15)
        {
          break;
        }

        v13 += snprintf(&v6[v13], v4 - v13, "\nPart %lu:\n", v14);
        if (v4 <= v13)
        {
          break;
        }

        v13 += Part::Print(v16, &v6[v13], v4 - v13, *(v7 + 8), axr_flags_print_debug_info);
        v15 = (v16 + 8);
        if (++v14 >= *(v7 + 80))
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      if (v4 > v13)
      {
        v13 += snprintf(&v6[v13], v4 - v13, "\n");
      }
    }
  }

  return v13;
}

double AXRData::GetHash(AXRData *this)
{
  v1 = veorq_s8(*(this + 56), *(this + 40));
  *&result = veorq_s8(vdupq_laneq_s64(v1, 1), v1).u64[0];
  return result;
}

void *AXRData::AXRData(void *a1, char *a2, unint64_t a3, axr_flags_t a4, void *aBlock)
{
  *a1 = &unk_2A1DE9318;
  a1[1] = a2;
  a1[2] = a3;
  a1[3] = a4;
  a1[4] = 0;
  if (aBlock)
  {
    a1[4] = _Block_copy(aBlock);
  }

  v9 = 0;
  v20 = 8;
  v10 = (a1 + 9);
  while (1)
  {
    if (v20 >= a3)
    {
      goto LABEL_14;
    }

    if ((a2[5] & 0x10) != 0 && !*(v20 + a1[1]))
    {
      break;
    }

    v11 = Part::operator new(0x130uLL);
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = v11;
    v13 = Part::Init(v11, a2, a3, &v20, a4);
    if (v13)
    {
      v18 = v13;
      Part::Destroy(v12);
      goto LABEL_20;
    }

    v14 = (v9 + 8);
    if (!v9)
    {
      v14 = (a1 + 9);
    }

    *v14 = v12;
    ++a1[10];
    v9 = v12;
    if ((a2[5] & 0x10) == 0)
    {
      goto LABEL_14;
    }
  }

  ++v20;
LABEL_14:
  v15 = *v10;
  if (*v10)
  {
    while (1)
    {
      inited = Part::InitOffsets(v15, a2, a3, &v20, a4);
      if (inited)
      {
        break;
      }

      v15 = v15[1];
      if (!v15)
      {
        return a1;
      }
    }

    v18 = inited;
LABEL_20:
    exception = __cxa_allocate_exception(8uLL);
    *exception = v18;
  }

  return a1;
}

axr_error_t AXRData::ReadPixels(AXRData *this, axr_decoder *a2, _BYTE *a3, unint64_t a4, axr_flags_t a5)
{
  v5 = *(a2 + 10);
  v6 = *(this + 9);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = 1;
    do
    {
      v6 = *(v6 + 1);
      if (v8 >= v5)
      {
        break;
      }

      ++v8;
    }

    while (v6);
  }

  if (!v6)
  {
    v11 = *(a2 + 10);
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      AXRLogError("Error: image index %lu out of range [0,%lu]", a2, v11, *(this + 10) - 1);
      __break(1u);
LABEL_14:
      [OS_axr_data debugDescription];
    }
  }

  return Part::ReadPixels(v6, a2, a3, a4, a5);
}

void AXRData::GetReadPixelsInfo(AXRData *this@<X0>, axr_decoder *a2@<X1>, uint64_t x8_0@<X8>)
{
  v4 = *(a2 + 10);
  v5 = *(this + 9);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = 1;
    do
    {
      v5 = *(v5 + 8);
      if (v7 >= v4)
      {
        break;
      }

      ++v7;
    }

    while (v5);
  }

  if (!v5)
  {
    v9 = *(a2 + 10);
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      AXRLogError("Error: image index %lu out of range [0,%lu]", a2, v9, *(this + 10) - 1);
      __break(1u);
LABEL_14:
      [OS_axr_data debugDescription];
    }
  }

  Part::GetReadPixelsInfo(a2, x8_0);
}

axr_error_t AXRData::ReadRGBAPixels(AXRData *this, axr_decoder *a2, _BYTE *a3, unint64_t a4, double a5, axr_flags_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, axr_error_t a11, void (**a12)(void), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v37 = *(a2 + 10);
  v38 = *(this + 9);
  if (v37)
  {
    v39 = v38 == 0;
  }

  else
  {
    v39 = 1;
  }

  if (!v39)
  {
    v40 = 1;
    do
    {
      v38 = *(v38 + 1);
      if (v40 >= v37)
      {
        break;
      }

      ++v40;
    }

    while (v38);
  }

  if (!v38)
  {
    v43 = *(a2 + 10);
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      AXRLogError("Error: image index %lu out of range [0,%lu]", a2, v43, *(this + 10) - 1);
      __break(1u);
LABEL_14:
      [OS_axr_data debugDescription];
    }
  }

  return Part::ReadRGBAPixels(v38, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

void AXRData::GetReadRGBAPixelsInfo(AXRData *this@<X0>, axr_decoder *a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = *(a2 + 10);
  v6 = *(this + 9);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = 1;
    do
    {
      v6 = *(v6 + 8);
      if (v8 >= v5)
      {
        break;
      }

      ++v8;
    }

    while (v6);
  }

  if (!v6)
  {
    v10 = *(a2 + 10);
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      AXRLogError("Error: image index %lu out of range [0,%lu]", a2, v10, *(this + 10) - 1);
      __break(1u);
LABEL_14:
      [OS_axr_data debugDescription];
    }
  }

  Part::GetReadRGBAPixelsInfo(a2, x8_0);
}

uint64_t AXRData::ReadPlanes(AXRData *this, axr_decoder *a2, axr_pixel_data_t *a3, axr_flags_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, axr_flags_t a11, axr_error_t a12, void (**a13)(void), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v40 = *(a2 + 10);
  v41 = *(this + 9);
  if (v40)
  {
    v42 = v41 == 0;
  }

  else
  {
    v42 = 1;
  }

  if (!v42)
  {
    v43 = 1;
    do
    {
      v41 = *(v41 + 1);
      if (v43 >= v40)
      {
        break;
      }

      ++v43;
    }

    while (v41);
  }

  if (!v41)
  {
    v46 = *(a2 + 10);
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      AXRLogError("Error: image index %lu out of range [0,%lu]", a2, v46, *(this + 10) - 1);
      __break(1u);
LABEL_14:
      [OS_axr_data debugDescription];
    }
  }

  return Part::ReadPlanes(v41, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

void AXRData::GetReadPlanesInfo(AXRData *this@<X0>, axr_decoder *a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v5 = *(a2 + 10);
  v6 = *(this + 9);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = 1;
    do
    {
      v6 = *(v6 + 8);
      if (v8 >= v5)
      {
        break;
      }

      ++v8;
    }

    while (v6);
  }

  if (!v6)
  {
    v10 = *(a2 + 10);
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      AXRLogError("Error: image index %lu out of range [0,%lu]", a2, v10, *(this + 10) - 1);
      __break(1u);
LABEL_14:
      [OS_axr_data debugDescription];
    }
  }

  Part::GetReadPlanesInfo(a2, a3, x8_0);
}

unint64_t axr_data_get_part_count(unint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

unint64_t axr_data_get_channel_count(unint64_t fileData, unint64_t partIndex)
{
  if (fileData)
  {
    v2 = *(fileData + 88);
    if (partIndex && v2)
    {
      v3 = 1;
      do
      {
        v2 = *(v2 + 8);
        if (v3 >= partIndex)
        {
          break;
        }

        ++v3;
      }

      while (v2);
    }

    if (!v2)
    {
      v4 = fileData;
      if (GetFlagsOnceToken != -1)
      {
        goto LABEL_12;
      }

      while (1)
      {
        AXRLogError("Error: image index %lu out of range [0,%lu]", partIndex, partIndex, *(v4 + 96) - 1);
        __break(1u);
LABEL_12:
        [OS_axr_data debugDescription];
      }
    }

    return *(v2 + 32);
  }

  return fileData;
}

axr_channel_info_t *__cdecl axr_data_get_channel_info(axr_channel_info_t *__return_ptr retstr, axr_channel_info_t *fileData, unint64_t partIndex, unint64_t channelIndex, axr_channel_info_struct_version_t version)
{
  if (version >= 2)
  {
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (fileData)
  {
    v5 = *&fileData->name[64];
    if (partIndex && v5)
    {
      v6 = 1;
      do
      {
        v5 = *(v5 + 1);
        if (v6 >= partIndex)
        {
          break;
        }

        ++v6;
      }

      while (v5);
    }

    if (!v5)
    {
      v12 = fileData;
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      v11 = *&v12->name[72] - 1;
      v10 = partIndex;
      for (i = "Error: image index %lu out of range [0,%lu]"; ; i = "Error: version must be axr_channel_info_current")
      {
        AXRLogError(i, partIndex, v10, v11);
        __break(1u);
LABEL_19:
        [OS_axr_data debugDescription];
LABEL_14:
        ;
      }
    }

    v7 = *fileData->name;
    v8 = *&fileData->name[16];

    return Part::GetChannelInfo(v5, v7, v8, channelIndex, retstr);
  }

  else
  {
    *&retstr->name[252] = 0;
    *&retstr->name[220] = 0u;
    *&retstr->name[204] = 0u;
    *&retstr->name[188] = 0u;
    *&retstr->name[172] = 0u;
    *&retstr->name[156] = 0u;
    *&retstr->name[140] = 0u;
    *&retstr->name[124] = 0u;
    *&retstr->name[108] = 0u;
    *&retstr->name[92] = 0u;
    *&retstr->name[76] = 0u;
    *&retstr->name[60] = 0u;
    *&retstr->name[44] = 0u;
    *&retstr->name[28] = 0u;
    *&retstr->name[12] = 0u;
    *&retstr->pLinear = 0u;
    *&retstr->channelType = 0u;
    *&retstr->name[236] = 0u;
    retstr->sampleType = -1;
  }

  return fileData;
}

axr_part_info_t *__cdecl axr_data_get_part_info(axr_part_info_t *__return_ptr retstr, axr_part_info_t *fileData, unint64_t partIndex, axr_part_info_struct_version_t version)
{
  if (version >= 2)
  {
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (fileData)
  {
    v4 = *&fileData->chromaticities.y.blue;
    if (partIndex && v4)
    {
      v5 = 1;
      do
      {
        v4 = *(v4 + 1);
        if (v5 >= partIndex)
        {
          break;
        }

        ++v5;
      }

      while (v4);
    }

    if (!v4)
    {
      v10 = fileData;
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      v9 = *&v10->preview.size - 1;
      v8 = partIndex;
      for (i = "Error: image index %lu out of range [0,%lu]"; ; i = "Error: version must be axr_part_info_current")
      {
        AXRLogError(i, partIndex, v8, v9);
        __break(1u);
LABEL_19:
        [OS_axr_data debugDescription];
LABEL_14:
        ;
      }
    }

    v6 = *&fileData->displayWindow.yMin;

    Part::GetImageInfo(&retstr->dataWindow.xMin, v4, v6);
  }

  else
  {
    *&retstr->levelMode = 0;
    retstr->preview = 0u;
    *&retstr->name = 0u;
    retstr->chromaticities.x = 0u;
    retstr->chromaticities.y = 0u;
    *&retstr->tileSize.width = 0u;
    *&retstr->pixelAspectRatio = 0u;
    retstr->dataWindow = 0u;
    retstr->displayWindow = 0u;
  }

  return fileData;
}

unint64_t axr_data_get_property_count(unint64_t fileData, unint64_t partIndex)
{
  if (fileData)
  {
    v2 = *(fileData + 88);
    if (partIndex && v2)
    {
      v3 = 1;
      do
      {
        v2 = *(v2 + 8);
        if (v3 >= partIndex)
        {
          break;
        }

        ++v3;
      }

      while (v2);
    }

    if (!v2)
    {
      v4 = fileData;
      if (GetFlagsOnceToken != -1)
      {
        goto LABEL_12;
      }

      while (1)
      {
        AXRLogError("Error: image index %lu out of range [0,%lu]", partIndex, partIndex, *(v4 + 96) - 1);
        __break(1u);
LABEL_12:
        [OS_axr_data debugDescription];
      }
    }

    return *(v2 + 248);
  }

  return fileData;
}

axr_property_t *__cdecl axr_data_get_property(axr_property_t *__return_ptr retstr, axr_property_t *fileData, unint64_t partIndex, unint64_t propertyIndex, axr_property_struct_version_t version)
{
  if (version >= 2)
  {
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (fileData)
  {
    type = fileData[2].type;
    if (partIndex && type)
    {
      v6 = 1;
      do
      {
        type = *(type + 1);
        if (v6 >= partIndex)
        {
          break;
        }

        ++v6;
      }

      while (type);
    }

    if (!type)
    {
      v12 = fileData;
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      v11 = v12[2].size - 1;
      v10 = partIndex;
      for (i = "Error: image index %lu out of range [0,%lu]"; ; i = "Error: version must be axr_property_current")
      {
        AXRLogError(i, partIndex, v10, v11);
        __break(1u);
LABEL_19:
        [OS_axr_data debugDescription];
LABEL_14:
        ;
      }
    }

    value = fileData->value;
    name = fileData[1].name;

    return Part::GetImageProperty(retstr, type, value, name, propertyIndex);
  }

  else
  {
    retstr->flags = axr_property_flags_unhandled;
    *&retstr->name = 0u;
    *&retstr->size = 0u;
  }

  return fileData;
}

unint64_t axr_data_get_layer_count(unint64_t fileData, unint64_t partIndex)
{
  if (fileData)
  {
    v2 = *(fileData + 88);
    if (partIndex && v2)
    {
      v3 = 1;
      do
      {
        v2 = *(v2 + 8);
        if (v3 >= partIndex)
        {
          break;
        }

        ++v3;
      }

      while (v2);
    }

    if (!v2)
    {
      v4 = fileData;
      if (GetFlagsOnceToken != -1)
      {
        goto LABEL_12;
      }

      while (1)
      {
        AXRLogError("Error: image index %lu out of range [0,%lu]", partIndex, partIndex, *(v4 + 96) - 1);
        __break(1u);
LABEL_12:
        [OS_axr_data debugDescription];
      }
    }

    return *(v2 + 152);
  }

  return fileData;
}

axr_layer_info_t *__cdecl axr_data_get_layer_info(axr_layer_info_t *__return_ptr retstr, axr_layer_info_t *fileData, unint64_t partIndex, unint64_t layerIndex, axr_layer_info_struct_version_t version)
{
  if (version >= 2)
  {
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (fileData)
  {
    channelCount = fileData[3].channelCount;
    if (partIndex && channelCount)
    {
      v6 = 1;
      do
      {
        channelCount = channelCount[1];
        if (v6 >= partIndex)
        {
          break;
        }

        ++v6;
      }

      while (channelCount);
    }

    if (!channelCount)
    {
      v10 = fileData;
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      v9 = (v10[4].name - 1);
      v8 = partIndex;
      for (i = "Error: image index %lu out of range [0,%lu]"; ; i = "Error: version must be axr_layer_info_current")
      {
        AXRLogError(i, partIndex, v8, v9);
        __break(1u);
LABEL_19:
        [OS_axr_data debugDescription];
LABEL_14:
        ;
      }
    }

    return Part::GetLayerInfo(retstr, channelCount, layerIndex);
  }

  else
  {
    retstr->name = 0;
    retstr->channels = 0;
    retstr->channelCount = 0;
  }

  return fileData;
}

unint64_t axr_data_get_level_count(unint64_t fileData, unint64_t partIndex)
{
  if (fileData)
  {
    v2 = *(fileData + 88);
    if (partIndex && v2)
    {
      v3 = 1;
      do
      {
        v2 = *(v2 + 8);
        if (v3 >= partIndex)
        {
          break;
        }

        ++v3;
      }

      while (v2);
    }

    if (!v2)
    {
      v4 = fileData;
      if (GetFlagsOnceToken != -1)
      {
        goto LABEL_12;
      }

      while (1)
      {
        AXRLogError("Error: image index %lu out of range [0,%lu]", partIndex, partIndex, *(v4 + 96) - 1);
        __break(1u);
LABEL_12:
        [OS_axr_data debugDescription];
      }
    }

    return (*(v2 + 288) * *(v2 + 292));
  }

  return fileData;
}

axr_size_t axr_data_get_level_size(axr_data_t fileData, unint64_t partIndex, unint64_t levelIndex)
{
  if (fileData)
  {
    isa = fileData[11].isa;
    if (partIndex && isa)
    {
      v4 = 1;
      do
      {
        isa = *(isa + 1);
        if (v4 >= partIndex)
        {
          break;
        }

        ++v4;
      }

      while (isa);
    }

    if (!isa)
    {
      v6 = fileData;
      if (GetFlagsOnceToken != -1)
      {
        goto LABEL_14;
      }

      while (1)
      {
        AXRLogError("Error: image index %lu out of range [0,%lu]", partIndex, partIndex, v6[12].isa - 1);
        __break(1u);
LABEL_14:
        [OS_axr_data debugDescription];
      }
    }

    v5 = fileData[5].isa;

    return Part::GetImageSize(isa, levelIndex, v5);
  }

  return fileData;
}

axr_error_t axr_decoder_read_pixels(axr_decoder_t decoder, void *destination, unint64_t destinationRowBytes, axr_flags_t flags)
{
  v4 = flags;
  isa = decoder[4].isa;
  if ((isa - 1) < 2 || isa == 4)
  {
    v8 = (decoder[2].isa + 16);

    return AXRData::ReadPixels(v8, decoder, destination, destinationRowBytes, flags);
  }

  else
  {
    if (isa)
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | v4) & 2) != 0)
      {
        AXRLogError("decoder %p must request either 1, 2 or 4 channels to be decoded for axr_decoder_read_pixels.", destination, decoder);
      }
    }

    else
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | v4) & 2) != 0)
      {
        AXRLogError("decoder %p requests 0 channels to be decoded", destination, decoder);
      }
    }

    return -1;
  }
}

axr_decoder_read_info_t *__cdecl axr_decoder_get_read_pixels_info(axr_decoder_read_info_t *__return_ptr retstr, axr_decoder_read_info_t *decoder, axr_flags_t flags, axr_decoder_read_info_struct_version_t version)
{
  v4 = flags;
  if (version == axr_decoder_read_info_current)
  {
    v6 = decoder;
    v7 = (*&decoder->bitsPerChannel + 16);

    AXRData::GetReadPixelsInfo(v7, v6, retstr);
  }

  else
  {
    v8 = *&version;
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v4) & 2) != 0)
    {
      AXRLogError("%s: struct version (%d) invalid", flags, "axr_decoder_get_read_pixels_info", v8);
    }

    *&retstr->size.width = 0u;
    *&retstr->bitsPerChannel = 0u;
  }

  return decoder;
}

axr_error_t axr_decoder_read_rgba_pixels(axr_decoder_t decoder, void *destination, unint64_t destinationRowBytes, double alphaVal, axr_flags_t flags)
{
  v8 = flags;
  isa = decoder[4].isa;
  if (!isa)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v8) & 2) != 0)
    {
      AXRLogError("decoder %p requests 0 channels to be decoded", destination, decoder);
    }

    return -1;
  }

  if (isa >= 5)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v8) & 2) != 0)
    {
      AXRLogError("decoder %p must request 1-4 channels to be used for axr_decoder_read_rgba_pixels.", destination, decoder);
    }

    return -1;
  }

  v12 = (decoder[2].isa + 16);

  return AXRData::ReadRGBAPixels(v12, decoder, destination, destinationRowBytes, alphaVal, flags, v5, v6, v7, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
}

axr_decoder_read_info_t *__cdecl axr_decoder_get_read_rgba_pixels_info(axr_decoder_read_info_t *__return_ptr retstr, axr_decoder_read_info_t *decoder, double alphaVal, axr_flags_t flags, axr_decoder_read_info_struct_version_t version)
{
  v5 = flags;
  if (version == axr_decoder_read_info_current)
  {
    v7 = decoder;
    v8 = (*&decoder->bitsPerChannel + 16);

    AXRData::GetReadRGBAPixelsInfo(v8, v7, retstr);
  }

  else
  {
    v9 = *&version;
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v5) & 2) != 0)
    {
      AXRLogError("%s: struct version (%d) invalid", flags, "axr_decoder_get_read_rgba_pixels_info", v9);
    }

    *&retstr->size.width = 0u;
    *&retstr->bitsPerChannel = 0u;
  }

  return decoder;
}

axr_error_t axr_decoder_read_planes(axr_decoder_t decoder, axr_pixel_data_t *destinationPlaneList, axr_flags_t flags, axr_pixel_data_struct_version_t structVersion)
{
  if (structVersion)
  {
    v9 = *&structVersion;
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | flags) & 2) != 0)
    {
      AXRLogError("struct version (%d) invalid", destinationPlaneList, v9);
    }

    return -1;
  }

  else
  {
    v13 = (decoder[2].isa + 16);

    return AXRData::ReadPlanes(v13, decoder, destinationPlaneList, flags, v4, v5, v6, v7, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  }
}

axr_decoder_read_info_t *__cdecl axr_decoder_get_read_planes_info(axr_decoder_read_info_t *__return_ptr retstr, axr_decoder_read_info_t *decoder, unint64_t planeIndex, axr_flags_t flags, axr_decoder_read_info_struct_version_t version)
{
  v5 = flags;
  if (version == axr_decoder_read_info_current)
  {
    v8 = decoder;
    v9 = (*&decoder->bitsPerChannel + 16);

    AXRData::GetReadPlanesInfo(v9, v8, planeIndex, retstr);
  }

  else
  {
    v10 = *&version;
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v5) & 2) != 0)
    {
      AXRLogError("%s: struct version (%d) invalid", planeIndex, "axr_decoder_get_read_planes_info", v10);
    }

    *&retstr->size.width = 0u;
    *&retstr->bitsPerChannel = 0u;
  }

  return decoder;
}

axr_size_t axr_part_get_rip_level_counts(axr_part_t part)
{
  v1 = part + 2;
  if (!part)
  {
    v1 = 0;
  }

  return *(&v1[27].isa + 4);
}

void axr_part_set_chromaticities(axr_part_t part, int32_t cgColorSpaceModel, float whiteLuminance, float *x, float *y)
{
  v8 = *&cgColorSpaceModel;
  if (part)
  {
    v9 = part + 2;
  }

  else
  {
    v9 = 0;
  }

  isa = v9[1].isa;
  if (whiteLuminance >= 0.0)
  {
    v11 = whiteLuminance;
  }

  else
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    v11 = 1.0;
    if (((kDefaultAXRLogFlags | isa) & 2) != 0)
    {
      AXRLogError("axr_part_set_chromaticities: invalid white luminance: %f", *&cgColorSpaceModel, whiteLuminance);
    }
  }

  v12 = xmmword_296B8FBC0;
  if (!v8)
  {
    v13 = xmmword_296B8FBB0;
    goto LABEL_20;
  }

  if (v8 == 7)
  {
    v13 = xmmword_296B8FBD0;
    v12 = xmmword_296B8FBE0;
    goto LABEL_20;
  }

  if (v8 != 1)
  {
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_27;
    }

    while (1)
    {
      if (((kDefaultAXRLogFlags | isa) & 2) != 0)
      {
        AXRLogError("axr_part_set_chromaticities: invalid colorspace model %d", *&cgColorSpaceModel, v8);
      }

      __break(1u);
LABEL_27:
      [OS_axr_data debugDescription];
    }
  }

  if (!x)
  {
    v13 = xmmword_296B8FBB0;
    if (!y)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v13 = *x;
  if (y)
  {
LABEL_19:
    v12 = *y;
  }

LABEL_20:
  *&v9[14].isa = v13;
  *&v9[16].isa = v12;
  HIDWORD(v9[18].isa) = v8;
  *&v9[18].isa = v11;
  for (i = v9[26].isa; i; i = *i)
  {
    EncoderLayer::SetColorSpaceModel(i, SHIDWORD(v9[18].isa));
  }
}

void axr_part_set_preview(axr_part_t part, const uint8_t *data, uint32_t width, uint32_t height, size_t rowBytes, uintptr_t userData, axr_user_data_destructor_t dataDestructor)
{
  if (part)
  {
    v13 = part + 2;
  }

  else
  {
    v13 = 0;
  }

  isa = v13[22].isa;
  if (isa)
  {
    isa(v13[19].isa, v13[21].isa);
  }

  v13[19].isa = data;
  v13[20].isa = rowBytes;
  v13[21].isa = userData;
  v13[22].isa = dataDestructor;
  LODWORD(v13[23].isa) = width;
  HIDWORD(v13[23].isa) = height;
}

axr_error_t axr_part_append_attribute(axr_part_t part, const char *attributeName, const char *attributeType, size_t attributeSize, const uint8_t *attributeBytes, uintptr_t userData, axr_user_data_destructor_t dataDestructor)
{
  if (part)
  {
    v7 = &part[2];
  }

  else
  {
    v7 = 0;
  }

  return EncoderPart::AppendAttribute(v7, attributeName, attributeType, attributeSize, attributeBytes, userData, dataDestructor);
}

uint64_t EncoderPart::AppendAttribute(EncoderPart *this, char *__s, const char *a3, const char *a4, const unsigned __int8 *a5, const unsigned __int8 *a6, void (*a7)(const void *, unint64_t))
{
  v14 = strlen(__s);
  v15 = strlen(a3);
  v18 = v15;
  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    if (v14 >= 0x100)
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | v19) & 2) != 0)
      {
        AXRLogError("axr_part_append_attribute error:  The name %s must be less than 255 characters.", v16, __s);
      }

      return -5;
    }

    if (v14)
    {
      if (v15 >= 0x100)
      {
        if (GetFlagsOnceToken != -1)
        {
          [OS_axr_data debugDescription];
        }

        if (((kDefaultAXRLogFlags | v19) & 2) != 0)
        {
          AXRLogError("axr_part_append_attribute error:  The type %s must be less than 255 characters.", v16, a3);
        }

        return -5;
      }

      if (v15)
      {
        v28 = *(this + 1);
        for (i = 0; i != 16; ++i)
        {
          if (!strcmp(__s, off_29EE51820[i]))
          {
            if (GetFlagsOnceToken != -1)
            {
              [OS_axr_data debugDescription];
            }

            if (((kDefaultAXRLogFlags | v28) & 2) != 0)
            {
              AXRLogError("axr_part_append_attribute error:  The name %s is already set as a standard part of axr_encoder_append_part() and may not be used again.", v22, __s);
            }

            return -9;
          }
        }

        if (!strcmp(a3, "chromaticities") || !strcmp(__s, "whiteLuminance"))
        {
          if (GetFlagsOnceToken != -1)
          {
            [OS_axr_data debugDescription];
          }

          if (((kDefaultAXRLogFlags | v28) & 2) != 0)
          {
            v20 = "axr_part_append_attribute error:  Use axr_part_set_chromaticities() to set chromaticities and luminance.";
            goto LABEL_44;
          }
        }

        else
        {
          if (strcmp(a3, "preview"))
          {
            goto LABEL_24;
          }

          if (GetFlagsOnceToken != -1)
          {
            [OS_axr_data debugDescription];
          }

          if (((kDefaultAXRLogFlags | v28) & 2) != 0)
          {
            v20 = "axr_part_append_attribute error:  Use axr_part_set_preview() to add a preview image.";
            goto LABEL_44;
          }
        }

        return -9;
      }

      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | v19) & 2) == 0)
      {
        return -9;
      }

      v20 = "axr_part_append_attribute error:  The attribute must have a type name.";
    }

    else
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | v19) & 2) == 0)
      {
        return -9;
      }

      v20 = "axr_part_append_attribute error:  The attribute must have a name.";
    }

LABEL_44:
    AXRLogError(v20, v16);
    return -9;
  }

LABEL_24:
  AttributeListNode = AttributeListNode::CreateAttributeListNode(__s, a3, a4, a5, a6, a7, v17);
  if (!AttributeListNode)
  {
    return -5;
  }

  v24 = AttributeListNode;
  result = 0;
  if (v14 <= v18)
  {
    v26 = v18;
  }

  else
  {
    v26 = v14;
  }

  v27 = *(this + 25);
  *v24 = *(this + 24);
  if (v27 > v26)
  {
    v26 = v27;
  }

  *(this + 24) = v24;
  *(this + 25) = v26;
  return result;
}

void *__cdecl axr_part_create_colorspace(axr_part_t part, axr_flags_t flags, void *options)
{
  if (part)
  {
    v6 = &part[2];
  }

  else
  {
    v6 = 0;
  }

  return EncoderPart::CreateColorSpace(v6, flags, options, 0, v3, v4, v5);
}

uint64_t EncoderPart::CreateColorSpace(float32x4_t *this, axr_flags_t a2, const __CFDictionary *a3, uint64_t a4, double a5, double a6, __n128 a7)
{
  v7 = this[9].u32[1];
  if (v7 > 7 || (v7 - 2) < 5)
  {
    return 0;
  }

  v9 = this[7];
  v10 = this[8];
  a7.n128_u32[0] = this[9].u32[0];
  v11 = vandq_s8(vceqq_f32(v10, xmmword_296B8FBC0), vceqq_f32(v9, xmmword_296B8FBB0));
  v11.i32[0] = vminvq_u32(v11);
  return AXRCreateColorSpace(v9, v10, a7, v11, v11.i32[0] >> 31, EncoderPart::CreateColorSpace(axr_flags_t,__CFDictionary const*,BOOL)::kChannelTypeMask[v7], a3, a2, a4);
}

void axr_part_append_channels(axr_part_t part, const char *layerName, axr_type_t channelType, uint32_t xSampling, uint32_t ySampling, BOOL perceptuallyLinear, const axr_channel_type_t *channelList, const char **channelNames, unint64_t channelCount, axr_data_provider_read_t readFunc, axr_data_provider_release_t releaseFunc, uintptr_t userInfo)
{
  if (part)
  {
    v12 = &part[2];
  }

  else
  {
    v12 = 0;
  }

  EncoderPart::AppendChannels(v12, layerName, *&channelType, xSampling, ySampling, perceptuallyLinear, channelList, channelNames, channelCount, *&readFunc, userInfo);
}

void EncoderPart::AppendChannels(EncoderPart *this, EncoderLayer *a2, const char *a3, unsigned int a4, unsigned int a5, char a6, const axr_channel_type_t *a7, axr_channel_type_t *a8, char **a9, __int128 a10, unint64_t a12)
{
  v13 = *(&a10 + 1);
  v14 = a9;
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = &unk_296B90CDB;
  }

  if (!a9)
  {
    goto LABEL_44;
  }

  v16 = *(this + 1);
  if (a4 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = a4;
  }

  if (a5 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = a5;
  }

  if ((v16 & 1) == 0)
  {
    if (a3 >= 3)
    {
      if (GetFlagsOnceToken != -1)
      {
        v24 = a3;
        [OS_axr_data debugDescription];
        v13 = *(&a10 + 1);
        a3 = v24;
      }

      if (((kDefaultAXRLogFlags | v16) & 2) == 0)
      {
        goto LABEL_44;
      }

      v25 = a3;
      v19 = "axr_part_append_channels error: channel type %u out of bounds. Operation ignored.";
      goto LABEL_42;
    }

    if (a9 > 4 || (v20 = vcnt_s8(a9), v20.i16[0] = vaddlv_u8(v20), v20.u32[0] >= 2uLL))
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
        v13 = *(&a10 + 1);
        v14 = a9;
      }

      if (((kDefaultAXRLogFlags | v16) & 2) == 0)
      {
        goto LABEL_44;
      }

      v25 = v14;
      v19 = "axr_part_append_channels error: channels (%lu) must be 1, 2 or 4. Operation ignored.";
    }

    else if (a7)
    {
      if (a10)
      {
        goto LABEL_21;
      }

      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
        v13 = *(&a10 + 1);
      }

      if (((kDefaultAXRLogFlags | v16) & 2) == 0)
      {
        goto LABEL_44;
      }

      v19 = "axr_part_append_channels error: readFunc may not be NULL. Operation ignored.";
    }

    else
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
        v13 = *(&a10 + 1);
      }

      if (((kDefaultAXRLogFlags | v16) & 2) == 0)
      {
        goto LABEL_44;
      }

      v19 = "axr_part_append_channels error: channel list may not be NULL. Operation ignored.";
    }

LABEL_42:
    v27 = v13;
    goto LABEL_43;
  }

LABEL_21:
  LODWORD(v26) = *(this + 37);
  EncoderLayer::CreateEncoderLayer(v15, a3, v17, v18, a6, a7, a8, a9, a10, v26, a12, v16, *(&a10 + 1));
  if (v21)
  {
    v22 = *(this + 26);
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
      *v23 = v21;
    }

    else
    {
      *(this + 26) = v21;
    }

    return;
  }

  if (GetFlagsOnceToken != -1)
  {
    [OS_axr_data debugDescription];
  }

  v13 = v27;
  if (((kDefaultAXRLogFlags | v16) & 2) != 0)
  {
    v19 = "axr_part_append_channels error: Layer operation failed to allocate. Memory low. Operation ignored.";
LABEL_43:
    AXRLogError(v19, a2, v25);
    v13 = v27;
  }

LABEL_44:
  if (v13)
  {

    v13(a12);
  }
}

axr_size_t axr_part_get_tile_size(axr_part_t part)
{
  v1 = &part[2];
  if (!part)
  {
    v1 = 0;
  }

  return v1[11];
}

char *AttributeListNode::CreateAttributeListNode(AttributeListNode *this, const char *a2, const char *a3, uint64_t a4, const unsigned __int8 *a5, uint64_t a6, void (*a7)(const void *, unint64_t))
{
  v13 = strlen(this);
  v14 = strlen(a2);
  v15 = malloc_type_malloc((v13 + v14 + 81) & 0xFFFFFFFFFFFFFFF0, 0x452D08BBuLL);
  v16 = v15;
  if (v15)
  {
    *(v15 + 4) = a3;
    *(v15 + 5) = a4;
    *(v15 + 6) = a5;
    *(v15 + 7) = a6;
    v17 = v15 + 64;
    *v15 = 0;
    *(v15 + 1) = v15 + 64;
    v18 = stpcpy(v15 + 64, this) + 1;
    *(v16 + 2) = v18;
    *(v16 + 3) = stpcpy(v18, a2) - v17;
  }

  return v16;
}

uint64_t EncoderPart::CreateEncoderPart(EncoderPart *this, const char *a2, const char *a3, unint64_t a4, axr_box2i a5, axr_box2i a6, float a7, float a8, float a9, float a10, float a11, axr_line_order_t a12, unsigned int a13, unsigned int a14, axr_level_mode_t a15, axr_flags_t a16)
{
  v16 = *&a6.yMin;
  v17 = *&a5.xMin;
  v19 = a3;
  v25 = a13;
  v27 = HIDWORD(a4);
  if (SHIDWORD(a4) >= a4)
  {
    v28 = (HIDWORD(a4) - a4 + 1);
  }

  else
  {
    v28 = 0;
  }

  xMax = a5.xMax;
  if (a2)
  {
    v30 = a2;
  }

  else
  {
    v30 = &unk_296B90CDB;
  }

  if (a3 <= 7 && ((1 << a3) & 0xF6) != 0)
  {
    if (a13 <= 0x10)
    {
      v25 = 16;
    }

    if ((a14 & 0xF) == 0)
    {
      v25 = 16;
      a12 = v28;
    }

    v19 = 3;
    goto LABEL_14;
  }

  if (a3 <= 7)
  {
LABEL_14:
    v31 = 0;
    v32 = GetDefaultCompressionMethodTileSize(axr_compression_t)::kCompressionMethodTileSizes[v19];
    goto LABEL_15;
  }

  v32 = 0;
  v31 = 1;
LABEL_15:
  v33 = a14 & 0xF0;
  if (v32 == -1)
  {
    v34 = v28;
  }

  else
  {
    v34 = v32;
  }

  v35 = HIDWORD(v32);
  if (a12)
  {
    v34 = a12;
  }

  if (v25)
  {
    v36 = v25;
  }

  else
  {
    v36 = v35;
  }

  v38 = (a14 & 0xF) != 0 || v36 != v35;
  if (a16)
  {
    goto LABEL_78;
  }

  if (!this)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a16) & 2) == 0)
    {
      return 0;
    }

    v39 = "axr_encoder_append_part: partName may not be NULL";
    goto LABEL_56;
  }

  if (v31)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a16) & 2) != 0)
    {
      AXRLogError("axr_encoder_append_part: compression mode %u invalid", a2, v19);
    }

    return 0;
  }

  if (SHIDWORD(a4) < a4 || a5.xMax < a5.xMin)
  {
    if (GetFlagsOnceToken == -1)
    {
      goto LABEL_54;
    }

    goto LABEL_109;
  }

  if (a5.yMin > a5.yMax || a6.xMin > a6.xMax)
  {
    if (GetFlagsOnceToken == -1)
    {
LABEL_54:
      if (((kDefaultAXRLogFlags | a16) & 2) == 0)
      {
        return 0;
      }

      v64 = v17;
      v65 = xMax;
      v62 = a4;
      v63 = v27;
      v39 = "axr_encoder_append_part: dataWindow {x:[%d,%d],y:[%d,%d]} invalid";
LABEL_56:
      AXRLogError(v39, a2, v62, v63, v64, v65);
      return 0;
    }

LABEL_109:
    [OS_axr_data debugDescription];
    goto LABEL_54;
  }

  if (a6.yMin >= 3u)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a16) & 2) != 0)
    {
      AXRLogError("axr_encoder_append_part: lineOrder %u invalid", a2, v16);
    }

    return 0;
  }

  if (a7 < 0.0)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a16) & 2) != 0)
    {
      AXRLogError("axr_encoder_append_part: pixel aspect ratio %f invalid", a2, a7);
    }

    return 0;
  }

  if ((a14 & 0xFFFFFF00) != 0)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a16) & 2) != 0)
    {
      AXRLogError("axr_encoder_append_part: level mode contains unhandled bits %x", a2, a14 & 0xFFFFFF00);
    }

    return 0;
  }

  if ((a14 & 0xF) >= 3)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a16) & 2) != 0)
    {
      AXRLogError("axr_encoder_append_part: illegal level format %8.8x", a2, a14 & 0xF);
    }

    return 0;
  }

  if (v33 >= 0x11)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
      v33 = a14 & 0xF0;
    }

    if (((kDefaultAXRLogFlags | a16) & 2) != 0)
    {
      AXRLogError("axr_encoder_append_part: illegal level rounding mode %8.8x", a2, v33);
    }

    return 0;
  }

LABEL_78:
  v67 = v34;
  v69 = v38;
  v66 = v28;
  v70 = *&a5.yMin;
  v71 = *&a6.xMin;
  yMin = a6.yMin;
  v73 = a14 & 0xF;
  v41 = a5.xMax;
  v42 = *&a5.xMin;
  v44 = v30;
  v45 = strnlen(this, 0xFFuLL) + 1;
  v46 = strnlen(v44, 0xFFuLL);
  objc_opt_class();
  v47 = _os_object_alloc();
  v40 = v47;
  if (v47)
  {
    v48 = v46 + 1;
    *(v47 + 24) = a16;
    *(v47 + 32) = v47 + 272;
    strncpy((v47 + 272), v44, v48);
    v49 = (v48 + *(v40 + 32));
    *(v40 + 40) = v49;
    strncpy(v49, this, v45);
    *(v40 + 48) = v19;
    *(v40 + 52) = a4;
    *(v40 + 60) = v42;
    *(v40 + 68) = v70;
    *(v40 + 76) = v71;
    *(v40 + 84) = yMin;
    *(v40 + 88) = a7;
    *(v40 + 92) = a8;
    *(v40 + 96) = a9;
    *(v40 + 100) = a10;
    *(v40 + 104) = v67;
    *(v40 + 108) = v36;
    *(v40 + 112) = a14;
    *(v40 + 116) = a11;
    *(v40 + 128) = xmmword_296B8FBB0;
    *(v40 + 144) = xmmword_296B8FBC0;
    *(v40 + 160) = 0x13F800000;
    *(v40 + 168) = 0;
    v50 = (v41 - v42 + 1);
    if (v41 < v42)
    {
      v50 = 0;
    }

    *(v40 + 200) = 0u;
    *(v40 + 184) = 0u;
    if ((a14 & 0xF) != 0)
    {
      v54 = 63 - __clz(v66);
      if (!v66)
      {
        LODWORD(v54) = 0;
      }

      v55 = 63 - __clz(v50);
      if (!v50)
      {
        LODWORD(v55) = 0;
      }

      v56 = 64 - __clz(v66 - 1);
      if (v66 <= 1)
      {
        LODWORD(v56) = 0;
      }

      v57 = 64 - __clz(v50 - 1);
      if (v50 <= 1)
      {
        v58 = 0;
      }

      else
      {
        v58 = v57;
      }

      if ((a14 & 0xF0) == 0x10)
      {
        LODWORD(v54) = v56;
      }

      else
      {
        v58 = v55;
      }

      if (v54 + 1 <= (v58 + 1))
      {
        v59 = v58 + 1;
      }

      else
      {
        v59 = v54 + 1;
      }

      if (v73 == 1)
      {
        v60 = v59;
      }

      else
      {
        v60 = (v54 + 1);
      }

      if (v73 == 1)
      {
        v61 = 1;
      }

      else
      {
        v61 = (v58 + 1);
      }

      v51 = v60 | (v61 << 32);
    }

    else
    {
      v51 = 0x100000001;
    }

    *(v40 + 236) = v51;
    *(v40 + 232) = HIDWORD(v51) * v51;
    v52 = "tiledimage";
    if (!v69)
    {
      v52 = "scanlineimage";
    }

    *(v40 + 248) = v52;
  }

  return v40;
}

unint64_t EncoderPart::Print(const char **this, char *__str, size_t __size)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = snprintf(__str, __size, "\tpart name:            %s\n", this[3]);
  v7 = v6;
  if (__size > v6)
  {
    v7 = v6 + snprintf(&__str[v6], __size - v6, "\tview name:            %s\n", this[2]);
    if (__size > v7)
    {
      name = axr_compression_get_name(*(this + 8));
      v7 += snprintf(&__str[v7], __size - v7, "\tcompression:          %s\n", name);
      if (__size > v7)
      {
        v7 += snprintf(&__str[v7], __size - v7, "\ttype:                 %s\n", this[29]);
        if (__size > v7)
        {
          v7 += snprintf(&__str[v7], __size - v7, "\tdata window:          x:[%d, %d], y:[%d, %d]\n", *(this + 9), *(this + 10), *(this + 11), *(this + 12));
          if (__size > v7)
          {
            v7 += snprintf(&__str[v7], __size - v7, "\tdisplay window:       x:[%d, %d], y:[%d, %d]\n", *(this + 13), *(this + 14), *(this + 15), *(this + 16));
            if (__size > v7)
            {
              v9 = axr_line_order_get_name(*(this + 17));
              v7 += snprintf(&__str[v7], __size - v7, "\tline order:           %s\n", v9);
              if (__size > v7)
              {
                v7 += snprintf(&__str[v7], __size - v7, "\tpixel aspect ratio:   %f\n", *(this + 18));
                if (__size > v7)
                {
                  v7 += snprintf(&__str[v7], __size - v7, "\tscreen window center: {%f, %f}\n", *(this + 19), *(this + 20));
                  if (__size > v7)
                  {
                    v7 += snprintf(&__str[v7], __size - v7, "\tscreen window width:  {%f, %f}\n", *(this + 19), *(this + 20));
                    if (__size > v7)
                    {
                      v7 += snprintf(&__str[v7], __size - v7, "\ttile size:            {w:%u, h:%u}\n", *(this + 22), *(this + 23));
                      if (__size > v7)
                      {
                        v10 = axr_level_mode_get_name(*(this + 24));
                        v7 += snprintf(&__str[v7], __size - v7, "\tlevel mode:           %s\n", v10);
                        if (__size > v7)
                        {
                          v11 = *(this + 24);
                          if ((v11 & 0xF) != 0)
                          {
                            v7 += snprintf(&__str[v7], __size - v7, "\tlevel count:          %u\n", *(this + 54));
                            if (v7 >= __size)
                            {
                              return v7;
                            }

                            v11 = *(this + 24);
                          }

                          if ((v11 & 0xF) != 2 || (v7 += snprintf(&__str[v7], __size - v7, "\trip levels:           x: %u, y: %u\n", *(this + 55), *(this + 56)), v7 < __size))
                          {
                            v12 = this[26];
                            if (v12)
                            {
                              for (i = 0; i < 0x800; i += v14)
                              {
                                v14 = EncoderLayer::PrintChannels(v12, &v16[i], 2048 - i, *(this + 37));
                                v12 = *v12;
                                if (!v12)
                                {
                                  break;
                                }
                              }
                            }

                            else
                            {
                              strcpy(v16, "<no channels>");
                            }

                            v7 += snprintf(&__str[v7], __size - v7, "\tchannels:               %s\n", v16);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v7;
}

uint64_t EncoderPart::EncodeChannelList(EncoderPart *this, EncoderStream *a2, axr_flags_t a3)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = *(this + 26);
  if (v4)
  {
    v6 = 1;
    do
    {
      v7 = *(v4 + 2);
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v9 = *(v4 + 3);
          EncodedNameForChannel = EncoderLayer::GetEncodedNameForChannel(v4, i, v4[17]);
          snprintf(__str, 0x100uLL, "%s%s", v9, EncodedNameForChannel);
          v6 += strlen(__str) + 17;
        }
      }

      v4 = *v4;
    }

    while (v4);
    v11 = EncoderStream::GetBytes<char>(a2, v6 + 20);
    if (v11)
    {
      v12 = stpcpy(v11, "channels");
      v13 = stpcpy(v12 + 1, "chlist");
      *(v13 + 1) = v6;
      v14 = v13 + 5;
      for (j = *(this + 26); j; j = *j)
      {
        v16 = j[2];
        if (v16)
        {
          for (k = 0; k != v16; ++k)
          {
            v18 = 0;
            v19 = (j[1] + 12);
            while (1)
            {
              v20 = *v19;
              v19 += 4;
              if (k == v20)
              {
                break;
              }

              if (v16 == ++v18)
              {
                return -13;
              }
            }

            v21 = j[3];
            v22 = EncoderLayer::GetEncodedNameForChannel(j, v18, *(j + 17));
            snprintf(__str, 0x100uLL, "%s%s", v21, v22);
            v23 = stpcpy(v14, __str);
            v24 = *(j + 60);
            *(v23 + 1) = *(j + 14) | (*(j + 72) << 32);
            *(v23 + 9) = v24;
            v14 = v23 + 17;
          }
        }
      }

      result = 0;
      *v14 = 0;
    }

    else
    {
      return -5;
    }
  }

  else
  {
    v25 = a3;
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v25) & 2) != 0)
    {
      AXRLogError("axr_encoder_compress:  part %p has no channels", a2, this);
    }

    return -11;
  }

  return result;
}

char *EncoderStream::GetBytes<char>(void *a1, unint64_t a2)
{
  v4 = a1[8];
  if (v4 && (v6 = *(v4 + 24), v5 = *(v4 + 32), v7 = (v5 + a2), v5 + a2 <= v6) && (v8 = v5 + v4, *(v4 + 32) = v7, v9 = (v8 - v6), v8 != v6))
  {
    a1[7] += a2;
  }

  else
  {
    if (a1[6] <= a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = a1[6];
    }

    EncoderBuffer::GetEncoderBuffer(v10);
    if (v11 && (v12 = a1[7], v11[2] = a1[8], a1[7] = v12 + a2, a1[8] = v11, v14 = v11[3], v13 = v11[4], v15 = (v13 + a2), v13 + a2 <= v14))
    {
      v9 = v11 + v13 - v14;
      v11[4] = v15;
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t EncoderPart::EncodeTileDesc(EncoderPart *this, EncoderStream *a2, axr_flags_t a3)
{
  v3 = *(this + 11);
  v4 = *(this + 24);
  v5 = EncoderStream::GetBytes<char>(a2, 0x1FuLL);
  if (!v5)
  {
    return -5;
  }

  v6 = stpcpy(v5, "tiles");
  v7 = stpcpy(v6 + 1, "tiledesc");
  result = 0;
  *(v7 + 1) = 12;
  *(v7 + 5) = v3;
  v7[13] = v4;
  return result;
}

uint64_t EncodeAttribute(EncoderStream *a1, const char *__s, const char *a3, size_t a4, const void *a5)
{
  v10 = strlen(__s);
  v11 = strlen(a3);
  v12 = EncoderStream::GetBytes<char>(a1, a4 + v10 + v11 + 6);
  if (!v12)
  {
    return -5;
  }

  v13 = stpcpy(v12, __s);
  v14 = stpcpy(v13 + 1, a3);
  *(v14 + 1) = a4;
  memcpy(v14 + 5, a5, a4);
  return 0;
}

uint64_t EncoderPart::EncodePreview(EncoderPart *this, EncoderStream *a2, axr_flags_t a3)
{
  if (!*(this + 19))
  {
    return 0;
  }

  v4 = 4 * *(this + 46);
  v5 = EncoderStream::GetBytes<char>(a2, v4 * *(this + 47) + 28);
  if (!v5)
  {
    return -5;
  }

  v6 = stpcpy(v5, "preview");
  v7 = stpcpy(v6 + 1, "preview");
  *(v7 + 1) = 20;
  *(v7 + 5) = *(this + 46);
  *(v7 + 9) = *(this + 47);
  if (*(this + 47))
  {
    v8 = 0;
    v9 = *(this + 19);
    v10 = v7 + 13;
    do
    {
      memcpy(v10, v9, v4);
      v9 += *(this + 20);
      v10 += v4;
      ++v8;
    }

    while (v8 < *(this + 47));
  }

  v11 = *(this + 22);
  if (v11)
  {
    v11(*(this + 19), *(this + 21));
  }

  result = 0;
  *(this + 22) = 0;
  *(this + 19) = 0;
  return result;
}

uint64_t EncoderPart::EncodeHeader(uint64_t a1, EncoderStream *a2, uint64_t a3, axr_flags_t a4)
{
  v4 = a4;
  v8 = *(a1 + 32);
  v40 = *(a1 + 68);
  v9 = *(a1 + 192);
  v10 = EncoderPart::EncodeChannelList(a1, a2, a4);
  if (v10)
  {
    return v10;
  }

  v12 = EncoderStream::GetBytes<char>(a2, 0x1DuLL);
  if (!v12)
  {
    return -5;
  }

  v13 = stpcpy(v12, "compression");
  v14 = stpcpy(v13 + 1, "compression");
  *(v14 + 1) = 1;
  v14[5] = v8;
  v15 = *(a1 + 36);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = EncoderStream::GetBytes<char>(a2, 0x25uLL);
  if (!v18)
  {
    return -5;
  }

  v19 = stpcpy(v18, "dataWindow");
  v20 = stpcpy(v19 + 1, "box2i");
  *(v20 + 1) = 16;
  *(v20 + 5) = v15;
  *(v20 + 9) = vrev64_s32(v16);
  *(v20 + 17) = v17;
  v21 = *(a1 + 52);
  v22 = *(a1 + 56);
  v23 = *(a1 + 64);
  v24 = EncoderStream::GetBytes<char>(a2, 0x28uLL);
  if (!v24)
  {
    return -5;
  }

  v25 = stpcpy(v24, "displayWindow");
  v26 = stpcpy(v25 + 1, "box2i");
  *(v26 + 1) = 16;
  *(v26 + 5) = v21;
  *(v26 + 9) = vrev64_s32(v22);
  *(v26 + 17) = v23;
  v10 = EncodeAttribute(a2, "lineOrder", "lineOrder", 1uLL, &v40);
  if (v10)
  {
    return v10;
  }

  LODWORD(v41[0]) = *(a1 + 72);
  v10 = EncodeAttribute(a2, "pixelAspectRatio", "float", 4uLL, v41);
  if (v10)
  {
    return v10;
  }

  v41[0] = *(a1 + 76);
  v10 = EncodeAttribute(a2, "screenWindowCenter", "v2f", 8uLL, v41);
  if (v10)
  {
    return v10;
  }

  LODWORD(v41[0]) = *(a1 + 84);
  v10 = EncodeAttribute(a2, "screenWindowWidth", "float", 4uLL, v41);
  if (v10)
  {
    return v10;
  }

  LODWORD(v41[0]) = *(a1 + 100);
  v10 = EncodeAttribute(a2, "xDensity", "float", 4uLL, v41);
  if (v10)
  {
    return v10;
  }

  v28 = *(a3 + 4);
  LOWORD(v29) = v28;
  if ((v28 & 0x200) != 0)
  {
    v10 = EncoderPart::EncodeTileDesc(a1, a2, v27);
    if (v10)
    {
      return v10;
    }

    v29 = *(a3 + 4);
  }

  if ((v29 & 0x1000) != 0)
  {
    v30 = *(a1 + 16);
    if (*v30)
    {
      v31 = strlen(*(a1 + 16));
      v10 = EncodeAttribute(a2, "view", "string", v31, v30);
      if (v10)
      {
        return v10;
      }

      v29 = *(a3 + 4);
    }
  }

  if ((v29 & 0x1800) != 0)
  {
    v32 = strlen(*(a1 + 24));
    v10 = EncodeAttribute(a2, "name", "string", v32, *(a1 + 24));
    if (v10)
    {
      return v10;
    }

    v33 = strlen(*(a1 + 232));
    v10 = EncodeAttribute(a2, "type", "string", v33, *(a1 + 232));
    if (v10)
    {
      return v10;
    }

    LODWORD(v41[0]) = EncoderPart::GetChunkCount(a1);
    v10 = EncodeAttribute(a2, "chunkCount", "int", 4uLL, v41);
    if (v10)
    {
      return v10;
    }

    if ((v28 & 0x200) == 0 && (*(a1 + 240) & 2) != 0)
    {
      v10 = EncoderPart::EncodeTileDesc(a1, a2, v27);
      if (v10)
      {
        return v10;
      }
    }
  }

  if ((*(a3 + 5) & 8) == 0)
  {
    v11 = 0;
    goto LABEL_35;
  }

  LODWORD(v41[0]) = 1;
  v10 = EncodeAttribute(a2, "version", "int", 4uLL, v41);
  if (v10)
  {
    return v10;
  }

  if (GetFlagsOnceToken != -1)
  {
    [OS_axr_data debugDescription];
  }

  if (((kDefaultAXRLogFlags | v4) & 2) != 0)
  {
    AXRLogError("axr_encoder_compress error:  AppleEXR doesn't support deep scanline or deep tile formats currently", v35);
  }

  v11 = -3;
LABEL_35:
  if (*(a1 + 144) == 1.0 || (LODWORD(v41[0]) = *(a1 + 144), (v11 = EncodeAttribute(a2, "whiteLuminance", "float", 4uLL, v41)) == 0))
  {
    v36 = *(a1 + 112);
    v37 = *(a1 + 128);
    if ((vminvq_u32(vandq_s8(vceqq_f32(v37, xmmword_296B8FBC0), vceqq_f32(v36, xmmword_296B8FBB0))) & 0x80000000) != 0 || (v38 = v41, vst2q_f32(v38, *v36.f32), (v11 = EncodeAttribute(a2, "chromaticities", "chromaticities", 0x20uLL, v41)) == 0))
    {
      if (!*(a1 + 152) || (v11 = EncoderPart::EncodePreview(a1, a2, v27)) == 0)
      {
        *(a1 + 192) = 0;
        while (v9)
        {
          v39 = v9;
          v9 = *v9;
          v11 = AttributeListNode::Encode(v39, a2);
          AttributeListNode::Destroy(v39);
          if (v11)
          {
            *(a1 + 192) = v9;
            return v11;
          }
        }
      }
    }
  }

  return v11;
}

uint64_t EncoderPart::GetChunkCount(EncoderPart *this)
{
  v2 = *(this + 9);
  v1 = *(this + 10);
  v3 = __OFSUB__(v1, v2);
  v4 = v1 - v2;
  if (v4 < 0 != v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 + 1;
  }

  v7 = *(this + 11);
  v6 = *(this + 12);
  v3 = __OFSUB__(v6, v7);
  v8 = v6 - v7;
  if (v8 < 0 != v3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 + 1;
  }

  v10 = *(this + 22);
  if (v10 <= 1)
  {
    v10 = 1;
  }

  v11 = v5 + v10 - 1;
  if (v11 < v5)
  {
    v12 = (v11 - 0xFFFFFFFF / v10 * v10) / v10 + 0xFFFFFFFF / v10;
  }

  else
  {
    v12 = v11 / v10;
  }

  v13 = *(this + 23);
  if (v13 <= 1)
  {
    v13 = 1;
  }

  v14 = v9 + v13 - 1;
  if (v14 < v9)
  {
    v15 = (v14 - 0xFFFFFFFF / v13 * v13) / v13 + 0xFFFFFFFF / v13;
  }

  else
  {
    v15 = v14 / v13;
  }

  return (v15 * v12);
}

uint64_t AttributeListNode::Encode(AttributeListNode *this, EncoderStream *a2)
{
  v3 = EncoderStream::GetBytes<char>(a2, *(this + 3) + *(this + 4) + 4);
  if (!v3)
  {
    return -5;
  }

  v4 = v3;
  memcpy(v3, this + 64, *(this + 3));
  v6 = *(this + 3);
  v5 = *(this + 4);
  *&v4[v6] = v5;
  memcpy(&v4[v6 + 4], *(this + 5), v5);
  return 0;
}

void AttributeListNode::Destroy(AttributeListNode *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    v2(*(this + 5), *(this + 6));
  }

  free(this);
}

uint64_t EncoderPart::ReserveOffsets(EncoderPart *this, EncoderStream *a2)
{
  v4 = *(this + 9);
  v3 = *(this + 10);
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  if (v6 < 0 != v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 + 1;
  }

  v9 = *(this + 11);
  v8 = *(this + 12);
  v5 = __OFSUB__(v8, v9);
  v10 = v8 - v9;
  if (v10 < 0 != v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 + 1;
  }

  v12 = *(this + 22);
  if (v12 <= 1)
  {
    v12 = 1;
  }

  v13 = v7 + v12 - 1;
  if (v13 < v7)
  {
    v14 = (v13 - 0xFFFFFFFF / v12 * v12) / v12 + 0xFFFFFFFF / v12;
  }

  else
  {
    v14 = v13 / v12;
  }

  v15 = *(this + 23);
  if (v15 <= 1)
  {
    v15 = 1;
  }

  v16 = v11 + v15 - 1;
  if (v16 < v11)
  {
    v17 = (v16 - 0xFFFFFFFF / v15 * v15) / v15 + 0xFFFFFFFF / v15;
  }

  else
  {
    v17 = v16 / v15;
  }

  v18 = EncoderStream::GetBytes<char>(a2, 8 * (v17 * v14));
  *(this + 31) = v18;
  if (v18)
  {
    return 0;
  }

  else
  {
    return -5;
  }
}

uint64_t EncoderPart::EncodeChunks(uint64_t a1, uint64_t a2, int a3, unint64_t *a4, uint64_t a5)
{
  v10 = *(a1 + 208);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v10[2];
      v12 += v13;
      v11 += axr_type_get_size(*(v10 + 14)) * v13;
      v10 = *v10;
    }

    while (v10);
    v14 = *(a1 + 208);
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v11 = 0;
  }

  v15 = *(a1 + 40);
  v16 = *(a1 + 44);
  v17 = *(a1 + 32);
  v18 = *(a1 + 36);
  v19 = __OFSUB__(v15, v18);
  v20 = v15 - v18;
  if (v20 < 0 != v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20 + 1;
  }

  v22 = *(a1 + 48);
  v19 = __OFSUB__(v22, v16);
  v23 = v22 - v16;
  if (v23 < 0 != v19)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23 + 1;
  }

  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v67 = 0;
  v68 = v11;
  v25 = *(a1 + 92);
  v63 = *(a1 + 88);
  v64 = v25;
  v65 = 0;
  v66 = 0;
  v69 = v12;
  v70 = v14;
  v71 = a5;
  v26 = *(a1 + 240);
  v27 = *a4;
  v73 = *a4;
  v72 = v26;
  v74 = a3;
  v28 = *(a1 + 248);
  v75 = *(a2 + 56);
  v76 = v28;
  v29 = 20;
  if (v26 != 1)
  {
    v29 = 0;
  }

  v30 = v26 == 0;
  v31 = 8;
  if (!v30)
  {
    v31 = v29;
  }

  v77 = 0;
  v78 = 0;
  v79 = v31 + ((v27 >> 42) & 4);
  v81 = 0uLL;
  v82 = 0uLL;
  v80 = 0uLL;
  if (!v17)
  {
    v57 = a2;
    v58 = a1;
    v32 = &unk_2A1DE95F8;
    goto LABEL_20;
  }

  if (v17 == 3)
  {
    v57 = a2;
    v58 = a1;
    v32 = &unk_2A1DE9648;
LABEL_20:
    v56 = v32;
    v59 = &v56;
  }

  HIDWORD(v66) = 0;
  v33 = *(a1 + 224);
  if (!v33)
  {
LABEL_56:
    v53 = 0;
    goto LABEL_57;
  }

  v34 = 0;
  v35 = 0;
  v36 = *(a1 + 220);
  v37 = v36;
  while (1)
  {
    LODWORD(v66) = 0;
    if (v37)
    {
      break;
    }

LABEL_55:
    HIDWORD(v66) = ++v34;
    if (v34 >= v33)
    {
      goto LABEL_56;
    }
  }

  while (1)
  {
    v38 = *(a1 + 88);
    v62 = __PAIR64__(v25, v38);
    DWORD1(v61) = 0;
    v39 = v66;
    v40 = *(a1 + 96);
    v41 = HIDWORD(v66);
    if ((v40 & 0xF) != 2)
    {
      LOBYTE(v41) = v66;
    }

    v42 = v40 >> 4;
    LODWORD(v43) = (v21 - v42 + (v42 << v66)) >> v66;
    if (v43 <= 1)
    {
      v43 = 1;
    }

    else
    {
      v43 = v43;
    }

    LODWORD(v44) = (v24 - v42 + (v42 << v41)) >> v41;
    if (v44 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = v44;
    }

    *(&v61 + 1) = v43 | (v44 << 32);
    if (v38 <= 1)
    {
      v38 = 1;
    }

    v45 = v38 - 1 + v43;
    v46 = __CFADD__(v38 - 1, v43) ? (v45 - 0xFFFFFFFF / v38 * v38) / v38 + 0xFFFFFFFF / v38 : v45 / v38;
    v47 = v25 <= 1 ? 1 : v25;
    v48 = __CFADD__(v47 - 1, v44);
    v49 = v47 - 1 + v44;
    if (v48)
    {
      break;
    }

    v50 = v49 / v47;
    if (v49 / v47)
    {
      goto LABEL_41;
    }

LABEL_50:
    LODWORD(v66) = v39 + 1;
    if (v39 + 1 >= v36)
    {
      v34 = HIDWORD(v66);
      v33 = *(a1 + 224);
      v37 = v36;
      goto LABEL_55;
    }
  }

  v50 = (v49 - 0xFFFFFFFF / v47 * v47) / v47 + 0xFFFFFFFF / v47;
  if (!v50)
  {
    goto LABEL_50;
  }

LABEL_41:
  v51 = 0;
  while (1)
  {
    *&v60 = v35;
    *(&v60 + 1) = __PAIR64__(v50, v46);
    HIDWORD(v65) = v51;
    v77 = 0;
    *&v82 = 0;
    v80 = 0u;
    v81 = 0u;
    v52 = HIDWORD(v61) - v25 * v51;
    if (HIDWORD(v62) < v52)
    {
      v52 = HIDWORD(v62);
    }

    LODWORD(v61) = 0;
    HIDWORD(v62) = v52;
    v53 = (*(*v59 + 3))(v59, &v60);
    if (v53)
    {
      break;
    }

    v53 = (*(*v59 + 4))(v59, &v60);
    if (v53)
    {
      break;
    }

    (*(*v59 + 5))(v59, &v60);
    v25 = *(a1 + 92);
    v54 = DWORD1(v61) + v25;
    DWORD1(v61) = v54;
    if (v54 + v25 > v24)
    {
      HIDWORD(v62) = v24 - v54;
    }

    v35 += v46;
    if (v50 == ++v51)
    {
      v39 = v66;
      v36 = *(a1 + 220);
      goto LABEL_50;
    }
  }

LABEL_57:
  (*(*v59 + 2))(v59);
  return v53;
}

void EncoderLayer::SetColorSpaceModel(EncoderLayer *this, CGColorSpaceModel a2)
{
  v17[63] = *MEMORY[0x29EDCA608];
  if (*(this + 17) != a2)
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      operator new[]();
    }

    if (v4)
    {
      v5 = 0;
      v6 = vdupq_n_s64(v4 - 1);
      v7 = xmmword_296B8F0F0;
      v8 = xmmword_296B8F100;
      v9 = v17;
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

      while (((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v5);
    }

    qsort_r(v16, v4, 4uLL, this, EncoderLayer::CompareNames);
    v12 = *(this + 2);
    if (v12)
    {
      v13 = (*(this + 1) + 12);
      v14 = v16;
      do
      {
        v15 = *v14++;
        *v13 = v15;
        v13 += 4;
        --v12;
      }

      while (v12);
    }

    *(this + 17) = a2;
  }
}

uint64_t EncoderLayer::CompareNames(EncoderLayer *this, unsigned int *a2, unsigned int *a3, const void *a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = *(this + 3);
  EncodedNameForChannel = EncoderLayer::GetEncodedNameForChannel(this, *a2, *(this + 17));
  snprintf(__str, 0x100uLL, "%s%s", v6, EncodedNameForChannel);
  v8 = *a3;
  v9 = *(this + 3);
  v10 = EncoderLayer::GetEncodedNameForChannel(this, v8, *(this + 17));
  snprintf(__s2, 0x100uLL, "%s%s", v9, v10);
  return strcmp(__str, __s2);
}

void EncoderPart::~EncoderPart(EncoderPart *this)
{
  v2 = *(this + 24);
  *(this + 24) = 0;
  while (v2)
  {
    v3 = *v2;
    AttributeListNode::Destroy(v2);
    v2 = v3;
  }

  v4 = *(this + 26);
  *(this + 26) = 0;
  while (v4)
  {
    v5 = *v4;
    EncoderLayer::Destroy(v4);
    v4 = v5;
  }

  v6 = *(this + 22);
  if (v6)
  {
    v6(*(this + 19), *(this + 21));
    *(this + 22) = 0;
  }

  *(this + 23) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 19) = 0;
}

void EncoderLayer::Destroy(EncoderLayer *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v2(*(this + 6));
  }

  free(this);
}

uint64_t AXRCreateColorSpace(__n128 a1, __n128 a2, __n128 a3, float32x4_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v13 = a3.n128_f32[0];
  v87[1] = *MEMORY[0x29EDCA608];
  v73 = a2;
  v74 = a1;
  if (AXRCreateColorSpace::CGFunctionsInitialized == -1)
  {
    v14 = a1;
    if (!a7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    AXRCreateColorSpace_cold_1();
    a2 = v73;
    v14 = v74;
    if (!a7)
    {
      goto LABEL_4;
    }
  }

  TypeID = cfGetTypeID(a7, a1, a2, a3, a4, v14);
  v16 = cfDictionaryGetTypeID();
  a2 = v73;
  v14 = v74;
  if (TypeID != v16)
  {
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_99;
    }

    while (1)
    {
      if (((kDefaultAXRLogFlags | a8) & 2) != 0)
      {
        AXRLogError("Error: options dictionary pointer is not a CFDictionary", v17);
      }

      __break(1u);
LABEL_99:
      [OS_axr_data debugDescription];
    }
  }

LABEL_4:
  v18 = a6 & 0xFFFFFFFFFFFFFF0FLL;
  if (a9)
  {
    v19 = 14;
    if (v18 <= 8 && ((1 << v18) & 0x114) != 0 || v18 == 1024)
    {
      goto LABEL_15;
    }

    if (v18 && (a6 & 0xFFFFFFFFFFFFFF01) == 0)
    {
      v19 = 14;
      goto LABEL_15;
    }
  }

  if (v18 == 1792)
  {
    v19 = a6;
  }

  else
  {
    v19 = a6;
    if (v18 != 14)
    {
      goto LABEL_16;
    }
  }

LABEL_15:
  a3 = xmmword_296B8FA90;
  a4 = vmlaq_f32(xmmword_296B8FAA0, xmmword_296B8FA70, a2);
  a1 = vandq_s8(vcgeq_f32(xmmword_296B8FA90, vabsq_f32(a4)), vcgeq_f32(xmmword_296B8FA90, vabsq_f32(vmlaq_f32(xmmword_296B8FA80, xmmword_296B8FA70, v14))));
  a1.n128_u32[0] = vminvq_u32(a1);
  a6 = v19;
  if ((a1.n128_u32[0] & 0x80000000) != 0)
  {
    goto LABEL_56;
  }

LABEL_16:
  v20 = 0;
  v21 = a6 & 0xFFFFFFFFFFFFFF0FLL;
  if ((a6 & 0xFFFFFFFFFFFFFF0FLL) <= 13)
  {
    if (v21 != 2 && v21 != 4 && v21 != 8)
    {
      return v20;
    }

    goto LABEL_24;
  }

  if (v21 <= 1791)
  {
    if (v21 != 14)
    {
      if (v21 != 1024)
      {
        return v20;
      }

LABEL_24:
      v76 = v13;
      Mutable = cfDictionaryCreateMutable(0, 0, kcfDictionaryKeyCallBacks, kcfDictionaryValueCallBacks, a1, a2, a3, a4, v14);
      if (Mutable)
      {
        v55 = Mutable;
        cfDictionaryAddValue(Mutable, @"profileVersion", @"4.3.0");
        cfDictionaryAddValue(v55, @"profileType", @"calGray");
        cfDictionaryAddValue(v55, @"description", @"AppleEXR grayscale linear extended");
        v75 = 1065353216;
        v56 = cfNumberCreate(0, 12, &v75);
        if (v56)
        {
          v57 = v56;
          cfDictionaryAddValue(v55, @"kGamma", v56);
          cfRelease(v57);
        }

        v58 = cfNumberCreate(0, 12, &v76);
        if (v58)
        {
          v59 = v58;
          cfDictionaryAddValue(v55, @"luminance", v58);
          cfRelease(v59);
        }

        *&v84 = v74.f32[3] / *&v73.i32[3];
        HIDWORD(v84) = 1065353216;
        *&v85 = (1.0 - (v74.f32[3] + *&v73.i32[3])) / *&v73.i32[3];
        v60 = cfNumberCreate(0, 12, &v84);
        v77 = v60;
        v61 = cfNumberCreate(0, 12, &v84 + 4);
        v78 = v61;
        v62 = cfNumberCreate(0, 12, &v85);
        v63 = 0;
        v79 = v62;
        if (v60 && v61 && v62)
        {
          v63 = cfArrayCreate(0, &v77, 3, kcfTypeArrayCallBacks);
          v60 = v77;
        }

        if (v60)
        {
          cfRelease(v60);
        }

        if (v78)
        {
          cfRelease(*&v78);
        }

        if (v79)
        {
          cfRelease(v79);
        }

        if (v63)
        {
          cfDictionaryAddValue(v55, @"wtpt", v63);
          cfRelease(v63);
        }

        Profile = colorsyncMakeProfile(v55);
        cfRelease(v55);
        if (Profile)
        {
          if (a7)
          {
            v64 = cfDictionaryCreateMutableCopy;
            Count = cfDictionaryGetCount(a7);
            v49 = v64(0, Count + 1, a7);
            v50 = v49;
            if (v49)
            {
LABEL_55:
              cfDictionaryAddValue(v49, @"kCGColorSpaceExtendedRange", kcfBooleanTrue);
            }
          }

          else
          {
            v77 = @"kCGColorSpaceExtendedRange";
            v87[0] = kcfBooleanTrue;
            v50 = cfDictionaryCreate(0, &v77, v87, 1, kcfDictionaryKeyCallBacks, kcfDictionaryValueCallBacks);
          }

          goto LABEL_91;
        }
      }

      return 0;
    }

    goto LABEL_27;
  }

  if (v21 == 7168)
  {
LABEL_56:
    v51 = colorsyncProfileCreateWithName(kcolorsyncGenericXYZProfile);
    MutableCopy = colorsyncProfileCreateMutableCopy();
    cfRelease(v51);
    v77 = 542792024;
    v78.i32[0] = 0;
    if (v13 >= 65536.0)
    {
      v53 = 0x7FFFFFFF;
    }

    else if (v13 >= -65536.0)
    {
      v53 = rintf(v13 * 65536.0);
    }

    else
    {
      v53 = -1;
    }

    v78.i32[1] = bswap32(v53);
    LODWORD(v79) = 0;
    v66 = cfDataCreate(0, &v77, 20);
    colorsyncProfileSetTag(MutableCopy, @"lumi", v66);
    cfRelease(v66);
    colorsyncProfileRemoveTag(MutableCopy, @"dscm");
    colorsyncProfileSetDescriptionTag(MutableCopy, @"AppleEXR XYZ linear extended", 0);
    if (a7)
    {
      v67 = cfDictionaryCreateMutableCopy;
      v68 = cfDictionaryGetCount(a7);
      v69 = v67(0, v68 + 1, a7);
      v70 = v69;
      if (v69)
      {
        cfDictionaryAddValue(v69, @"kCGColorSpaceExtendedRange", kcfBooleanTrue);
      }
    }

    else
    {
      v77 = @"kCGColorSpaceExtendedRange";
      v84 = kcfBooleanTrue;
      v70 = cfDictionaryCreate(0, &v77, &v84, 1, kcfDictionaryKeyCallBacks, kcfDictionaryValueCallBacks);
    }

    v20 = cgColorSpaceCreateWithColorSyncProfile(MutableCopy, v70);
    cfRelease(v70);
    cfRelease(MutableCopy);
    return v20;
  }

  if (v21 != 1792)
  {
    return v20;
  }

LABEL_27:
  v76 = v13;
  v22 = cfDictionaryCreateMutable(0, 0, kcfDictionaryKeyCallBacks, kcfDictionaryValueCallBacks, a1, a2, a3, a4, v14);
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  cfDictionaryAddValue(v22, @"profileVersion", @"4.3.0");
  cfDictionaryAddValue(v23, @"profileType", @"calRGB");
  cfDictionaryAddValue(v23, @"description", @"AppleEXR RGB linear");
  v75 = 1065353216;
  v24 = cfNumberCreate(0, 12, &v75);
  if (v24)
  {
    v25 = v24;
    cfDictionaryAddValue(v23, @"rGamma", v24);
    cfDictionaryAddValue(v23, @"gGamma", v25);
    cfDictionaryAddValue(v23, @"bGamma", v25);
    cfRelease(v25);
  }

  v72 = a7;
  v26 = cfNumberCreate(0, 12, &v76);
  if (v26)
  {
    v27 = v26;
    cfDictionaryAddValue(v23, @"luminance", v26);
    cfRelease(v27);
  }

  v28 = 0;
  v29 = v74;
  v30 = vextq_s8(v29, v29, 8uLL).u64[0];
  v31 = vextq_s8(v73, v73, 8uLL).u64[0];
  v32 = vsub_f32(*&vextq_s8(v29, v29, 4uLL), __PAIR64__(v74.u32[0], v30.u32[0]));
  v33 = vmul_f32(*v73.i8, vmla_laneq_f32(vmla_f32(vmul_laneq_f32(vsub_f32(*&vextq_s8(v29, v29, 0xCuLL), vzip2_s32(*v74.f32, v30)), v73, 2), vrev64_s32(*v73.i8), vsub_f32(v30, vrev64_s32(v30))), v32, v73, 3));
  v34 = vmul_f32(*v73.i8, v32);
  v35 = vdup_lane_s32(v34, 0);
  v35.f32[0] = (v74.f32[1] - v74.f32[3]) * *v73.i32;
  v34.i32[0] = vmuls_lane_f32(v74.f32[3] - v74.f32[0], *v73.i8, 1);
  v36 = vmul_f32(v31, vadd_f32(vrev64_s32(vmul_n_f32(v31, v74.f32[0] - v74.f32[1])), vadd_f32(v35, v34)));
  v37 = vdup_lane_s32(v36, 1);
  v38 = vdiv_f32(v33, v37);
  *v36.i32 = vdiv_f32(v36, v37).f32[0];
  *&v77 = vmuls_n_f32(v74.f32[0], v38.f32[0]) / *v73.i32;
  HIDWORD(v77) = v38.i32[0];
  v37.i32[1] = v74.i32[1];
  v37.f32[0] = 1.0 - vaddq_f32(v74, v73).f32[0];
  v78 = vdiv_f32(vmul_f32(v37, v38), *v73.i8);
  LODWORD(v79) = v38.i32[1];
  *(&v79 + 1) = vmuls_lane_f32(1.0 - (v74.f32[1] + *&v73.i32[1]), v38, 1) / *&v73.i32[1];
  v80 = __PAIR64__(v36.u32[0], vmuls_lane_f32(*v36.i32, v74, 2) / *&v73.i32[2]);
  *v30.i32 = (1.0 - (v74.f32[2] + *&v73.i32[2])) * *v36.i32;
  v81 = vdiv_f32(v30, v31);
  v82 = 1065353216;
  v83 = (1.0 - (v74.f32[3] + *&v73.i32[3])) / *&v73.i32[3];
  v39 = _ZZL19CreateRGBColorSpaceDv4_fS_fPK14__CFDictionary11axr_flags_tE10colorNames;
  do
  {
    v40 = cfNumberCreate(0, 12, &v77 + v28);
    v84 = v40;
    v41 = cfNumberCreate(0, 12, &v77 + v28 + 4);
    v85 = v41;
    v42 = cfNumberCreate(0, 12, &v77 + v28 + 8);
    v86 = v42;
    if (v40)
    {
      v43 = v41 == 0;
    }

    else
    {
      v43 = 1;
    }

    if (!v43 && v42 != 0)
    {
      v45 = cfArrayCreate(0, &v84, 3, kcfTypeArrayCallBacks);
      v40 = v84;
      if (!v84)
      {
        goto LABEL_45;
      }

LABEL_44:
      cfRelease(v40);
      goto LABEL_45;
    }

    v45 = 0;
    if (v40)
    {
      goto LABEL_44;
    }

LABEL_45:
    if (v85)
    {
      cfRelease(v85);
    }

    if (v86)
    {
      cfRelease(v86);
    }

    if (v45)
    {
      cfDictionaryAddValue(v23, *v39, v45);
      cfRelease(v45);
    }

    v28 += 12;
    ++v39;
  }

  while (v28 != 48);
  Profile = colorsyncMakeProfile(v23);
  cfRelease(v23);
  if (!Profile)
  {
    return 0;
  }

  if (v72)
  {
    v47 = cfDictionaryCreateMutableCopy;
    v48 = cfDictionaryGetCount(v72);
    v49 = v47(0, v48 + 1, v72);
    v50 = v49;
    if (v49)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v84 = @"kCGColorSpaceExtendedRange";
    v87[0] = kcfBooleanTrue;
    v50 = cfDictionaryCreate(0, &v84, v87, 1, kcfDictionaryKeyCallBacks, kcfDictionaryValueCallBacks);
  }

LABEL_91:
  v20 = cgColorSpaceCreateWithColorSyncProfile(Profile, v50);
  cfRelease(v50);
  cfRelease(Profile);
  return v20;
}

void InitCGFunctions(void *a1)
{
  v1 = dlopen("/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation", 261);
  if (v1)
  {
    v9 = v1;
    cfGetTypeID = dlsym(v1, "CFGetTypeID");
    cfDictionaryGetTypeID = dlsym(v9, "CFDictionaryGetTypeID");
    cfRelease = dlsym(v9, "CFRelease");
    cfDictionaryCreateMutable = dlsym(v9, "CFDictionaryCreateMutable");
    cfDictionaryAddValue = dlsym(v9, "CFDictionaryAddValue");
    cfNumberCreate = dlsym(v9, "CFNumberCreate");
    cfArrayCreate = dlsym(v9, "CFArrayCreate");
    cfDataCreate = dlsym(v9, "CFDataCreate");
    cfDictionaryCreate = dlsym(v9, "CFDictionaryCreate");
    cfDictionaryCreateMutableCopy = dlsym(v9, "CFDictionaryCreateMutableCopy");
    cfDictionaryGetCount = dlsym(v9, "CFDictionaryGetCount");
    kcfDictionaryKeyCallBacks = dlsym(v9, "kCFTypeDictionaryKeyCallBacks");
    kcfDictionaryValueCallBacks = dlsym(v9, "kCFTypeDictionaryValueCallBacks");
    kcfTypeArrayCallBacks = dlsym(v9, "kCFTypeArrayCallBacks");
    v10 = dlsym(v9, "kCFBooleanTrue");
    if (v10)
    {
      v11 = *v10;
    }

    else
    {
      v11 = 0;
    }

    kcfBooleanTrue = v11;
  }

  else
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    AXRLogDebug("AppleEXR: internal error -- failed to locate CoreFoundation", v2, v3, v4, v5, v6, v7, v8);
  }

  v12 = dlopen("/System/Library/Frameworks/CoreGraphics.framework/CoreGraphics", 261);
  if (v12)
  {
    v20 = v12;
    cgColorSpaceCreateWithName = dlsym(v12, "CGColorSpaceCreateWithName");
    cgColorSpaceCreateWithColorSyncProfile = dlsym(v20, "CGColorSpaceCreateWithColorSyncProfile");
    v21 = dlsym(v20, "kCGColorSpaceExtendedLinearSRGB");
    if (v21)
    {
      v22 = *v21;
    }

    else
    {
      v22 = 0;
    }

    kcgColorSpaceExtendedLinearSRGB = v22;
    v23 = dlsym(v20, "kCGColorSpaceGenericXYZ");
    if (v23)
    {
      v24 = *v23;
    }

    else
    {
      v24 = 0;
    }

    kcgColorSpaceGenericXYZ = v24;
    v25 = dlsym(v20, "kCGColorSpaceExtendedLinearGray");
    if (v25)
    {
      v26 = *v25;
    }

    else
    {
      v26 = 0;
    }

    kcgColorSpaceExtendedLinearGray = v26;
  }

  else
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    AXRLogDebug("AppleEXR: internal error -- failed to locate CoreGraphics", v13, v14, v15, v16, v17, v18, v19);
  }

  v27 = dlopen("/System/Library/PrivateFrameworks/ColorSync.framework/ColorSync", 261);
  if (v27)
  {
    v35 = v27;
    colorsyncMakeProfile = dlsym(v27, "ColorSyncMakeProfile");
    colorsyncProfileCreateWithName = dlsym(v35, "ColorSyncProfileCreateWithName");
    colorsyncProfileCreateMutableCopy = dlsym(v35, "ColorSyncProfileCreateMutableCopy");
    colorsyncProfileSetTag = dlsym(v35, "ColorSyncProfileSetTag");
    colorsyncProfileRemoveTag = dlsym(v35, "ColorSyncProfileRemoveTag");
    colorsyncProfileSetDescriptionTag = dlsym(v35, "ColorSyncProfileSetDescriptionTag");
    v36 = dlsym(v35, "kColorSyncGenericXYZProfile");
    if (v36)
    {
      v37 = *v36;
    }

    else
    {
      v37 = 0;
    }

    kcolorsyncGenericXYZProfile = v37;
  }

  else
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    AXRLogDebug("AppleEXR: internal error -- failed to locate ColorSync", v28, v29, v30, v31, v32, v33, v34);
  }
}

const char *GetEXRNameForChannelType(unsigned int a1, int a2)
{
  if (a1 > 0xF)
  {
    return &unk_296B90CDB;
  }

  if (a1 == 10 && a2 == 7)
  {
    return "G";
  }

  return *(&GetEXRNameForChannelType::kDefaultChannelNames + a1);
}

void AXRLogDebug(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v8 = MEMORY[0x2A1C7C4A8](a1, a2);
  v14 = *MEMORY[0x29EDCA608];
  v9 = vsnprintf(__str, 0x1000uLL, v8, va);
  if (qword_2A1396628 != -1)
  {
    AXRLogDebug_cold_1(v9);
  }

  v10 = _MergedGlobals;
  if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = __str;
    _os_log_impl(&dword_296AD3000, v10, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }
}

void AXRLogError(const char *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v8 = *MEMORY[0x29EDCA608];
  v3 = vsnprintf(__str, 0x1000uLL, v2, va);
  if (qword_2A1396628 != -1)
  {
    AXRLogDebug_cold_1(v3);
  }

  v4 = _MergedGlobals;
  if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v6 = __str;
    _os_log_impl(&dword_296AD3000, v4, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }
}

char *InitializeDefaultFlags(void *a1)
{
  result = getenv("AXR_PRINT_DEBUG_INFO");
  if (result)
  {
    v3 = result;
    __endptr = result;
    result = strtoull(result, &__endptr, 0);
    if (__endptr != v3 && result != 0)
    {
      *a1 |= 2uLL;
    }
  }

  return result;
}

os_log_t GetOSLog(os_log_t *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  bzero(category, 0x800uLL);
  v3 = 2047;
  if (sysctlbyname("kern.procname", category, &v3, 0, 0))
  {
    category[0] = 0;
  }

  result = os_log_create("com.apple.AppleEXR", category);
  *a1 = result;
  return result;
}

void OUTLINED_FUNCTION_0_0(uint64_t a1, dispatch_once_t *a2)
{

  dispatch_once_f(a2 + 1, a2, GetOSLog);
}

axr_encoder_t axr_encoder_create(axr_flags_t flags)
{
  objc_opt_class();
  result = _os_object_alloc();
  if (result)
  {
    result[2].isa = flags;
    result[3].isa = 0;
  }

  return result;
}

axr_part_t axr_encoder_append_part(axr_encoder_t encoder, const char *partName, const char *viewName, axr_compression_t compression, axr_box2i_t dataWindow, axr_box2i_t displayWindow, axr_line_order_t lineOrder, float pixelAspectRatio, float screenWindowCenterX, float screenWindowCenterY, float screenWindowWidth, float xDensity, uint32_t tileWidth, uint32_t tileHeight, axr_level_mode_t levelMode)
{
  if (!encoder)
  {
    v24 = kDefaultAXRLogFlags;
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_12;
    }

    while (1)
    {
      if (((kDefaultAXRLogFlags | v24) & 2) != 0)
      {
        AXRLogError("axr_encoder_append_part:  encoder may not be NULL", partName);
      }

      __break(1u);
LABEL_12:
      [OS_axr_data debugDescription];
    }
  }

  isa = encoder[2].isa;
  v18 = *&compression;
  v19 = *&dataWindow.xMin;
  *&v27.xMin = *&dataWindow.yMin;
  *&v27.yMin = *&displayWindow.xMin;
  *&v28.xMin = *&displayWindow.yMin;
  *&v28.yMin = lineOrder;
  result = EncoderPart::CreateEncoderPart(partName, viewName, v18, v19, v27, v28, pixelAspectRatio, screenWindowCenterX, screenWindowCenterY, screenWindowWidth, xDensity, tileWidth, tileHeight, levelMode, v25, isa);
  if (result)
  {
    v21 = &result[2];
    v22 = encoder[3].isa;
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
      *v23 = v21;
    }

    else
    {
      encoder[3].isa = v21;
    }
  }

  return result;
}

axr_error_t axr_encoder_compress(axr_encoder_t encoder, axr_encoder_storage_t storage, axr_encoder_write_proc_t writeProc, axr_encoder_seek_proc_t seekProc, axr_encoder_storage_destroy_proc_t destroyProc, axr_flags_t flags)
{
  v8 = flags;
  if (encoder)
  {
    if (storage)
    {
      if (writeProc)
      {
        isa = encoder[3].isa;
        if (isa)
        {
          v10 = 0;
          v11 = 0;
          v12 = 0;
          do
          {
            v11 |= *(isa + 25) > 0x1FuLL;
            v12 = (v12 | (*(isa + 60) >> 1)) & 1;
            ++v10;
            isa = *isa;
          }

          while (isa);
          operator new();
        }

        if (GetFlagsOnceToken != -1)
        {
          [OS_axr_data debugDescription];
        }

        if (((kDefaultAXRLogFlags | v8) & 2) != 0)
        {
          AXRLogError("axr_encoder_compress: no parts. Did you forget to call axr_encoder_append_part?", storage);
        }

        return -11;
      }

      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | v8) & 2) == 0)
      {
        return -1;
      }

      v14 = "axr_encoder_compress: writeProc may not be NULL";
    }

    else
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | v8) & 2) == 0)
      {
        return -1;
      }

      v14 = "axr_encoder_compress: storage may not be NULL";
    }

    AXRLogError(v14, storage);
    return -1;
  }

  if (GetFlagsOnceToken != -1)
  {
    [OS_axr_data debugDescription];
  }

  if (((kDefaultAXRLogFlags | v8) & 2) != 0)
  {
    AXRLogDebug("axr_encoder_compress:warning: called with NULL encoder.  Ignored.", storage, writeProc, seekProc, destroyProc, flags, v6, v7);
  }

  return 0;
}

void axr_encoder::~axr_encoder(axr_encoder *this)
{
  for (i = *(this + 3); i; i = v2)
  {
    v2 = *i;
  }
}

void EncoderStream::~EncoderStream(EncoderStream *this)
{
  EncoderStream::~EncoderStream(this);

  JUMPOUT(0x29C25E8F0);
}

{
  *this = &unk_2A1DE9698;
  v2 = *(this + 5);
  if (v2)
  {
    v2(*(this + 2));
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    do
    {
      v4 = *(v3 + 16);
      if (atomic_fetch_add((v3 + 8), 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        (**v3)(v3);
      }

      v3 = v4;
    }

    while (v4);
  }
}

float Part::GetImageInfo@<S0>(uint64_t *__return_ptr a1@<X8>, Part *this@<X0>, char *a3@<X1>)
{
  v3 = vuzp1q_s32(*(this + 56), vrev64q_s32(*(this + 56)));
  *a1 = vuzp1q_s32(*(this + 40), vrev64q_s32(*(this + 40)));
  *(a1 + 1) = v3;
  a1[4] = *(this + 156);
  v3.i32[0] = *(this + 23);
  *(a1 + 12) = *(this + 22);
  *(a1 + 52) = *(this + 10);
  v4 = *(this + 26);
  v5 = *(this + 27);
  *(a1 + 15) = v3.i32[0];
  *(a1 + 16) = v4;
  v3.i32[0] = *(this + 29);
  v6 = *(this + 30);
  v7 = *(this + 31);
  *(a1 + 17) = *(this + 28);
  *(a1 + 18) = v6;
  v8 = *(this + 33);
  *(a1 + 19) = *(this + 32);
  *(a1 + 20) = v5;
  v9 = *(this + 164);
  v10 = *(this + 18);
  *(a1 + 10) = *(this + 9);
  *(a1 + 11) = v10;
  *(a1 + 21) = v3.i32[0];
  *(a1 + 22) = v7;
  *(a1 + 23) = v8;
  v11 = *(this + 66);
  v12 = *(this + 67);
  *(a1 + 24) = v11;
  *(a1 + 25) = v12;
  if (v12 * v11)
  {
    v13 = &a3[*(this + 34)];
  }

  else
  {
    v13 = 0;
  }

  a1[13] = v13;
  *(a1 + 7) = vextq_s8(*(this + 184), *(this + 184), 8uLL);
  *(a1 + 32) = v9;
  result = *(this + 24) * *(this + 25);
  *(a1 + 33) = result;
  return result;
}

char *Part::GetChannelInfo@<X0>(Part *this@<X0>, const char *a2@<X1>, axr_flags_t a3@<X3>, unint64_t a4@<X2>, uint64_t a5@<X8>)
{
  Channel = Part::GetChannel(this, a4, a3);

  return ChannelDescription::GetChannelInfo(Channel, a2, a5);
}

uint64_t Part::GetChannel(Part *this, unint64_t a2, axr_flags_t a3)
{
  if (*(this + 8) <= a2 || (v3 = *(this + 3)) == 0)
  {
    Part::GetChannel(a3, a2);
  }

  return *(v3 + 8 * a2);
}

uint64_t *Part::GetProperty(Part *this, unint64_t a2, axr_flags_t a3)
{
  result = *(this + 30);
  if (result)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = 1;
    do
    {
      result = result[5];
      if (result)
      {
        v6 = v5 >= a2;
      }

      else
      {
        v6 = 1;
      }

      ++v5;
    }

    while (!v6);
  }

  if (!result)
  {
    Part::GetProperty(a3, a2);
  }

  return result;
}

uint64_t *Part::GetLayerInfo@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, unint64_t a3@<X1>)
{
  if (*(this + 38) <= a3)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v3 = this[18] + 24 * a3;
    *a1 = *v3;
    a1[2] = *(v3 + 16);
  }

  return this;
}

uint64_t AppleEXRDestinationNotBigEnough(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (a4)
    {
      *(result + (a3 - 1) * a2 + a5 * a4 - 1) = 0;
    }
  }

  return result;
}

axr_error_t Part::ReadPixels(Part *this, axr_decoder *a2, _BYTE *a3, unint64_t a4, axr_flags_t a5)
{
  v5 = *(a2 + 14);
  if (!v5)
  {
    return 0;
  }

  v7 = *(a2 + 15);
  if (!v7 || !*(a2 + 3))
  {
    return 0;
  }

  v11 = *(this + 12);
  v10 = *(this + 13);
  v13 = *(this + 10);
  v12 = *(this + 11);
  v14 = __OFSUB__(v11, v13);
  v15 = v11 - v13;
  if (v15 < 0 != v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15 + 1;
  }

  if (v10 >= v12)
  {
    v17 = v10 - v12 + 1;
  }

  else
  {
    v17 = 0;
  }

  if (v5 > v16 || v7 > v17)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a5) & 2) != 0)
    {
      v31 = *(this + 12);
      v32 = *(this + 13);
      v33 = *(this + 10);
      v34 = *(this + 11);
      v14 = __OFSUB__(v31, v33);
      v35 = v31 - v33;
      if (v35 < 0 != v14)
      {
        v36 = 0;
      }

      else
      {
        v36 = (v35 + 1);
      }

      v14 = __OFSUB__(v32, v34);
      v37 = v32 - v34;
      if (v37 < 0 != v14)
      {
        v38 = 0;
      }

      else
      {
        v38 = (v37 + 1);
      }

      AXRLogError("region extent {%d, %d} lies outside the data window (size = {%d, %d})\n", a2, *(a2 + 14), *(a2 + 15), v36, v38);
    }

    return -1;
  }

  AppleEXRDestinationNotWritable(a3);
  v22 = *(a2 + 3);
  if (v22)
  {
    while (*(v22 + 24))
    {
      v22 = *(v22 + 8);
      if (!v22)
      {
        goto LABEL_17;
      }
    }

    if (*(v22 + 16) == 1)
    {
      v23 = 2;
    }

    else
    {
      v23 = 4;
    }
  }

  else
  {
LABEL_17:
    v23 = 0;
  }

  v24 = v23 * *(a2 + 8);
  v25 = *(a2 + 14);
  v26 = v24 * v25;
  if (v24 * v25 > a4)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a5) & 2) != 0)
    {
      AXRLogError("%s error: expected rowBytes for channel size (%lu) x channel count (%u) x width (%u) = %lu bytes\n\tThe provided destination row bytes is only %lu and the data will not fit.\n\tSkipping operation.", v21, "ReadPixels", v23, *(a2 + 8), *(a2 + 14), v26, a4);
    }

    return -1;
  }

  AppleEXRDestinationNotBigEnough(a3, a4, *(a2 + 15), v25, v24);
  v40 = axr_error_success;
  TileDecoder_storage::Init(&vars0, *(this + 9), a2, this, a5, &v40);
  IsInterleavedValid = v40;
  if (v40 == axr_error_success)
  {
    v29 = v28;
    *v39 = 0;
    IsInterleavedValid = TileDecoder::IsInterleavedValid(v28, &v39[1], v39);
    v40 = IsInterleavedValid;
    if (IsInterleavedValid == axr_error_success)
    {
      IsInterleavedValid = TileDecoder::ReadPixels(v29, v39[1], v39[0], a3, a4);
    }
  }

  (*vars0)(&vars0);
  return IsInterleavedValid;
}

void Part::GetReadPixelsInfo(axr_decoder *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v2 = *(a1 + 7);
    v3 = *(a1 + 3);
    if (v3)
    {
      while (*(v3 + 24))
      {
        v3 = *(v3 + 8);
        if (!v3)
        {
          goto LABEL_5;
        }
      }

      v5 = *(v3 + 16);
      if (v5 == 1)
      {
        v4 = 16;
      }

      else
      {
        v4 = 32;
      }
    }

    else
    {
LABEL_5:
      v4 = 0;
      v5 = 1;
    }

    v6 = *(a1 + 8) * v4;
    *a2 = v2;
    *(a2 + 8) = (v6 * v2) >> 3;
    *(a2 + 16) = v4;
    *(a2 + 20) = v6;
    *(a2 + 24) = v5;
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t AXRDecoderExtractChannel(axr_decoder *a1, axr_channel_type_t a2)
{
  v4 = (a1 + 24);
  result = *(a1 + 3);
  if (result)
  {
    if (*(result + 20) == a2)
    {
      v5 = 0;
LABEL_6:
      if (v5)
      {
        v4 = (v5 + 8);
      }

      *v4 = *(result + 8);
      *(result + 8) = 0;
      --*(a1 + 8);
    }

    else
    {
      while (1)
      {
        v5 = result;
        result = *(result + 8);
        if (!result)
        {
          break;
        }

        if (*(result + 20) == a2)
        {
          goto LABEL_6;
        }
      }
    }
  }

  return result;
}

void Part::GetReadRGBAPixelsInfo(axr_decoder *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v2 = *(a1 + 7);
    v3 = *(a1 + 3);
    if (v3)
    {
      while (*(v3 + 24))
      {
        v3 = *(v3 + 8);
        if (!v3)
        {
          goto LABEL_5;
        }
      }

      v5 = *(v3 + 16);
      if (v5 == 1)
      {
        v4 = 16;
      }

      else
      {
        v4 = 32;
      }
    }

    else
    {
LABEL_5:
      v4 = 0;
      v5 = 1;
    }

    *a2 = v2;
    *(a2 + 8) = ((4 * v4) * v2) >> 3;
    *(a2 + 16) = v4;
    *(a2 + 20) = 4 * v4;
    *(a2 + 24) = v5;
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t Part::ReadPlanes(Part *this, axr_decoder *a2, axr_pixel_data_t *a3, axr_flags_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, axr_flags_t a11, axr_error_t a12, void (**a13)(void), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  a40 = *MEMORY[0x29EDCA608];
  v40 = *(a2 + 14);
  if (!v40)
  {
    return 0;
  }

  if (!*(a2 + 15))
  {
    return 0;
  }

  v42 = *(a2 + 3);
  if (!v42)
  {
    return 0;
  }

  v43 = a3;
  if (*(a2 + 8))
  {
    v45 = 0;
    p_rowBytes = &a3->rowBytes;
    while (*(p_rowBytes - 1))
    {
      v47 = v42[4];
      if (v47 == 1)
      {
        v48 = 2;
      }

      else
      {
        v48 = 4;
      }

      v49 = *(a2 + 14);
      v50 = *(a2 + 15);
      if (!*(v42 + 24))
      {
        Channel = Part::GetChannel(this, *v42, a4);
        v53 = *(Channel + 80);
        if (v53 >= 2)
        {
          v54 = this;
          v55 = *(Channel + 104);
          if (*(a2 + 13) % v55)
          {
            if (GetFlagsOnceToken != -1)
            {
              [OS_axr_data debugDescription];
            }

            if (((kDefaultAXRLogFlags | a4) & 2) != 0)
            {
              AXRLogError("axr_decoder_read_planes error: the y origin of the region of interest (%u) is\n\tnot aligned with the sampling rate for the channel %lu, (%u)\tSkipping operation.", v52, *(a2 + 13), v45, v55);
            }

            return -1;
          }

          if (*(a2 + 12) % v53)
          {
            if (GetFlagsOnceToken != -1)
            {
              [OS_axr_data debugDescription];
            }

            if (((kDefaultAXRLogFlags | a4) & 2) != 0)
            {
              AXRLogError("axr_decoder_read_planes error: the x origin of the region of interest (%u) is\n\tnot aligned with the sampling rate for the channel %lu, (%u)\tSkipping operation.", v52, *(a2 + 12), v45, v53);
            }

            return -1;
          }

          v50 = (v50 + v55 - 1) / v55;
          v49 = (v49 + v53 - 1) / v53;
          this = v54;
        }
      }

      v56 = 1;
      if (v47 != 1)
      {
        v56 = 2;
      }

      v57 = v49 << v56;
      v58 = *p_rowBytes;
      if (v49 << v56 > *p_rowBytes)
      {
        if (GetFlagsOnceToken != -1)
        {
          [OS_axr_data debugDescription];
        }

        if (((kDefaultAXRLogFlags | a4) & 2) != 0)
        {
          AXRLogError("axr_decoder_read_planes error: expected rowBytes for channel size (%lu) x width (%u) = %lu bytes\n\tThe provided destination row bytes for plane %lu is only %lu and the data will not fit.\n\tSkipping operation.", v58, v48, *(a2 + 14), v57, v45, *p_rowBytes);
        }

        return -1;
      }

      AppleEXRDestinationNotBigEnough(*(p_rowBytes - 1), v58, v50, v49, v48);
      v42 = *(v42 + 1);
      ++v45;
      p_rowBytes += 2;
      if (v45 >= *(a2 + 8))
      {
        v40 = *(a2 + 14);
        v43 = a3;
        goto LABEL_20;
      }
    }

    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a4) & 2) != 0)
    {
      AXRLogError("axr_decoder_read_planes error: destinationPlaneList[%lu].data = NULL", a2, v45);
    }

    return -7;
  }

  else
  {
LABEL_20:
    v59 = v40 + *(a2 + 12);
    v60 = *(this + 12);
    v61 = *(this + 10);
    v62 = __OFSUB__(v60, v61);
    v63 = v60 - v61;
    if (v63 < 0 != v62)
    {
      v64 = 0;
    }

    else
    {
      v64 = v63 + 1;
    }

    if (v59 > v64 || ((v65 = *(this + 13), v66 = *(this + 11), v62 = __OFSUB__(v65, v66), v67 = v65 - v66, v67 < 0 == v62) ? (v68 = v67 + 1) : (v68 = 0), *(a2 + 15) + *(a2 + 13) > v68))
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | a4) & 2) != 0)
      {
        v72 = *(this + 12);
        v73 = *(this + 13);
        v74 = *(this + 10);
        v75 = *(this + 11);
        v62 = __OFSUB__(v72, v74);
        v76 = v72 - v74;
        if (v76 < 0 != v62)
        {
          v77 = 0;
        }

        else
        {
          v77 = (v76 + 1);
        }

        v62 = __OFSUB__(v73, v75);
        v78 = v73 - v75;
        if (v78 < 0 != v62)
        {
          v79 = 0;
        }

        else
        {
          v79 = (v78 + 1);
        }

        AXRLogError("region extent {%d, %d} lies outside the data window (size = {%d, %d})\n", a2, *(a2 + 14), *(a2 + 15), v77, v79);
      }

      return -1;
    }

    else
    {
      a12 = axr_error_success;
      TileDecoder_storage::Init(&a13, *(this + 9), a2, this, a4, &a12);
      Planes = a12;
      if (a12 == axr_error_success)
      {
        Planes = TileDecoder::ReadPlanes(v69, v43);
      }

      (*a13)(&a13);
    }
  }

  return Planes;
}

void Part::GetReadPlanesInfo(axr_decoder *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v3 = *(a1 + 7);
  v4 = *(a1 + 3);
  if (v4)
  {
    v5 = a2 + 1;
    while (--v5)
    {
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    if (!*(v4 + 24))
    {
      v6 = *(v4 + 16);
      if (v6 == 1)
      {
        LODWORD(v4) = 16;
      }

      else
      {
        LODWORD(v4) = 32;
      }

      goto LABEL_11;
    }

    LODWORD(v4) = 0;
  }

LABEL_10:
  v6 = 1;
LABEL_11:
  *a3 = v3;
  *(a3 + 8) = (v4 * v3) >> 3;
  *(a3 + 16) = v4;
  *(a3 + 20) = v4;
  *(a3 + 24) = v6;
}

uint64_t Part::Init(Part *this, char *a2, unint64_t a3, unint64_t *a4, axr_flags_t a5)
{
  *(this + 16) = 0x3EA872B03EA01A37;
  *(this + 53) = 1;
  *this = a3;
  *(this + 34) = 1120403456;
  *(this + 6) = xmmword_296B8FCC0;
  *(this + 7) = xmmword_296B8FCB0;
  v10 = *(a2 + 1);
  if ((v10 & 0x200) != 0 && (v10 & 0x1800) != 0)
  {
    return -6;
  }

  v126 = 0;
  v124 = 0u;
  v125 = 0u;
  v123 = 0;
  v12 = Attribute::Init(&v124, a2, a3, *a4);
  *a4 = v12;
  if (v124 == *(&v125 + 1))
  {
    *a4 = v12 + 1;
    return -6;
  }

  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  do
  {
    result = Part::AbsorbAttribute(this, a2, &v124, &v123, a5);
    if (result)
    {
      return result;
    }

    v13 = *(&v125 + 1);
    v14 = v124;
    if (v124 == *(&v125 + 1))
    {
      v15 = 0;
    }

    else
    {
      v15 = &a2[v124];
    }

    if (*(&v124 + 1) >= v124)
    {
      v16 = *(&v124 + 1) - v124;
    }

    else
    {
      v16 = 0;
    }

    if (!strncmp(v15, "compression", v16) && (v14 != v13 ? (v17 = &a2[*(&v14 + 1)]) : (v17 = 0), v13 >= *(&v14 + 1) ? (v18 = v13 - *(&v14 + 1)) : (v18 = 0), !strncmp(v17, "compression", v18)))
    {
      ++v121;
    }

    else if (!strncmp(v15, "channels", v16) && (v14 != v13 ? (v19 = &a2[*(&v14 + 1)]) : (v19 = 0), v13 >= *(&v14 + 1) ? (v20 = v13 - *(&v14 + 1)) : (v20 = 0), !strncmp(v19, "chlist", v20)))
    {
      ++v119;
    }

    else if (!strncmp(v15, "dataWindow", v16) && (v14 != v13 ? (v21 = &a2[*(&v14 + 1)]) : (v21 = 0), v13 >= *(&v14 + 1) ? (v22 = v13 - *(&v14 + 1)) : (v22 = 0), !strncmp(v21, "box2i", v22)))
    {
      ++v118;
    }

    else if (!strncmp(v15, "displayWindow", v16))
    {
      if (v14 == v13)
      {
        v23 = 0;
      }

      else
      {
        v23 = &a2[*(&v14 + 1)];
      }

      if (v13 >= *(&v14 + 1))
      {
        v24 = v13 - *(&v14 + 1);
      }

      else
      {
        v24 = 0;
      }

      v25 = strncmp(v23, "box2i", v24);
      v26 = v120;
      if (!v25)
      {
        v26 = v120 + 1;
      }

      v120 = v26;
    }

    v27 = Attribute::Init(&v124, a2, a3, *a4);
    *a4 = v27;
  }

  while (v124 != *(&v125 + 1));
  *a4 = v27 + 1;
  result = -6;
  if (!v121 || !v119 || !v118 || !v120)
  {
    return result;
  }

  v35 = *(this + 30);
  if (v35)
  {
    v36 = 0;
    do
    {
      v37 = v35;
      v35 = *(v35 + 40);
      *(v37 + 40) = v36;
      v36 = v37;
    }

    while (v35);
  }

  else
  {
    v37 = 0;
  }

  v38 = *(this + 120);
  v39 = *(this + 104);
  v40 = vextq_s8(v39, v39, 8uLL).u64[0];
  v41 = vextq_s8(v38, v38, 8uLL).u64[0];
  v42 = v122;
  vst4_f32(v42->f32, *(&v38 - 1));
  *(this + 30) = v37;
  for (i = *(this + 2); i; i = *(i + 8))
  {
    result = ChannelDescription::IdentifyChannels(i, v122);
    if (result)
    {
      return result;
    }
  }

  *(this + 38) = 0;
  v44 = *(this + 18);
  if (v44)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    do
    {
      v49 = v44;
      v48 += v44[2] + 1;
      v47 += v44[4];
      v44 = *v44;
      *v49 = v46;
      --v45;
      v46 = v49;
    }

    while (v44);
    *(this + 38) = -v45;
    if (v45)
    {
      v50 = malloc_type_malloc(v48 + 4 * v47 + 24 * -v45, 0x1050040670DD226uLL);
      if (!v50)
      {
        do
        {
          v70 = *v49;
          free(v49);
          v49 = v70;
        }

        while (v70);
        return -5;
      }

      v51 = v50;
      v52 = 0;
      v53 = &v50[24 * *(this + 38)];
      v54 = &v53[4 * v47];
      do
      {
        v55 = *v49;
        memcpy(v54, v49[1], v49[2]);
        v54[v49[2]] = 0;
        v56 = &v51[24 * v52];
        *v56 = v54;
        *(v56 + 1) = v53;
        *(v56 + 2) = 0;
        v57 = v49[3];
        v58 = v49[2];
        v53 += 4 * v49[4];
        if (v57)
        {
          v59 = 0;
          v60 = v53 - 4;
          do
          {
            *v60 = *(v57 + 24);
            v60 -= 4;
            ++v59;
            v57 = *(v57 + 16);
          }

          while (v57);
          *(v56 + 2) = v59;
        }

        v54 += v58 + 1;
        free(v49);
        ++v52;
        v49 = v55;
      }

      while (v55);
      *(this + 18) = v51;
    }
  }

  *(this + 300) = (*(a2 + 1) & 0x1000) != 0;
  *(this + 301) = (*(a2 + 1) & 0x400) != 0;
  v61 = *(a2 + 1);
  v62 = 255;
  if ((v61 & 0x1800) != 0)
  {
    v62 = 2047;
  }

  v63 = *(this + 52);
  if ((v63 & 2) != 0)
  {
    v62 = 6143;
  }

  if (*(a2 + 1) & 0x200 | *(this + 52) & 1)
  {
    v64 = v62 | 0x2000;
  }

  else
  {
    v64 = v62;
  }

  v65 = *(this + 29);
  v66 = v64 & ~v65;
  if (v66)
  {
    v67 = &kExpectedAttributes;
    v68 = 1;
    v69 = 1;
    do
    {
      if ((v69 & v66) != 0)
      {
        if (GetFlagsOnceToken != -1)
        {
          AXRLogicalImageList::AXRLogicalImageList();
        }

        if (((kDefaultAXRLogFlags | a5) & 2) != 0)
        {
          AXRLogError("EXR file missing required header field: %s", v28, *v67);
        }
      }

      v69 = 1 << v68;
      v67 += 2;
      ++v68;
    }

    while (v69 <= v64);
    return -4;
  }

  if ((v65 & 0x200) == 0)
  {
    v63 = (v61 >> 9) & 1;
    *(this + 52) = v63;
  }

  v71 = *(this + 12);
  v72 = *(this + 10);
  if (v71 + 1 == v72)
  {
    return -6;
  }

  v73 = *(this + 13);
  v74 = *(this + 11);
  if (v73 + 1 == v74)
  {
    return -6;
  }

  if (v71 >= v72)
  {
    v75 = (v71 + 1 - v72);
  }

  else
  {
    v75 = 0;
  }

  if (v73 >= v74)
  {
    v76 = (v73 + 1 - v74);
  }

  else
  {
    v76 = 0;
  }

  if (*(this + 39) >= v75)
  {
    v77 = v75;
  }

  else
  {
    v77 = *(this + 39);
  }

  if (*(this + 40) >= v76)
  {
    v78 = v76;
  }

  else
  {
    v78 = *(this + 40);
  }

  *(this + 39) = v77;
  *(this + 40) = v78;
  if ((v65 & 0x2000) != 0)
  {
    if (v77 <= 1)
    {
      v80 = 1;
    }

    else
    {
      v80 = v77;
    }

    v81 = v75 + v80 - 1;
    if (v81 < v75)
    {
      v82 = (v81 - 0xFFFFFFFF / v80 * v80) / v80 + 0xFFFFFFFF / v80;
    }

    else
    {
      v82 = v81 / v80;
    }

    *(this + 42) = v82;
    if (v78 <= 1)
    {
      v83 = 1;
    }

    else
    {
      v83 = v78;
    }
  }

  else
  {
    v79 = *(this + 9);
    if (v79 > 7 || (v113 = GetDefaultCompressionMethodTileSize(axr_compression_t)::kCompressionMethodTileSizes[v79], (v114 = HIDWORD(v113)) == 0) || !v113)
    {
      if (GetFlagsOnceToken != -1)
      {
        AXRLogicalImageList::AXRLogicalImageList();
      }

      if (((kDefaultAXRLogFlags | a5) & 2) != 0)
      {
        AXRLogDebug("Compression method %u out of bounds", v28, v29, v30, v31, v32, v33, v34, *(this + 9));
      }

      return -3;
    }

    if (v113 == -1 || (v63 | 2) == 2)
    {
      LODWORD(v113) = v75;
    }

    *(this + 39) = v113;
    *(this + 40) = v114;
    *(this + 164) = 0;
    if (v113 <= 1)
    {
      v115 = 1;
    }

    else
    {
      v115 = v113;
    }

    v116 = v75 + v115 - 1;
    if (v116 < v75)
    {
      v117 = (v116 - 0xFFFFFFFF / v115 * v115) / v115 + 0xFFFFFFFF / v115;
    }

    else
    {
      v117 = v116 / v115;
    }

    *(this + 42) = v117;
    if (v114 <= 1)
    {
      v83 = 1;
    }

    else
    {
      v83 = v114;
    }
  }

  v84 = v76 + v83 - 1;
  if (v84 < v76)
  {
    v85 = (v84 - 0xFFFFFFFF / v83 * v83) / v83 + 0xFFFFFFFF / v83;
  }

  else
  {
    v85 = v84 / v83;
  }

  *(this + 43) = v85;
  *(this + 28) = 0;
  v86 = malloc_type_malloc(8 * *(this + 8), 0x2004093837F09uLL);
  *(this + 3) = v86;
  if (!v86)
  {
    return -5;
  }

  v87 = *(this + 164);
  RipLevelCount = GetRipLevelCount(v75 | (v76 << 32), v87);
  *(this + 36) = RipLevelCount;
  v89 = malloc_type_calloc((RipLevelCount * HIDWORD(RipLevelCount)), 8uLL, 0x2004093837F09uLL);
  *(this + 35) = v89;
  if (!v89)
  {
    return -5;
  }

  v92 = *(this + 73);
  if (v92)
  {
    v93 = 0;
    v94 = 0;
    v95 = v87 & 0xF;
    v96 = v87 >> 4;
    v97 = *(this + 72);
    v98 = v75 - (v87 >> 4);
    v99 = v76 - (v87 >> 4);
    while (!v97)
    {
LABEL_156:
      if (++v93 >= v92)
      {
        goto LABEL_172;
      }
    }

    v100 = 0;
    while (1)
    {
      if (v95 == 2)
      {
        v101 = v93;
      }

      else
      {
        v101 = v100;
      }

      LODWORD(v102) = (v98 + (v96 << v100)) >> v100;
      if (v102 <= 1)
      {
        v102 = 1;
      }

      else
      {
        v102 = v102;
      }

      LODWORD(v103) = (v99 + (v96 << v101)) >> v101;
      if (v103 <= 1)
      {
        v103 = 1;
      }

      else
      {
        v103 = v103;
      }

      v104 = *(this + 39);
      if (v104 <= 1)
      {
        v104 = 1;
      }

      v105 = v102 + v104 - 1;
      if (v105 < v102)
      {
        v106 = (v105 - 0xFFFFFFFF / v104 * v104) / v104 + 0xFFFFFFFF / v104;
      }

      else
      {
        v106 = v105 / v104;
      }

      v107 = *(this + 40);
      if (v107 <= 1)
      {
        v107 = 1;
      }

      v108 = v103 + v107 - 1;
      v109 = v108 < v103 ? (v108 - 0xFFFFFFFF / v107 * v107) / v107 + 0xFFFFFFFF / v107 : v108 / v107;
      v127.width = v106;
      v127.height = v109;
      MipTileInfo = MipTileInfo::CreateMipTileInfo((v102 | (v103 << 32)), v127, v91);
      v97 = *(this + 72);
      v111 = v100 + v93 * v97;
      *(*(this + 35) + 8 * v111) = MipTileInfo;
      v112 = *(*(this + 35) + 8 * v111);
      if (!v112)
      {
        return -5;
      }

      v94 += *v112;
      if (++v100 >= v97)
      {
        v92 = *(this + 73);
        goto LABEL_156;
      }
    }
  }

  v94 = 0;
LABEL_172:
  if ((*(this + 233) & 4) != 0)
  {
    if (v94 > *(this + 44))
    {
      if (GetFlagsOnceToken != -1)
      {
        AXRLogicalImageList::AXRLogicalImageList();
      }

      if (((kDefaultAXRLogFlags | a5) & 2) != 0)
      {
        AXRLogError("axr_decoder_create: EXR file corruption: declared chunks < expected chunks", v90);
      }

      return -6;
    }
  }

  else
  {
    *(this + 44) = v94;
  }

  if ((a2[5] & 8) != 0)
  {
    return -3;
  }

  else
  {
    return 0;
  }
}

uint64_t Part::AbsorbAttribute(Part *this, char *a2, Attribute *a3, unint64_t *a4, axr_flags_t a5)
{
  v5 = *a4;
  v6 = *a3;
  if (*a4 >= 0x12)
  {
    v8 = *(a3 + 3);
    v11 = *(a3 + 1);
    v9 = &a2[v6];
    if (v11 >= v6)
    {
      v13 = v11 - v6;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v7 = (&kExpectedAttributes)[2 * v5];
    v8 = *(a3 + 3);
    v9 = &a2[v6];
    if (v6 == v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = &a2[v6];
    }

    v11 = *(a3 + 1);
    v12 = strlen((&kExpectedAttributes)[2 * v5]);
    if (v11 >= v6)
    {
      v13 = v11 - v6;
    }

    else
    {
      v13 = 0;
    }

    if (v11 > v6 && v12 <= v13 && *v7 == *v10)
    {
      v15 = v12;
      if (strlen(v10) == v12 && (v15 == 1 || !strncmp(v10 + 1, v7 + 1, v15 - 1)))
      {
        result = ((&kExpectedAttributes)[2 * v5 + 1])(a2, this, a3, a5);
        v17 = *a4;
        *(this + 29) |= (result == 0) << *a4;
        *a4 = v17 + 1;
        if (!result)
        {
          goto LABEL_99;
        }

        return result;
      }
    }
  }

  v18 = 0;
  if (v6 == v8)
  {
    v19 = 0;
  }

  else
  {
    v19 = v9;
  }

  v20 = &off_2A1DE98D8;
  do
  {
    if (v5 != v18)
    {
      v21 = *(v20 - 1);
      v22 = strlen(v21);
      if (v11 > v6)
      {
        v23 = v22;
        if (v22 <= v13 && *v21 == *v19 && strlen(v19) == v22 && (v23 == 1 || !strncmp(v19 + 1, v21 + 1, v23 - 1)))
        {
          result = (*v20)(a2, this, a3, a5);
          *(this + 29) |= (result == 0) << v18;
          *a4 = v18 + 1;
          if (!result)
          {
            goto LABEL_99;
          }

          return result;
        }
      }
    }

    ++v18;
    v20 += 2;
  }

  while (v18 != 18);
  if (v6 == v8)
  {
    v24 = 0;
  }

  else
  {
    v24 = &a2[v11];
  }

  if (v8 >= v11)
  {
    v25 = v8 - v11;
  }

  else
  {
    v25 = 0;
  }

  if (v8 <= v11 || v25 < 0xE || *v24 != 99 || strlen(v24) != 14 || strncmp(v24 + 1, "hromaticities", 0xDuLL))
  {
    v33 = this;
    if (v8 > v11 && v25 >= 7 && *v24 == 112 && strlen(v24) == 7 && !strncmp(v24 + 1, "review", 6uLL))
    {
      v34 = *(a3 + 2);
      v35 = v34 - 8;
      if (v34 >= 8)
      {
        v66 = &a2[v8];
        if (v6 == v8)
        {
          v66 = 0;
        }

        v67 = *v66;
        *(this + 66) = v67;
        v68 = *(v66 + 1);
        *(this + 67) = v68;
        *(this + 34) = 0;
        if (4 * v67 * v68 > v35)
        {
          v69 = v35 / (4 * v67);
          *(this + 67) = v69;
          LODWORD(v68) = v69;
          if (!v69)
          {
            LODWORD(v68) = 1;
            *(this + 67) = 1;
            v70 = (v34 + 0x3FFFFFFF8) >> 2;
            *(this + 66) = v70;
            LODWORD(v67) = v70;
            if (!v70)
            {
              LODWORD(v68) = 0;
              *(this + 67) = 0;
            }
          }
        }

        *(a3 + 4) = 1;
        result = 0;
        if (v67 * v68)
        {
          *(this + 34) = v8 + 8;
        }

        v36 = 0x20000;
      }

      else
      {
        v36 = 0;
        result = -4;
      }

      goto LABEL_98;
    }

    goto LABEL_99;
  }

  if (*(a3 + 2) < 0x20uLL)
  {
    v36 = 0;
    result = -4;
    v33 = this;
    goto LABEL_98;
  }

  if (v6 == v8)
  {
    v37 = 0;
  }

  else
  {
    v37 = &a2[v8];
  }

  v38 = *v37;
  v39 = *v37;
  v40 = *(v37 + 2);
  v41 = v40;
  v42 = *(v37 + 4);
  v43 = v42;
  v44 = *(v37 + 6);
  v45 = v44;
  v46 = fabsf(*v37);
  v47 = fabsf(v40);
  v49 = fabsf(v42) < 8388600.0 && v47 < 8388600.0 && v46 < 8388600.0;
  v50 = fabsf(v44);
  v51 = !v49 && v50 < 8388600.0;
  v33 = this;
  if (v51)
  {
    if (GetFlagsOnceToken != -1)
    {
      v81 = *v37;
      v73 = *(v37 + 2);
      v76 = *(v37 + 4);
      v71 = *(v37 + 6);
      [OS_axr_data debugDescription];
      v45 = v71;
      v41 = v73;
      v43 = v76;
      v39 = v81;
    }

    if (((kDefaultAXRLogFlags | a5) & 2) != 0)
    {
      AXRLogDebug("x Chromaticity too large. {%f, %f, %f, %f} Float can't represent less than integer precision above 2^23. chromaticity tag ignored.", v26, v27, v28, v29, v30, v31, v32, v39, v41, v43, v45);
    }
  }

  else
  {
    v52 = *(v37 + 1);
    v53 = v52;
    v54 = *(v37 + 3);
    v55 = v54;
    v56 = *(v37 + 5);
    v57 = v56;
    v58 = *(v37 + 7);
    v59 = v58;
    v60 = fabsf(v52);
    v61 = fabsf(v54);
    v63 = fabsf(v56) < 8388600.0 && v61 < 8388600.0 && v60 < 8388600.0;
    v64 = fabsf(v58);
    if (v63 || v64 >= 8388600.0)
    {
      result = 0;
      *(this + 26) = v38;
      *(this + 27) = v52;
      *(this + 28) = v40;
      *(this + 29) = v54;
      *(this + 30) = v42;
      *(this + 31) = v56;
      *(this + 32) = v44;
      *(this + 33) = v58;
      v36 = 0x10000;
      *(a3 + 4) = 1;
      goto LABEL_98;
    }

    if (GetFlagsOnceToken != -1)
    {
      v82 = v52;
      v74 = v54;
      v77 = v56;
      v72 = v58;
      [OS_axr_data debugDescription];
      v59 = v72;
      v55 = v74;
      v57 = v77;
      v53 = v82;
    }

    if (((kDefaultAXRLogFlags | a5) & 2) != 0)
    {
      AXRLogDebug("y Chromaticity too large. {%f, %f, %f, %f} Float can't represent less than integer precision above 2^23. chromaticity tag ignored.", v26, v27, v28, v29, v30, v31, v32, v53, v55, v57, v59);
    }
  }

  result = 0;
  v36 = 0x10000;
LABEL_98:
  *(v33 + 29) |= v36;
  if (!result)
  {
LABEL_99:
    operator new();
  }

  return result;
}

uint64_t GetRipLevelCount(unint64_t a1, axr_level_mode_t a2)
{
  v2 = a2 & 0xF;
  if ((a2 & 0xF) == 0)
  {
    return 0x100000001;
  }

  v4 = HIDWORD(a1);
  v5 = a2 & 0xF0;
  v6 = 63 - __clz(a1);
  if (!a1)
  {
    LODWORD(v6) = 0;
  }

  v7 = 63 - __clz(v4);
  if (!v4)
  {
    LODWORD(v7) = 0;
  }

  v8 = 64 - __clz(a1 - 1);
  if (a1 <= 1uLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = 64 - __clz(v4 - 1);
  v11 = 0;
  if (a1 >> 33)
  {
    v11 = v10;
  }

  v12 = v5 == 16;
  if (v5 == 16)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (!v12)
  {
    v11 = v7;
  }

  if (v13 + 1 <= (v11 + 1))
  {
    v14 = v11 + 1;
  }

  else
  {
    v14 = v13 + 1;
  }

  v15 = v2 == 1;
  if (v2 == 1)
  {
    v16 = v14;
  }

  else
  {
    v16 = (v13 + 1);
  }

  if (v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = (v11 + 1);
  }

  return v16 | (v17 << 32);
}

void *MipTileInfo::CreateMipTileInfo(MipTileInfo *this, axr_size_t a2, axr_size_t a3)
{
  v4 = a2.width * a2.height;
  if (v4 >> 61)
  {
    return 0;
  }

  v5 = 8 * v4;
  v6 = 8 * v4 + 40;
  if (8 * v4 >= 0xFFFFFFFFFFFFFFD8 || __CFADD__(v6, v5))
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, v6 + v5, 0x1010040B121F656uLL);
  if (result)
  {
    result[3] = this;
    result[4] = a2;
    *result = v4;
    result[1] = result + 5;
    result[2] = &result[v5 / 8 + 5];
  }

  return result;
}

uint64_t Part::InitOffsets(int32x2_t *this, unsigned int *a2, unint64_t a3, int32x2_t *a4, axr_flags_t a5)
{
  this[28] = *a4;
  if (a3 < 8)
  {
    return -6;
  }

  v5 = a2;
  if (*a2 != 20000630)
  {
    return -6;
  }

  v6 = a4;
  v7 = a3;
  v192 = a5;
  v9 = this[19].u32[1];
  v10 = this[20].u32[0];
  v11 = this[2];
  v12 = vbic_s8(vadd_s32(vsub_s32(this[6], this[5]), 0x100000001), vcgt_s32(this[5], this[6]));
  this[37].i32[0] = 0;
  v13 = v12.u32[1];
  if (this[4].i32[0])
  {
    v14 = v9;
    v15 = 0;
    v198 = v12;
    v16 = v12.u32[0];
    v17 = v12;
    do
    {
      result = ChannelDescription::CreateMipLevels(*&v11, v5, this, v17, this[20].u8[4]);
      if (result)
      {
        return result;
      }

      *(*&this[3] + 8 * v15) = v11;
      this[37].i32[0] += axr_type_get_size(*(*&v11 + 72));
      v11 = *(*&v11 + 8);
      ++v15;
    }

    while (v15 < this[4].u32[0]);
    v9 = v14;
    v12 = v198;
  }

  else
  {
    v16 = v12.u32[0];
  }

  v19 = this[4].u32[1];
  v20 = Part::InitOffsets(void const*,unsigned long,unsigned long &,axr_flags_t)::kRowSizeProcs[v19];
  v21 = 0;
  v206 = 0u;
  v202 = 0u;
  v203 = v9;
  v204 = v10;
  v205 = 0;
  *&v206 = 0;
  v207 = v20;
  v22 = this[20].u8[4];
  v23 = v22 & 0xF;
  if ((v22 & 0xF) != 0)
  {
    if ((v22 & 0xF0) == 0x10)
    {
      v142 = 64 - __clz(v16 - 1);
      if (v12.i32[0] <= 1u)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = v142;
      }

      v144 = 64 - __clz(v13 - 1);
      if (v13 <= 1)
      {
        LODWORD(v144) = 0;
      }
    }

    else
    {
      v21 = vceqz_s32(v12);
      v143 = 63 - __clz(v16);
      if (v21.i8[0])
      {
        LODWORD(v143) = 0;
      }

      v144 = 63 - __clz(v13);
      if (v21.i8[4])
      {
        LODWORD(v144) = 0;
      }
    }

    if (v143 + 1 <= (v144 + 1))
    {
      v145 = v144 + 1;
    }

    else
    {
      v145 = v143 + 1;
    }

    if (v23 == 1)
    {
      v146 = v145;
    }

    else
    {
      v146 = (v143 + 1);
    }

    if (v23 == 1)
    {
      v147 = 1;
    }

    else
    {
      v147 = (v144 + 1);
    }

    v24 = v146 | (v147 << 32);
  }

  else
  {
    v24 = 0x100000001;
  }

  v25 = v19 < 6;
  v26 = this[28];
  v27 = this[22].u32[0];
  if (*&v26 + 8 * v27 >= v7)
  {
    return -4;
  }

  v28 = v5 + *&v26;
  v29 = (v7 - *&v26) >> 3;
  if (v29 >= v27)
  {
    v30 = this[22].u32[0];
  }

  else
  {
    v30 = v29;
  }

  v31 = (v5[1] >> 10) & 4;
  v32 = this[26].i32[0];
  result = -6;
  if (v32 > 1)
  {
    if (v32 == 4)
    {
      return result;
    }

    if (v32 == 3)
    {
      v33 = 32;
      goto LABEL_58;
    }

    if (v32 != 2)
    {
      goto LABEL_24;
    }

    v34 = 20;
  }

  else
  {
    if (v32 == 0x80000000)
    {
      return result;
    }

    if (v32)
    {
      if (v32 == 1)
      {
        v33 = 20;
LABEL_58:
        v189 = v33;
        v183 = v23 == 2;
LABEL_59:
        v187 = v28;
        v168 = v19 < 6;
        v170 = v19;
        v172 = this[20].u8[4];
        v164 = v24;
        v196 = v20;
        v166 = v6;
        if (v30)
        {
          v54 = 0;
          v175 = 8 * v30;
          v194 = v10;
          v184 = v9;
          v199 = v12.i32[0];
          v181 = v30;
          v177 = (v5[1] >> 10) & 4;
          while (v54 + *&this[28] + 8 <= v7)
          {
            v55 = *&v187[v54] + v31;
            if (v55 >= v7)
            {
              return -6;
            }

            if (v55 + v189 >= v7)
            {
              break;
            }

            result = v5 + v55;
            v56 = this[26].u32[0];
            if (v56 > 4)
            {
              if (v56 == 0x80000000)
              {
LABEL_259:
                __break(1u);
                return result;
              }
            }

            else
            {
              if (((1 << v56) & 0xA) == 0)
              {
                goto LABEL_259;
              }

              v21 = *(result + 8);
            }

            v57 = v21.u32[0];
            if (v183)
            {
              v58 = this[36].u32[0];
              if (v21.i32[0] >= v58 || v21.i32[1] >= this[36].i32[1])
              {
LABEL_211:
                if ((v192 & 2) != 0)
                {
                  if (GetFlagsOnceToken != -1)
                  {
                    v201 = v21.i32[1];
                    [OS_axr_data debugDescription];
                    v21.i32[1] = v201;
                  }

                  AXRLogError("EXR File corrupted: tile reports mip level %u,%u outside of expected range %u,%u", v56, v57, v21.u32[1], this[36].u32[0], this[36].u32[1]);
                }

                return -6;
              }

              v59 = v5;
              v60 = v7;
              v57 = v58 * v21.i32[1] + v21.u32[0];
            }

            else
            {
              if (v21.i32[0] != v21.i32[1])
              {
                if ((v192 & 2) != 0)
                {
                  if (GetFlagsOnceToken != -1)
                  {
                    [OS_axr_data debugDescription];
                  }

                  AXRLogError("EXR File corrupted: tile reports different x&y mip levels though not a ripmap", v56);
                }

                return -6;
              }

              if (v21.i32[0] >= this[36].i32[0])
              {
                goto LABEL_211;
              }

              v59 = v5;
              v60 = v7;
            }

            v61 = *(*&this[35] + 8 * v57);
            v63 = *(v61 + 32);
            v62 = *(v61 + 36);
            AXRChunkHeader::GetTilePosition(result, v56);
            v49 = v21.u32[1];
            v64 = v21.u32[0];
            if (v21.i32[1] >= v62 || v21.i32[0] >= v63)
            {
              if ((v192 & 2) == 0)
              {
                return -6;
              }

              if (GetFlagsOnceToken != -1)
              {
                v200 = v21.i32[0];
                [OS_axr_data debugDescription];
                v21.i32[0] = v200;
              }

              v140 = v21.u32[0];
              v148 = v63;
              v149 = v62;
              goto LABEL_219;
            }

            v66 = v21.i32[0] + v21.i32[1] * v63;
            v67 = *(v61 + 16);
            if (*(v67 + 8 * v66))
            {
              if ((v192 & 2) != 0)
              {
                if (GetFlagsOnceToken != -1)
                {
                  [OS_axr_data debugDescription];
                }

                AXRLogError("EXR File corrupted: tile at %u,%u appears more than once", v50, v64, v49);
              }

              return -6;
            }

            *(v67 + 8 * v66) = v55;
            v54 += 8;
            v31 = v177;
            v7 = v60;
            v5 = v59;
            v10 = v194;
            v9 = v184;
            v12.i32[0] = v199;
            v30 = v181;
            if (v175 == v54)
            {
              goto LABEL_81;
            }
          }

          return -4;
        }

LABEL_81:
        v179 = v5;
        v180 = v7;
        v141 = v31 | (8 * v30);
        v24 = v164;
        v6 = v166;
        v20 = v196;
        v22 = v172;
        LOBYTE(v19) = v170;
        v25 = v168;
LABEL_83:
        v162 = HIDWORD(v24);
        if (HIDWORD(v24))
        {
          v68 = 0;
          v178 = v25 & (0x2Fu >> v19);
          v69 = v22 >> 4;
          if (v9 <= 1)
          {
            v70 = 1;
          }

          else
          {
            v70 = v9;
          }

          v71 = v70 - 1;
          if (v10 <= 1)
          {
            v72 = 1;
          }

          else
          {
            v72 = v10;
          }

          v73 = v72 - 1;
          v75 = v20 == CalculateB44RowSize || v20 == CalculateB44aRowSize;
          v154 = v24;
          v76 = v12.i32[0] - (v22 >> 4);
          v77 = v13 - (v22 >> 4);
          v150 = 0xFFFFFFFF / v70;
          v167 = v6;
          v195 = v10;
          v197 = v20;
          v165 = v24;
          v151 = v141;
          v158 = v70;
          v159 = v22 >> 4;
          v156 = v72;
          v157 = v70 - 1;
          v155 = v72 - 1;
          v152 = v77;
          v153 = v76;
          do
          {
            if (v24)
            {
              v78 = 0;
              v79 = v68 * v24;
              v160 = v68 * v24;
              v161 = v68;
              do
              {
                DWORD2(v206) = v79 + v78;
                if (v183)
                {
                  v80 = v68;
                }

                else
                {
                  v80 = v78;
                }

                if ((v76 + (v69 << v78)) >> v78 <= 1)
                {
                  v81 = 1;
                }

                else
                {
                  v81 = (v76 + (v69 << v78)) >> v78;
                }

                v82 = (v77 + (v69 << v80)) >> v80;
                if (v82 <= 1)
                {
                  v82 = 1;
                }

                v185 = v82;
                v169 = v81;
                v83 = v71 + v81;
                if (__CFADD__(v71, v81))
                {
                  v84 = (v83 - v150 * v70) / v70 + v150;
                }

                else
                {
                  v84 = v83 / v70;
                }

                v85 = v73 + v185;
                v163 = v78;
                if (__CFADD__(v73, v185))
                {
                  v86 = (v85 - 0xFFFFFFFF / v72 * v72) / v72 + 0xFFFFFFFF / v72;
                }

                else
                {
                  v86 = v85 / v72;
                }

                v171 = v86;
                if (v84)
                {
                  v87 = 0;
                  v173 = *(*&this[35] + 8 * (v79 + v78));
                  v176 = v84;
                  do
                  {
                    v88 = v203;
                    if (v203 >= v169 - v203 * v87)
                    {
                      v88 = v169 - v203 * v87;
                    }

                    DWORD1(v206) = v87;
                    LODWORD(v205) = v88;
                    if (v171)
                    {
                      v89 = 0;
                      v90 = 0;
                      v91 = v10;
                      v182 = v87;
                      do
                      {
                        v193 = v91;
                        if (v185 >= v91)
                        {
                          v92 = v91;
                        }

                        else
                        {
                          v92 = v185;
                        }

                        v93 = v185 - v204 * v89;
                        v94 = (v87 + v84 * v89);
                        v191 = v89 + 1;
                        v95 = (v89 + 1) * v10;
                        if (v95 >= v185)
                        {
                          v96 = v185;
                        }

                        else
                        {
                          v96 = v95;
                        }

                        if (v204 >= v93)
                        {
                          v97 = v93;
                        }

                        else
                        {
                          v97 = v204;
                        }

                        HIDWORD(v205) = v97;
                        v188 = v94;
                        Chunk = Part::GetChunk(this, v179, v180, DWORD2(v206), v94, &v202 + 1);
                        if (!Chunk)
                        {
                          return -4;
                        }

                        v99 = Chunk;
                        *&v202 = AXRChunkHeader::GetCompressedDataPtr(Chunk, this[26].i32[0], *(&v202 + 1));
                        if (!v202)
                        {
                          return -4;
                        }

                        CompressedDataSize = AXRChunkHeader::GetCompressedDataSize(v99, this[26].i32[0], 0xFFFFFFFFFFFFFFFFLL);
                        if (!CompressedDataSize)
                        {
                          return -6;
                        }

                        v101 = CompressedDataSize == HIDWORD(v205) * v205 * this[37].i32[0];
                        v102 = v197;
                        if (CompressedDataSize == HIDWORD(v205) * v205 * this[37].i32[0])
                        {
                          v102 = 0;
                        }

                        v207 = v102;
                        v103 = v178;
                        if (v101)
                        {
                          v103 = 1;
                        }

                        if (v103)
                        {
                          if (v90 >= v96)
                          {
                            LODWORD(v104) = 0;
                            v96 = v90;
                          }

                          else
                          {
                            v104 = 0;
                            v105 = 0;
                            v106 = this[4].u32[0];
                            v107 = v106;
                            do
                            {
                              LODWORD(v206) = v90;
                              if (v107)
                              {
                                v108 = 0;
                                do
                                {
                                  v109 = this[3];
                                  if (v75)
                                  {
                                    if (*(*(*&v109 + 8 * v108) + 72) == 1)
                                    {
                                      v110 = v197;
                                    }

                                    else
                                    {
                                      v110 = 0;
                                    }

                                    v207 = v110;
                                  }

                                  v111 = *(*&v109 + 8 * v108);
                                  v112 = v206;
                                  v113 = *(v111 + 104);
                                  if (v113 < 2 || (v112 = (*(v111 + 108) * v206) >> *(v111 + 112), v206 == v113 * v112))
                                  {
                                    v114 = v205;
                                    if (*(v111 + 80) >= 2u)
                                    {
                                      v114 = (*(v111 + 96) + *(v111 + 84) * v205) >> *(v111 + 88);
                                    }

                                    v115 = *(*(v111 + 40) + 8 * DWORD2(v206));
                                    v116 = *(v111 + 72);
                                    if (v207)
                                    {
                                      v117 = (v207)(&v202, v104, v112, v114, v116);
                                    }

                                    else
                                    {
                                      if (v116 == 1)
                                      {
                                        v118 = 2;
                                      }

                                      else
                                      {
                                        v118 = 4;
                                      }

                                      v119 = v114 * v118;
                                      v120 = 0x100000000;
                                      if ((v119 & 0xFFFFFFFF00000000) == 0)
                                      {
                                        v120 = 0;
                                      }

                                      v117 = v120 | v119;
                                    }

                                    v121 = (*(v115 + 8 * DWORD1(v206) + 24) + 8 * v112);
                                    *v121 = v104;
                                    v121[1] = v117;
                                    v122 = HIDWORD(v117) & 1;
                                    v41 = __CFADD__(v104, v117);
                                    v104 = (v104 + v117);
                                    if (v41)
                                    {
                                      LOBYTE(v122) = 1;
                                    }

                                    v105 |= v122;
                                    v106 = this[4].u32[0];
                                  }

                                  ++v108;
                                  v107 = v106;
                                }

                                while (v108 < v106);
                              }

                              LODWORD(v90) = v90 + 1;
                            }

                            while (v90 != v92);
                            v96 = v92;
LABEL_192:
                            v10 = v195;
                            if (v105)
                            {
                              return -14;
                            }
                          }
                        }

                        else
                        {
                          v123 = this[4].u32[0];
                          if (v123)
                          {
                            v124 = 0;
                            v104 = 0;
                            v105 = 0;
                            while (1)
                            {
                              if (v75)
                              {
                                v125 = v197;
                                if (*(*(*&this[3] + 8 * v124) + 72) != 1)
                                {
                                  v125 = 0;
                                }

                                v207 = v125;
                              }

                              v126 = v90;
                              if (v90 < v96)
                              {
                                break;
                              }

LABEL_191:
                              if (++v124 >= v123)
                              {
                                goto LABEL_192;
                              }
                            }

                            while (2)
                            {
                              LODWORD(v206) = v126;
                              v127 = *(*&this[3] + 8 * v124);
                              v128 = *(v127 + 104);
                              if (v128 <= 1)
                              {
                                v129 = v126;
                              }

                              else
                              {
                                v129 = (v126 * *(v127 + 108)) >> *(v127 + 112);
                                if (v126 != v128 * v129)
                                {
                                  goto LABEL_189;
                                }
                              }

                              v130 = v205;
                              if (*(v127 + 80) >= 2u)
                              {
                                v130 = (*(v127 + 96) + *(v127 + 84) * v205) >> *(v127 + 88);
                              }

                              v131 = *(*(v127 + 40) + 8 * DWORD2(v206));
                              v132 = *(v127 + 72);
                              if (v207)
                              {
                                v133 = (v207)(&v202, v104, v129, v130, v132);
                              }

                              else
                              {
                                if (v132 == 1)
                                {
                                  v134 = 2;
                                }

                                else
                                {
                                  v134 = 4;
                                }

                                v135 = v130 * v134;
                                v136 = 0x100000000;
                                if ((v135 & 0xFFFFFFFF00000000) == 0)
                                {
                                  v136 = 0;
                                }

                                v133 = v136 | v135;
                              }

                              v137 = (*(v131 + 8 * DWORD1(v206) + 24) + 8 * v129);
                              *v137 = v104;
                              v137[1] = v133;
                              v138 = HIDWORD(v133) & 1;
                              v41 = __CFADD__(v104, v133);
                              v104 = (v104 + v133);
                              if (v41)
                              {
                                LOBYTE(v138) = 1;
                              }

                              v105 |= v138;
LABEL_189:
                              if (++v126 >= v96)
                              {
                                v123 = this[4].u32[0];
                                goto LABEL_191;
                              }

                              continue;
                            }
                          }

                          LODWORD(v104) = 0;
                        }

                        v139 = this[32];
                        if (v139 <= v104)
                        {
                          v139 = v104;
                        }

                        this[32] = v139;
                        *(*(v173 + 8) + 8 * v188) = v104;
                        v91 = v193 + v10;
                        v90 = v96;
                        v89 = v191;
                        v84 = v176;
                        v87 = v182;
                      }

                      while (v191 != v171);
                    }

                    ++v87;
                  }

                  while (v87 != v84);
                }

                LODWORD(v24) = v165;
                v78 = v163 + 1;
                v6 = v167;
                v79 = v160;
                v68 = v161;
                v70 = v158;
                v69 = v159;
                v72 = v156;
                v71 = v157;
                v73 = v155;
                v77 = v152;
                v76 = v153;
              }

              while (v163 + 1 != v154);
            }

            ++v68;
            v141 = v151;
          }

          while (v68 != v162);
        }

        result = 0;
        *v6 += v141;
        return result;
      }

LABEL_24:
      v183 = v23 == 2;
      v189 = v7;
      v34 = v7;
      if (v32)
      {
        goto LABEL_59;
      }

      goto LABEL_28;
    }

    v34 = 8;
  }

  v183 = v23 == 2;
LABEL_28:
  v35 = (this[36].i32[0] * this[36].i32[1]);
  if (!v35)
  {
    v179 = v5;
    v180 = v7;
    v141 = 0;
    goto LABEL_83;
  }

  v36 = 0;
  v37 = 0;
  v38 = this[35];
  v174 = v38;
  while (1)
  {
    v39 = *(*&v38 + 8 * v37);
    v40 = *v39;
    v41 = !*v39 || v36 >= v30;
    if (!v41)
    {
      break;
    }

LABEL_35:
    if (++v37 == v35)
    {
      v179 = v5;
      v180 = v7;
      v141 = 8 * v36;
      goto LABEL_83;
    }
  }

  v42 = 0;
  v190 = *(v39 + 6);
  v186 = *(v39 + 7);
  v43 = 8 * v36;
  v44 = v36 + 1;
  while (1)
  {
    if (v43 + *&this[28] + 8 > v7)
    {
      return -4;
    }

    v45 = *&v28[v43] + v31;
    if (v45 >= v7)
    {
      return -6;
    }

    if (v45 + v34 >= v7)
    {
      return -4;
    }

    v46 = this[9].u32[0];
    v47 = v42;
    if (v46 == 2)
    {
      break;
    }

LABEL_51:
    if (v47 >= v40)
    {
      if ((v192 & 2) != 0)
      {
        if (GetFlagsOnceToken != -1)
        {
          [OS_axr_data debugDescription];
        }

        AXRLogError("EXR File corrupted: tile reports index %lu larger than expected number of tiles %lu", v46, v47, v40);
      }

      return -6;
    }

    v52 = v39[2];
    if (*(v52 + 8 * v47))
    {
      if ((v192 & 2) != 0)
      {
        if (GetFlagsOnceToken != -1)
        {
          [OS_axr_data debugDescription];
        }

        AXRLogError("EXR File corrupted: tile at %lu appears more than once", v52, v47);
      }

      return -6;
    }

    *(v52 + 8 * v47) = v45;
    ++v42;
    v53 = v44 + 1;
    if (v42 < v40)
    {
      v43 += 8;
      v41 = v44++ >= v30;
      if (!v41)
      {
        continue;
      }
    }

    v36 = v53 - 1;
    v38 = v174;
    goto LABEL_35;
  }

  v48 = 0;
  if (v32 > 1)
  {
    if (v32 != 2)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (!v32)
  {
LABEL_45:
    HIDWORD(v48) = *(v5 + v45);
  }

LABEL_46:
  v49 = HIDWORD(v48);
  v50 = 0;
  if (HIDWORD(v48) < v186 && v190 != 0)
  {
    v46 = 0 / v9;
    v47 = v46 + *(v39 + 8) * (HIDWORD(v48) / v10);
    goto LABEL_51;
  }

  if ((v192 & 2) != 0)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
      LODWORD(v48) = 0;
    }

    v140 = v48;
    v149 = v186;
    v148 = v190;
LABEL_219:
    AXRLogError("EXR File corrupted: tile reports position %u,%u outside of valid region %u,%u", v50, v140, v49, v148, v149);
  }

  return -6;
}