uint64_t OVCGLObjectCacheGetObjectForAttributesAndPlane(unint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, _DWORD *a7, BOOL *a8)
{
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        return ovcgloc_getObjectForSurfaceOrAttributes(a1, 0, a2, a3, a4, a5, a6, a7, a8);
      }

      else
      {
        OVCGLObjectCacheGetObjectForAttributesAndPlane_cold_1(&v9);
        return v9;
      }
    }

    else
    {
      OVCGLObjectCacheGetObjectForAttributesAndPlane_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    OVCGLObjectCacheGetObjectForAttributesAndPlane_cold_3(&v11);
    return v11;
  }
}

uint64_t OVCGLObjectCacheCreate(int64_t a1, void *a2)
{
  if (!a2)
  {
    OVCGLObjectCacheCreate_cold_5(&v10);
LABEL_10:
    v5 = 0;
LABEL_14:
    v8 = v10;
    goto LABEL_7;
  }

  if (a1 <= 0)
  {
    OVCGLObjectCacheCreate_cold_4(&v10);
    goto LABEL_10;
  }

  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040AB73632BuLL);
  v5 = v4;
  if (!v4)
  {
    OVCGLObjectCacheCreate_cold_3(&v10);
    goto LABEL_14;
  }

  *v4 = a1;
  v6 = malloc_type_calloc(a1, 0x40uLL, 0x100004084D3BC0BuLL);
  v5[2] = v6;
  if (!v6)
  {
    OVCGLObjectCacheCreate_cold_2(&v10);
    goto LABEL_14;
  }

  v7 = FigSimpleMutexCreate();
  v5[3] = v7;
  if (!v7)
  {
    OVCGLObjectCacheCreate_cold_1(&v10);
    goto LABEL_14;
  }

  v8 = 0;
  *a2 = v5;
  v5 = 0;
LABEL_7:
  OVCGLObjectCacheDestroy(v5);
  return v8;
}

void OVCGLObjectCacheDestroy(void *a1)
{
  if (a1)
  {
    if (*a1)
    {
      v2 = 0;
      v3 = 0;
      do
      {
        ots_destroyCacheEntry(*(a1 + 2) + v2);
        ++v3;
        v2 += 64;
      }

      while (v3 < *a1);
    }

    *(a1 + 1) = 0;
    FigSimpleMutexDestroy();
    free(*(a1 + 2));

    free(a1);
  }
}

uint64_t OVCGLObjectCacheFlushObjectsForSurface(unint64_t *a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock();
      v4 = *a1;
      if (*a1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = a1[2] + v5;
          if (*(v7 + 56))
          {
            if (*v7 == a2)
            {
              ots_destroyCacheEntry(v7);
              v4 = *a1;
              --a1[1];
            }
          }

          ++v6;
          v5 += 64;
        }

        while (v6 < v4);
      }

      FigSimpleMutexUnlock();
      return 0;
    }

    else
    {
      OVCGLObjectCacheFlushObjectsForSurface_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    OVCGLObjectCacheFlushObjectsForSurface_cold_2(&v10);
    return v10;
  }
}

double ots_destroyCacheEntry(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = *(a1 + 40);
    if (v2 == 36160)
    {
      glDeleteFramebuffers(1, (a1 + 44));
    }

    else
    {
      v3 = (a1 + 44);
      if (v2 == 36161)
      {
        glDeleteRenderbuffers(1, v3);
      }

      else
      {
        glDeleteTextures(1, v3);
      }
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

__CFString *FigCaptionDataGetCaptionText(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return &stru_1F0B1AFB8;
  }

  return v2(a1);
}

CFDictionaryRef fcctx_BuildCaptionPropertyInfoDictionary()
{
  values[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6961220];
  values[0] = *MEMORY[0x1E6961208];
  values[1] = v0;
  v1 = *MEMORY[0x1E6961230];
  values[2] = *MEMORY[0x1E6961228];
  values[3] = v1;
  v2 = *MEMORY[0x1E6961278];
  values[4] = *MEMORY[0x1E6961238];
  values[5] = v2;
  values[6] = *MEMORY[0x1E6961258];
  v3 = *MEMORY[0x1E6961460];
  v25[0] = *MEMORY[0x1E6961458];
  v25[1] = v3;
  v4 = *MEMORY[0x1E69614A0];
  v25[2] = *MEMORY[0x1E6961478];
  v25[3] = v4;
  v5 = *MEMORY[0x1E6961470];
  v25[4] = *MEMORY[0x1E6961480];
  v25[5] = v5;
  v6 = *MEMORY[0x1E69614B8];
  v25[6] = *MEMORY[0x1E69614D0];
  v25[7] = v6;
  v7 = *MEMORY[0x1E69614D8];
  v25[8] = *MEMORY[0x1E69614C0];
  v25[9] = v7;
  v8 = *MEMORY[0x1E6961530];
  v25[10] = *MEMORY[0x1E69614E8];
  v25[11] = v8;
  v9 = *MEMORY[0x1E6961528];
  v25[12] = *MEMORY[0x1E6961468];
  v25[13] = v9;
  v25[14] = *MEMORY[0x1E6961538];
  v10 = *MEMORY[0x1E69612F0];
  v24[0] = *MEMORY[0x1E69612E8];
  v24[1] = v10;
  v11 = *MEMORY[0x1E6961308];
  v24[2] = *MEMORY[0x1E6961300];
  v24[3] = v11;
  v12 = *MEMORY[0x1E6961390];
  v24[4] = *MEMORY[0x1E6961320];
  v24[5] = v12;
  v13 = *MEMORY[0x1E6961328];
  v24[6] = *MEMORY[0x1E69613B0];
  v24[7] = v13;
  v14 = *MEMORY[0x1E6961338];
  v24[8] = *MEMORY[0x1E6961330];
  v24[9] = v14;
  v15 = *MEMORY[0x1E69612F8];
  v24[10] = *MEMORY[0x1E6961370];
  v24[11] = v15;
  v16 = *MEMORY[0x1E69613A0];
  v24[12] = *MEMORY[0x1E6961310];
  v24[13] = v16;
  v17 = *MEMORY[0x1E6961388];
  v24[14] = *MEMORY[0x1E6961380];
  v24[15] = v17;
  v18 = *MEMORY[0x1E69613B8];
  v24[16] = *MEMORY[0x1E69612D8];
  v24[17] = v18;
  v24[18] = *MEMORY[0x1E69613C0];
  keys[0] = @"caption";
  v19 = *MEMORY[0x1E695E480];
  v20 = MEMORY[0x1E695E9C0];
  v22[0] = CFArrayCreate(*MEMORY[0x1E695E480], values, 7, MEMORY[0x1E695E9C0]);
  keys[1] = @"style";
  v22[1] = CFArrayCreate(v19, v25, 15, v20);
  keys[2] = @"region";
  v22[2] = CFArrayCreate(v19, v24, 19, v20);
  result = CFDictionaryCreate(v19, keys, v22, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  sCAPRPCaptionPropertyInfoDictionary = result;
  return result;
}

const void *fcctx_createColorRGBAFromColorStyleDynamicProperty(uint64_t a1, uint64_t *a2)
{
  result = FigCaptionDynamicStyleGetInitialValue();
  if (result)
  {
    v4 = result;
    TypeID = CGColorGetTypeID();
    if (TypeID == CFGetTypeID(v4))
    {
      ARGBColorArrayFromCGColor = FigTextMarkupCreateARGBColorArrayFromCGColor();
      result = 0;
      *a2 = ARGBColorArrayFromCGColor;
    }

    else
    {
      fcctx_createColorRGBAFromColorStyleDynamicProperty_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void addOneKeyAndValueApplyFunction(void *key, void *value, CFMutableDictionaryRef *a3)
{
  if (a3)
  {
    if (*a3)
    {
      CFDictionaryAddValue(*a3, key, value);
    }
  }
}

void OUTLINED_FUNCTION_2_170()
{

  JUMPOUT(0x19A8D3660);
}

uint64_t OUTLINED_FUNCTION_9_71(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0x358];

  return MEMORY[0x1EEDBD230](v4, a1, a2);
}

__n128 OUTLINED_FUNCTION_14_60()
{
  result = *&STACK[0x380];
  v2 = *&STACK[0x390];
  *(v0 - 128) = *&STACK[0x380];
  *(v0 - 112) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_53()
{

  return FigTextMarkupDimensionCopyAsSimplifiedDictionary();
}

uint64_t OUTLINED_FUNCTION_16_49()
{

  return FigTextMarkupDimensionCopyAsSimplifiedDictionary();
}

uint64_t FigVideoCompositorCreateOpenGL(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  memset(&v22, 0, sizeof(v22));
  FigVideoCompositorGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v17 = v5;
    goto LABEL_51;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 516) = 1065353216;
  *(DerivedStorage + 384) = 1;
  *(DerivedStorage + 760) = 0x7FFFFFFFLL;
  *(DerivedStorage + 792) = 0x7FFFFFFFLL;
  *(DerivedStorage + 592) = 0;
  *(DerivedStorage + 596) = 1;
  v22.version = 0;
  v22.retain = ovc_cloneInFlightEntry;
  v22.copyDescription = 0;
  v22.equal = 0;
  v22.release = ovc_freeInFlightEntry;
  v7 = CFDictionaryCreateMutable(a1, 0, 0, &v22);
  *(DerivedStorage + 600) = v7;
  if (!v7)
  {
    v21 = 4267;
LABEL_50:
    FigVideoCompositorCreateOpenGL_cold_1(v21, &v26);
    v17 = v26;
    goto LABEL_51;
  }

  v8 = FigSemaphoreCreate();
  *(DerivedStorage + 608) = v8;
  if (!v8)
  {
    v21 = 4270;
    goto LABEL_50;
  }

  *(DerivedStorage + 616) = 0;
  v9 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 632) = v9;
  if (!v9)
  {
    v21 = 4274;
    goto LABEL_50;
  }

  v10 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 640) = v10;
  if (!v10)
  {
    v21 = 4277;
    goto LABEL_50;
  }

  v11 = cf;
  v12 = CMBaseObjectGetDerivedStorage();
  v24 = 0;
  v13 = OVCCreateOpenGLContext(&v24);
  if (v13)
  {
    goto LABEL_44;
  }

  v13 = OVCSetCurrentOpenGLContext(v24);
  if (v13)
  {
    goto LABEL_44;
  }

  String = glGetString(0x1F03u);
  if (String)
  {
    v15 = strstr(String, "GL_EXT_texture_rg") != 0;
  }

  else
  {
    v15 = 0;
  }

  *(v12 + 521) = v15;
  v28[0] = 0;
  v26 = 0u;
  v27 = 0u;
  *shader = 0;
  v16 = OVCCreateShader("uniform mat3 affine_transform; \n \t\n \tattribute vec2 vertex_coord; \nattribute vec2 texture_coord0; \n\nvarying vec2 fragment_texture_coord0; \nvoid main() \n \t{ \n \t\tvec3 position_2D = affine_transform * vec3( vertex_coord, 1.0); \n \t\tgl_Position = vec4( position_2D.xy, 0.0, 1.0); \nfragment_texture_coord0 = texture_coord0; \n}", 0x8B31u, shader);
  if (!v16)
  {
    v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane0 ; \nvarying vec2 fragment_texture_coord0; \nuniform float opacity; \n \t\n \tvarying vec2 fragment_texture_coord; \n \t\n \tvoid main() \n \t{ \n \t\tvec4 local_color = texture2D( source_buffer_plane0, fragment_texture_coord0); \n \t\tgl_FragColor = local_color * opacity;\t\t\t// color components are premultiplied \n \t}", 0x8B30u, &v26);
    if (!v16)
    {
      v16 = ovc_createAndConfigureGLProgram((v12 + 24), shader[0], v26);
      if (!v16)
      {
        v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane0 ; \nuniform sampler2D source_buffer_plane1 ; \nvarying vec2 fragment_texture_coord0; \nuniform mat4 color_matrix; \n \tuniform float opacity; \n \tuniform int g_index; // can be 1 or 3 depending on the texture format \n \t\n \tvoid main() \n \t{ \n \t\tvec4 local_color_y = texture2D( source_buffer_plane0, fragment_texture_coord0); \n \t\tvec4 local_color_uv = texture2D( source_buffer_plane1, fragment_texture_coord0); \n \t\tvec4 local_color_yuv = vec4( local_color_y.r, local_color_uv.r, local_color_uv[g_index], 1.0); \n \t\t\n \t\tvec4 local_color_rgba = color_matrix * local_color_yuv; \n \t\t\n \t\tgl_FragColor = local_color_rgba * opacity;\t\t\t// color components are premultiplied \n \t}", 0x8B30u, &v26 + 1);
        if (!v16)
        {
          v16 = ovc_createAndConfigureGLProgram((v12 + 60), shader[0], DWORD1(v26));
          if (!v16)
          {
            if (!*(v12 + 521))
            {
              v17 = 0;
              goto LABEL_35;
            }

            v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane0 ; \nuniform sampler2D source_buffer_plane1 ; \nvarying vec2 fragment_texture_coord0; \nuniform mat4 color_matrix; \n \t\n \tvoid main() \n \t{ \n \t\tvec4 color_vector = vec4( color_matrix[0][0], color_matrix[1][0], color_matrix[2][0], color_matrix[3][0]);\n \t\tvec4 local_color_y = texture2D( source_buffer_plane0, fragment_texture_coord0); \n \t\tvec4 local_color_uv = texture2D( source_buffer_plane1, fragment_texture_coord0); \n \t\tvec4 local_color_yuv = vec4( local_color_y.r, local_color_uv.r, local_color_uv.g, 1.0); \n \t\t\n \t\tgl_FragColor.r = dot( local_color_yuv, color_vector); \n \t}", 0x8B30u, &v26 + 2);
            if (!v16)
            {
              v16 = ovc_createAndConfigureGLProgram((v12 + 96), shader[0], DWORD2(v26));
              if (!v16)
              {
                v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane0 ; \nuniform sampler2D source_buffer_plane1 ; \nvarying vec2 fragment_texture_coord0; \nuniform mat4 color_matrix; \n \t\n \tvoid main() \n \t{ \n \t\tvec4 color_vector_u = vec4( color_matrix[0][1], color_matrix[1][1], color_matrix[2][1], color_matrix[3][1]);\n \t\tvec4 color_vector_v = vec4( color_matrix[0][2], color_matrix[1][2], color_matrix[2][2], color_matrix[3][2]);\n \t\tvec4 local_color_y = texture2D( source_buffer_plane0, fragment_texture_coord0); \n \t\tvec4 local_color_uv = texture2D( source_buffer_plane1, fragment_texture_coord0); \n \t\tvec4 local_color_yuv = vec4( local_color_y.r, local_color_uv.r, local_color_uv.g, 1.0); \n \t\t\n \t\tgl_FragColor.r = dot( local_color_yuv, color_vector_u); \n \t\tgl_FragColor.g = dot( local_color_yuv, color_vector_v); \n \t}", 0x8B30u, (&v26 | 0xC));
                if (!v16)
                {
                  v16 = ovc_createAndConfigureGLProgram((v12 + 132), shader[0], HIDWORD(v26));
                  if (!v16)
                  {
                    v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane0 ; \nvarying vec2 fragment_texture_coord0; \nvoid main() \n \t{ \n \t\tgl_FragColor.r = texture2D( source_buffer_plane0, fragment_texture_coord0).r; \n \t}", 0x8B30u, &v27);
                    if (!v16)
                    {
                      v16 = ovc_createAndConfigureGLProgram((v12 + 168), shader[0], v27);
                      if (!v16)
                      {
                        v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane1 ; \nvarying vec2 fragment_texture_coord0; \nvoid main() \n \t{ \n \t\tgl_FragColor.rg = texture2D( source_buffer_plane1, fragment_texture_coord0).rg; \n \t\t\n \t}", 0x8B30u, &v27 + 1);
                        if (!v16)
                        {
                          v16 = ovc_createAndConfigureGLProgram((v12 + 204), shader[0], DWORD1(v27));
                          if (!v16)
                          {
                            v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane0 ; \nvarying vec2 fragment_texture_coord0; \nuniform mat4 color_matrix; \n \tuniform float opacity; \n \t\n \tvoid main() \n \t{ \n \t\tvec4 color_vector = vec4( color_matrix[0][0], color_matrix[1][0], color_matrix[2][0], color_matrix[3][0]);\n \t\tvec4 local_color_rgba = texture2D( source_buffer_plane0, fragment_texture_coord0); \n \t\t\n \t\tgl_FragColor.r = dot( vec4( local_color_rgba.rgb, 1.0), color_vector); // no premultiplication here  \n \t\tgl_FragColor.a = local_color_rgba.a * opacity; \n \t}", 0x8B30u, &v27 + 2);
                            if (!v16)
                            {
                              v16 = ovc_createAndConfigureGLProgram((v12 + 240), shader[0], DWORD2(v27));
                              if (!v16)
                              {
                                v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane0 ; \nvarying vec2 fragment_texture_coord0; \nuniform mat4 color_matrix; \n \tuniform float opacity; \n \t\n \tvoid main() \n \t{ \n \t\tvec4 color_vector_u = vec4( color_matrix[0][1], color_matrix[1][1], color_matrix[2][1], color_matrix[3][1]);\n \t\tvec4 color_vector_v = vec4( color_matrix[0][2], color_matrix[1][2], color_matrix[2][2], color_matrix[3][2]);\n \t\tvec4 local_color_rgba = texture2D( source_buffer_plane0, fragment_texture_coord0); \n \t\tvec4 local_color_rgb = vec4( local_color_rgba.rgb, 1.0); \n \t\t\n \t\tgl_FragColor.r = dot( vec4( local_color_rgba.rgb, 1.0), color_vector_u); // no premultiplication here  \n \t\tgl_FragColor.g = dot( vec4( local_color_rgba.rgb, 1.0), color_vector_v); // no premultiplication here  \n \t\tgl_FragColor.a = local_color_rgba.a * opacity; \n \t}", 0x8B30u, &v27 + 3);
                                if (!v16)
                                {
                                  v16 = ovc_createAndConfigureGLProgram((v12 + 276), shader[0], HIDWORD(v27));
                                  if (!v16)
                                  {
                                    v16 = OVCCreateShader("attribute vec2 vertex_coord; \nattribute vec2 texture_coord0; \n\nvarying vec2 fragment_texture_coord0; \nvoid main() \n \t{ \n \t\tgl_Position = vec4( vertex_coord.xy, 0.0, 1.0); \nfragment_texture_coord0 = texture_coord0; \n}", 0x8B31u, &shader[1]);
                                    if (!v16)
                                    {
                                      v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane0 ; \nvarying vec2 fragment_texture_coord0; \nvoid main() \n \t{ \n \t\tgl_FragColor.r = texture2D( source_buffer_plane0, fragment_texture_coord0).r; \n \t}", 0x8B30u, v28);
                                      if (!v16)
                                      {
                                        v16 = ovc_createAndConfigureGLProgram((v12 + 312), shader[1], LODWORD(v28[0]));
                                        if (!v16)
                                        {
                                          v16 = OVCCreateShader("precision mediump float; \nuniform sampler2D source_buffer_plane1 ; \nvarying vec2 fragment_texture_coord0; \nvoid main() \n \t{ \n \t\tgl_FragColor.rg = texture2D( source_buffer_plane1, fragment_texture_coord0).rg; \n \t}", 0x8B30u, v28 + 1);
                                          if (!v16)
                                          {
                                            v16 = ovc_createAndConfigureGLProgram((v12 + 348), shader[1], HIDWORD(v28[0]));
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
                }
              }
            }
          }
        }
      }
    }
  }

  v17 = v16;
LABEL_35:
  glDeleteShader(shader[0]);
  glDeleteShader(shader[1]);
  for (i = 0; i != 40; i += 4)
  {
    glDeleteShader(*(&v26 + i));
  }

  if (v17)
  {
    goto LABEL_41;
  }

  v13 = OVCGLObjectCacheCreate(60, (v12 + 576));
  if (v13)
  {
LABEL_44:
    v17 = v13;
    goto LABEL_41;
  }

  v19 = CFGetAllocator(v11);
  v17 = FigOVCGLObjectCacheWrapperCreate(v19, *(v12 + 576), (v12 + 584));
  if (!v17)
  {
    *v12 = v24;
    v24 = 0;
  }

LABEL_41:
  OVCDestroyOpenGLContext(v24);
  OVCSetCurrentOpenGLContext(0);
  if (!v17)
  {
    *a3 = cf;
    return v17;
  }

LABEL_51:
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

uint64_t ovc_cloneInFlightEntry(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 24, 0x1060040078847BFLL, 0);
  v4 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v4;
  if (*v3)
  {
    CFRetain(*v3);
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    CFRetain(v5);
  }

  return v3;
}

void ovc_freeInFlightEntry(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
  }

  v4 = ptr[2];
  if (v4)
  {
    CFRelease(v4);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

void openglVideoCompositor_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v4 = *(v3 + 640);
  if (v4)
  {
    if (*(v3 + 608))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __openglVideoCompositor_flush_block_invoke;
      block[3] = &unk_1E7482510;
      block[4] = &v24;
      block[5] = v3;
      dispatch_sync(v4, block);
      if (v25[3] >= 1)
      {
        do
        {
          FigSemaphoreWaitRelative();
          v5 = *(v3 + 640);
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __openglVideoCompositor_flush_block_invoke_2;
          v22[3] = &unk_1E7482510;
          v22[4] = &v24;
          v22[5] = v3;
          dispatch_sync(v5, v22);
        }

        while (v25[3] > 0);
      }
    }
  }

  _Block_object_dispose(&v24, 8);
  v6 = *(DerivedStorage + 632);
  if (v6)
  {
    dispatch_sync(v6, &__block_literal_global_110);
    v7 = *(DerivedStorage + 632);
    if (v7)
    {
      dispatch_release(v7);
    }

    *(DerivedStorage + 632) = 0;
  }

  v8 = *(DerivedStorage + 640);
  if (v8)
  {
    dispatch_sync(v8, &__block_literal_global_12_1);
    v9 = *(DerivedStorage + 640);
    if (v9)
    {
      dispatch_release(v9);
    }

    *(DerivedStorage + 640) = 0;
  }

  if (*(DerivedStorage + 608))
  {
    FigSemaphoreDestroy();
    *(DerivedStorage + 608) = 0;
  }

  if (OVCSetCurrentOpenGLContext(*DerivedStorage))
  {
    glBindFramebuffer(0x8D40u, 0);
    glDeleteFramebuffers(2, (DerivedStorage + 16));
    glDeleteTextures(2, (DerivedStorage + 388));
    for (i = 24; i != 384; i += 36)
    {
      glDeleteProgram(*(DerivedStorage + i));
    }

    glFinish();
  }

  OVCBicubicPrescalerDestroy(*(DerivedStorage + 8));
  FigOVCGLObjectCacheWrapperInvalidate(*(DerivedStorage + 584));
  OVCGLObjectCacheDestroy(*(DerivedStorage + 576));
  v11 = *(DerivedStorage + 584);
  if (v11)
  {
    CFRelease(v11);
  }

  OVCSetCurrentOpenGLContext(0);
  OVCDestroyOpenGLContext(*DerivedStorage);
  v12 = *(DerivedStorage + 568);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(DerivedStorage + 552);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(DerivedStorage + 528);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(DerivedStorage + 536);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(DerivedStorage + 544);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(DerivedStorage + 488);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(DerivedStorage + 496);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(DerivedStorage + 504);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(DerivedStorage + 560);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(DerivedStorage + 600);
  if (v21)
  {
    CFRelease(v21);
  }

  ovc_releaseLayerArrays(a1);
}

void sub_1967E46F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *openglVideoCompositor_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  cf = 0;
  v4 = CFGetRetainCount(a1);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVideoCompositor_OpenGL %p retainCount: %ld allocator: %p ", a1, v4, v5);
  ovc_copyPerformanceDictionary(a1, &cf);
  if (cf)
  {
    CFStringAppendFormat(Mutable, 0, @", performanceDictionary %@", cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

double openglVideoCompositor_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"RenderDimensions"))
  {
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(DerivedStorage + 424));
LABEL_3:
    *a4 = DictionaryRepresentation;
    return result;
  }

  if (CFEqual(a2, @"RenderPixelAspectRatio"))
  {
    v12 = *(DerivedStorage + 496);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"RenderEdgeProcessingPixels"))
  {
    v12 = *(DerivedStorage + 504);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"DestinationPixelBufferDesiredAttributes"))
  {
    v12 = *(DerivedStorage + 552);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"DestinationPixelBufferDesiredYCbCrMatrix"))
  {
    v12 = *(DerivedStorage + 528);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"DestinationPixelBufferDesiredColorPrimaries"))
  {
    v12 = *(DerivedStorage + 544);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"DestinationPixelBufferDesiredTransferFunction"))
  {
    v12 = *(DerivedStorage + 536);
LABEL_16:
    *a4 = v12;
    if (v12)
    {
      CFRetain(v12);
    }

    return result;
  }

  if (CFEqual(a2, @"SourcePixelBufferAttributes"))
  {

    ovc_createPixelBufferAttributesDictionary(a3, a4);
    return result;
  }

  if (CFEqual(a2, @"RenderScale"))
  {
    DictionaryRepresentation = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, (DerivedStorage + 516));
    goto LABEL_3;
  }

  if (CFEqual(a2, @"CanApplyRenderScale"))
  {
    v13 = MEMORY[0x1E695E4D0];
    goto LABEL_33;
  }

  if (CFEqual(a2, @"HighQualityRendering"))
  {
    v13 = MEMORY[0x1E695E4D0];
    v14 = *(DerivedStorage + 520);
    goto LABEL_31;
  }

  if (CFEqual(a2, @"WaitForBufferCompletion"))
  {
    v13 = MEMORY[0x1E695E4D0];
    v14 = *(DerivedStorage + 592);
LABEL_31:
    if (!v14)
    {
      v13 = MEMORY[0x1E695E4C0];
    }

LABEL_33:
    DictionaryRepresentation = *v13;
    if (!*v13)
    {
      goto LABEL_3;
    }

LABEL_34:
    DictionaryRepresentation = CFRetain(DictionaryRepresentation);
    goto LABEL_3;
  }

  if (CFEqual(a2, @"PixelBufferPoolSharingID"))
  {
    DictionaryRepresentation = *(DerivedStorage + 560);
    if (!DictionaryRepresentation)
    {
      goto LABEL_3;
    }

    goto LABEL_34;
  }

  if (CFEqual(a2, @"LoopTimeRange"))
  {
    v15 = *MEMORY[0x1E695E480];
    v16 = *(DerivedStorage + 712);
    *&v18.start.value = *(DerivedStorage + 696);
    *&v18.start.epoch = v16;
    *&v18.duration.timescale = *(DerivedStorage + 728);
    DictionaryRepresentation = CMTimeRangeCopyAsDictionary(&v18, v15);
    goto LABEL_3;
  }

  if (CFEqual(a2, @"PerformanceDictionary"))
  {
    ovc_copyPerformanceDictionary(a1, a4);
  }

  else
  {
    if (CFEqual(a2, @"SourceColorConformanceCapabilityLevel"))
    {
      DictionaryRepresentation = FigCFNumberCreateUInt32();
      goto LABEL_3;
    }

    if (CFEqual(a2, @"SupportsSpatialSourceBuffers"))
    {
      *a4 = *MEMORY[0x1E695E4C0];
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954512, "<<<< OpenGLVideoCompositor >>>>", 1201, v4);
    }
  }

  return result;
}

double openglVideoCompositor_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"RenderDimensions", a2))
  {
    size.start.value = 0;
    *&size.start.timescale = 0;
    if (!a3 || (TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(a3)) || !CGSizeMakeWithDictionaryRepresentation(a3, &size) || *&size.start.value <= 0.0 || *&size.start.timescale <= 0.0)
    {
      emitter = fig_log_get_emitter();
      *&v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< OpenGLVideoCompositor >>>>", 1393, v3);
      return *&v10;
    }

    *(DerivedStorage + 424) = *&size.start.value;
    goto LABEL_43;
  }

  if (CFEqual(@"RenderPixelAspectRatio", a2))
  {
    if (!a3)
    {
      v17 = *(DerivedStorage + 496);
      *(DerivedStorage + 496) = 0;
      if (!v17)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    v11 = CFDictionaryGetTypeID();
    if (v11 != CFGetTypeID(a3) || (Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6965EF0]), v13 = CFDictionaryGetValue(a3, *MEMORY[0x1E6965F00]), LODWORD(size.start.value) = 0, valuePtr = 0, !Value) || (v14 = v13, v15 = CFNumberGetTypeID(), v15 != CFGetTypeID(Value)) || (CFNumberGetValue(Value, kCFNumberIntType, &size), SLODWORD(size.start.value) < 1) || !v14 || (v16 = CFNumberGetTypeID(), v16 != CFGetTypeID(v14)) || (CFNumberGetValue(v14, kCFNumberIntType, &valuePtr), valuePtr < 1))
    {
      v18 = fig_log_get_emitter();
      *&v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 4294954516, "<<<< OpenGLVideoCompositor >>>>", 1408, v3);
      return *&v10;
    }

    v17 = *(DerivedStorage + 496);
    *(DerivedStorage + 496) = a3;
    goto LABEL_35;
  }

  if (CFEqual(@"RenderEdgeProcessingPixels", a2))
  {
    if (a3)
    {
      v19 = CFArrayGetTypeID();
      if (v19 == CFGetTypeID(a3) && CFArrayGetCount(a3) == 4)
      {
        v20 = 0;
        while (1)
        {
          v21 = CFNumberGetTypeID();
          ValueAtIndex = CFArrayGetValueAtIndex(a3, v20);
          if (v21 != CFGetTypeID(ValueAtIndex))
          {
            break;
          }

          if (++v20 == 4)
          {
            v17 = *(DerivedStorage + 504);
            *(DerivedStorage + 504) = a3;
            goto LABEL_35;
          }
        }
      }

      v24 = fig_log_get_emitter();
      v25 = v3;
      v26 = 4294954516;
      v27 = 1423;
      goto LABEL_38;
    }

    v17 = *(DerivedStorage + 504);
    *(DerivedStorage + 504) = 0;
    if (!v17)
    {
LABEL_43:
      v28 = *(DerivedStorage + 488);
      if (v28)
      {
        CFRelease(v28);
        *(DerivedStorage + 488) = 0;
      }

      v29 = *(DerivedStorage + 496);
      v30 = *(DerivedStorage + 504);
      v31 = *(DerivedStorage + 516);
LABEL_46:
      FigVideoCompositorUtilityCopyRenderPixelBufferDimensionsAndCleanAperture(v29, v30, (DerivedStorage + 408), (DerivedStorage + 416), DerivedStorage + 440, (DerivedStorage + 488), *(DerivedStorage + 424), *(DerivedStorage + 432), v31);
      *(DerivedStorage + 384) = 1;
      v32 = *(DerivedStorage + 568);
      if (v32)
      {
        CFRelease(v32);
        *(DerivedStorage + 568) = 0;
      }

      return *&v10;
    }

LABEL_42:
    CFRelease(v17);
    goto LABEL_43;
  }

  if (CFEqual(@"DestinationPixelBufferDesiredAttributes", a2))
  {
    if (a3)
    {
      v23 = CFDictionaryGetTypeID();
      if (v23 == CFGetTypeID(a3))
      {
        v17 = *(DerivedStorage + 552);
        *(DerivedStorage + 552) = a3;
LABEL_35:
        CFRetain(a3);
        if (!v17)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      v24 = fig_log_get_emitter();
      v25 = v3;
      v26 = 4294954516;
      v27 = 1438;
      goto LABEL_38;
    }

    v17 = *(DerivedStorage + 552);
    *(DerivedStorage + 552) = 0;
    if (!v17)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (CFEqual(@"DestinationPixelBufferDesiredYCbCrMatrix", a2))
  {
    if (!a3)
    {
      v34 = *(DerivedStorage + 528);
      *(DerivedStorage + 528) = 0;
      goto LABEL_74;
    }

    v33 = CFStringGetTypeID();
    if (v33 == CFGetTypeID(a3))
    {
      v34 = *(DerivedStorage + 528);
      *(DerivedStorage + 528) = a3;
LABEL_65:
      CFRetain(a3);
      goto LABEL_74;
    }

    v24 = fig_log_get_emitter();
    v25 = v3;
    v26 = 4294954516;
    v27 = 1445;
    goto LABEL_38;
  }

  if (CFEqual(@"DestinationPixelBufferDesiredColorPrimaries", a2))
  {
    if (a3)
    {
      v35 = CFStringGetTypeID();
      if (v35 == CFGetTypeID(a3))
      {
        v34 = *(DerivedStorage + 544);
        *(DerivedStorage + 544) = a3;
        goto LABEL_65;
      }

      v24 = fig_log_get_emitter();
      v25 = v3;
      v26 = 4294954516;
      v27 = 1452;
LABEL_38:

      *&v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v26, "<<<< OpenGLVideoCompositor >>>>", v27, v25);
      return *&v10;
    }

    v34 = *(DerivedStorage + 544);
    *(DerivedStorage + 544) = 0;
LABEL_74:
    if (v34)
    {
      CFRelease(v34);
    }

    return *&v10;
  }

  if (CFEqual(@"DestinationPixelBufferDesiredTransferFunction", a2))
  {
    if (a3)
    {
      v36 = CFStringGetTypeID();
      if (v36 == CFGetTypeID(a3))
      {
        v34 = *(DerivedStorage + 536);
        *(DerivedStorage + 536) = a3;
        goto LABEL_65;
      }

      v24 = fig_log_get_emitter();
      v25 = v3;
      v26 = 4294954516;
      v27 = 1459;
      goto LABEL_38;
    }

    v34 = *(DerivedStorage + 536);
    *(DerivedStorage + 536) = 0;
    goto LABEL_74;
  }

  if (CFEqual(@"RenderScale", a2))
  {
    LODWORD(size.start.value) = 1065353216;
    if (a3)
    {
      v37 = CFGetTypeID(a3);
      if (v37 != CFNumberGetTypeID())
      {
        v42 = fig_log_get_emitter();
        *&v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, 4294954516, "<<<< OpenGLVideoCompositor >>>>", 1475, v3);
        goto LABEL_86;
      }

      CFNumberGetValue(a3, kCFNumberFloatType, &size);
      v31 = *&size.start.value;
      if (*&size.start.value <= 0.0)
      {
        v38 = fig_log_get_emitter();
        *&v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, 4294954516, "<<<< OpenGLVideoCompositor >>>>", 1471, v3);
LABEL_86:
        if (v39)
        {
          return *&v10;
        }

        v31 = *&size.start.value;
      }
    }

    else
    {
      v31 = 1.0;
    }

    *(DerivedStorage + 516) = v31;
    v43 = *(DerivedStorage + 488);
    if (v43)
    {
      CFRelease(v43);
      *(DerivedStorage + 488) = 0;
      v31 = *(DerivedStorage + 516);
    }

    v29 = *(DerivedStorage + 496);
    v30 = *(DerivedStorage + 504);
    goto LABEL_46;
  }

  if (CFEqual(@"HighQualityRendering", a2))
  {
    if (!a3)
    {
      *(DerivedStorage + 520) = 0;
      return *&v10;
    }

    v40 = CFBooleanGetTypeID();
    if (v40 == CFGetTypeID(a3))
    {
      v41 = CFBooleanGetValue(a3);
      if (!v41 || *(DerivedStorage + 521))
      {
        *(DerivedStorage + 520) = v41;
        return *&v10;
      }

      v24 = fig_log_get_emitter();
      v25 = v3;
      v26 = 4294954792;
      v27 = 1497;
    }

    else
    {
      v24 = fig_log_get_emitter();
      v25 = v3;
      v26 = 4294954516;
      v27 = 1503;
    }

    goto LABEL_38;
  }

  if (!CFEqual(@"ThrottleForBackground", a2))
  {
    if (CFEqual(@"ClientPID", a2))
    {
      if (!a3)
      {
        *(DerivedStorage + 620) = 0;
        goto LABEL_116;
      }

      v46 = CFGetTypeID(a3);
      if (v46 != CFNumberGetTypeID())
      {
        return *&v10;
      }

      v47 = (DerivedStorage + 620);
    }

    else
    {
      if (!CFEqual(@"WorkerThreadPriority", a2))
      {
        if (CFEqual(@"WaitForBufferCompletion", a2))
        {
          if (!a3 || (v49 = CFBooleanGetTypeID(), v49 == CFGetTypeID(a3)))
          {
            if (FigCFEqual())
            {
              *(DerivedStorage + 592) = 1;
            }

            else
            {
              *(DerivedStorage + 592) = 0;
            }

            return *&v10;
          }

          v24 = fig_log_get_emitter();
          v25 = v3;
          v26 = 4294954516;
          v27 = 1570;
          goto LABEL_38;
        }

        if (!CFEqual(@"PixelBufferPoolSharingID", a2))
        {
          if (CFEqual(@"LoopTimeRange", a2))
          {
            if (!a3)
            {
              v53 = MEMORY[0x1E6960C98];
              v54 = *(MEMORY[0x1E6960C98] + 16);
              *(DerivedStorage + 696) = *MEMORY[0x1E6960C98];
              *(DerivedStorage + 712) = v54;
              v10 = *(v53 + 32);
              *(DerivedStorage + 728) = v10;
              return *&v10;
            }

            v50 = CFGetTypeID(a3);
            if (v50 == CFDictionaryGetTypeID())
            {
              v51 = (DerivedStorage + 696);
              CMTimeRangeMakeFromDictionary(&size, a3);
              v52 = *&size.start.epoch;
              *v51 = *&size.start.value;
              v51[1] = v52;
              *&v10 = *&size.duration.timescale;
              v51[2] = *&size.duration.timescale;
              return *&v10;
            }

            v24 = fig_log_get_emitter();
            v25 = v3;
            v26 = 4294954516;
            v27 = 1584;
          }

          else
          {
            v24 = fig_log_get_emitter();
            v25 = v3;
            v26 = 4294954512;
            v27 = 1588;
          }

          goto LABEL_38;
        }

        v34 = *(DerivedStorage + 560);
        *(DerivedStorage + 560) = a3;
        if (!a3)
        {
          goto LABEL_74;
        }

        goto LABEL_65;
      }

      if (!a3)
      {
        *(DerivedStorage + 616) = 0;
        goto LABEL_116;
      }

      v48 = CFGetTypeID(a3);
      if (v48 != CFNumberGetTypeID())
      {
        return *&v10;
      }

      v47 = (DerivedStorage + 616);
    }

    CFNumberGetValue(a3, kCFNumberSInt32Type, v47);
LABEL_116:
    openglVideoCompositor_setDispatchQueueClientPidAndThreadPriority(a1);
    return *&v10;
  }

  if (a3)
  {
    v44 = CFGetTypeID(a3);
    if (v44 != CFBooleanGetTypeID())
    {
      return *&v10;
    }

    v45 = CFBooleanGetValue(a3);
  }

  else
  {
    v45 = 0;
  }

  *(DerivedStorage + 624) = v45;
  openglVideoCompositor_setOpenGLContextPriority(a1);
  return *&v10;
}

void ovc_releaseLayerArrays(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  v3 = *(DerivedStorage + 664);
  if (v3)
  {
    v4 = *(DerivedStorage + 672);
    do
    {
      if (*v4)
      {
        CFRelease(*v4);
        *v4 = 0;
      }

      ++v4;
      --v3;
    }

    while (v3);
    v5 = *(v2 + 664);
    if (v5)
    {
      v6 = *(v2 + 680);
      do
      {
        if (*v6)
        {
          CFRelease(*v6);
          *v6 = 0;
        }

        ++v6;
        --v5;
      }

      while (v5);
      v7 = *(v2 + 664);
      if (v7)
      {
        v8 = *(v2 + 688);
        do
        {
          if (*v8)
          {
            CFRelease(*v8);
            *v8 = 0;
          }

          ++v8;
          --v7;
        }

        while (v7);
      }
    }
  }

  free(*(v2 + 672));
  *(v2 + 672) = 0;
  free(*(v2 + 680));
  *(v2 + 680) = 0;
  free(*(v2 + 688));
  *(v2 + 688) = 0;
  *(v2 + 664) = 0;
}

CFIndex __openglVideoCompositor_flush_block_invoke(uint64_t a1)
{
  result = CFDictionaryGetCount(*(*(a1 + 40) + 600));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFIndex __openglVideoCompositor_flush_block_invoke_2(uint64_t a1)
{
  result = CFDictionaryGetCount(*(*(a1 + 40) + 600));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void ovc_copyPerformanceDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v27 = 0;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    v8 = 0.0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    valuePtr = *(DerivedStorage + 816) - *(DerivedStorage + 756);
    keys[0] = @"NumberOfSinglePassCompositions";
    v4 = *MEMORY[0x1E695E480];
    values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    keys[1] = @"NumberOfMultiPassCompositions";
    values[1] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 756));
    keys[2] = @"NumberOfSourceFramesPassedThrough";
    values[2] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 744));
    keys[3] = @"TotalNumberOfLayers";
    values[3] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 748));
    keys[4] = @"TotalNumberOfPreProcessedLayers";
    values[4] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 752));
    if (*(DerivedStorage + 784) < 1)
    {
      v5 = 5;
    }

    else
    {
      v8 = (*(DerivedStorage + 760) / 1000000.0);
      *&v20 = 0x1F0B4DA98;
      *&v11 = CFNumberCreate(v4, kCFNumberDoubleType, &v8);
      v8 = (*(DerivedStorage + 768) / 1000000.0);
      *(&v20 + 1) = 0x1F0B4DAB8;
      *(&v11 + 1) = CFNumberCreate(v4, kCFNumberDoubleType, &v8);
      v8 = (*(DerivedStorage + 776) / (*(DerivedStorage + 784) * 1000000.0));
      *&v21 = 0x1F0B4DAD8;
      *&v12 = CFNumberCreate(v4, kCFNumberDoubleType, &v8);
      v5 = 8;
    }

    if (*(DerivedStorage + 816) >= 1)
    {
      v8 = (*(DerivedStorage + 792) / 1000000.0);
      keys[v5] = @"MinProcessingTime";
      values[v5] = CFNumberCreate(v4, kCFNumberDoubleType, &v8);
      v8 = (*(DerivedStorage + 800) / 1000000.0);
      keys[v5 + 1] = @"MaxProcessingTime";
      values[v5 + 1] = CFNumberCreate(v4, kCFNumberDoubleType, &v8);
      v8 = (*(DerivedStorage + 808) / (*(DerivedStorage + 816) * 1000000.0));
      keys[v5 | 2] = @"AverageProcessingTime";
      values[v5 | 2] = CFNumberCreate(v4, kCFNumberDoubleType, &v8);
      v5 += 3;
    }

    v6 = v5;
    v7 = values;
    *a2 = CFDictionaryCreate(v4, keys, values, v6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    do
    {
      if (*v7)
      {
        CFRelease(*v7);
      }

      ++v7;
      --v6;
    }

    while (v6);
  }
}

uint64_t ovc_createPixelBufferAttributesDictionary(const __CFAllocator *a1, CFTypeRef *a2)
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  qmemcpy(valuePtr, "v024f024ARGB", 12);
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v5 = Mutable;
  v6 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (v6)
  {
    v7 = v6;
    v8 = *MEMORY[0x1E695E480];
    v9 = valuePtr;
    v10 = 3;
    do
    {
      v11 = CFNumberCreate(v8, kCFNumberSInt32Type, v9);
      if (!v11)
      {
        CFRelease(v5);
        PixelBufferAttributesWithIOSurfaceSupport = 4294954510;
        v5 = v7;
        goto LABEL_11;
      }

      v12 = v11;
      CFArrayAppendValue(v7, v11);
      CFRelease(v12);
      v9 = (v9 + 4);
      --v10;
    }

    while (v10);
    CFDictionaryAddValue(v5, *MEMORY[0x1E6966130], v7);
    CFRelease(v7);
    FigGetAlignmentForIOSurfaceOutput();
    PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
    if (!PixelBufferAttributesWithIOSurfaceSupport)
    {
      *a2 = 0;
    }
  }

  else
  {
    PixelBufferAttributesWithIOSurfaceSupport = 4294954510;
  }

LABEL_11:
  CFRelease(v5);
  return PixelBufferAttributesWithIOSurfaceSupport;
}

void ovc_CFDictionarySetInt(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t openglVideoCompositor_setOpenGLContextPriority(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 624) == 0;
  v3 = *DerivedStorage;

  return OVCSetOpenGLContextPriority(v3, v2);
}

uint64_t openglVideoCompositor_setDispatchQueueClientPidAndThreadPriority(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 632))
  {
    FigDispatchQueueSetPriorityAndClientPID();
  }

  result = *(DerivedStorage + 640);
  if (result)
  {

    return FigDispatchQueueSetPriorityAndClientPID();
  }

  return result;
}

uint64_t openglVideoCompositor_RenderFrame(const void *a1, int a2, uint64_t a3, __CVBuffer **a4, uint64_t a5, uint64_t a6, uint64_t a7, const __CFDictionary *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, CGFloat a18)
{
  v323 = *MEMORY[0x1E69E9840];
  v309 = 0;
  v310 = &v309;
  v311 = 0x2020000000;
  v312 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  pixelBufferOut = 0;
  v316 = xmmword_196E75ED0;
  memset(&v307, 0, sizeof(v307));
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v19 = *(DerivedStorage + 632);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __openglVideoCompositor_RenderFrame_block_invoke;
  block[3] = &unk_1E7482510;
  block[4] = &v309;
  block[5] = DerivedStorage;
  dispatch_sync(v19, block);
  if (*(v310 + 6))
  {
    goto LABEL_364;
  }

  if (*(DerivedStorage + 424) <= 0.0 || *(DerivedStorage + 432) <= 0.0)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", pixels, p_ptr, v283);
    v134 = 0;
    v288 = 0;
    v289 = 0;
    valuea = 0;
    v295 = 0;
    goto LABEL_359;
  }

  v20 = OVCSetCurrentOpenGLContext(*DerivedStorage);
  *(v310 + 6) = v20;
  if (v20)
  {
LABEL_364:
    v134 = 0;
    v288 = 0;
    v289 = 0;
    valuea = 0;
    v295 = 0;
    goto LABEL_318;
  }

  FigOVCGLObjectCacheWrapperFlushCacheEntriesForDeletedBackings(*(DerivedStorage + 584));
  if (*(DerivedStorage + 568))
  {
    goto LABEL_27;
  }

  v21 = CMBaseObjectGetDerivedStorage();
  v318.a = 0.0;
  t1.a = 0.0;
  ptr.a = 0.0;
  v314 = 0;
  v313 = 0;
  v22 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v22, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  LODWORD(valuePtr.origin.x) = *(v21 + 408);
  v24 = *MEMORY[0x1E695E480];
  v25 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6966208], v25);
  CFRelease(v25);
  LODWORD(v305) = *(v21 + 416);
  v26 = CFNumberCreate(v24, kCFNumberSInt32Type, &v305);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69660B8], v26);
  CFRelease(v26);
  v27 = CFArrayCreateMutable(v24, 0, MEMORY[0x1E695E9C0]);
  v28 = v27;
  if (v27)
  {
    v29 = *(v21 + 521);
    if (v29)
    {
      appended = ovc_appendIntToArray(v27, 875704438);
      if (appended)
      {
        goto LABEL_16;
      }

      v29 = 1;
    }

    *(v21 + 512) = v29;
    appended = ovc_appendIntToArray(v28, 1111970369);
    if (!appended)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6966130], v28);
      FigGetAlignmentForIOSurfaceOutput();
      ovc_CFDictionarySetInt(Mutable, *MEMORY[0x1E6966140], SHIDWORD(v314));
      ovc_CFDictionarySetInt(Mutable, *MEMORY[0x1E6966020], v314);
      appended = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
      if (!appended)
      {
        appended = VTCreatePixelBufferPoolAttributesWithName();
        if (!appended)
        {
          CFGetAllocator(a1);
          v31 = (v21 + 568);
          p_ptr = &ptr;
          v283 = v21 + 568;
          LOWORD(pixels) = 0;
          appended = VTBuildPixelBufferPools2();
          if (!appended)
          {
            appended = 0;
            if (!*v31)
            {
              *v31 = ptr.a;
              LOBYTE(v313) = HIBYTE(v313);
              ptr.a = 0.0;
            }
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", pixels, p_ptr, v283);
    appended = v279;
  }

LABEL_16:
  if (*&v318.a)
  {
    CFRelease(*&v318.a);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (*&ptr.a)
  {
    CFRelease(*&ptr.a);
  }

  if (*&t1.a)
  {
    CFRelease(*&t1.a);
  }

  *(v310 + 6) = appended;
  if (appended)
  {
    goto LABEL_364;
  }

LABEL_27:
  v32 = CMBaseObjectGetDerivedStorage();
  t1.a = 0.0;
  *&t1.b = &t1;
  *&t1.c = 0x2020000000;
  t1.d = 0.0;
  v33 = *(v32 + 640);
  *&v318.a = MEMORY[0x1E69E9820];
  *&v318.b = 3221225472;
  *&v318.c = __ovc_adjustMaxInFlightBuffers_block_invoke;
  *&v318.d = &unk_1E7482510;
  *&v318.tx = &t1;
  *&v318.ty = v32;
  dispatch_sync(v33, &v318);
  v34 = 0;
  if (!*(v32 + 592))
  {
    v35 = *(*&t1.b + 24);
    v36 = 1;
    if (v35 >= 0)
    {
      v36 = v35 + 1;
    }

    v37 = v35 < 3;
    v34 = 3;
    if (v37)
    {
      v34 = v36;
    }
  }

  *(*&t1.b + 24) = v34;
  if (v34 < *(v32 + 596))
  {
    *(v32 + 596) = v34;
  }

  _Block_object_dispose(&t1, 8);
  *(v310 + 6) = 0;
  v38 = CFDictionaryGetValue(a8, @"ContainsTweening");
  v39 = *MEMORY[0x1E695E4D0];
  v40 = 0.0;
  if (*MEMORY[0x1E695E4D0] == v38)
  {
    *&v318.a = *a17;
    v318.c = *(a17 + 16);
    FigVideoCompositionInstructionGetNormalizedTime(a8, &v318);
    v40 = v41;
  }

  CGAffineTransformMakeTranslation(&v307, -1.0, -1.0);
  v42 = *(DerivedStorage + 516) + *(DerivedStorage + 516);
  t1 = v307;
  CGAffineTransformScale(&v318, &t1, v42 / *(DerivedStorage + 408), v42 / *(DerivedStorage + 416));
  v307 = v318;
  v43 = CFDictionaryGetValue(a8, @"LayerStack");
  if (v43 && (v44 = CFArrayGetTypeID(), v44 == CFGetTypeID(v43)))
  {
    count = CFArrayGetCount(v43);
    v295 = malloc_type_calloc(count, 0xD8uLL, 0x102004000196C1CuLL);
    if (!v295)
    {
      v134 = 0;
      v288 = 0;
      v289 = 0;
      valuea = 0;
      v295 = 0;
      *(v310 + 6) = -12786;
      goto LABEL_318;
    }

    if (count >= 1)
    {
      v45 = 0;
      v46 = 0;
      v291 = *MEMORY[0x1E6965EF8];
      v47 = 0;
      v290 = *MEMORY[0x1E6965D70];
      v48 = v295;
      while (1)
      {
        LODWORD(v305) = 0;
        valuePtr.origin = v47;
        valuePtr.size = v47;
        v314 = 0;
        value = v46;
        ValueAtIndex = CFArrayGetValueAtIndex(v43, v46);
        if (!ValueAtIndex)
        {
          break;
        }

        TypeID = CFDictionaryGetTypeID();
        if (TypeID != CFGetTypeID(ValueAtIndex))
        {
          break;
        }

        v51 = CFDictionaryGetValue(ValueAtIndex, @"SourceVideoTrackID");
        if (!v51)
        {
          break;
        }

        v52 = CFNumberGetTypeID();
        if (v52 != CFGetTypeID(v51))
        {
          break;
        }

        CFNumberGetValue(v51, kCFNumberSInt32Type, &v305);
        v47 = 0;
        if (a2 < 1)
        {
          break;
        }

        v53 = 0;
        while (*(a3 + 4 * v53) != v305)
        {
          if (a2 == ++v53)
          {
            goto LABEL_127;
          }
        }

        v54 = a4[v53];
        *v48 = v54;
        *(v48 + 1) = v53;
        if (v54)
        {
          v55 = MEMORY[0x1E695EFD0];
          v56 = *(MEMORY[0x1E695EFD0] + 16);
          *(v48 + 24) = *MEMORY[0x1E695EFD0];
          *(v48 + 40) = v56;
          *(v48 + 56) = *(v55 + 32);
          *(v48 + 4) = 1065353216;
          v57 = *(MEMORY[0x1E695F040] + 16);
          *(v48 + 5) = *MEMORY[0x1E695F040];
          *(v48 + 6) = v57;
          v58 = CFDictionaryGetValue(ValueAtIndex, @"ConstantAffineMatrix");
          if (v58)
          {
            v59 = CFArrayGetTypeID();
            if (v59 != CFGetTypeID(v58))
            {
              break;
            }

            FigGetCGAffineTransformFrom3x2MatrixArray(v58, &v318.a);
            v61 = *&v318.c;
            v60 = *&v318.tx;
            *(v48 + 24) = *&v318.a;
            *(v48 + 40) = v61;
            *(v48 + 56) = v60;
          }

          v62 = CFDictionaryGetValue(ValueAtIndex, @"ConstantOpacity");
          if (v62)
          {
            v63 = CFNumberGetTypeID();
            if (v63 == CFGetTypeID(v62))
            {
              LODWORD(v318.a) = 0;
              CFNumberGetValue(v62, kCFNumberFloat32Type, &v318);
              *(v48 + 4) = LODWORD(v318.a);
            }
          }

          v64 = CFDictionaryGetValue(ValueAtIndex, @"ConstantCropRectangle");
          if (v64)
          {
            v65 = CFDictionaryGetTypeID();
            if (v65 == CFGetTypeID(v64) && !CGRectMakeWithDictionaryRepresentation(v64, (v48 + 80)))
            {
              break;
            }
          }

          if (v39 == v38)
          {
            v83 = CFDictionaryGetValue(ValueAtIndex, @"TweenedAffineMatrix");
            if (v83)
            {
              v84 = CFArrayGetTypeID();
              if (v84 == CFGetTypeID(v83))
              {
                FigVideoCompositionInstructionEvaluateTweenedAffineMatrix(v83, &v318, v40);
                v86 = *&v318.c;
                v85 = *&v318.tx;
                *(v48 + 24) = *&v318.a;
                *(v48 + 40) = v86;
                *(v48 + 56) = v85;
                v48[72] = 1;
              }
            }

            v87 = CFDictionaryGetValue(ValueAtIndex, @"TweenedOpacity");
            if (v87)
            {
              v88 = CFArrayGetTypeID();
              if (v88 == CFGetTypeID(v87))
              {
                *(v48 + 4) = FigVideoCompositionInstructionEvaluateTweenedOpacity(v87, v40);
              }
            }

            v89 = CFDictionaryGetValue(ValueAtIndex, @"TweenedCropRectangle");
            if (v89)
            {
              v90 = CFArrayGetTypeID();
              if (v90 == CFGetTypeID(v89))
              {
                FigVideoCompositionInstructionEvaluateTweenedCropRectangle(v89, v40);
                *(v48 + 10) = v91;
                *(v48 + 11) = v92;
                *(v48 + 12) = v93;
                *(v48 + 13) = v94;
              }
            }
          }

          v66 = CVBufferCopyAttachment(*v48, v291, 0);
          FigVideoCompositorUtilityGetPixelAspectRatio(v66, &v314 + 1, &v314);
          if (v66)
          {
            CFRelease(v66);
          }

          v67 = CVBufferCopyAttachment(*v48, v290, 0);
          Width = CVPixelBufferGetWidth(*v48);
          Height = CVPixelBufferGetHeight(*v48);
          bvc_getCleanApertureRect(v67, Width, Height, &valuePtr.origin.x);
          *(v310 + 6) = v70;
          if (v67)
          {
            CFRelease(v67);
            v70 = *(v310 + 6);
          }

          if (v70)
          {
            goto LABEL_128;
          }

          v328.origin.x = *(v48 + 10) + valuePtr.origin.x;
          v328.origin.y = *(v48 + 11) + valuePtr.origin.y;
          v328.size.width = *(v48 + 12);
          v328.size.height = *(v48 + 13);
          *(v48 + 112) = CGRectIntersection(valuePtr, v328);
          v71 = *(v48 + 40);
          *&t1.a = *(v48 + 24);
          *&t1.c = v71;
          *&t1.tx = *(v48 + 56);
          CGAffineTransformScale(&v318, &t1, SHIDWORD(v314) / v314, 1.0);
          v73 = *&v318.c;
          v72 = *&v318.tx;
          *(v48 + 24) = *&v318.a;
          *(v48 + 40) = v73;
          *(v48 + 56) = v72;
          v74 = *(v48 + 40);
          *&t1.a = *(v48 + 24);
          *&t1.c = v74;
          *&t1.tx = *(v48 + 56);
          CGAffineTransformTranslate(&v318, &t1, -valuePtr.origin.x, -valuePtr.origin.y);
          v76 = *&v318.c;
          v75 = *&v318.tx;
          *(v48 + 24) = *&v318.a;
          *(v48 + 40) = v76;
          *(v48 + 56) = v75;
          v77 = *(v48 + 40);
          *&t1.a = *(v48 + 24);
          *&t1.c = v77;
          *&t1.tx = *(v48 + 56);
          v78 = *(DerivedStorage + 456);
          *&ptr.a = *(DerivedStorage + 440);
          *&ptr.c = v78;
          *&ptr.tx = *(DerivedStorage + 472);
          CGAffineTransformConcat(&v318, &t1, &ptr);
          v80 = *&v318.c;
          v79 = *&v318.tx;
          *(v48 + 24) = *&v318.a;
          *(v48 + 40) = v80;
          *(v48 + 56) = v79;
          v81 = *(v48 + 40);
          *&v318.a = *(v48 + 24);
          *&v318.c = v81;
          *&v318.tx = *(v48 + 56);
          if (OVCIsAffineTransformInvertible(&v318.a))
          {
            if (*(DerivedStorage + 520) && !v48[72])
            {
              memset(&t1, 0, 32);
              bvc_getCleanApertureRect(*(DerivedStorage + 488), *(DerivedStorage + 408), *(DerivedStorage + 416), &t1.a);
              *(v310 + 6) = v95;
              if (v95)
              {
                goto LABEL_128;
              }

              v96 = *(DerivedStorage + 516);
              CGAffineTransformMakeScale(&v318, (1.0 / v96), (1.0 / v96));
              v324.origin.x = t1.a;
              v324.origin.y = t1.b;
              v324.size.width = t1.c;
              v324.size.height = t1.d;
              v325 = CGRectApplyAffineTransform(v324, &v318);
              x = v325.origin.x;
              y = v325.origin.y;
              v99 = v325.size.width;
              v100 = v325.size.height;
              t1.a = v325.origin.x;
              t1.b = v325.origin.y;
              t1.c = v325.size.width;
              t1.d = v325.size.height;
              v101 = *v48;
              v326 = *(v48 + 112);
              v102 = *(v48 + 40);
              *&v318.a = *(v48 + 24);
              *&v318.c = v102;
              *&v318.tx = *(v48 + 56);
              ovc_getPrescalingParameters(v101, &v318, v48 + 208, v48 + 18, v48 + 22, v48 + 14, v48 + 24, v48 + 24, v326.origin.x, v326.origin.y, v326.size.width, v326.size.height, x, y, v99, v100, v96);
              *(v310 + 6) = 0;
            }

            else
            {
              *(v48 + 24) = CVPixelBufferGetWidth(*v48);
              *(v48 + 25) = CVPixelBufferGetHeight(*v48);
            }

            v82 = value;
            v103 = *(v48 + 4);
            v104 = 0.0;
            if (v103 <= 0.0 || (v104 = 1.0, v103 >= 1.0))
            {
              *(v48 + 4) = v104;
            }

            ++v45;
            v48 += 216;
          }

          else
          {
            v82 = value;
          }

          v47 = 0;
        }

        else
        {
          v82 = value;
        }

        v46 = v82 + 1;
        if (v46 == count)
        {
          goto LABEL_91;
        }
      }

LABEL_127:
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", pixels, p_ptr, v283);
      *(v310 + 6) = v133;
      goto LABEL_128;
    }

    v45 = 0;
  }

  else
  {
    count = 0;
    v45 = 0;
    v295 = 0;
  }

LABEL_91:
  v105 = DerivedStorage;
  if (*(DerivedStorage + 520))
  {
    if (count != *(DerivedStorage + 664))
    {
      ovc_releaseLayerArrays(a1);
      v106 = malloc_type_calloc(count, 8uLL, 0x2004093837F09uLL);
      *(DerivedStorage + 672) = v106;
      if (!v106 || (v107 = malloc_type_calloc(count, 8uLL, 0x2004093837F09uLL), (*(DerivedStorage + 688) = v107) == 0) || (v108 = malloc_type_calloc(count, 8uLL, 0x2004093837F09uLL), v105 = DerivedStorage, (*(DerivedStorage + 680) = v108) == 0))
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", pixels, p_ptr, v283);
        goto LABEL_128;
      }

      *(DerivedStorage + 664) = count;
    }

    v110 = *(v105 + 8);
    v109 = (v105 + 8);
    if (!v110)
    {
      v111 = OVCBicubicPrescalerCreate(0, *(DerivedStorage + 576), *(DerivedStorage + 584), v109);
      *(v310 + 6) = v111;
      if (v111)
      {
        goto LABEL_128;
      }
    }
  }

  else
  {
    v112 = *(DerivedStorage + 8);
    if (v112)
    {
      OVCBicubicPrescalerDestroy(v112);
      *(DerivedStorage + 8) = 0;
      ovc_releaseLayerArrays(a1);
    }
  }

  if (v45 < 1)
  {
    goto LABEL_106;
  }

  v113 = 0;
  v114 = 0;
  v115 = v45;
  while (1)
  {
    v116 = &v295[v114];
    if (*&v295[v114 + 16] != 0.0)
    {
      break;
    }

    v114 += 216;
    v113 += 8;
    if (!--v115)
    {
      goto LABEL_106;
    }
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(*v116);
  v131 = 0;
  if (PixelFormatType > 875704421)
  {
    if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
    {
      goto LABEL_338;
    }

    if (PixelFormatType != 1111970369)
    {
      goto LABEL_335;
    }

    goto LABEL_337;
  }

  if (PixelFormatType == 32)
  {
LABEL_337:
    v131 = 1;
    goto LABEL_338;
  }

  if (PixelFormatType == 846624121)
  {
LABEL_338:
    *(v310 + 6) = 0;
    goto LABEL_339;
  }

LABEL_335:
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", pixels, p_ptr, v283);
  *(v310 + 6) = v254;
  if (v254)
  {
    goto LABEL_128;
  }

  v131 = 0;
LABEL_339:
  if ((v131 & 1) != 0 || v116[4] != 1.0 || (v255 = &v295[v114], v256 = *&v295[v114 + 24], v257 = *&v295[v114 + 56], *&v318.c = *&v295[v114 + 40], *&v318.tx = v257, *&v318.a = v256, !CGAffineTransformIsIdentity(&v318)) || (v258 = *(DerivedStorage + 488), v260 = *(v255 + 24), v259 = *(v255 + 25), v261 = v255[14], v262 = v255[15], v263 = v255[16], v264 = v255[17], v266 = *(DerivedStorage + 408), v265 = *(DerivedStorage + 416), memset(&v318, 0, 32), bvc_getCleanApertureRect(v258, v266, v265, &v318.a), v267) || v260 != v266 || v259 != v265 || (v329.origin.x = v318.a, v329.origin.y = v318.b, v329.size.width = v318.c, v329.size.height = v318.d, v327.origin.x = v261, v327.origin.y = v262, v327.size.width = v263, v327.size.height = v264, !CGRectEqualToRect(v327, v329)))
  {
LABEL_106:
    v285 = 1;
    v117 = pixelBufferOut;
    goto LABEL_107;
  }

  if (v295[v114 + 208])
  {
    v268 = DerivedStorage;
    v269 = *(*(DerivedStorage + 680) + v113);
    if (v269)
    {
      CFRelease(v269);
      v268 = DerivedStorage;
      *(*(DerivedStorage + 680) + v113) = 0;
    }

    ++*(v268 + 752);
    v270 = *&v295[v114];
    v271 = CVPixelBufferGetWidth(v270);
    v272 = CVPixelBufferGetHeight(*&v295[v114]);
    v273 = ovc_preScaleBuffer(v270, *(v255 + 24), *(v255 + 25), *(DerivedStorage + 8), (*(DerivedStorage + 672) + v113), (*(DerivedStorage + 680) + v113), 0.0, 0.0, v271, v272);
    *(v310 + 6) = v273;
    if (v273)
    {
      goto LABEL_128;
    }

    v274 = *(DerivedStorage + 688);
    v275 = *(v274 + v113);
    v276 = *&v295[v114];
    *(v274 + v113) = v276;
    if (v276)
    {
      CFRetain(v276);
    }

    if (v275)
    {
      CFRelease(v275);
    }

    v277 = DerivedStorage;
    v278 = *(*(DerivedStorage + 680) + v113);
    *&v295[v114] = v278;
  }

  else
  {
    v278 = *&v295[v114];
    v277 = DerivedStorage;
  }

  ++*(v277 + 744);
  v117 = CFRetain(v278);
  v285 = 0;
  pixelBufferOut = v117;
LABEL_107:
  if (v117)
  {
    v288 = 0;
    v289 = 0;
    valuea = 0;
    goto LABEL_315;
  }

  v118 = CFGetAllocator(a1);
  v119 = CVPixelBufferPoolCreatePixelBuffer(v118, *(DerivedStorage + 568), &pixelBufferOut);
  *(v310 + 6) = v119;
  if (!v119)
  {
    v120 = CVPixelBufferGetPixelFormatType(pixelBufferOut);
    if (v45 < 1)
    {
      v292 = 1;
      if (a2 < 1)
      {
        v135 = 0;
        goto LABEL_133;
      }

      v129 = a4;
    }

    else
    {
      v121 = 0;
      v122 = v295 + 24;
      v123 = v45;
      do
      {
        v124 = *v122;
        v125 = v122[2];
        *&t1.c = v122[1];
        *&t1.tx = v125;
        *&t1.a = v124;
        ptr = v307;
        CGAffineTransformConcat(&v318, &t1, &ptr);
        v126 = *&v318.a;
        v127 = *&v318.tx;
        v122[1] = *&v318.c;
        v122[2] = v127;
        *v122 = v126;
        if (CVPixelBufferGetPixelFormatType(*(v122 - 3)) == 1111970369 && v120 == 875704438)
        {
          v121 = 1;
        }

        v122 = (v122 + 216);
        --v123;
      }

      while (v123);
      v292 = v121 == 0;
      v129 = &v295[216 * v45 - 216];
    }

    v135 = *v129;
LABEL_133:
    v136 = *(DerivedStorage + 528);
    v137 = MEMORY[0x1E6965F98];
    if (!v136 || (valuea = CFRetain(v136)) == 0)
    {
      valuea = CVBufferCopyAttachment(v135, *v137, 0);
      if (!valuea)
      {
        valuea = CFRetain(*MEMORY[0x1E6965FD0]);
      }
    }

    v138 = *(DerivedStorage + 544);
    v139 = MEMORY[0x1E6965D88];
    if (!v138 || (v289 = CFRetain(v138)) == 0)
    {
      v289 = CVBufferCopyAttachment(v135, *v139, 0);
      if (!v289)
      {
        v289 = CFRetain(*MEMORY[0x1E6965DB8]);
      }
    }

    v140 = *(DerivedStorage + 536);
    v141 = MEMORY[0x1E6965F30];
    if (!v140 || (v288 = CFRetain(v140)) == 0)
    {
      v288 = CVBufferCopyAttachment(v135, *v141, 0);
      if (!v288)
      {
        v288 = CFRetain(*MEMORY[0x1E6965F50]);
      }
    }

    key = *v137;
    CVBufferSetAttachment(pixelBufferOut, *v137, valuea, kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(pixelBufferOut, *v139, v289, kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(pixelBufferOut, *v141, v288, kCVAttachmentMode_ShouldPropagate);
    if (*(DerivedStorage + 520) && count >= 1)
    {
      v142 = count + 1;
      v143 = 8 * count - 8;
      v144 = 216 * count;
      do
      {
        v145 = &v295[v144];
        if (v295[v144 - 8])
        {
          v146 = *(v145 - 27);
          if (v146 != *(*(DerivedStorage + 688) + v143))
          {
            v147 = *(DerivedStorage + 680);
            if (*(v147 + v143))
            {
              CFRelease(*(v147 + v143));
              v148 = DerivedStorage;
              *(*(DerivedStorage + 680) + v143) = 0;
              v146 = *(v145 - 27);
              v147 = *(DerivedStorage + 680);
            }

            else
            {
              v148 = DerivedStorage;
            }

            ++*(v148 + 752);
            v149 = ovc_preScaleBuffer(v146, *&v295[v144 - 40], *&v295[v144 - 32], *(v148 + 8), (*(v148 + 672) + v143), (v147 + v143), *&v295[v144 - 72], *&v295[v144 - 64], *&v295[v144 - 56], *&v295[v144 - 48]);
            *(v310 + 6) = v149;
            if (v149)
            {
              goto LABEL_317;
            }

            v150 = *(DerivedStorage + 688);
            v151 = *(v150 + v143);
            v152 = *(v145 - 27);
            *(v150 + v143) = v152;
            if (v152)
            {
              CFRetain(v152);
            }

            if (v151)
            {
              CFRelease(v151);
            }
          }

          *(v145 - 27) = *(*(DerivedStorage + 680) + v143);
        }

        --v142;
        v143 -= 8;
        v144 -= 216;
      }

      while (v142 > 1);
    }

    v153 = CFDictionaryGetValue(a8, @"BackgroundColorARGB");
    if (v153)
    {
      v154 = CFArrayGetTypeID();
      if (v154 == CFGetTypeID(v153))
      {
        v155 = 0;
        v156 = &v316;
        do
        {
          v157 = CFArrayGetValueAtIndex(v153, v155);
          if (v157)
          {
            v158 = CFNumberGetTypeID();
            if (v158 == CFGetTypeID(v157))
            {
              CFNumberGetValue(v157, kCFNumberFloat32Type, v156);
            }
          }

          ++v155;
          v156 = (v156 + 4);
        }

        while (v155 != 4);
      }
    }

    if (*(DerivedStorage + 384))
    {
      v159 = pixelBufferOut;
      v160 = CMBaseObjectGetDerivedStorage();
      PlaneCount = CVPixelBufferGetPlaneCount(v159);
      if (PlaneCount <= 1)
      {
        v162 = 1;
      }

      else
      {
        v162 = PlaneCount;
      }

      *(v160 + 400) = v162;
      glDeleteFramebuffers(2, (v160 + 16));
      glDeleteTextures(2, (v160 + 388));
      *(v160 + 16) = 0;
      *(v160 + 388) = 0;
      if (*(v160 + 512))
      {
        glGenFramebuffers(v162, (v160 + 16));
        glGenTextures(v162, (v160 + 388));
      }

      for (i = 0; i != v162; ++i)
      {
        WidthOfPlane = OVCCVPixelBufferGetWidthOfPlane(v159, i);
        HeightOfPlane = OVCCVPixelBufferGetHeightOfPlane(v159, i);
        if (*(v160 + 512))
        {
          v166 = HeightOfPlane;
          v167 = v160 + 4 * i;
          glBindTexture(0xDE1u, *(v167 + 388));
          glTexParameteri(0xDE1u, 0x2802u, 33071);
          glTexParameteri(0xDE1u, 0x2803u, 33071);
          glTexParameteri(0xDE1u, 0x2800u, 9728);
          glTexParameteri(0xDE1u, 0x2801u, 9728);
          glTexImage2D(0xDE1u, 0, 6408, WidthOfPlane, v166, 0, 0x80E1u, 0x1401u, 0);
          glBindFramebuffer(0x8D40u, *(v167 + 16));
          glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, *(v167 + 388), 0);
        }
      }

      *(DerivedStorage + 384) = 0;
    }

    v168 = CVPixelBufferGetPlaneCount(pixelBufferOut);
    v169 = 0;
    if (v168 <= 1)
    {
      v170 = 1;
    }

    else
    {
      v170 = v168;
    }

    v293 = v170;
    theDicta = v120;
    while (1)
    {
      valuePtr.origin = xmmword_196E79480;
      v318.a = 0.0;
      ovc_getColorMatrixForPixelFormatConversion(1111970369, 0, v120, valuea, &v318);
      if (v171)
      {
LABEL_358:
        v134 = 0;
LABEL_359:
        *(v310 + 6) = v171;
        goto LABEL_318;
      }

      v172 = vadd_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(*(*&v318.a + 16), *(&v316 + 2)), **&v318.a, *(&v316 + 1)), *(*&v318.a + 32), *(&v316 + 3)), *(*&v318.a + 48));
      v173 = *(*&v318.a + 56) + (((*(&v316 + 2) * *(*&v318.a + 24)) + (*(&v316 + 1) * *(*&v318.a + 8))) + (*(&v316 + 3) * *(*&v318.a + 40)));
      if (v120 == 875704438)
      {
        if (v169 == 1)
        {
          *&valuePtr.origin.x = __PAIR64__(LODWORD(v173), v172.u32[1]);
          LODWORD(valuePtr.origin.y) = v172.i32[1];
          goto LABEL_191;
        }

        if (!v169)
        {
          *&valuePtr.origin.x = vdup_lane_s32(v172, 0);
          LODWORD(valuePtr.origin.y) = v172.i32[0];
          v173 = *v172.i32;
          goto LABEL_191;
        }
      }

      else if (v120 == 1111970369)
      {
        *&valuePtr.origin.x = v172;
        *&valuePtr.origin.y = v173;
        LODWORD(v173) = v316;
LABEL_191:
        *(&valuePtr.origin.y + 1) = v173;
        *(v310 + 6) = 0;
        goto LABEL_193;
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", pixels, p_ptr, v283);
      *(v310 + 6) = v174;
      if (v174)
      {
        goto LABEL_317;
      }

LABEL_193:
      v175 = pixelBufferOut;
      v296 = v169;
      if (v292)
      {
        v176 = CMBaseObjectGetDerivedStorage();
        v177 = OVCCVPixelBufferGetWidthOfPlane(v175, v169);
        v178 = OVCCVPixelBufferGetHeightOfPlane(v175, v169);
        glEnable(0xBE2u);
        OVCRegisterPixelBufferAsRenderTarget(*v176, *(v176 + 584), v175, v169);
        if (v171)
        {
          goto LABEL_358;
        }

        v171 = ovc_setupViewPortAndClear(a1, v177, v178, &valuePtr);
        if (v171)
        {
          goto LABEL_358;
        }

        if (glCheckFramebufferStatus(0x8D40u) == 36053)
        {
LABEL_200:
          *(v310 + 6) = 0;
          goto LABEL_202;
        }
      }

      else
      {
        v179 = OVCCVPixelBufferGetWidthOfPlane(pixelBufferOut, v169);
        v180 = OVCCVPixelBufferGetHeightOfPlane(pixelBufferOut, v169);
        v181 = CMBaseObjectGetDerivedStorage();
        glBindFramebuffer(0x8D40u, *(v181 + 4 * v169 + 16));
        glEnable(0xBE2u);
        v171 = ovc_setupViewPortAndClear(a1, v179, v180, &valuePtr);
        if (v171)
        {
          goto LABEL_358;
        }

        if (glCheckFramebufferStatus(0x8D40u) == 36053)
        {
          goto LABEL_200;
        }
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", pixels, p_ptr, v283);
      *(v310 + 6) = v182;
      if (v182)
      {
        goto LABEL_317;
      }

LABEL_202:
      if (count >= 1)
      {
        v183 = &v295[216 * count - 216];
        v184 = count + 1;
        while (1)
        {
          memset(&v318, 0, 36);
          v305 = 0;
          if (*v183)
          {
            if (*(v183 + 16) >= 0.002)
            {
              break;
            }
          }

LABEL_271:
          --v184;
          v183 -= 216;
          if (v184 <= 1)
          {
            goto LABEL_272;
          }
        }

        v186 = *(v183 + 112);
        v185 = *(v183 + 120);
        v188 = *(v183 + 128);
        v187 = *(v183 + 136);
        v134 = CVBufferCopyAttachment(*v183, key, 0);
        v189 = CVPixelBufferGetWidth(*v183);
        v190 = CVPixelBufferGetHeight(*v183);
        v191 = CVPixelBufferGetPixelFormatType(*v183);
        v192 = CVPixelBufferGetPlaneCount(*v183);
        if (theDicta == 1111970369)
        {
          v196 = 772;
        }

        else
        {
          if (theDicta != 875704438)
          {
            goto LABEL_220;
          }

          v193 = *(v183 + 16);
          if (v191 == 875704422)
          {
            goto LABEL_211;
          }

          if (v191 != 1111970369)
          {
            if (v191 == 875704438)
            {
LABEL_211:
              if (v193 >= 0.998)
              {
                v194 = 0;
                v195 = 1;
              }

              else
              {
                glBlendColor(0.0, 0.0, 0.0, v193);
                v194 = 32772;
                v195 = 32771;
              }

              glBlendFunc(v195, v194);
LABEL_219:
              glBlendEquation(0x8006u);
              *(v310 + 6) = 0;
LABEL_221:
              v198 = CMBaseObjectGetDerivedStorage();
              v199 = CVPixelBufferGetPixelFormatType(*v183);
              v200 = CVBufferCopyAttachment(*v183, key, 0);
              if (theDicta == 875704438)
              {
                switch(v199)
                {
                  case 0x34323066u:
                    if (v296)
                    {
                      if (v296 != 1)
                      {
                        goto LABEL_251;
                      }

                      v201 = 132;
                    }

                    else
                    {
                      v201 = 96;
                    }

                    break;
                  case 0x34323076u:
                    if (v296 == 1)
                    {
                      v202 = FigCFEqual() == 0;
                      v201 = 132;
                      v203 = 204;
                    }

                    else
                    {
                      if (v296)
                      {
                        goto LABEL_251;
                      }

                      v202 = FigCFEqual() == 0;
                      v201 = 96;
                      v203 = 168;
                    }

                    if (!v202)
                    {
                      v201 = v203;
                    }

                    break;
                  case 0x42475241u:
                    if (v296)
                    {
                      if (v296 != 1)
                      {
                        goto LABEL_251;
                      }

                      v201 = 276;
                    }

                    else
                    {
                      v201 = 240;
                    }

                    break;
                  default:
                    goto LABEL_251;
                }
              }

              else
              {
                if (theDicta != 1111970369)
                {
                  goto LABEL_251;
                }

                if (v199 == 875704422)
                {
                  goto LABEL_226;
                }

                if (v199 != 1111970369)
                {
                  if (v199 == 875704438)
                  {
LABEL_226:
                    v201 = 60;
                    goto LABEL_249;
                  }

LABEL_251:
                  fig_log_get_emitter();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", pixels, p_ptr, v283);
                  v204 = v206;
                  v205 = 0;
                  if (v200)
                  {
LABEL_252:
                    CFRelease(v200);
                  }

LABEL_253:
                  *(v310 + 6) = v204;
                  if (v204)
                  {
                    goto LABEL_318;
                  }

                  glUseProgram(*v205);
                  if ((v205[4] & 0x80000000) == 0)
                  {
                    glActiveTexture(0x84C0u);
                    glUniform1i(v205[4], 0);
                    OVCRegisterPixelBufferAsTexture(*DerivedStorage, *(DerivedStorage + 584), *v183, 0, *(DerivedStorage + 521) != 0);
                    *(v310 + 6) = v207;
                    if (v207)
                    {
                      goto LABEL_318;
                    }

                    glTexParameteri(0xDE1u, 0x2800u, 9729);
                    glTexParameteri(0xDE1u, 0x2801u, 9729);
                    glTexParameteri(0xDE1u, 0x2802u, 33071);
                    glTexParameteri(0xDE1u, 0x2803u, 33071);
                  }

                  if (v192 >= 2 && (v205[5] & 0x80000000) == 0)
                  {
                    glActiveTexture(0x84C1u);
                    glUniform1i(v205[5], 1);
                    OVCRegisterPixelBufferAsTexture(*DerivedStorage, *(DerivedStorage + 584), *v183, 1uLL, *(DerivedStorage + 521) != 0);
                    *(v310 + 6) = v208;
                    if (v208)
                    {
                      goto LABEL_318;
                    }

                    glTexParameteri(0xDE1u, 0x2800u, 9729);
                    glTexParameteri(0xDE1u, 0x2801u, 9729);
                    glTexParameteri(0xDE1u, 0x2802u, 33071);
                    glTexParameteri(0xDE1u, 0x2803u, 33071);
                  }

                  v209 = v205[1];
                  if ((v209 & 0x80000000) == 0)
                  {
                    if (*(DerivedStorage + 521))
                    {
                      v210 = 1;
                    }

                    else
                    {
                      v210 = 3;
                    }

                    glUniform1i(v209, v210);
                  }

                  glUniform1f(v205[3], *(v183 + 16));
                  *&v318.a = vcvt_f32_f64(*(v183 + 24));
                  LODWORD(v318.b) = 0;
                  *(&v318.b + 4) = vcvt_f32_f64(*(v183 + 40));
                  HIDWORD(v318.c) = 0;
                  *&v318.d = vcvt_f32_f64(*(v183 + 56));
                  LODWORD(v318.tx) = 1065353216;
                  glUniformMatrix3fv(v205[2], 1, 0, &v318);
                  if ((v205[6] & 0x80000000) == 0)
                  {
                    ovc_getColorMatrixForPixelFormatConversion(v191, v134, theDicta, valuea, &v305);
                    *(v310 + 6) = v211;
                    if (v211)
                    {
                      goto LABEL_318;
                    }

                    glUniformMatrix4fv(v205[6], 1, 0, v305);
                  }

                  *&v212 = v186;
                  *&v213 = v185;
                  *&t1.a = __PAIR64__(v213, v212);
                  *&v214 = v186 + v188;
                  *&t1.b = __PAIR64__(v213, v214);
                  *&v215 = v185 + v187;
                  *&t1.c = __PAIR64__(v215, v212);
                  *&t1.d = __PAIR64__(v215, v214);
                  *&v216 = v186 / v189;
                  *&v217 = v185 / v190;
                  *&ptr.a = __PAIR64__(v217, v216);
                  *&v218 = (v186 + v188) / v189;
                  *&ptr.b = __PAIR64__(v217, v218);
                  *&v219 = (v185 + v187) / v190;
                  *&ptr.c = __PAIR64__(v219, v216);
                  *&ptr.d = __PAIR64__(v219, v218);
                  glVertexAttribPointer(v205[7], 2, 0x1406u, 0, 0, &t1);
                  glEnableVertexAttribArray(v205[7]);
                  glVertexAttribPointer(v205[8], 2, 0x1406u, 0, 0, &ptr);
                  glEnableVertexAttribArray(v205[8]);
                  ++*(DerivedStorage + 748);
                  glDrawArrays(5u, 0, 4);
                  if (v134)
                  {
                    CFRelease(v134);
                  }

                  goto LABEL_271;
                }

                v201 = 24;
              }

LABEL_249:
              v204 = 0;
              v205 = (v198 + v201);
              if (v200)
              {
                goto LABEL_252;
              }

              goto LABEL_253;
            }

LABEL_220:
            fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", pixels, p_ptr, v283);
            *(v310 + 6) = v197;
            if (v197)
            {
              goto LABEL_318;
            }

            goto LABEL_221;
          }

          glBlendColor(0.0, 0.0, 0.0, v193);
          v196 = 770;
        }

        glBlendFuncSeparate(v196, 0x303u, 0, 1u);
        goto LABEL_219;
      }

LABEL_272:
      v169 = v296 + 1;
      v120 = theDicta;
      if ((v296 + 1) == v293)
      {
        if (v292)
        {
LABEL_295:
          v231 = pixelBufferOut;
          v232 = CMBaseObjectGetDerivedStorage();
          v233 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
          if (v233)
          {
            v234 = a4;
            if (a2)
            {
              v235 = a2;
              do
              {
                v236 = v234;
                if (*v234)
                {
                  CFArrayAppendValue(v233, *v234);
                }

                v234 = v236 + 1;
                --v235;
              }

              while (v235);
            }

            v237 = v232[80];
            *&v318.a = MEMORY[0x1E69E9820];
            *&v318.b = 3221225472;
            *&v318.c = __ovc_setNewInFlightEntry_block_invoke;
            *&v318.d = &__block_descriptor_72_e5_v8__0l;
            *&v318.tx = v232;
            v318.ty = a18;
            v319 = v231;
            v320 = UpTimeNanoseconds;
            v321 = v233;
            dispatch_sync(v237, &v318);
            v238 = *v232;
            v239 = v232[79];
            *&t1.a = MEMORY[0x1E69E9820];
            *&t1.b = 3221225472;
            *&t1.c = __ovc_setNewInFlightEntry_block_invoke_2;
            *&t1.d = &__block_descriptor_48_e5_v8__0l;
            *&t1.tx = a1;
            t1.ty = a18;
            v240 = OVCRegisterFenceBlock(v238, v239, &t1);
            if (v240)
            {
              v241 = v232[80];
              *&ptr.a = MEMORY[0x1E69E9820];
              *&ptr.b = 3221225472;
              *&ptr.c = __ovc_setNewInFlightEntry_block_invoke_3;
              *&ptr.d = &__block_descriptor_48_e5_v8__0l;
              *&ptr.tx = v232;
              ptr.ty = a18;
              dispatch_sync(v241, &ptr);
            }

            CFRelease(v233);
          }

          else
          {
            fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", pixels, p_ptr, v283);
            v240 = v280;
          }

          *(v310 + 6) = v240;
          if (v240)
          {
            goto LABEL_317;
          }

          glFlush();
          CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965D70], *(DerivedStorage + 488), kCVAttachmentMode_ShouldPropagate);
          CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965EF8], *(DerivedStorage + 496), kCVAttachmentMode_ShouldPropagate);
          v242 = FigGetUpTimeNanoseconds();
          v243 = CMBaseObjectGetDerivedStorage();
          ptr.a = 0.0;
          *&ptr.b = &ptr;
          *&ptr.c = 0x2020000000;
          ptr.d = 0.0;
          v244 = *(v243 + 640);
          *&v318.a = MEMORY[0x1E69E9820];
          *&v318.b = 3221225472;
          *&v318.c = __ovc_enforceMaxInFlightBufferCount_block_invoke;
          *&v318.d = &unk_1E7482510;
          *&v318.tx = &ptr;
          *&v318.ty = v243;
          dispatch_sync(v244, &v318);
          if (*(*&ptr.b + 24) > *(v243 + 596))
          {
            do
            {
              FigSemaphoreWaitRelative();
              v245 = *(v243 + 640);
              *&t1.a = MEMORY[0x1E69E9820];
              *&t1.b = 3221225472;
              *&t1.c = __ovc_enforceMaxInFlightBufferCount_block_invoke_2;
              *&t1.d = &unk_1E7482510;
              *&t1.tx = &ptr;
              *&t1.ty = v243;
              dispatch_sync(v245, &t1);
              v246 = *(v243 + 596);
            }

            while (*(*&ptr.b + 24) > v246);
            if (v246 <= 2 && !*(v243 + 592))
            {
              *(v243 + 596) = v246 + 1;
            }
          }

          _Block_object_dispose(&ptr, 8);
          *(v310 + 6) = 0;
          v247 = FigGetUpTimeNanoseconds();
          v248 = (v247 - v242) / 1000;
          ++*(DerivedStorage + 784);
          *(DerivedStorage + 776) += v248;
          v249 = *(DerivedStorage + 760);
          if (v249 >= v248)
          {
            v249 = (v247 - v242) / 1000;
          }

          *(DerivedStorage + 760) = v249;
          if (*(DerivedStorage + 768) > v248)
          {
            v248 = *(DerivedStorage + 768);
          }

          *(DerivedStorage + 768) = v248;
          FigOVCGLObjectCacheWrapperFlushCacheEntriesForDeletedBackings(*(DerivedStorage + 584));
LABEL_315:
          if ((v285 & 1) == 0)
          {
            v250 = *(DerivedStorage + 632);
            v304[0] = MEMORY[0x1E69E9820];
            v304[1] = 3221225472;
            v304[2] = __openglVideoCompositor_RenderFrame_block_invoke_2;
            v304[3] = &__block_descriptor_64_e5_v8__0l;
            v304[4] = DerivedStorage;
            v304[5] = UpTimeNanoseconds;
            *&v304[6] = a18;
            v304[7] = pixelBufferOut;
            dispatch_sync(v250, v304);
          }

LABEL_317:
          v134 = 0;
          goto LABEL_318;
        }

        v220 = 0;
        ++*(DerivedStorage + 756);
        while (2)
        {
          v221 = pixelBufferOut;
          v222 = CMBaseObjectGetDerivedStorage();
          ptr.b = 0.0;
          ptr.a = 0.0;
          v223 = OVCCVPixelBufferGetWidthOfPlane(v221, v220);
          v224 = OVCCVPixelBufferGetHeightOfPlane(v221, v220);
          glDisable(0xBE2u);
          OVCRegisterPixelBufferAsRenderTarget(*v222, *(v222 + 584), v221, v220);
          if (v225 || (v225 = ovc_setupViewPortAndClear(a1, v223, v224, &ptr)) != 0)
          {
            *(v310 + 6) = v225;
            goto LABEL_317;
          }

          if (glCheckFramebufferStatus(0x8D40u) == 36053)
          {
            *(v310 + 6) = 0;
          }

          else
          {
            fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", pixels, p_ptr, v283);
            *(v310 + 6) = v226;
            if (v226)
            {
              goto LABEL_317;
            }
          }

          v227 = CMBaseObjectGetDerivedStorage();
          if (theDicta != 875704438)
          {
            goto LABEL_287;
          }

          if (v220)
          {
            if (v220 == 1)
            {
              v228 = 348;
              goto LABEL_286;
            }

LABEL_287:
            fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", pixels, p_ptr, v283);
            *(v310 + 6) = v230;
            if (v230)
            {
              goto LABEL_317;
            }

            v229 = 0;
          }

          else
          {
            v228 = 312;
LABEL_286:
            v229 = v227 + v228;
            *(v310 + 6) = 0;
          }

          glUseProgram(*v229);
          *&t1.a = xmmword_196E79440;
          *&t1.c = xmmword_196E79450;
          if ((*(v229 + 16) & 0x80000000) == 0)
          {
            glActiveTexture(0x84C0u);
            glUniform1i(*(v229 + 16), 0);
            glBindTexture(0xDE1u, *(DerivedStorage + 388));
          }

          if (*(DerivedStorage + 400) >= 2uLL && (*(v229 + 20) & 0x80000000) == 0)
          {
            glActiveTexture(0x84C1u);
            glUniform1i(*(v229 + 20), 1);
            glBindTexture(0xDE1u, *(DerivedStorage + 392));
          }

          *&v318.a = xmmword_196E79460;
          *&v318.c = xmmword_196E79470;
          glVertexAttribPointer(*(v229 + 28), 2, 0x1406u, 0, 0, &v318);
          glEnableVertexAttribArray(*(v229 + 28));
          glVertexAttribPointer(*(v229 + 32), 2, 0x1406u, 0, 0, &t1);
          glEnableVertexAttribArray(*(v229 + 32));
          ++*(DerivedStorage + 748);
          glDrawArrays(5u, 0, 4);
          if (v293 == ++v220)
          {
            goto LABEL_295;
          }

          continue;
        }
      }
    }
  }

LABEL_128:
  v134 = 0;
  v288 = 0;
  v289 = 0;
  valuea = 0;
LABEL_318:
  OVCSetCurrentOpenGLContext(0);
  if (*(DerivedStorage + 520) && *(DerivedStorage + 664))
  {
    v251 = 0;
    do
    {
      CVPixelBufferPoolFlush(*(*(DerivedStorage + 672) + 8 * v251++), 0);
    }

    while (v251 < *(DerivedStorage + 664));
  }

  CVPixelBufferPoolFlush(*(DerivedStorage + 568), 0);
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  free(v295);
  if (valuea)
  {
    CFRelease(valuea);
  }

  if (v289)
  {
    CFRelease(v289);
  }

  if (v288)
  {
    CFRelease(v288);
  }

  if (v134)
  {
    CFRelease(v134);
  }

  v252 = *(v310 + 6);
  _Block_object_dispose(&v309, 8);
  return v252;
}

uint64_t openglVideoCompositor_SetOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 632);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __openglVideoCompositor_SetOutputCallback_block_invoke;
  v9[3] = &unk_1E748B8C8;
  v9[6] = a2;
  v9[7] = a3;
  v9[4] = &v10;
  v9[5] = DerivedStorage;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_1967E88F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ovc_getPrescalingParameters(__CVBuffer *a1, _OWORD *a2, char *a3, double *a4, unint64_t *a5, double *a6, size_t *a7, _OWORD *a8, double a9, double a10, double a11, CGFloat a12, CGFloat a13, CGFloat a14, CGFloat a15, CGFloat a16, float a17)
{
  memset(&v68, 0, sizeof(v68));
  v66 = 0.0;
  v67 = 0.0;
  if (a3)
  {
    if (a4)
    {
      if (a5)
      {
        if (a6)
        {
          if (a7)
          {
            if (a8)
            {
              v31 = a2[1];
              *&v65.a = *a2;
              *&v65.c = v31;
              *&v65.tx = a2[2];
              FigVideoCompositionInstructionCGAffineTransformDecompose(&v65, 0, 0, &v68, &v67, &v66, 0);
              b = 0.0;
              a = 0.0;
              if (fabs(v68.a) >= 0.00001)
              {
                a = 1.0;
                if (fabs(v68.a + -1.0) >= 0.00001)
                {
                  a = v68.a;
                  if (fabs(v68.a + 1.0) < 0.00001)
                  {
                    a = -1.0;
                  }
                }
              }

              v68.a = a;
              if (fabs(v68.b) >= 0.00001)
              {
                b = 1.0;
                if (fabs(v68.b + -1.0) >= 0.00001)
                {
                  b = v68.b;
                  if (fabs(v68.b + 1.0) < 0.00001)
                  {
                    b = -1.0;
                  }
                }
              }

              v68.b = b;
              d = 0.0;
              c = 0.0;
              if (fabs(v68.c) >= 0.00001)
              {
                c = 1.0;
                if (fabs(v68.c + -1.0) >= 0.00001)
                {
                  c = v68.c;
                  if (fabs(v68.c + 1.0) < 0.00001)
                  {
                    c = -1.0;
                  }
                }
              }

              v68.c = c;
              if (fabs(v68.d) >= 0.00001)
              {
                d = 1.0;
                if (fabs(v68.d + -1.0) >= 0.00001)
                {
                  d = v68.d;
                  if (fabs(v68.d + 1.0) < 0.00001)
                  {
                    d = -1.0;
                  }
                }
              }

              v68.d = d;
              v66 = v66 * a17;
              v67 = v67 * a17;
              Width = CVPixelBufferGetWidth(a1);
              Height = CVPixelBufferGetHeight(a1);
              v38 = Height;
              v39 = v67;
              if (fabs(v67 + -1.0) < 0.00001)
              {
                v67 = 1.0;
                v39 = 1.0;
              }

              v40 = v66;
              if (fabs(v66 + -1.0) < 0.00001)
              {
                v66 = 1.0;
                v40 = 1.0;
              }

              if (v39 == 1.0 && v40 == 1.0)
              {
                v41 = 0;
                v42 = 0;
                v43 = 0;
                v44 = 0.0;
                v45 = 0.0;
                y = 0.0;
                x = 0.0;
                v48 = a9;
              }

              else
              {
                v49 = Height;
                v50 = a2[1];
                *&v64.a = *a2;
                *&v64.c = v50;
                *&v64.tx = a2[2];
                CGAffineTransformInvert(&v65, &v64);
                v69.origin.x = a13;
                v69.origin.y = a14;
                v69.size.width = a15;
                v69.size.height = a16;
                v74 = CGRectApplyAffineTransform(v69, &v65);
                v70.origin.x = 0.0;
                v70.origin.y = 0.0;
                v70.size.width = Width;
                v58 = Width;
                v70.size.height = v38;
                v71 = CGRectIntersection(v70, v74);
                x = v71.origin.x;
                y = v71.origin.y;
                v45 = v71.size.width;
                v59 = v71.size.height;
                v60 = a10;
                v51 = v67;
                v43 = (v71.size.width * v67 + 0.5);
                v61 = a11;
                v52 = v66;
                v42 = (v71.size.height * v66 + 0.5);
                Width = (Width * v67 + 0.5);
                v38 = (v49 * v66 + 0.5);
                v64 = v68;
                CGAffineTransformScale(&v65, &v64, (1.0 / a17), (1.0 / a17));
                v68 = v65;
                v64 = v65;
                CGAffineTransformTranslate(&v65, &v64, v51 * x, y * v52);
                v68 = v65;
                v53 = v38 / v49;
                v44 = v59;
                CGAffineTransformMakeScale(&v65, Width / v58, v53);
                v72.size.height = a12;
                v72.origin.x = a9 - x;
                v72.size.width = v61;
                v72.origin.y = v60 - y;
                v75.origin.x = 0.0;
                v75.origin.y = 0.0;
                v75.size.width = v45;
                v75.size.height = v59;
                v73 = CGRectIntersection(v72, v75);
                v64 = v65;
                *&v48 = CGRectApplyAffineTransform(v73, &v64);
                a10 = v54;
                a11 = v55;
                a12 = v56;
                v41 = 1;
              }

              *a4 = x;
              a4[1] = y;
              a4[2] = v45;
              a4[3] = v44;
              *a7 = Width;
              a7[1] = v38;
              *a5 = v43;
              a5[1] = v42;
              v57 = *&v68.c;
              *a8 = *&v68.a;
              a8[1] = v57;
              a8[2] = *&v68.tx;
              *a6 = v48;
              a6[1] = a10;
              a6[2] = a11;
              a6[3] = a12;
              *a3 = v41;
            }

            else
            {
              ovc_getPrescalingParameters_cold_1();
            }
          }

          else
          {
            ovc_getPrescalingParameters_cold_2();
          }
        }

        else
        {
          ovc_getPrescalingParameters_cold_3();
        }
      }

      else
      {
        ovc_getPrescalingParameters_cold_4();
      }
    }

    else
    {
      ovc_getPrescalingParameters_cold_5();
    }
  }

  else
  {
    ovc_getPrescalingParameters_cold_6();
  }
}

void ovc_getColorMatrixForPixelFormatConversion(int a1, CFTypeRef cf1, int a3, CFTypeRef a4, void *a5)
{
  if (a1 == 875704422)
  {
    if (a3 != 875704438)
    {
      if (a3 == 1111970369)
      {
        if (a4 && CFEqual(a4, *MEMORY[0x1E6965FD0]))
        {
          v8 = &kOVCColorMatrix_YUV709f_32BGRA;
        }

        else
        {
          v8 = &kOVCColorMatrix_YUV601f_32BGRA;
        }

        goto LABEL_47;
      }

      emitter = fig_log_get_emitter();
      v10 = v5;
      v11 = 4294954793;
      v12 = 2288;
      goto LABEL_33;
    }

    if (cf1 && (v14 = *MEMORY[0x1E6965FD0], CFEqual(cf1, *MEMORY[0x1E6965FD0])))
    {
      if (!a4 || !CFEqual(a4, v14))
      {
        v8 = &kOVCColorMatrix_YUV709f_YUV601;
        goto LABEL_47;
      }
    }

    else if (a4 && CFEqual(a4, *MEMORY[0x1E6965FD0]))
    {
      v8 = &kOVCColorMatrix_YUV601f_YUV709;
      goto LABEL_47;
    }

    v8 = &kOVCColorMatrix_YUVf_YUV;
    goto LABEL_47;
  }

  if (a1 == 875704438)
  {
    if (a3 != 875704438)
    {
      if (a3 == 1111970369)
      {
        if (a4 && CFEqual(a4, *MEMORY[0x1E6965FD0]))
        {
          v8 = &kOVCColorMatrix_YUV709_32BGRA;
        }

        else
        {
          v8 = &kOVCColorMatrix_YUV601_32BGRA;
        }

        goto LABEL_47;
      }

      emitter = fig_log_get_emitter();
      v10 = v5;
      v11 = 4294954793;
      v12 = 2246;
      goto LABEL_33;
    }

    if (cf1 && (v13 = *MEMORY[0x1E6965FD0], CFEqual(cf1, *MEMORY[0x1E6965FD0])))
    {
      if (!a4 || !CFEqual(a4, v13))
      {
        v8 = &kOVCColorMatrix_YUV709_YUV601;
LABEL_47:
        *a5 = v8;
        return;
      }
    }

    else if (a4 && CFEqual(a4, *MEMORY[0x1E6965FD0]))
    {
      v8 = &kOVCColorMatrix_YUV601_YUV709;
      goto LABEL_47;
    }

LABEL_40:
    v8 = &kOVCColorMatrixIdentity;
    goto LABEL_47;
  }

  if (a1 != 1111970369)
  {
    emitter = fig_log_get_emitter();
    v10 = v5;
    v11 = 4294954794;
    v12 = 2294;
    goto LABEL_33;
  }

  if (a3 == 1111970369)
  {
    goto LABEL_40;
  }

  if (a3 == 875704438)
  {
    if (a4 && CFEqual(a4, *MEMORY[0x1E6965FD0]))
    {
      v8 = &kOVCColorMatrix_32BGRA_YUV709;
    }

    else
    {
      v8 = &kOVCColorMatrix_32BGRA_YUV601;
    }

    goto LABEL_47;
  }

  emitter = fig_log_get_emitter();
  v10 = v5;
  v11 = 4294954793;
  v12 = 2204;
LABEL_33:

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v11, "<<<< OpenGLVideoCompositor >>>>", v12, v10);
}

uint64_t ovc_appendIntToArray(__CFArray *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (v3)
  {
    v4 = v3;
    CFArrayAppendValue(a1, v3);
    CFRelease(v4);
    return 0;
  }

  else
  {
    ovc_appendIntToArray_cold_1(&v7);
    return v7;
  }
}

CFIndex __ovc_adjustMaxInFlightBuffers_block_invoke(uint64_t a1)
{
  result = CFDictionaryGetCount(*(*(a1 + 40) + 600));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __ovc_setNewInFlightEntry_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 600), v1);
  v4 = Value;
  if (Value)
  {
    v5 = Value[1];
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v7 = (UpTimeNanoseconds - v5) / 1000;
    ++*(DerivedStorage + 816);
    *(DerivedStorage + 808) += v7;
    v8 = *(DerivedStorage + 792);
    if (v8 >= v7)
    {
      v8 = (UpTimeNanoseconds - v5) / 1000;
    }

    *(DerivedStorage + 792) = v8;
    if (*(DerivedStorage + 800) > v7)
    {
      v7 = *(DerivedStorage + 800);
    }

    *(DerivedStorage + 800) = v7;
    if (*v4)
    {
      v4 = CFRetain(*v4);
    }

    else
    {
      v4 = 0;
    }

    v9 = 0;
  }

  else
  {
    __ovc_setNewInFlightEntry_block_invoke_2_cold_1(v12);
    v9 = LODWORD(v12[0]);
  }

  v10 = *(DerivedStorage + 640);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __ovc_glFenceCallback_block_invoke;
  v12[3] = &__block_descriptor_48_e5_v8__0l;
  v12[4] = DerivedStorage;
  v12[5] = v1;
  dispatch_async(v10, v12);
  v11 = *(DerivedStorage + 648);
  if (v11)
  {
    v11(*(DerivedStorage + 656), v1, v9, v4, 0);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t __ovc_glFenceCallback_block_invoke(uint64_t a1)
{
  CFDictionaryRemoveValue(*(*(a1 + 32) + 600), *(a1 + 40));

  return FigSemaphoreSignal();
}

CFIndex __ovc_enforceMaxInFlightBufferCount_block_invoke(uint64_t a1)
{
  result = CFDictionaryGetCount(*(*(a1 + 40) + 600));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFIndex __ovc_enforceMaxInFlightBufferCount_block_invoke_2(uint64_t a1)
{
  result = CFDictionaryGetCount(*(*(a1 + 40) + 600));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ovc_createAndConfigureGLProgram(GLuint *a1, uint64_t a2, uint64_t a3)
{
  v4 = OVCCreateGLProgram(a2, a3, a1);
  if (v4)
  {
    v19 = v4;
    if (!a1)
    {
      return v19;
    }

    goto LABEL_29;
  }

  UniformLocation = glGetUniformLocation(*a1, "g_index");
  if (UniformLocation < 0)
  {
    v6 = -1;
  }

  else
  {
    v6 = UniformLocation;
  }

  a1[1] = v6;
  v7 = glGetUniformLocation(*a1, "affine_transform");
  if (v7 < 0)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7;
  }

  a1[2] = v8;
  v9 = glGetUniformLocation(*a1, "opacity");
  if (v9 < 0)
  {
    v10 = -1;
  }

  else
  {
    v10 = v9;
  }

  a1[3] = v10;
  v11 = glGetUniformLocation(*a1, "source_buffer_plane0");
  if (v11 < 0)
  {
    v12 = -1;
  }

  else
  {
    v12 = v11;
  }

  a1[4] = v12;
  v13 = glGetUniformLocation(*a1, "source_buffer_plane1");
  if (v13 < 0)
  {
    v14 = -1;
  }

  else
  {
    v14 = v13;
  }

  a1[5] = v14;
  v15 = glGetUniformLocation(*a1, "color_matrix");
  if (v15 < 0)
  {
    v16 = -1;
  }

  else
  {
    v16 = v15;
  }

  a1[6] = v16;
  AttribLocation = glGetAttribLocation(*a1, "vertex_coord");
  if (AttribLocation < 0)
  {
    v21 = 3956;
LABEL_28:
    ovc_createAndConfigureGLProgram_cold_1(v21, &v22);
    v19 = v22;
LABEL_29:
    glDeleteProgram(*a1);
    return v19;
  }

  a1[7] = AttribLocation;
  v18 = glGetAttribLocation(*a1, "texture_coord0");
  if (v18 < 0)
  {
    v21 = 3960;
    goto LABEL_28;
  }

  v19 = 0;
  a1[8] = v18;
  return v19;
}

CFNumberRef OUTLINED_FUNCTION_3_144(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char valuePtr)
{

  return CFNumberCreate(v11, kCFNumberIntType, &valuePtr);
}

uint64_t FigTTMLBrCreate(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  if (a4)
  {
    FigTTMLNodeGetClassID();
    v7 = CMDerivedObjectCreate();
    if (!v7)
    {
      FigBytePumpGetFigBaseObject();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v9 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
      if (v9)
      {
        return v9;
      }

      else
      {
        v7 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
        if (!v7)
        {
          *a3 = 0;
          *(a3 + 8) = 0;
          FigTTMLParseNode(a2, figTTMLBrConsumeChildNode, a3);
          v7 = v10;
          if (!v10)
          {
            *a4 = 0;
          }
        }
      }
    }
  }

  else
  {
    FigTTMLBrCreate_cold_1(&v12);
    return v12;
  }

  return v7;
}

uint64_t figTTMLBrConsumeChildNode(uint64_t a1, uint64_t *a2, void *a3)
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  if (a3)
  {
    if (!result)
    {
      *a3 = 0;
    }
  }

  return result;
}

void figTTMLBr_Finalize()
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLBr_CopyDebugDesc()
{
  FigBytePumpGetFigBaseObject();
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"br: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figTTMLBr_CopyChildNodeArray(const void *a1, CFMutableArrayRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = CFGetAllocator(a1);
    *a2 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
  }

  else
  {
    figTTMLBr_CopyChildNodeArray_cold_1(a1, 0, a3, a4, a5, a6, a7, a8, v11, v12, SHIDWORD(v12), vars0);
  }

  return 0;
}

uint64_t figTTMLBr_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 6;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLBr_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figTTMLSerializer_RegisterFigTTMLSerializerBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigTTMLSerializerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigTTMLSerializerGetClassID_sRegisterFigTTMLSerializerBaseTypeOnce, figTTMLSerializer_RegisterFigTTMLSerializerBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigTTMLSerializerSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigTTMLSerializerCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigTTMLSerializerInvalidate(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigTTMLSerializerStartElement(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigTTMLSerializerSetAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigTTMLSerializerEndElement(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigTTMLSerializerAddText(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigTTMLSerializerFlush(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigDisplayModes_ExtractDimensionsFromTimingMode(const __CFArray *a1, int a2, double *a3)
{
  if (!a1)
  {
    FigDisplayModes_ExtractDimensionsFromTimingMode_cold_2();
    return 4294954516;
  }

  v4 = lookupTimingModeByID(a1, a2);
  if (!v4)
  {
    FigDisplayModes_ExtractDimensionsFromTimingMode_cold_1();
    return 4294954516;
  }

  return getTimingModeDimensions(v4, a3);
}

const __CFDictionary *lookupTimingModeByID(const __CFArray *a1, int a2)
{
  Count = CFArrayGetCount(a1);
  v5 = Count;
  if (!Count)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    result = CFArrayGetValueAtIndex(a1, v6);
    if (result)
    {
      v8 = result;
      result = CFDictionaryGetValue(result, @"ID");
      valuePtr = -1;
      if (result)
      {
        CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr == a2)
        {
          result = v8;
        }

        else
        {
          result = 0;
        }
      }
    }

    ++v6;
  }

  while (v6 < v5 && !result);
  return result;
}

uint64_t getTimingModeDimensions(const __CFDictionary *a1, double *a2)
{
  valuePtr = 0;
  if (!a1)
  {
    getTimingModeDimensions_cold_5();
    return 4294954516;
  }

  if (!a2)
  {
    getTimingModeDimensions_cold_4();
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, @"HorizontalAttributes");
  if (!Value)
  {
    getTimingModeDimensions_cold_3();
    return 4294954516;
  }

  v5 = Value;
  v6 = CFDictionaryGetValue(a1, @"VerticalAttributes");
  if (!v6)
  {
    getTimingModeDimensions_cold_2();
    return 4294954516;
  }

  v7 = v6;
  v8 = CFDictionaryGetValue(v5, @"Active");
  v9 = CFDictionaryGetValue(v7, @"Active");
  if (!v8 || (v10 = v9) == 0)
  {
    getTimingModeDimensions_cold_1();
    return 4294954516;
  }

  CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr + 4);
  CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr);
  result = 0;
  v12 = valuePtr;
  *a2 = SHIDWORD(valuePtr);
  a2[1] = v12;
  return result;
}

uint64_t FigDisplayModes_ExtractOverscanInfoFromTimingMode(const __CFArray *a1, int a2, BOOL *a3)
{
  if (!a1)
  {
    FigDisplayModes_ExtractOverscanInfoFromTimingMode_cold_2();
    return 4294954516;
  }

  v4 = lookupTimingModeByID(a1, a2);
  if (!v4)
  {
    FigDisplayModes_ExtractOverscanInfoFromTimingMode_cold_1();
    return 4294954516;
  }

  result = CFDictionaryGetValue(v4, @"IsOverscanned");
  if (result)
  {
    v6 = result;
    result = 0;
    *a3 = v6 == *MEMORY[0x1E695E4D0];
  }

  return result;
}

uint64_t FigDisplayModes_LookupTimingModeIDByIndex(const __CFArray *a1, unsigned int a2, int *a3)
{
  if (CFArrayGetCount(a1) <= a2)
  {
    FigDisplayModes_LookupTimingModeIDByIndex_cold_1();
    return 4294954516;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  if (!ValueAtIndex)
  {
    FigDisplayModes_LookupTimingModeIDByIndex_cold_3();
    return 4294954516;
  }

  Value = CFDictionaryGetValue(ValueAtIndex, @"ID");
  if (!Value)
  {
    FigDisplayModes_LookupTimingModeIDByIndex_cold_2();
    return 4294954516;
  }

  valuePtr = -1;
  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  result = 0;
  *a3 = valuePtr;
  return result;
}

uint64_t FigDisplayModes_DetermineSenderSurfaceDimensionsFromDisplayModeAndCurrentSenderDisplaySize(int a1, float64x2_t *a2, double a3, double a4, float64x2_t a5, float64_t a6, double a7)
{
  v7 = a3 / a5.f64[0];
  v8 = a4 / a6;
  if (v7 >= v8)
  {
    v7 = v8;
  }

  if (a1)
  {
    v7 = (1.0 - a7) * v7;
  }

  a5.f64[1] = a6;
  v9 = vadd_s32(vmovn_s64(vcvtq_s64_f64(vmulq_n_f64(a5, v7))), 0x100000001);
  v10.i64[0] = (v9.i32[0] & 0xFFFFFFFE);
  v10.i64[1] = (v9.i32[1] & 0xFFFFFFFE);
  *a2 = vcvtq_f64_s64(v10);
  return 0;
}

uint64_t FigDisplayModes_ConvertSquarePixelSizeToNonSquarePixelSize(unsigned int a1, double *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = a1 % 0xB4;
  if (a1 % 0xB4 == 90)
  {
    v10 = a3;
  }

  else
  {
    v10 = a4;
  }

  if (v9 == 90)
  {
    a3 = a4;
  }

  v11 = a5 / a6;
  if (a9 <= 0.0 || a9 == 1.0)
  {
    v13 = v10;
    v14 = v11 * (a8 / a7);
    if (v14 <= 1.01)
    {
      v12 = a3;
      if (v14 < 0.99)
      {
        v13 = ((v10 * v14) + 1) & 0xFFFFFFFE;
      }
    }

    else
    {
      v12 = ((a3 / v14) + 1) & 0xFFFFFFFE;
    }
  }

  else
  {
    v12 = ((a7 * (a3 / (a8 * a9) / v11)) + 1) & 0xFFFFFFFE;
    v13 = ((a8 * (v10 / (a8 * a9))) + 1) & 0xFFFFFFFE;
  }

  v15 = v9 == 90;
  if (v9 == 90)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  v17 = v16;
  if (v15)
  {
    v18 = v13;
  }

  else
  {
    v18 = v12;
  }

  *a2 = v18;
  a2[1] = v17;
  return 0;
}

uint64_t FigDisplayModes_ConvertSquarePixelRectToNonSquarePixelRect(unsigned int a1, double *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v11 = a5;
  v12 = a3;
  v13 = a1 % 0xB4;
  if (a1 % 0xB4 == 90)
  {
    v14 = a3;
  }

  else
  {
    v14 = a4;
  }

  if (v13 == 90)
  {
    v12 = a4;
    v15 = a5;
  }

  else
  {
    v15 = a6;
  }

  if (v13 == 90)
  {
    v11 = a6;
  }

  v16 = a7 / a8;
  if (a11 <= 0.0 || a11 == 1.0)
  {
    v17 = v16 * (a10 / a9);
    if (v17 <= 1.01)
    {
      if (v17 < 0.99)
      {
        v14 = (v17 * v14);
        v15 = ((v17 * v15) + 1) & 0xFFFFFFFE;
      }
    }

    else
    {
      v12 = (v12 / v17);
      v11 = ((v11 / v17) + 1) & 0xFFFFFFFE;
    }
  }

  else
  {
    v12 = (a9 * (v12 / (a10 * a11) / v16));
    v11 = ((a9 * (v11 / (a10 * a11) / v16)) + 1) & 0xFFFFFFFE;
    v14 = (a10 * (v14 / (a10 * a11)));
    v15 = ((a10 * (v15 / (a10 * a11))) + 1) & 0xFFFFFFFE;
  }

  v18 = v13 == 90;
  if (v13 == 90)
  {
    v19 = v14;
  }

  else
  {
    v19 = v12;
  }

  if (v18)
  {
    v14 = v12;
    v20 = v15;
  }

  else
  {
    v20 = v11;
  }

  if (v18)
  {
    v15 = v11;
  }

  *a2 = v19;
  a2[1] = v14;
  a2[2] = v20;
  a2[3] = v15;
  return 0;
}

uint64_t FigDisplayModes_ConvertNonSquarePixelSizeToSquarePixelSize(double *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a4 / a5;
  if (a8 <= 0.0 || a8 == 1.0)
  {
    v10 = a3;
    v11 = v8 * a7 / a6;
    if (v11 <= 1.01)
    {
      v9 = a2;
      if (v11 < 0.99)
      {
        v10 = ((a3 / v11) + 1) & 0xFFFFFFFE;
      }
    }

    else
    {
      v9 = ((a2 * v11) + 1) & 0xFFFFFFFE;
    }
  }

  else
  {
    v9 = ((v8 * (a3 * a8)) + 1) & 0xFFFFFFFE;
    v10 = (a3 * a8);
  }

  *a1 = v9;
  a1[1] = v10;
  return 0;
}

void FigDisplayModes_BuildColorAndTimingModes(int a1, int a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7, CFMutableDictionaryRef *a8, __CFDictionary **a9)
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  v29 = a6;
  v28 = a1;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v16 = MEMORY[0x1E695E480];
  if (a8)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    setNumberInCFDictionary(Mutable, @"ID", a7);
    setNumberInCFDictionary(Mutable, @"Score", a5);
    *a8 = Mutable;
  }

  if (a9)
  {
    v18 = *v16;
    v19 = MEMORY[0x1E695E9D8];
    v20 = MEMORY[0x1E695E9E8];
    v21 = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v22 = CFDictionaryCreateMutable(v18, 0, v19, v20);
    v23 = CFDictionaryCreateMutable(v18, 0, v19, v20);
    setNumberInCFDictionary(v21, @"ID", a7);
    setNumberInCFDictionary(v21, @"Score", a5);
    v24 = *MEMORY[0x1E695E4C0];
    CFDictionarySetValue(v21, @"IsInterlaced", *MEMORY[0x1E695E4C0]);
    v25 = *MEMORY[0x1E695E4D0];
    if (a3)
    {
      v26 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v26 = v24;
    }

    CFDictionarySetValue(v21, @"IsOverscanned", v26);
    setNumberInCFDictionary(v22, @"Active", v28);
    CFDictionarySetValue(v21, @"HorizontalAttributes", v22);
    CFRelease(v22);
    setNumberInCFDictionary(v23, @"Active", a2);
    setNumberInCFDictionary(v23, @"SyncRate", (a4 << 16));
    CFDictionarySetValue(v21, @"VerticalAttributes", v23);
    CFRelease(v23);
    if (v29)
    {
      v27 = v25;
    }

    else
    {
      v27 = v24;
    }

    CFDictionarySetValue(v21, @"MirroringOnlyMode", v27);
    *a9 = v21;
  }
}

void setNumberInCFDictionary(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);
    CFRelease(v6);
  }
}

uint64_t FigDisplayModes_CreateColorAndTimingModesArraysWithPreferredMode(const void *a1, const void *a2, __CFArray **a3, __CFArray **a4)
{
  if (a1 && a2)
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v11 = CFArrayCreateMutable(v8, 0, v9);
    if (Mutable)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      FigDisplayModes_CreateColorAndTimingModesArraysWithPreferredMode_cold_1();
      return 4294954510;
    }

    else
    {
      v13 = v11;
      CFArrayAppendValue(Mutable, a1);
      CFArrayAppendValue(v13, a2);
      result = 0;
      *a3 = Mutable;
      *a4 = v13;
    }
  }

  else
  {
    FigDisplayModes_CreateColorAndTimingModesArraysWithPreferredMode_cold_2();
    return 4294954516;
  }

  return result;
}

uint64_t FigDisplayModes_CreateSquarePixelTimingModeForTimingMode(const __CFDictionary *a1, __CFDictionary **a2, double a3, double a4, double a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = *MEMORY[0x1E695F060];
  v28 = v27;
  if (!a1)
  {
    FigDisplayModes_CreateSquarePixelTimingModeForTimingMode_cold_6();
    return 4294954516;
  }

  TimingModeDimensions = getTimingModeDimensions(a1, &v28);
  if (TimingModeDimensions)
  {
    v24 = TimingModeDimensions;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v24;
  }

  Value = CFDictionaryGetValue(a1, @"HorizontalAttributes");
  if (!Value)
  {
    FigDisplayModes_CreateSquarePixelTimingModeForTimingMode_cold_5();
    return 4294954516;
  }

  v12 = Value;
  v13 = CFDictionaryGetValue(a1, @"VerticalAttributes");
  if (!v13)
  {
    FigDisplayModes_CreateSquarePixelTimingModeForTimingMode_cold_4();
    return 4294954516;
  }

  v14 = v13;
  v15 = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  if (!MutableCopy)
  {
    FigDisplayModes_CreateSquarePixelTimingModeForTimingMode_cold_3();
    return 4294954510;
  }

  v17 = MutableCopy;
  v18 = v28;
  FigDisplayModes_ConvertNonSquarePixelSizeToSquarePixelSize(&v27, *&v28, *(&v28 + 1), a3, a4, *&v28, *(&v28 + 1), a5);
  v19 = v27;
  if (*&v18 == *&v27 && *(&v18 + 1) == *(&v27 + 1))
  {
    goto LABEL_11;
  }

  v20 = CFDictionaryCreateMutableCopy(v15, 0, v12);
  if (!v20)
  {
    FigDisplayModes_CreateSquarePixelTimingModeForTimingMode_cold_2();
LABEL_21:
    CFRelease(v17);
    return 4294954510;
  }

  v21 = v20;
  setNumberInCFDictionary(v20, @"Active", *&v19);
  CFDictionarySetValue(v17, @"HorizontalAttributes", v21);
  CFRelease(v21);
  v22 = CFDictionaryCreateMutableCopy(v15, 0, v14);
  if (!v22)
  {
    FigDisplayModes_CreateSquarePixelTimingModeForTimingMode_cold_1();
    goto LABEL_21;
  }

  v23 = v22;
  setNumberInCFDictionary(v22, @"Active", *(&v19 + 1));
  CFDictionarySetValue(v17, @"VerticalAttributes", v23);
  CFRelease(v23);
LABEL_11:
  v24 = 0;
  *a2 = v17;
  return v24;
}

uint64_t FigDisplayModes_CreateSquarePixelTimingModesArrayFromTimingModesAndDisplaySize(const __CFArray *a1, __CFArray **a2, double a3, double a4, double a5)
{
  value[20] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v11 = Mutable;
      Count = CFArrayGetCount(a1);
      v13 = Count;
      if (Count)
      {
        v14 = 0;
        while (1)
        {
          value[0] = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v14);
          if (!ValueAtIndex)
          {
            FigDisplayModes_CreateSquarePixelTimingModesArrayFromTimingModesAndDisplaySize_cold_1();
            v18 = 4294954516;
            goto LABEL_14;
          }

          SquarePixelTimingModeForTimingMode = FigDisplayModes_CreateSquarePixelTimingModeForTimingMode(ValueAtIndex, value, a3, a4, a5);
          if (SquarePixelTimingModeForTimingMode)
          {
            break;
          }

          v17 = value[0];
          CFArrayAppendValue(v11, value[0]);
          if (v17)
          {
            CFRelease(v17);
          }

          if (v13 == ++v14)
          {
            goto LABEL_10;
          }
        }

        v18 = SquarePixelTimingModeForTimingMode;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_14:
        CFRelease(v11);
      }

      else
      {
LABEL_10:
        v18 = 0;
        *a2 = v11;
      }
    }

    else
    {
      FigDisplayModes_CreateSquarePixelTimingModesArrayFromTimingModesAndDisplaySize_cold_2();
      return 4294954510;
    }
  }

  else
  {
    FigDisplayModes_CreateSquarePixelTimingModesArrayFromTimingModesAndDisplaySize_cold_3();
    return 4294954516;
  }

  return v18;
}

uint64_t FigDisplayModes_CopyTimingModeAppendingPreferredUIScale(CFDictionaryRef theDict, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (!theDict)
  {
    FigDisplayModes_CopyTimingModeAppendingPreferredUIScale_cold_4();
    return 4294954516;
  }

  if (!a2)
  {
    FigDisplayModes_CopyTimingModeAppendingPreferredUIScale_cold_3();
    return 4294954516;
  }

  if (!a3)
  {
    FigDisplayModes_CopyTimingModeAppendingPreferredUIScale_cold_2();
    return 4294954516;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  if (MutableCopy)
  {
    v5 = MutableCopy;
    FigCFDictionarySetInt();
    result = 0;
    *a3 = v5;
  }

  else
  {
    FigDisplayModes_CopyTimingModeAppendingPreferredUIScale_cold_1();
    return 4294954510;
  }

  return result;
}

double OUTLINED_FUNCTION_0_194(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t OUTLINED_FUNCTION_9_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_12_66(uint64_t a1, const void *a2)
{

  return CFDictionaryGetValueIfPresent(v2, a2, 0);
}

uint64_t MTGetCGAffineTransformFrom3x3MatrixArray(const void *a1, uint64_t *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFArrayGetTypeID()))
  {
    MTGetCGAffineTransformFrom3x3MatrixArray_cold_5(&valuePtr);
    return valuePtr;
  }

  if (CFArrayGetCount(a1) != 9)
  {
    MTGetCGAffineTransformFrom3x3MatrixArray_cold_1(&valuePtr);
    return valuePtr;
  }

  valuePtr = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  FigCFArrayGetCGFloatAtIndex();
  FigCFArrayGetCGFloatAtIndex();
  FigCFArrayGetCGFloatAtIndex();
  if (1.0 == 0.0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
    CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &valuePtr);
    v6 = CFArrayGetValueAtIndex(a1, 1);
    CFNumberGetValue(v6, kCFNumberCGFloatType, &v21);
    v7 = CFArrayGetValueAtIndex(a1, 3);
    CFNumberGetValue(v7, kCFNumberCGFloatType, &v20);
    v8 = CFArrayGetValueAtIndex(a1, 4);
    CFNumberGetValue(v8, kCFNumberCGFloatType, &v19);
    v9 = CFArrayGetValueAtIndex(a1, 6);
    CFNumberGetValue(v9, kCFNumberCGFloatType, &v18);
    v10 = CFArrayGetValueAtIndex(a1, 7);
    CFNumberGetValue(v10, kCFNumberCGFloatType, &v17);
    result = 0;
    if (a2)
    {
      v12 = v17;
      v13 = v18;
      v14 = v19;
      v15 = v20;
      v16 = v21;
      *a2 = valuePtr;
      a2[1] = v16;
      a2[2] = v15;
      a2[3] = v14;
      a2[4] = v13;
      a2[5] = v12;
    }
  }

  else
  {
    MTGetCGAffineTransformFrom3x3MatrixArray_cold_2(&v23);
    return v23;
  }

  return result;
}

uint64_t MTCreate3x3MatrixArrayFromCGAffineTransform(const __CFAllocator *a1, double *a2, CFMutableArrayRef *a3)
{
  if (!a3)
  {
    MTCreate3x3MatrixArrayFromCGAffineTransform_cold_2(&v11);
    return v11;
  }

  Mutable = CFArrayCreateMutable(a1, 9, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    MTCreate3x3MatrixArrayFromCGAffineTransform_cold_1(&v10);
    return v10;
  }

  v6 = Mutable;
  v7 = fcgs_AddCGFloatToArray(Mutable, *a2);
  if (v7 || (v7 = fcgs_AddCGFloatToArray(v6, a2[1]), v7) || (v7 = fcgs_AddCGFloatToArray(v6, 0.0), v7) || (v7 = fcgs_AddCGFloatToArray(v6, a2[2]), v7) || (v7 = fcgs_AddCGFloatToArray(v6, a2[3]), v7) || (v7 = fcgs_AddCGFloatToArray(v6, 0.0), v7) || (v7 = fcgs_AddCGFloatToArray(v6, a2[4]), v7) || (v7 = fcgs_AddCGFloatToArray(v6, a2[5]), v7))
  {
    v8 = v7;
    goto LABEL_15;
  }

  v8 = fcgs_AddCGFloatToArray(v6, 1.0);
  if (v8)
  {
LABEL_15:
    CFRelease(v6);
    return v8;
  }

  *a3 = v6;
  return v8;
}

uint64_t fcgs_AddCGFloatToArray(__CFArray *a1, double a2)
{
  v6 = a2;
  if (!a1)
  {
    fcgs_AddCGFloatToArray_cold_2(&v7);
    return v7;
  }

  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &v6);
  if (!v3)
  {
    fcgs_AddCGFloatToArray_cold_1(&v7);
    return v7;
  }

  v4 = v3;
  CFArrayAppendValue(a1, v3);
  CFRelease(v4);
  return 0;
}

uint64_t FigGetCGAffineTransformFrom3x3MatrixArray@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *a2 = *MEMORY[0x1E695EFD0];
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v3 + 32);
  return MTGetCGAffineTransformFrom3x3MatrixArray(a1, a2);
}

CFMutableArrayRef FigCreate3x3MatrixArrayFromCGAffineTransform(const __CFAllocator *a1, _OWORD *a2)
{
  v5 = 0;
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  MTCreate3x3MatrixArrayFromCGAffineTransform(a1, v4, &v5);
  return v5;
}

double FigGetCGAffineTransformFrom3x2MatrixArray@<D0>(const __CFArray *a1@<X0>, double *a2@<X8>)
{
  valuePtr = 0.0;
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &valuePtr);
  v5 = CFArrayGetValueAtIndex(a1, 1);
  CFNumberGetValue(v5, kCFNumberCGFloatType, &v20);
  v6 = CFArrayGetValueAtIndex(a1, 2);
  CFNumberGetValue(v6, kCFNumberCGFloatType, &v19);
  v7 = CFArrayGetValueAtIndex(a1, 3);
  CFNumberGetValue(v7, kCFNumberCGFloatType, &v18);
  v8 = CFArrayGetValueAtIndex(a1, 4);
  CFNumberGetValue(v8, kCFNumberCGFloatType, &v17);
  v9 = CFArrayGetValueAtIndex(a1, 5);
  CFNumberGetValue(v9, kCFNumberCGFloatType, &v16);
  result = valuePtr;
  v12 = v19;
  v11 = v20;
  v14 = v17;
  v13 = v18;
  v15 = v16;
  *a2 = valuePtr;
  *(a2 + 1) = v11;
  *(a2 + 2) = v12;
  *(a2 + 3) = v13;
  *(a2 + 4) = v14;
  *(a2 + 5) = v15;
  return result;
}

__CFArray *FigCreate3x2MatrixArrayFromCGAffineTransform(const __CFAllocator *a1, double *a2)
{
  Mutable = CFArrayCreateMutable(a1, 6, MEMORY[0x1E695E9C0]);
  v11 = Mutable;
  if (Mutable)
  {
    if (fcgs_AddCGFloatToArray(Mutable, *a2) || fcgs_AddCGFloatToArray(v11, a2[1]) || fcgs_AddCGFloatToArray(v11, a2[2]) || fcgs_AddCGFloatToArray(v11, a2[3]) || fcgs_AddCGFloatToArray(v11, a2[4]) || fcgs_AddCGFloatToArray(v11, a2[5]))
    {
      CFRelease(v11);
      return 0;
    }
  }

  else
  {
    FigCreate3x2MatrixArrayFromCGAffineTransform_cold_1(0, v4, v5, v6, v7, v8, v9, v10, v13, v14, SHIDWORD(v14), vars0);
  }

  return v11;
}

uint64_t FigGetRotationAngleAndFlipsFromCGAffineTransform(double *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = *a1 * 65536.0;
  if (v3 >= -2147483650.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x80000000;
  }

  if (v3 <= 2147483650.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7FFFFFFF;
  }

  v6 = a1[1] * 65536.0;
  if (v6 >= -2147483650.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x80000000;
  }

  if (v6 > 2147483650.0)
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = a1[3];
  v9 = a1[2] * 65536.0;
  if (v9 >= -2147483650.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x80000000;
  }

  if (v9 > 2147483650.0)
  {
    v10 = 0x7FFFFFFF;
  }

  v11 = v8 * 65536.0;
  if (v8 * 65536.0 <= 2147483650.0)
  {
    if (v11 >= -2147483650.0)
    {
      v12 = v11;
      if (v5)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v12 = 0x80000000;
      if (v5)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    v12 = 0x7FFFFFFF;
    if (v5)
    {
      goto LABEL_30;
    }
  }

  if (v12 || !v7 || !v10)
  {
LABEL_30:
    LOBYTE(v14) = 0;
    if (!v5 || v7 || v10)
    {
      LOBYTE(v13) = 0;
      result = 0;
    }

    else
    {
      LOBYTE(v13) = 0;
      result = 0;
      if (v12)
      {
        if ((v5 & 0x80000000) == 0)
        {
          LOBYTE(v14) = 0;
          result = 0;
          v13 = v12 >> 31;
          if (!a2)
          {
            goto LABEL_42;
          }

LABEL_41:
          *a2 = v13;
          goto LABEL_42;
        }

        LOBYTE(v13) = 0;
        LOBYTE(v14) = v12 > 0;
        if (v12 <= 0)
        {
          result = 180;
        }

        else
        {
          result = 0;
        }

        if (a2)
        {
          goto LABEL_41;
        }

        goto LABEL_42;
      }
    }

    if (!a2)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (v7 >= 1)
  {
    LOBYTE(v13) = 0;
    LOBYTE(v14) = v10 > 0;
    result = 90;
    if (!a2)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  LOBYTE(v13) = 0;
  v14 = v10 >> 31;
  result = 270;
  if (a2)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (a3)
  {
    *a3 = v14;
  }

  return result;
}

uint64_t FigAssetTableAddAsset(uint64_t a1, uint64_t a2)
{
  if (PerformOneTimeAssetTableInitialization_sAssetTableInit != -1)
  {
    FigAssetTableAddAsset_cold_1();
  }

  return FigCFWeakReferenceTableAddValueAndGetKey();
}

uint64_t FigAssetTableRemoveAsset(uint64_t a1)
{
  if (PerformOneTimeAssetTableInitialization_sAssetTableInit != -1)
  {
    FigAssetTableAddAsset_cold_1();
  }

  return FigCFWeakReferenceTableRemoveValue();
}

uint64_t FigAssetTableCopyAsset(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = 0;
      if (PerformOneTimeAssetTableInitialization_sAssetTableInit != -1)
      {
        FigAssetTableAddAsset_cold_1();
      }

      v3 = FigCFWeakReferenceTableCopyValue();
      result = 0;
      *a2 = v3;
    }

    else
    {
      FigAssetTableCopyAsset_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    FigAssetTableCopyAsset_cold_3(&v6);
    return v6;
  }

  return result;
}

uint64_t FigAssetCopyAssetWithDownloadToken(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = FigAssetTableCopyAsset(a1, a2);
      if (!*a2)
      {
        FigAssetCopyAssetWithDownloadToken_cold_1(&v4);
        return v4;
      }
    }

    else
    {
      FigAssetCopyAssetWithDownloadToken_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    FigAssetCopyAssetWithDownloadToken_cold_3(&v6);
    return v6;
  }

  return result;
}

uint64_t FigBufferedAirPlayGlobalRoutingRegistryLocalGetShared(uint64_t a1, uint64_t a2)
{
  if (FigBufferedAirPlayGlobalRoutingRegistryLocalGetShared_onceToken != -1)
  {
    FigBufferedAirPlayGlobalRoutingRegistryLocalGetShared_cold_1();
  }

  return FigBufferedAirPlayGlobalRoutingRegistryLocalGetShared_sGlobalRegistry;
}

void __FigBufferedAirPlayGlobalRoutingRegistryLocalGetShared_block_invoke(uint64_t a1, uint64_t a2)
{
  FigBufferedAirPlayGlobalRoutingRegistryGetClassID(a1, a2);
  if (!CMDerivedObjectCreate())
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = FigBufferedAirPlayClientRoutingRegistryGetSharedInstance();
    v3 = dispatch_queue_create("com.apple.coremedia.globalroutingregistry.notification", 0);
    DerivedStorage[1] = v3;
    if (v3)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      FigBufferedAirPlayGlobalRoutingRegistryLocalGetShared_sGlobalRegistry = 0;
    }
  }
}

uint64_t localGlobalRoutingRegistry_bufferedClientUpdateNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17918)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  return FigDispatchAsyncPostNotification();
}

void localGlobalRoutingRegistry_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 8) = 0;
  }

  FigBytePumpRelease(*DerivedStorage);
  __break(1u);
}

CFStringRef localGlobalRoutingRegistry_CopyDebugDesc(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<LocalGlobalRoutingRegistry: %p retainCount: %ld>", a1, v3);
}

uint64_t localGlobalRoutingRegistry_registerClient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();

  return MEMORY[0x1EEDBC280](v5, a2, a3, 0);
}

uint64_t localGlobalRoutingRegistry_unRegisterClient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();

  return MEMORY[0x1EEDBC288](v5, a2, a3, 0);
}

uint64_t localGlobalRoutingRegistry_registerClientWithRemoteID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();

  return MEMORY[0x1EEDBC280](v7, a2, a4, a3);
}

uint64_t localGlobalRoutingRegistry_unRegisterClientWithRemoteID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();

  return MEMORY[0x1EEDBC288](v7, a2, a4, a3);
}

uint64_t localGlobalRoutingRegistry_getCountOfRunningClientsForRoutingContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();

  return MEMORY[0x1EEDBC270](v5, a2, a3);
}

uint64_t localGlobalRoutingRegistry_clearAllClientWithRemoteID(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return MEMORY[0x1EEDBC268](v3, a2);
}

uint64_t FigMediaparserdUtilities_StartMediaparserdUtilitiesServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigMediaparserdUtilities_StartMediaparserdUtilitiesServer_block_invoke;
  block[3] = &unk_1E7495868;
  block[4] = &v3;
  if (FigMediaparserdUtilities_StartMediaparserdUtilitiesServer_sFigMediaparserdUtilitiesServerSetupOnce != -1)
  {
    dispatch_once(&FigMediaparserdUtilities_StartMediaparserdUtilitiesServer_sFigMediaparserdUtilitiesServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t oobtcontroller_initOnce(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void FigOutOfBandTrackControllerInvalidate(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      dispatch_sync(v2, &__block_literal_global_112);
    }

    v3 = *(a1 + 168);
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v4)
      {
        v4(v3, 0);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      FigPlayerGetFigBaseObject();
      v6 = v5;
      v7 = *(CMBaseObjectGetVTable() + 8);
      if (*v7 >= 2uLL)
      {
        v8 = v7[8];
        if (v8)
        {
          v8(v6);
        }
      }
    }

    *(a1 + 16) = 1;
    if (*(a1 + 176))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
    }

    v9 = *(a1 + 24);
    if (v9)
    {
      dispatch_sync(v9, &__block_literal_global_42_0);
      dispatch_release(*(a1 + 24));
      *(a1 + 24) = 0;
    }

    FigPlaybackItemGetFigBaseObject();
    if (v10)
    {
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v12)
      {
        v12(v11);
      }
    }

    v13 = *(a1 + 176);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + 176) = 0;
    }

    FigPlayerGetFigBaseObject();
    if (v14)
    {
      v15 = v14;
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v16)
      {
        v16(v15);
      }
    }

    v17 = *(a1 + 168);
    if (v17)
    {
      CFRelease(v17);
      *(a1 + 168) = 0;
    }

    v18 = *(a1 + 160);
    if (v18)
    {
      CFRelease(v18);
      *(a1 + 160) = 0;
    }

    v19 = *(a1 + 152);
    if (v19)
    {
      CFRelease(v19);
      *(a1 + 152) = 0;
    }

    v20 = *(a1 + 144);
    if (v20)
    {
      CFRelease(v20);
      *(a1 + 144) = 0;
    }

    v21 = *(a1 + 40);
    if (v21)
    {
      CFRelease(v21);
      *(a1 + 40) = 0;
    }

    v22 = *(a1 + 48);
    if (v22)
    {
      CFRelease(v22);
      *(a1 + 48) = 0;
    }

    v23 = *(a1 + 104);
    if (v23)
    {
      CFRelease(v23);
      *(a1 + 104) = 0;
    }

    v24 = *(a1 + 120);
    if (v24)
    {
      CFRelease(v24);
      *(a1 + 120) = 0;
    }

    v25 = *(a1 + 128);
    if (v25)
    {
      CFRelease(v25);
      *(a1 + 128) = 0;
    }

    v26 = *(a1 + 136);
    if (v26)
    {
      CFRelease(v26);
      *(a1 + 136) = 0;
    }
  }
}

void oobtcontroller_handlePlayerNotification(int a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5)
{
  if (a2 && !*(a2 + 16) && CFEqual(cf1, @"SubtitleChanged"))
  {
    CMNotificationCenterGetDefaultLocalCenter();

    CMNotificationCenterPostNotification();
  }
}

void oobtcontroller_handlePlaybackItemNotification(int a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5)
{
  if (a2 && !*(a2 + 16) && (CFEqual(cf1, @"FailedToBecomeReadyForInspection") || CFEqual(cf1, @"FailedToBecomeReadyForPlayback") || CFEqual(cf1, @"FailedToPlayToEnd")))
  {
    CMNotificationCenterGetDefaultLocalCenter();

    CMNotificationCenterPostNotification();
  }
}

double FigOutOfBandTrackControllerSetProperty(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  if (!a1)
  {
    FigOutOfBandTrackControllerSetProperty_cold_5(&v44);
    return result;
  }

  if (CFEqual(cf1, @"UsingNeroVideo"))
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(a3, @"Visuals");
        if (Value)
        {
          v10 = Value;
          v11 = *(a1 + 112);
          if (v11 != CFBooleanGetValue(Value))
          {
            v12 = CFBooleanGetValue(v10);
            *(a1 + 112) = v12;
            if (v12)
            {
              v13 = CFDictionaryGetValue(a3, @"NeroTransport");
              if (v13)
              {
                v14 = *(a1 + 240);
                *(a1 + 240) = v13;
                CFRetain(v13);
                if (v14)
                {
                  CFRelease(v14);
                }
              }

              else
              {
                fig_log_get_emitter();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v38, v39);
              }
            }

            else
            {
              v32 = *(a1 + 240);
              if (v32)
              {
                CFRelease(v32);
                *(a1 + 240) = 0;
              }
            }

            return oobtcontroller_updateNeroVideoMode(a1);
          }
        }

        return result;
      }
    }

    emitter = fig_log_get_emitter();
    v16 = v3;
    v17 = 338;
    goto LABEL_58;
  }

  if (CFEqual(cf1, @"NeroVideoDimensions"))
  {
    if (a3)
    {
      v18 = CFGetTypeID(a3);
      if (v18 == CFDictionaryGetTypeID())
      {
        v19 = *(a1 + 120);
        *(a1 + 120) = a3;
        CFRetain(a3);
        if (v19)
        {
          CFRelease(v19);
        }

        if (!*(a1 + 16) && FigAtomicCompareAndSwap32())
        {
          CFRetain(a1);
          v30 = *(a1 + 24);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = __FigOutOfBandTrackControllerSetProperty_block_invoke;
          block[3] = &__block_descriptor_tmp_43_1;
          block[4] = a1;
          v31 = block;
LABEL_41:
          dispatch_async(v30, v31);
          return result;
        }

        if (*(a1 + 176))
        {
          v20 = *(a1 + 120);
          FigPlaybackItemGetFigBaseObject();
          if (CMBaseObjectSetProperty(v21, @"OutOfBandTextRenderingVideoDimensions", v20))
          {
            FigOutOfBandTrackControllerSetProperty_cold_1();
          }
        }

        return result;
      }
    }

    emitter = fig_log_get_emitter();
    v16 = v3;
    v17 = 370;
LABEL_58:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954436, "<<<< FigOOBTC >>>>", v17, v16);
  }

  if (CFEqual(cf1, @"NeroDisplaySize"))
  {
    if (a3)
    {
      v22 = CFGetTypeID(a3);
      if (v22 == CFDictionaryGetTypeID())
      {
        v23 = *(a1 + 128);
        *(a1 + 128) = a3;
        CFRetain(a3);
        if (v23)
        {
          CFRelease(v23);
        }

        if (*(a1 + 168))
        {
          v24 = *(a1 + 128);
          FigPlayerGetFigBaseObject();
          if (CMBaseObjectSetProperty(v25, @"NeroDisplaySize", v24))
          {
            FigOutOfBandTrackControllerSetProperty_cold_2();
          }
        }

        return result;
      }
    }

    emitter = fig_log_get_emitter();
    v16 = v3;
    v17 = 386;
    goto LABEL_58;
  }

  if (CFEqual(cf1, @"NeroVideoGravity"))
  {
    if (a3)
    {
      v26 = CFGetTypeID(a3);
      if (v26 == CFStringGetTypeID())
      {
        v27 = *(a1 + 136);
        *(a1 + 136) = a3;
        CFRetain(a3);
        if (v27)
        {
          CFRelease(v27);
        }

        if (*(a1 + 168))
        {
          v28 = *(a1 + 136);
          FigPlayerGetFigBaseObject();
          if (CMBaseObjectSetProperty(v29, @"NeroVideoGravity", v28))
          {
            FigOutOfBandTrackControllerSetProperty_cold_3();
          }
        }

        return result;
      }
    }

    emitter = fig_log_get_emitter();
    v16 = v3;
    v17 = 402;
    goto LABEL_58;
  }

  if (!CFEqual(cf1, @"TextMarkupArray"))
  {
    return result;
  }

  if (!a3 || (v33 = CFGetTypeID(a3), v33 != CFArrayGetTypeID()))
  {
    emitter = fig_log_get_emitter();
    v16 = v3;
    v17 = 434;
    goto LABEL_58;
  }

  v34 = *(a1 + 104);
  *(a1 + 104) = a3;
  CFRetain(a3);
  if (v34)
  {
    CFRelease(v34);
  }

  if (!*(a1 + 16) && FigAtomicCompareAndSwap32())
  {
    CFRetain(a1);
    v30 = *(a1 + 24);
    v38 = MEMORY[0x1E69E9820];
    v39 = 0x40000000;
    v40 = __FigOutOfBandTrackControllerSetProperty_block_invoke_2;
    v41 = &__block_descriptor_tmp_44_1;
    v42 = a1;
    v31 = &v38;
    goto LABEL_41;
  }

  if (*(a1 + 176))
  {
    v35 = *(a1 + 104);
    FigPlaybackItemGetFigBaseObject();
    if (CMBaseObjectSetProperty(v36, @"TextMarkupArray", v35))
    {
      FigOutOfBandTrackControllerSetProperty_cold_4();
    }
  }

  return result;
}

double oobtcontroller_updateNeroVideoMode(uint64_t result)
{
  if (!*(result + 168))
  {
    return v15;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return oobtcontroller_updateNeroVideoMode_cold_3();
  }

  v3 = Mutable;
  v4 = *MEMORY[0x1E695E4D0];
  v5 = *MEMORY[0x1E695E4C0];
  if (*(result + 112))
  {
    v6 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v6 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, @"Visuals", v6);
  if (*(result + 112))
  {
    CFDictionarySetValue(v3, @"NeroTransport", *(result + 168));
  }

  FigPlayerGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v9)
  {
    CFRelease(v3);
    return oobtcontroller_updateNeroVideoMode_cold_2();
  }

  v10 = v9(v8, @"SendToNero", v3);
  CFRelease(v3);
  if (v10)
  {
    return oobtcontroller_updateNeroVideoMode_cold_2();
  }

  if (*(result + 112))
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  FigPlayerGetFigBaseObject();
  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v14 || v14(v13, @"OutOfBandTextRenderingForNeroVideo", v11))
  {
    return oobtcontroller_updateNeroVideoMode_cold_1();
  }

  return v15;
}

void __FigOutOfBandTrackControllerSetProperty_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    if (*(v2 + 176))
    {
      if (*(v2 + 112))
      {
        v4 = *(v2 + 120);
        FigPlaybackItemGetFigBaseObject();
        v6 = v5;
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v7)
        {
          v7(v6, @"OutOfBandTextRenderingVideoDimensions", v4);
        }
      }
    }
  }

  v3 = *(a1 + 32);

  CFRelease(v3);
}

void __FigOutOfBandTrackControllerSetProperty_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    if (*(v2 + 176))
    {
      v4 = *(v2 + 104);
      FigPlaybackItemGetFigBaseObject();
      v6 = v5;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v7)
      {
        v7(v6, @"TextMarkupArray", v4);
      }
    }
  }

  v3 = *(a1 + 32);

  CFRelease(v3);
}

uint64_t FigOutOfBandTrackControllerPrepare(uint64_t a1)
{
  v2 = (a1 + 168);
  if (!*(a1 + 168))
  {
    if (FigPlayerFileCreate(*MEMORY[0x1E695E480], v2))
    {
      FigOutOfBandTrackControllerPrepare_cold_1();
      return v26;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    FigPlayerGetFigBaseObject();
    v16 = v15;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v17)
    {
      v17(v16, @"ActionAtEnd", @"None");
    }

    v18 = *MEMORY[0x1E695E4D0];
    FigPlayerGetFigBaseObject();
    v20 = v19;
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v21)
    {
      v21(v20, @"DisplayNonForcedSubtitles", v18);
    }

    FigPlayerGetFigBaseObject();
    v23 = v22;
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v24)
    {
      v24(v23, @"PrepareItemOnDispatchQueue", v18);
    }
  }

  v3 = *v2;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v4)
  {
    v4(v3, 0);
  }

  oobtcontroller_updateNeroVideoMode(a1);
  if (!*(a1 + 112))
  {
    goto LABEL_11;
  }

  v5 = *(a1 + 128);
  if (v5 && ((FigPlayerGetFigBaseObject(), v7 = v6, (v8 = *(*(CMBaseObjectGetVTable() + 8) + 56)) == 0) || v8(v7, @"NeroDisplaySize", v5)))
  {
    FigOutOfBandTrackControllerPrepare_cold_2();
  }

  else
  {
    v9 = *(a1 + 136);
    if (!v9 || (FigPlayerGetFigBaseObject(), v11 = v10, (v12 = *(*(CMBaseObjectGetVTable() + 8) + 56)) != 0) && !v12(v11, @"NeroVideoGravity", v9))
    {
LABEL_11:
      CFRetain(a1);
      v13 = *(a1 + 24);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 0x40000000;
      v25[2] = __FigOutOfBandTrackControllerPrepare_block_invoke;
      v25[3] = &__block_descriptor_tmp_45_1;
      v25[4] = a1;
      dispatch_async(v13, v25);
      return 0;
    }

    FigOutOfBandTrackControllerPrepare_cold_3();
  }

  return v26;
}

void __FigOutOfBandTrackControllerPrepare_block_invoke(uint64_t a1)
{
  cf = 0;
  if (*(*(a1 + 32) + 16))
  {
    goto LABEL_45;
  }

  FigAtomicCompareAndSwap32();
  v2 = *(a1 + 32);
  if (!*(v2 + 144))
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, @"ReferenceSecurityPolicyFlag");
      if (Value)
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
        v5 = valuePtr;
        v6 = FigByteStreamFactoryTranslateReferenceSecurityOptions(valuePtr);
      }

      else
      {
        v5 = 0;
        v6 = 0;
      }

      v8 = CFDictionaryGetValue(*(*(a1 + 32) + 48), @"ReferenceSecurityPolicyFlagBaseURL");
      v7 = 0;
      v2 = *(a1 + 32);
      if (v5 && v8)
      {
        if (!FigIsReferenceAllowedBySecurityPolicy())
        {
          __FigOutOfBandTrackControllerPrepare_block_invoke_cold_1(&valuePtr);
          goto LABEL_52;
        }

        v2 = *(a1 + 32);
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    if (FigByteStreamFactoryCreateStreamFromURLWithOptions(*(v2 + 40), v6, 0, (v2 + 144), &cf, 0, 0, 0))
    {
      __FigOutOfBandTrackControllerPrepare_block_invoke_cold_2();
      goto LABEL_52;
    }

    if (cf)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v9 == 1 && !FigIsReferenceAllowedBySecurityPolicy())
    {
      __FigOutOfBandTrackControllerPrepare_block_invoke_cold_8(&valuePtr);
      goto LABEL_52;
    }
  }

  v10 = *(a1 + 32);
  if (!*(v10 + 152))
  {
    FigWebVTTFormatReaderCreateFromStream(*(v10 + 144), *MEMORY[0x1E695E480], (v10 + 152));
    if (v11)
    {
      __FigOutOfBandTrackControllerPrepare_block_invoke_cold_3();
      goto LABEL_52;
    }

    v10 = *(a1 + 32);
  }

  if (!*(v10 + 160))
  {
    if (FigAssetCreateWithFormatReader(*MEMORY[0x1E695E480], *(v10 + 152), 0, 0, (v10 + 160)))
    {
      __FigOutOfBandTrackControllerPrepare_block_invoke_cold_4();
      goto LABEL_52;
    }

    v10 = *(a1 + 32);
  }

  v12 = v10 + 176;
  if (!*(v10 + 176))
  {
    v15 = *(v10 + 160);
    v14 = *(v10 + 168);
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (v16 && !v16(v14, v15, 0, 0, v12))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      v13 = 1;
      goto LABEL_29;
    }

    __FigOutOfBandTrackControllerPrepare_block_invoke_cold_7();
LABEL_52:
    v13 = 0;
    goto LABEL_54;
  }

  v13 = 0;
LABEL_29:
  FigPlaybackItemGetFigBaseObject();
  v18 = v17;
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v19)
  {
    v19(v18, @"DisplayNonForcedSubtitlesChanged", *MEMORY[0x1E695E4D0]);
  }

  v20 = *(a1 + 32);
  if (*(v20 + 196))
  {
    v21 = *(v20 + 176);
    v35 = *(v20 + 184);
    v36 = *(v20 + 200);
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v22)
    {
      valuePtr = v35;
      v39 = v36;
      v22(v21, &valuePtr, 5);
    }

    v20 = *(a1 + 32);
  }

  v23 = *(v20 + 104);
  if (v23)
  {
    FigPlaybackItemGetFigBaseObject();
    v25 = v24;
    v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v26)
    {
      v26(v25, @"TextMarkupArray", v23);
    }
  }

  v27 = *(a1 + 32);
  if (!*(v27 + 112))
  {
    goto LABEL_43;
  }

  v28 = *(v27 + 120);
  if (!v28)
  {
    goto LABEL_43;
  }

  FigPlaybackItemGetFigBaseObject();
  v30 = v29;
  v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v31 && !v31(v30, @"OutOfBandTextRenderingVideoDimensions", v28))
  {
    v27 = *(a1 + 32);
LABEL_43:
    v32 = *(v27 + 168);
    v33 = *(v27 + 176);
    v34 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v34 && !v34(v32, v33, 0))
    {
      goto LABEL_45;
    }

    __FigOutOfBandTrackControllerPrepare_block_invoke_cold_6();
    goto LABEL_54;
  }

  __FigOutOfBandTrackControllerPrepare_block_invoke_cold_5();
LABEL_54:
  if (valuePtr)
  {
    if (v13)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

LABEL_45:
  if (!*(*(a1 + 32) + 16))
  {
    FigAtomicCompareAndSwap32();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(*(a1 + 32));
}

__n128 FigOutOfBandTrackControllerSetCurrentTime(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 16) || !FigAtomicCompareAndSwap32())
  {
    v4 = *(a1 + 176);
    if (v4)
    {
      v10 = *a2;
      v11 = *(a2 + 2);
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v5)
      {
        v15 = v10;
        v16 = v11;
        v5(v4, &v15, 0);
      }
    }

    else
    {
      v8 = *a2;
      *(a1 + 200) = *(a2 + 2);
      *(a1 + 184) = v8;
      v9 = MEMORY[0x1E6960C70];
      result = *MEMORY[0x1E6960C70];
      *(a1 + 208) = *MEMORY[0x1E6960C70];
      *(a1 + 224) = *(v9 + 16);
    }
  }

  else
  {
    CFRetain(a1);
    v7 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigOutOfBandTrackControllerSetCurrentTime_block_invoke;
    block[3] = &__block_descriptor_tmp_46_2;
    block[4] = a1;
    v13 = *a2;
    v14 = *(a2 + 2);
    dispatch_async(v7, block);
  }

  return result;
}

void __FigOutOfBandTrackControllerSetCurrentTime_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    v3 = *(v2 + 176);
    if (v3)
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 56);
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v4)
      {
        v7 = v5;
        v8 = v6;
        v4(v3, &v7, 0);
      }

      v2 = *(a1 + 32);
    }
  }

  CFRelease(v2);
}

uint64_t FigOutOfBandTrackControllerSetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, float a4)
{
  if (*(a1 + 16) || !FigAtomicCompareAndSwap32())
  {
    v8 = *(a1 + 168);
    if (v8)
    {
      v16 = *a2;
      v17 = *(a2 + 2);
      v14 = *a3;
      v15 = *(a3 + 2);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (v9)
      {
        v26 = v16;
        v27 = v17;
        v24 = v14;
        v25 = v15;
        return v9(v8, &v26, &v24, 0, a4);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      result = 0;
      *(a1 + 232) = a4;
      v12 = *a2;
      *(a1 + 200) = *(a2 + 2);
      *(a1 + 184) = v12;
      v13 = *a3;
      *(a1 + 224) = *(a3 + 2);
      *(a1 + 208) = v13;
    }
  }

  else
  {
    CFRetain(a1);
    v11 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigOutOfBandTrackControllerSetRateAndAnchorTime_block_invoke;
    block[3] = &__block_descriptor_tmp_47_3;
    block[4] = a1;
    v19 = a4;
    v20 = *a2;
    v21 = *(a2 + 2);
    v22 = *a3;
    v23 = *(a3 + 2);
    dispatch_async(v11, block);
    return 0;
  }

  return result;
}

void __FigOutOfBandTrackControllerSetRateAndAnchorTime_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    v3 = *(v2 + 168);
    if (v3)
    {
      v4 = *(a1 + 40);
      v8 = *(a1 + 44);
      v9 = *(a1 + 60);
      v6 = *(a1 + 68);
      v7 = *(a1 + 84);
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (v5)
      {
        v12 = v8;
        v13 = v9;
        v10 = v6;
        v11 = v7;
        v5(v3, &v12, &v10, 0, v4);
      }

      v2 = *(a1 + 32);
    }
  }

  CFRelease(v2);
}

double oobtcontroller_init(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t oobtcontroller_finalize(uint64_t a1)
{
  FigOutOfBandTrackControllerInvalidate(a1);
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterUnregisterForBarrierSupport();
}

__CFString *oobtcontroller_copyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigOutOfBandTrackController: %p", a1);
  if (*(a1 + 40))
  {
    CFStringAppendFormat(Mutable, 0, @" SourceURL: %@", *(a1 + 40));
  }

  if (*(a1 + 168))
  {
    CFStringAppendFormat(Mutable, 0, @" Player: %p", *(a1 + 168));
  }

  if (*(a1 + 176))
  {
    CFStringAppendFormat(Mutable, 0, @" Item: %p", *(a1 + 176));
  }

  if (*(a1 + 112))
  {
    v3 = "ACTIVE";
  }

  else
  {
    v3 = "Inactive";
  }

  CFStringAppendFormat(Mutable, 0, @" NeroVideo is %s", v3);
  CFStringAppendFormat(Mutable, 0, @">\n");
  return Mutable;
}

uint64_t RegisterFigPropertyStorageIDType()
{
  result = _CFRuntimeRegisterClass();
  sFigPropertyStorageID = result;
  return result;
}

double FigPropertyStorageCreate(uint64_t a1, uint64_t *a2)
{
  if (sRegisterFigPropertyStorageTypeOnce != -1)
  {
    FigPropertyStorageCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    *(Instance + 16) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(v5 + 24) = dispatch_queue_create("com.apple.coremedia.figplayerstoragequeue", MEMORY[0x1E69E96A8]);
    *a2 = v5;
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294967246, "<<<< FIGPROPERTYSTORAGE >>>>", 162, v2);
  }

  return result;
}

uint64_t FigPropertyStorageCopyValue(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = 0;
  v5[1] = a1;
  v5[2] = a2;
  v6 = 0;
  dispatch_sync_f(*(a1 + 24), v5, _figPropertyStorageCopyValue);
  *a3 = v6;
  return LODWORD(v5[0]);
}

const void **_figPropertyStorageCopyValue(const void **result)
{
  v1 = result;
  v2 = result[1];
  if (*(v2 + 32))
  {
    v3 = -12785;
LABEL_3:
    *v1 = v3;
    return result;
  }

  result = CFDictionaryGetValueIfPresent(*(v2 + 2), result[2], result + 3);
  if (!result)
  {
    v3 = -12784;
    goto LABEL_3;
  }

  result = v1[3];
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void FigPropertyStorageSetValue(uint64_t a1, CFTypeRef cf, const void *a3)
{
  v8[0] = 0;
  v8[1] = a1;
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFStringGetTypeID())
    {
      v8[2] = CFRetain(cf);
      if (a3)
      {
        v7 = CFRetain(a3);
      }

      else
      {
        v7 = 0;
      }

      v8[3] = v7;
      dispatch_barrier_sync_f(*(a1 + 24), v8, _figPropertyStorageSetValue);
    }
  }
}

void _figPropertyStorageSetValue(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  if (v3)
  {
    CFDictionarySetValue(*(v2 + 16), *(a1 + 16), v3);
  }

  else
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(*(v2 + 16), *(a1 + 16), &value))
    {
      if (value)
      {
        CFRetain(value);
        v4 = value;
      }

      else
      {
        v4 = 0;
      }

      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_async_f(global_queue, v4, _figPropertyStorageReleaseAsync);
    }

    CFDictionaryRemoveValue(*(v2 + 16), *(a1 + 16));
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    CFRelease(v7);
  }
}

void *figPropertyStorageInit(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void figPropertyStorageFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  dispatch_release(*(a1 + 24));
  *(a1 + 24) = 0;
}

__CFString *figPropertyStorageCopyDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = FigCFCopyCompactDescription();
  v5 = v4;
  if (a1[2])
  {
    v6 = v4;
  }

  else
  {
    v6 = @"<No property values stored>";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigPropertyStorageRef %p>\n\tProperties:\n\t\t%@", a1, v6);
  if (v5)
  {
    CFRelease(v5);
  }

  return Mutable;
}

void _figPropertyStorageReleaseAsync(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void figCachePrimer_PerformCacheTransfer(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return;
  }

  *(a1 + 16) = 1;
  v2 = *(a1 + 32);
  v3 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (v3)
  {
    valuePtr = v3(v2, a1, 0, figCachePrimer_WriteBytes);
    if (!valuePtr)
    {
      *(a1 + 16) = 2;
      CMNotificationCenterGetDefaultLocalCenter();

      CMNotificationCenterPostNotification();
      return;
    }
  }

  else
  {
    valuePtr = -12782;
  }

  v4 = *MEMORY[0x1E695E480];
  cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v5 = CFDictionaryCreate(v4, &kFigCRABSCachePrimerParameter_Result, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (*(a1 + 16) == 1)
  {
    *(a1 + 16) = 3;
  }
}

uint64_t RegisterFigCRABSCachePrimerType()
{
  result = _CFRuntimeRegisterClass();
  sFigCRABSCachePrimerID = result;
  return result;
}

uint64_t FigCRABSCachePrimerCreate(uint64_t a1, const void *a2, const void *a3, uint64_t *a4)
{
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        if (sRegisterFigCRABSCachePrimerTypeOnce != -1)
        {
          FigCRABSCachePrimerCreate_cold_1();
        }

        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          v8 = Instance;
          v9 = dispatch_queue_create("CRABSCachePrimerWorkQueue", 0);
          *(v8 + 24) = v9;
          if (v9)
          {
            *(v8 + 32) = CFRetain(a2);
            v10 = CFRetain(a3);
            result = 0;
            *(v8 + 40) = v10;
            *(v8 + 16) = 0;
            *a4 = v8;
            return result;
          }

          FigCRABSCachePrimerCreate_cold_2(v8, &v12);
        }

        else
        {
          FigCRABSCachePrimerCreate_cold_3(&v12);
        }
      }

      else
      {
        FigCRABSCachePrimerCreate_cold_4(&v12);
      }
    }

    else
    {
      FigCRABSCachePrimerCreate_cold_5(&v12);
    }
  }

  else
  {
    FigCRABSCachePrimerCreate_cold_6(&v12);
  }

  return v12;
}

uint64_t figCachePrimer_WriteBytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 20))
  {
    *(a1 + 16) = 4;
    return 4294955234;
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v9)
    {

      return v9(v8, a2, a3, a4, 0);
    }

    else
    {
      return 4294954514;
    }
  }
}

double figCRABSCachePrimerInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figCRABSCachePrimerFinalize(void *context)
{
  if (!*(context + 20))
  {
    v2 = context[3];
    if (v2)
    {
      *(context + 20) = 1;
      dispatch_sync_f(v2, context, figCachePrimer_EmptyBlock);
    }
  }

  v3 = context[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = context[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = context[3];
  if (v5)
  {

    dispatch_release(v5);
  }
}

__CFString *figCRABSCachePrimerCopyDesc(unsigned int *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCRABSCachePrimer %p status %d>", a1, a1[4]);
  return Mutable;
}

uint64_t __FigNeroPlayServerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CBA30 = result;
  return result;
}

uint64_t _FigNeroPlayServerSetDeviceUID(uint64_t a1, const void *a2)
{
  if (FigCFEqual())
  {
    return 0;
  }

  v4 = *(a1 + 256);
  *(a1 + 256) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (a2)
  {
    v5 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
    *(a1 + 208) = v5;
    if (v5)
    {
      *v5 = 0x40E7700000000000;
      *(v5 + 8) = xmmword_196E78B20;
      *(v5 + 24) = xmmword_196E78B30;
      *(v5 + 40) = vdupq_n_s64(0x40E7700000000000uLL);
      *(a1 + 216) = 1;
    }

    if (!*(a1 + 220))
    {
      goto LABEL_14;
    }

    v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
    *(a1 + 224) = v6;
    if (!v6)
    {
      goto LABEL_14;
    }

    *v6 = 0x40E7700000000000;
    *(v6 + 8) = xmmword_196E78B20;
    *(v6 + 24) = xmmword_196E78B30;
    *(v6 + 40) = vdupq_n_s64(0x40E7700000000000uLL);
    v7 = 1;
  }

  else
  {
    free(*(a1 + 208));
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    free(*(a1 + 224));
    v7 = 0;
    *(a1 + 224) = 0;
  }

  *(a1 + 232) = v7;
LABEL_14:
  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  if (*(a1 + 24))
  {
    _FigNeroTellOctaviaSinkAttachedStateChanged(a1);
  }

  return 0;
}

void __FigNeroPlayServerCreate_block_invoke(uint64_t a1, int a2, CFTypeRef cf)
{
  v3 = *(a1 + 32);
  if (a2 <= 1700885536)
  {
    if (a2 == 1651470958)
    {
LABEL_8:
      v5 = MEMORY[0x1E6960C70];
      *(v3 + 272) = *MEMORY[0x1E6960C70];
      *(v3 + 288) = *(v5 + 16);
      return;
    }

    v4 = 1684628836;
LABEL_6:
    if (a2 != v4)
    {
      return;
    }

    _FigNeroPlayServerStopAudio(*(a1 + 32));
    *(v3 + 24) = 0;
    goto LABEL_8;
  }

  if (a2 != 1700885537)
  {
    v4 = 1919249523;
    goto LABEL_6;
  }

  v6 = cf;
  if (*(v3 + 32))
  {
    sampleBufferOut = 0;
    v41 = 0;
    v39 = **&MEMORY[0x1E6960CC0];
    memset(&timingArrayOut, 0, sizeof(timingArrayOut));
    memset(&v37, 0, sizeof(v37));
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v37, HostTimeClock);
    v8 = mach_absolute_time();
    if (v6)
    {
      CFRetain(v6);
    }

    v9 = *MEMORY[0x1E695E480];
    if (!FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer() && !CMSampleBufferGetSampleTimingInfoArray(v41, 1, &timingArrayOut, 0))
    {
      memset(&v36, 0, sizeof(v36));
      CMSampleBufferGetPresentationTimeStamp(&v36, v41);
      time = v37;
      CMTimeConvertScale(&v27, &time, v36.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v37 = v27;
      CMSampleBufferGetDuration(&time, v41);
      value = time.value;
      v11 = *(v3 + 76);
      if ((*(v3 + 284) & 1) == 0)
      {
        epoch = v37.epoch;
        *(v3 + 312) = v37.epoch;
        v13 = *&v37.value;
        *(v3 + 296) = *&v37.value;
        *&lhs.value = v13;
        lhs.epoch = epoch;
        rhs = v36;
        CMTimeSubtract(&v27, &lhs, &rhs);
        *(v3 + 272) = v27;
        memset(&v27, 0, sizeof(v27));
        CMTimeMake(&v27, 20, 1000);
        rhs = v27;
        CMTimeConvertScale(&lhs, &rhs, v36.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v27 = lhs;
        rhs = *(v3 + 272);
        v32 = lhs;
        CMTimeSubtract(&lhs, &rhs, &v32);
        *(v3 + 272) = lhs;
      }

      v14 = v11 * value;
      v27 = v37;
      rhs = *(v3 + 296);
      CMTimeSubtract(&lhs, &v27, &rhs);
      v15 = lhs.value;
      if (lhs.value > v36.timescale)
      {
        *(v3 + 128) = v8;
        *(v3 + 136) = v15;
      }

      v16 = v36.value + v14;
      *(v3 + 144) = v8;
      *(v3 + 152) = v16;
      _FigNeroPlayServerUpdateDesiredOctaviaSampleRate(v3);
      v27 = v36;
      rhs = *(v3 + 272);
      CMTimeAdd(&v39, &v27, &rhs);
      timingArrayOut.presentationTimeStamp = v39;
      timingArrayOut.decodeTimeStamp = **&MEMORY[0x1E6960C70];
      if (!CMSampleBufferCreateCopyWithNewTiming(v9, v41, 1, &timingArrayOut, &sampleBufferOut))
      {
        v17 = *(v3 + 32);
        v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v18)
        {
          v19 = v18(v17);
        }

        else
        {
          v19 = MEMORY[0x1E69E96A0];
        }

        v27.value = MEMORY[0x1E69E9820];
        *&v27.timescale = 0x40000000;
        v27.epoch = ___FigNeroPlayServerEnqueueAudioBufferOnValeria_block_invoke;
        v28 = &__block_descriptor_tmp_49_0;
        v29 = v3;
        v30 = sampleBufferOut;
        v31 = v6;
        dispatch_async(v19, &v27);
        v6 = 0;
        sampleBufferOut = 0;
      }
    }

    if (v41)
    {
      CFRelease(v41);
    }

    v26 = sampleBufferOut;
    if (!sampleBufferOut)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v37.value = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    v20 = mach_absolute_time();
    if (*(v3 + 248))
    {
      v21 = v20;
      if (!FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer())
      {
        CMSampleBufferGetPresentationTimeStamp(&timingArrayOut.duration, v37.value);
        v22 = timingArrayOut.duration.value;
        CMSampleBufferGetDuration(&v27, v37.value);
        v23 = v27.value;
        v24 = *(v3 + 76);
        if (!CMSimpleQueueEnqueue(*(v3 + 96), v37.value))
        {
          v25 = v24 * v23;
          v37.value = 0;
          v39.value = 0;
          *&v39.timescale = 0;
          if (_FigNeroPlayServerDrainQueue(*(v3 + 104), &v39.value))
          {
            *(v3 + 128) = *&v39.value;
          }

          *(v3 + 144) = v21;
          *(v3 + 152) = v22 + v25;
          _FigNeroPlayServerUpdateDesiredOctaviaSampleRate(v3);
        }
      }
    }

    v26 = v37.value;
    if (!v37.value)
    {
      goto LABEL_38;
    }
  }

  CFRelease(v26);
LABEL_38:
  if (v6)
  {
    CFRelease(v6);
  }
}

void __FigNeroPlayServerCreate_block_invoke_2(uint64_t a1, int a2, OpaqueCMBlockBuffer *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (a2 <= 1936418166)
  {
    if (a2 != 1634102644)
    {
      if (a2 != 1735336224)
      {
        goto LABEL_39;
      }

      destination = 0;
      v7 = dispatch_time(0, 2000000000);
      if (!*(v5 + 64))
      {
        goto LABEL_39;
      }

      v8 = v7;
      CMSimpleQueueGetCount(*(v5 + 96));
      CMSimpleQueueGetCount(*(v5 + 104));
      if (a3)
      {
        if (CMBlockBufferGetDataLength(a3) != 4)
        {
          __FigNeroPlayServerCreate_block_invoke_2_cold_3(&__s1);
          goto LABEL_49;
        }

        if (CMBlockBufferCopyDataBytes(a3, 0, 4uLL, &destination))
        {
LABEL_37:
          _FigNeroPlayServerStopAudio(v5);
          goto LABEL_39;
        }

        v9 = (destination & 1) == 0;
      }

      else
      {
        v9 = 1;
      }

      v16 = *(v5 + 56);
      *(v5 + 200) = -((*(v5 + 320) + 0.033) * v16);
      *(v5 + 144) = 0;
      *(v5 + 152) = 0;
      *(v5 + 128) = 0;
      *(v5 + 136) = 0;
      *(v5 + 160) = 0;
      *(v5 + 168) = 0;
      v17 = MEMORY[0x1E6960C70];
      *(v5 + 176) = v16;
      *(v5 + 272) = *v17;
      *(v5 + 288) = *(v17 + 16);
      *(v5 + 248) = 1;
      if (!v9)
      {
        *(v5 + 221) = 1;
      }

      v18 = *(v5 + 32);
      if (v18)
      {
        if (*(v5 + 221))
        {
          v19 = *(v5 + 224);
          v20 = *(CMBaseObjectGetVTable() + 16);
          if (*v20 == 2)
          {
            v21 = v20[7];
            if (v21)
            {
              v21(v18, v19);
            }
          }
        }
      }

      v22 = *(v5 + 48);
      if (!v22)
      {
        goto LABEL_39;
      }

      *(v5 + 184) = 1;
      if (AudioUnitInitialize(v22) || AudioOutputUnitStart(*(v5 + 48)))
      {
        goto LABEL_37;
      }

      if (!dispatch_semaphore_wait(*(v5 + 192), v8))
      {
        goto LABEL_39;
      }

      __FigNeroPlayServerCreate_block_invoke_2_cold_4(&__s1);
LABEL_49:
      if (!__s1)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v29 = 0;
    __s1 = 0u;
    v28 = 0u;
    v10 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      goto LABEL_40;
    }

    v12 = Mutable;
    if (!a3)
    {
      __FigNeroPlayServerCreate_block_invoke_2_cold_2(&destination);
      goto LABEL_22;
    }

    if (CMBlockBufferGetDataLength(a3) != 40)
    {
      __FigNeroPlayServerCreate_block_invoke_2_cold_1(&destination);
      goto LABEL_22;
    }

    destination = CMBlockBufferCopyDataBytes(a3, 0, 0x28uLL, &__s1);
    if (destination)
    {
      goto LABEL_22;
    }

    if (memcmp(&__s1, (v5 + 56), 0x28uLL))
    {
      v13 = *(v5 + 48);
      if (v13)
      {
        destination = AudioUnitSetProperty(v13, 8u, 1u, 0, &__s1, 0x28u);
        if (destination)
        {
          goto LABEL_22;
        }
      }

      v14 = v28;
      *(v5 + 56) = __s1;
      *(v5 + 72) = v14;
      *(v5 + 88) = v29;
    }

    *(v5 + 176) = *(v5 + 56);
    if (*(v5 + 48))
    {
      v23 = _FigNeroPlayServerCopyAudioProperty();
      if (v23)
      {
        v24 = v23;
        CFDictionarySetValue(v12, @"PreferredAudioChannelLayout", v23);
        CFRelease(v24);
      }

      v25 = _FigNeroPlayServerCopyAudioProperty();
      if (v25)
      {
        v26 = v25;
        CFDictionarySetValue(v12, @"DefaultAudioChannelLayout", v25);
        CFRelease(v26);
      }
    }

LABEL_22:
    v15 = CFNumberCreate(v10, kCFNumberSInt32Type, &destination);
    CFDictionarySetValue(v12, @"Error", v15);
    CFRelease(v15);
    destination = FigRemote_CreateSerializedAtomDataBlockBufferForCFType();
    CFRelease(v12);
    if (!destination)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (a2 != 1936418167)
  {
    if (a2 == 1937010544)
    {
      _FigNeroPlayServerStopAudio(v5);
    }

    goto LABEL_39;
  }

  if (!FigCreateBlockBufferCopyingMemoryBlock())
  {
LABEL_39:
    FigCreateBlockBufferCopyingMemoryBlock();
  }

LABEL_40:
  (*(a4 + 16))(a4);
}

uint64_t FigNeroPlayServerSetOctaviaSender(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != a2)
  {
    *(a1 + 24) = a2;
    if (a2)
    {
      block[5] = v2;
      block[6] = v3;
      v4 = *(a1 + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __FigNeroPlayServerSetOctaviaSender_block_invoke;
      block[3] = &__block_descriptor_tmp_5_4;
      block[4] = a1;
      dispatch_async(v4, block);
    }
  }

  return 0;
}

double _FigNeroPlayServerInit(uint64_t a1)
{
  *(a1 + 320) = 0;
  result = 0.0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void _FigNeroPlayServerFinalize(uint64_t a1)
{
  NeroTransportUnregisterObject();
  v2 = *(a1 + 48);
  if (v2)
  {
    AudioOutputUnitStop(v2);
    AudioUnitUninitialize(*(a1 + 48));
    AudioComponentInstanceDispose(*(a1 + 48));
  }

  v3 = *(a1 + 240);
  if (v3)
  {
    CFRelease(v3);
  }

  free(*(a1 + 224));
  v4 = *(a1 + 264);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 256);
  if (v5)
  {
    CFRelease(v5);
  }

  free(*(a1 + 208));
  v6 = *(a1 + 112);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 112) = 0;
  }

  _FigNeroPlayServerDrainQueue(*(a1 + 96), 0);
  v7 = *(a1 + 96);
  if (v7)
  {
    CFRelease(v7);
  }

  _FigNeroPlayServerDrainQueue(*(a1 + 104), 0);
  v8 = *(a1 + 104);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(a1 + 192);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 16) = 0;
  }
}

uint64_t _FigNeroPlayServerDrainQueue(opaqueCMSimpleQueue *a1, CMTimeValue *a2)
{
  if (!a1 || (v4 = CMSimpleQueueDequeue(a1)) == 0)
  {
    value = 0;
    v11 = 0;
    v6 = 0;
    if (!a2)
    {
      return v6;
    }

LABEL_8:
    *a2 = value;
    a2[1] = v11;
    return v6;
  }

  v5 = v4;
  v6 = 0;
  do
  {
    DataBuffer = CMSampleBufferGetDataBuffer(v5);
    v6 += CMBlockBufferGetDataLength(DataBuffer);
    CMSampleBufferGetOutputPresentationTimeStamp(&v15, v5);
    value = v15.value;
    CMSampleBufferGetPresentationTimeStamp(&v14, v5);
    v9 = v14.value;
    CMSampleBufferGetDuration(&v13, v5);
    v10 = v13.value;
    CFRelease(v5);
    v5 = CMSimpleQueueDequeue(a1);
  }

  while (v5);
  v11 = v10 + v9;
  if (a2)
  {
    goto LABEL_8;
  }

  return v6;
}

uint64_t _FigNeroPlayServerRenderProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  LODWORD(v7) = *(a1 + 80) * a5;
  v8 = *(a6 + 16);
  if (*(a1 + 184))
  {
    dispatch_semaphore_signal(*(a1 + 192));
    bzero(v8, v7);
    *(a1 + 184) = 0;
  }

  else if (v7 >= 1)
  {
    v11 = (a1 + 112);
    v10 = *(a1 + 112);
    do
    {
      lengthAtOffsetOut = 0;
      dataPointerOut = 0;
      v12 = *(a1 + 80);
      if (v10 && (DataBuffer = CMSampleBufferGetDataBuffer(v10)) != 0 && !CMBlockBufferGetDataPointer(DataBuffer, *(a1 + 120), &lengthAtOffsetOut, 0, &dataPointerOut))
      {
        CMSampleBufferGetPresentationTimeStamp(&v30, *(a1 + 112));
        v17 = *(a1 + 120);
        v18 = v17 / v12 + v30.value;
        v19 = *(a1 + 200);
        if (v19 >= v18)
        {
          if (v19 <= v18)
          {
            LODWORD(v14) = 0;
          }

          else if (*(a1 + 64) == 1667326771)
          {
            LODWORD(v14) = 0;
            *(a1 + 200) = v18;
          }

          else
          {
            LODWORD(v14) = 0;
            v23 = (v12 * (v19 - v18));
            v24 = lengthAtOffsetOut;
            if (lengthAtOffsetOut >= v23)
            {
              v23 = v23;
            }

            else
            {
              v23 = lengthAtOffsetOut;
            }

            v25 = &dataPointerOut[v23];
            *(a1 + 120) = v17 + v23;
            lengthAtOffsetOut = v24 - v23;
            dataPointerOut = v25;
          }

          v22 = v7;
          v21 = v8;
        }

        else
        {
          v20 = v12 * (v18 - v19);
          if (v20 >= v7)
          {
            v14 = v7;
          }

          else
          {
            v14 = v20;
          }

          bzero(v8, v14);
          v21 = &v8[v14];
          v22 = v7 - v14;
          *(a1 + 200) += v14 / v12;
        }

        LODWORD(v15) = 0;
        v26 = lengthAtOffsetOut;
        if (v22 >= 1 && lengthAtOffsetOut)
        {
          if (lengthAtOffsetOut <= v22)
          {
            v15 = lengthAtOffsetOut;
          }

          else
          {
            v15 = v22;
          }

          memcpy(v21, dataPointerOut, v15);
          *(a1 + 120) += v15;
          v26 -= v15;
          lengthAtOffsetOut = v26;
          *(a1 + 200) += v15 / v12;
        }

        if (!v26)
        {
          v27 = *(a1 + 112);
          v28 = mach_absolute_time();
          CMTimeMake(&v29, v28, 1);
          CMSampleBufferSetOutputPresentationTimeStamp(v27, &v29);
          if (CMSimpleQueueEnqueue(*(a1 + 104), *(a1 + 112)) && *v11)
          {
            CFRelease(*v11);
          }

          *v11 = 0;
          *(a1 + 120) = 0;
        }
      }

      else
      {
        LODWORD(v14) = 0;
        LODWORD(v15) = 0;
      }

      v16 = (v15 + v14);
      v7 = (v7 - v16);
      if (!v7)
      {
        break;
      }

      v8 += v16;
      v10 = *v11;
      if (!*v11)
      {
        v10 = CMSimpleQueueDequeue(*(a1 + 96));
        *(a1 + 112) = v10;
        if (!v10)
        {
          if (v7 >= 1)
          {
            bzero(v8, v7);
            *(a1 + 200) += v7 / *(a1 + 80);
          }

          return 0;
        }

        *(a1 + 120) = 0;
      }
    }

    while (v7 > 0);
  }

  return 0;
}

uint64_t _FigNeroPlayServerStopAudio(uint64_t result)
{
  if (*(result + 248))
  {
    v1 = result;
    *(result + 248) = 0;
    result = *(result + 48);
    if (result)
    {
      result = AudioOutputUnitStop(result);
      if (!result)
      {
        result = AudioUnitUninitialize(*(v1 + 48));
        if (!result)
        {
          DataBuffer = CMSampleBufferGetDataBuffer(*(v1 + 112));
          CMBlockBufferGetDataLength(DataBuffer);
          v3 = *(v1 + 112);
          if (v3)
          {
            CFRelease(v3);
            *(v1 + 112) = 0;
          }

          *(v1 + 120) = 0;
          *(v1 + 200) = 0;
          _FigNeroPlayServerDrainQueue(*(v1 + 104), 0);
          v4 = *(v1 + 96);

          return _FigNeroPlayServerDrainQueue(v4, 0);
        }
      }
    }
  }

  return result;
}

uint64_t _FigNeroPlayServerUpdateDesiredOctaviaSampleRate(uint64_t result)
{
  if (*(result + 128) >= 1)
  {
    v1 = result;
    v2 = *(result + 136);
    result = FigHostTimeToNanoseconds();
    v3 = *(v1 + 56);
    v4 = *(v1 + 152) - v2 + (result * v3) / -1000000000;
    v5 = *(v1 + 164) - v4;
    if (v5 < 0)
    {
      v5 = v4 - *(v1 + 164);
    }

    if (v5 < 0x3E9)
    {
      *(v1 + 172) = 0;
      v7 = *(v1 + 168) - v4;
      if (v7 < 0)
      {
        v7 = v4 - *(v1 + 168);
      }

      if (v7 >= 0x12D)
      {
        *(v1 + 176) = v3 + (*(v1 + 160) - v4) / 300.0;
        *(v1 + 168) = v4;
      }

      *(v1 + 164) = v4;
    }

    else
    {
      v6 = *(v1 + 172);
      *(v1 + 172) = v6 + 1;
      if (v6 >= 10)
      {
        *(v1 + 160) = v4;
        *(v1 + 164) = v4;
        *(v1 + 168) = v4;
        *(v1 + 172) = 0;
        if (v4 <= 1999)
        {
          *(v1 + 160) = 2000;
        }
      }
    }
  }

  return result;
}

void wvmHeaderCallback(void *a1, char *a2, unsigned __int8 *a3, double *a4)
{
  FigManifoldGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a3 = 0;
  v8 = MEMORY[0x1E69E9830];
  while (1)
  {
    v9 = *a2;
    if ((v9 & 0x80000000) != 0)
    {
      if (!__maskrune(v9, 0x4000uLL))
      {
        break;
      }
    }

    else if ((*(v8 + 4 * v9 + 60) & 0x4000) == 0)
    {
      break;
    }

    if (!*a2)
    {
      break;
    }

    v45 = ++a2;
  }

  if (!strncasecmp("X-TIMESTAMP-MAP", a2, 0xFuLL))
  {
    v10 = (a2 + 15);
    do
    {
      v45 = v10;
      v11 = *v10;
      if ((v11 & 0x80000000) != 0)
      {
        v12 = __maskrune(v11, 0x4000uLL);
      }

      else
      {
        v12 = *(v8 + 4 * v11 + 60) & 0x4000;
      }

      ++v10;
    }

    while (v12);
    v13 = *(v10 - 1);
    if (v13 == 61 || v13 == 58)
    {
      v44 = 0.0;
      v14 = *(v10 - 1) == 61 ? 58 : 61;
      v45 = v10;
      LOBYTE(v15) = *v10;
      if (*v10)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
LABEL_22:
        while (1)
        {
          v19 = (v15 & 0x80) != 0 ? __maskrune(v15, 0x4000uLL) : *(v8 + 4 * v15 + 60) & 0x4000;
          v20 = v45;
          if (!v19)
          {
            break;
          }

          ++v45;
          LOBYTE(v15) = v20[1];
        }

        if (strncasecmp(v45, "LOCAL", 5uLL))
        {
          if (!strncasecmp(v20, "MPEGTS", 6uLL))
          {
            v21 = (v20 + 6);
            do
            {
              v45 = v21;
              v22 = *v21;
              if ((v22 & 0x80000000) != 0)
              {
                v23 = __maskrune(v22, 0x4000uLL);
              }

              else
              {
                v23 = *(v8 + 4 * v22 + 60) & 0x4000;
              }

              v24 = v45;
              v21 = (v45 + 1);
            }

            while (v23);
            if (*v45 == v14)
            {
              do
              {
                v45 = v24 + 1;
                v25 = v24[1];
                if ((v25 & 0x80000000) != 0)
                {
                  v26 = __maskrune(v25, 0x4000uLL);
                }

                else
                {
                  v26 = *(v8 + 4 * v25 + 60) & 0x4000;
                }

                v24 = v45;
              }

              while (v26);
              v16 = strtoull(v45, 0, 10);
              v17 = 1;
            }
          }

LABEL_53:
          for (i = v45; *i++; v45 = i)
          {
            if (*(i - 1) == 44)
            {
              v45 = i;
              v15 = *i;
              if (v15)
              {
                goto LABEL_22;
              }

              break;
            }
          }

          if (v18 && v17)
          {
            Seconds = v16 / 90000.0 - v44;
            memset(&v43, 0, sizeof(v43));
            if (Seconds >= 0.0)
            {
              v34 = 0.00000555555556;
            }

            else
            {
              v34 = -0.00000555555556;
            }

            CMTimeMakeWithSeconds(&v43, Seconds + v34, 90000);
            memset(&v42, 0, sizeof(v42));
            v35 = *(DerivedStorage + 112);
            if (v35 >= 0.0)
            {
              v36 = 0.00000555555556;
            }

            else
            {
              v36 = -0.00000555555556;
            }

            CMTimeMakeWithSeconds(&v42, v35 + v36, 90000);
            memset(&v41, 0, sizeof(v41));
            time1 = v42;
            time2 = v43;
            fmi_CalculateMPEG2WrapForTime(&time1, &time2, &v41);
            time1 = v41;
            time2 = **&MEMORY[0x1E6960CC0];
            if (CMTimeCompare(&time1, &time2))
            {
              time2 = v43;
              v38 = v41;
              CMTimeAdd(&time1, &time2, &v38);
              v43 = time1;
              if (Seconds != *(DerivedStorage + 120))
              {
                *(DerivedStorage + 120) = Seconds;
              }

              time1 = v43;
              Seconds = CMTimeGetSeconds(&time1);
            }

            if (Seconds != *(DerivedStorage + 112))
            {
              *a3 = 1;
              *a4 = Seconds;
              *(DerivedStorage + 112) = Seconds;
              if ((*(DerivedStorage + 156) & 0x1D) == 1)
              {
                v37 = MEMORY[0x1E6960C70];
                *(DerivedStorage + 168) = *MEMORY[0x1E6960C70];
                *(DerivedStorage + 184) = *(v37 + 16);
              }
            }
          }

          return;
        }

        v27 = (v20 + 5);
        do
        {
          v45 = v27;
          v28 = *v27;
          if ((v28 & 0x80000000) != 0)
          {
            v29 = __maskrune(v28, 0x4000uLL);
          }

          else
          {
            v29 = *(v8 + 4 * v28 + 60) & 0x4000;
          }

          v27 = (v45 + 1);
        }

        while (v29);
        if (*v45 != v14)
        {
          goto LABEL_53;
        }

        v43.value = 0;
        do
        {
          while (1)
          {
            v30 = *++v45;
            if ((v30 & 0x80000000) != 0)
            {
              break;
            }

            if ((*(v8 + 4 * v30 + 60) & 0x4000) == 0)
            {
              goto LABEL_51;
            }
          }
        }

        while (__maskrune(v30, 0x4000uLL));
LABEL_51:
        v43.value = strlen(v45);
        FigWebVTTReadTime(&v45, &v43, &v44, 0, 0);
        if (!v31)
        {
          v18 = 1;
          goto LABEL_53;
        }
      }
    }
  }
}

uint64_t wvmSampleCallback(uint64_t a1, uint64_t a2)
{
  sbuf = 0;
  FigManifoldGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E6960CC0];
  v32 = **&MEMORY[0x1E6960CC0];
  v31 = v32;
  if (!a2)
  {
    goto LABEL_43;
  }

  v6 = DerivedStorage;
  FormatCallback = WebVTTGetSamplePTS(a2, &v32);
  if (FormatCallback)
  {
    goto LABEL_48;
  }

  if ((v32.flags & 0x1D) == 1)
  {
    if ((*(v6 + 180) & 0x1D) != 1)
    {
      if ((*(v6 + 156) & 0x1D) == 1)
      {
        lhs = *(v6 + 144);
        rhs = v32;
        fmi_CalculateMPEG2WrapForTime(&lhs, &rhs, &v36);
        *(v6 + 168) = *&v36.value;
        epoch = v36.epoch;
      }

      else
      {
        *(v6 + 168) = *v5;
        epoch = *(v5 + 16);
      }

      *(v6 + 184) = epoch;
    }

    lhs = v32;
    rhs = *(v6 + 168);
    CMTimeAdd(&v36, &lhs, &rhs);
    v32 = v36;
    v9 = v36.epoch;
    *(v6 + 144) = *&v36.value;
    *(v6 + 160) = v9;
    v31 = *(v6 + 168);
  }

  v10 = *(v6 + 104);
  v36 = v31;
  v11 = WebVTTCreateSampleBufferFromSample(v10, a2, &v36, &sbuf);
  v12 = sbuf;
  if (!v11 && sbuf)
  {
    FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
    if (!FormatDescription)
    {
      v11 = 4294951255;
      goto LABEL_44;
    }

    v14 = FormatDescription;
    if (!FigCFEqual())
    {
      v15 = *(v6 + 72);
      *(v6 + 72) = v14;
      CFRetain(v14);
      if (v15)
      {
        CFRelease(v15);
        FormatCallback = wvmMakeFormatCallback(a1, v6);
        if (FormatCallback)
        {
          goto LABEL_48;
        }
      }

      else
      {
        FormatCallback = wvmMakeFormatCallback(a1, v6);
        if (FormatCallback)
        {
          goto LABEL_48;
        }

        v22 = *(v6 + 88);
        if (v22)
        {
          v23 = *(v6 + 24);
          *(v6 + 24) = 0;
          if (v23 >= 1)
          {
            v24 = v23;
            do
            {
              FigSimpleMutexUnlock();
              --v24;
            }

            while (v24);
            v22 = *(v6 + 88);
          }

          v22(a1, *(v6 + 96));
          do
          {
            FigSimpleMutexLock();
            v25 = *(v6 + 24) + 1;
            *(v6 + 24) = v25;
          }

          while (v25 < v23);
          if (*(v6 + 8) || *(v6 + 11))
          {
LABEL_42:
            v11 = 4294951251;
LABEL_44:
            v12 = sbuf;
            goto LABEL_45;
          }
        }
      }
    }

    v16 = sbuf;
    FigManifoldGetFigBaseObject();
    v17 = CMBaseObjectGetDerivedStorage();
    if (*(v17 + 8))
    {
      v11 = 4294954511;
      goto LABEL_44;
    }

    v18 = v17;
    v20 = (v17 + 40);
    v19 = *(v17 + 40);
    if (!v19)
    {
      goto LABEL_43;
    }

    if (!*(v17 + 128))
    {
      goto LABEL_21;
    }

    FormatCallback = wvmMakeFormatCallback(a1, v17);
    if (!FormatCallback)
    {
      v19 = *v20;
      if (!*v20)
      {
        v21 = 0;
LABEL_34:
        v26 = *(v18 + 56);
        v27 = *(v18 + 24);
        *(v18 + 24) = 0;
        if (v27 >= 1)
        {
          v28 = v27;
          do
          {
            FigSimpleMutexUnlock();
            --v28;
          }

          while (v28);
        }

        v11 = v21(a1, *(v18 + 64), v26, 0, 0, v16);
        do
        {
          FigSimpleMutexLock();
          v29 = *(v18 + 24) + 1;
          *(v18 + 24) = v29;
        }

        while (v29 < v27);
        if (v11)
        {
          goto LABEL_44;
        }

        if (*(v18 + 8) || *(v18 + 11))
        {
          goto LABEL_42;
        }

LABEL_43:
        v11 = 0;
        goto LABEL_44;
      }

LABEL_21:
      v21 = v19;
      goto LABEL_34;
    }

LABEL_48:
    v11 = FormatCallback;
    goto LABEL_44;
  }

LABEL_45:
  if (v12)
  {
    CFRelease(v12);
  }

  return v11;
}

uint64_t wvmInvalidate(const void *a1)
{
  CFRetain(a1);
  wvmInvalidateGuts(a1);
  CFRelease(a1);
  return 0;
}

uint64_t wvmFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  wvmInvalidateGuts(a1);
  WebVTTParserDestroy(*(DerivedStorage + 104));
  *(DerivedStorage + 104) = 0;
  v3 = *(DerivedStorage + 136);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 136) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v4 = *(DerivedStorage + 72);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 72) = 0;
  }

  result = *(DerivedStorage + 16);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 16) = 0;
  }

  return result;
}

__CFString *wvmCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v1 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"FigWebVTTManifold :");
  }

  return v1;
}

uint64_t wvmSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  if (*(DerivedStorage + 8))
  {
    wvmSetProperty(&v12);
    goto LABEL_12;
  }

  if (!CFEqual(a2, @"FMFD_HintForStartTime"))
  {
    value_low = 4294954512;
    goto LABEL_8;
  }

  if (!a3 || (v6 = CFGetTypeID(a3), v6 != CFDictionaryGetTypeID()))
  {
    wvmSetProperty(&v12);
LABEL_12:
    value_low = LODWORD(v12.value);
    goto LABEL_8;
  }

  CMTimeMakeFromDictionary(&v12, a3);
  value = v12.value;
  flags = v12.flags;
  timescale = v12.timescale;
  if ((v12.flags & 0x1D) != 1)
  {
    wvmSetProperty(&v12);
    goto LABEL_12;
  }

  value_low = 0;
  epoch = v12.epoch;
  *(DerivedStorage + 144) = value;
  *(DerivedStorage + 152) = timescale;
  *(DerivedStorage + 156) = flags;
  *(DerivedStorage + 160) = epoch;
  v10 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 168) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 184) = *(v10 + 16);
LABEL_8:
  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t wvmInvalidateGuts(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = v3 + 1;
  if (!*(DerivedStorage + 8))
  {
    *(DerivedStorage + 8) = 1;
    wvmEndAllTracks(a1, 4294954511);
    v3 = *(DerivedStorage + 24) - 1;
  }

  *(DerivedStorage + 24) = v3;

  return FigSimpleMutexUnlock();
}

void *wvmEndAllTracks(uint64_t a1, uint64_t a2)
{
  FigManifoldGetFigBaseObject();
  result = CMBaseObjectGetDerivedStorage();
  v5 = result[6];
  if (v5)
  {
    v6 = result;
    result[6] = 0;
    v7 = result[7];
    v8 = result[3];
    result[3] = 0;
    if (v8 >= 1)
    {
      v9 = v8;
      do
      {
        FigSimpleMutexUnlock();
        --v9;
      }

      while (v9);
    }

    v5(a1, *(v6 + 16), v7, a2);
    do
    {
      result = FigSimpleMutexLock();
      v10 = v6[3] + 1;
      v6[3] = v10;
    }

    while (v10 < v8);
  }

  return result;
}

uint64_t wvmManifoldInjectData(const void *a1, uint64_t a2, char a3, void *a4)
{
  FigManifoldGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a4)
  {
    wvmManifoldInjectData(&v20);
    return v20;
  }

  v8 = DerivedStorage;
  CFRetain(a1);
  CFRetain(a4);
  FigSimpleMutexLock();
  v9 = *(v8 + 24);
  *(v8 + 24) = v9 + 1;
  if (*(v8 + 8))
  {
    wvmManifoldInjectData(&v20);
LABEL_36:
    v12 = v20;
    goto LABEL_31;
  }

  if (*(v8 + 10))
  {
    wvmManifoldInjectData(&v20);
    goto LABEL_36;
  }

  if (!*(v8 + 9))
  {
    v10 = *(v8 + 80);
    if (v10)
    {
      *(v8 + 24) = 0;
      if ((v9 & 0x8000000000000000) == 0)
      {
        v11 = v9 + 1;
        do
        {
          FigSimpleMutexUnlock();
          --v11;
        }

        while (v11);
        v10 = *(v8 + 80);
      }

      v12 = v10(a1, *(v8 + 96), 1935832172, *(v8 + 64));
      do
      {
        FigSimpleMutexLock();
        v13 = *(v8 + 24);
        *(v8 + 24) = v13 + 1;
      }

      while (v13 < v9);
      if (v12)
      {
        goto LABEL_30;
      }

      if (*(v8 + 8) || *(v8 + 11))
      {
        v12 = 4294951251;
        goto LABEL_30;
      }

      *(v8 + 9) = 1;
    }
  }

  v14 = CMGetAttachment(a4, @"FMFD_BufferDecryptor", 0);
  if (!FigCFEqual())
  {
    wvmManifoldInjectData(a1, v8, v14, (v8 + 136));
  }

  if (!CMBlockBufferGetDataLength(a4))
  {
    LODWORD(v12) = 0;
    if ((a3 & 2) != 0)
    {
LABEL_23:
      if (!v12)
      {
        WebVTTParserFlush(*(v8 + 104), 0, 1);
      }
    }

LABEL_25:
    if (v12 == -16045)
    {
      v12 = 0;
    }

    else
    {
      v12 = v12;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_30;
  }

  IsRangeContiguous = CMBlockBufferIsRangeContiguous(a4, 0, 0);
  v16 = a4;
  if (IsRangeContiguous)
  {
LABEL_22:
    *(v8 + 10) = 1;
    LODWORD(v12) = WebVTTParserParseBlockBuffer(*(v8 + 104), v16);
    if ((a3 & 2) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  Contiguous = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], a4, *MEMORY[0x1E695E480], 0, 0, 0, 0, &cf);
  if (!Contiguous)
  {
    v16 = cf;
    goto LABEL_22;
  }

  v12 = Contiguous;
LABEL_30:
  *(v8 + 10) = 0;
LABEL_31:
  --*(v8 + 24);
  FigSimpleMutexUnlock();
  CFRelease(a4);
  CFRelease(a1);
  return v12;
}

uint64_t wvmNoteStreamEnd(const void *a1, uint64_t a2)
{
  FigManifoldGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  if (*(DerivedStorage + 8))
  {
    wvmNoteStreamEnd(&v7);
    v5 = v7;
  }

  else
  {
    if (!*(DerivedStorage + 10))
    {
      WebVTTParserFlush(*(DerivedStorage + 104), 1, 0);
    }

    *(DerivedStorage + 11) = 1;
    wvmEndAllTracks(a1, a2);
    v5 = 0;
  }

  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  CFRelease(a1);
  return v5;
}

uint64_t wvmMakeFormatCallback(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (!v2)
  {
    return 0;
  }

  v5 = *(a2 + 56);
  *(a2 + 128) = 0;
  v6 = *(a2 + 24);
  *(a2 + 24) = 0;
  if (v6 >= 1)
  {
    v7 = v6;
    do
    {
      FigSimpleMutexUnlock();
      --v7;
    }

    while (v7);
  }

  v8 = v2(a1, *(a2 + 64), v5, *(a2 + 72), 0);
  do
  {
    FigSimpleMutexLock();
    v9 = *(a2 + 24) + 1;
    *(a2 + 24) = v9;
  }

  while (v9 < v6);
  if (!v8)
  {
    if (*(a2 + 8) || *(a2 + 11))
    {
      return 4294951251;
    }

    return 0;
  }

  return v8;
}

uint64_t FigStreamingPlayerCombinedVideoDestination_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigStreamingPlayerCombinedVideoDestinationID = result;
  return result;
}

const __CFArray *FigStreamingPlayerCombinedVideoDestinationReevaluateCanSendMetadataToFVT(uint64_t a1)
{
  for (i = 0; ; ++i)
  {
    result = *(a1 + 24);
    if (result)
    {
      result = CFArrayGetCount(result);
    }

    if (i >= result)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
    result = FPSupport_fvtSupportsMetadataTrack(ValueAtIndex, 1835360888, v5, v6, v7, v8, v9, v10);
    if (result)
    {
      *(a1 + 32) = 1;
      return result;
    }
  }

  return result;
}

const __CFArray *FigStreamingPlayerCombinedVideoDestinationGetFVTCount(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

CFTypeRef FigStreamingPlayerCombinedVideoDestinationCopyFVTs(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t FigStreamingPlayerCombinedVideoDestinationContainsBufferDeliveryFVR(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    Count = *(a1 + 24);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v2 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v2++);
    if (fscpd_isFVTForBufferDelivery(ValueAtIndex))
    {
      return 1;
    }
  }

  return 0;
}

CFTypeRef fscpd_isFVTForBufferDelivery(uint64_t a1)
{
  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigVideoTargetGetCMBaseObject();
  v3 = v2;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 0;
  }

  v4(v3, @"VideoReceiver", AllocatorForMedia, &cf);
  v5 = cf;
  if (cf)
  {
    v8 = 0;
    v6 = *(*(CMBaseObjectGetVTable() + 24) + 136);
    if (v6)
    {
      v6(v5, &v8);
      v5 = ((v8 >> 1) & 1);
    }

    else
    {
      v5 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v5;
}

uint64_t FigStreamingPlayerCombinedVideoDestinationCreateCombinedCapability(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  v5 = 0;
  if (!v2)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(v2); v5 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
    if (fscpd_isFVTForBufferDelivery(ValueAtIndex))
    {
      CFArrayAppendValue(Mutable, ValueAtIndex);
    }

    ++v5;
    if (v2)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  v8 = 0;
  v9 = 0;
  v10 = *MEMORY[0x1E6963150];
  v11 = *(MEMORY[0x1E6963150] + 8);
  v34 = Mutable;
  if (!Mutable)
  {
    goto LABEL_11;
  }

LABEL_10:
  for (j = CFArrayGetCount(Mutable); v9 < j; j = 0)
  {
    v13 = CFArrayGetValueAtIndex(Mutable, v9);
    theArray = 0;
    v14 = FigGetAllocatorForMedia();
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v15)
    {
      v30 = 0;
      v32 = 4294954514;
      goto LABEL_47;
    }

    v16 = v15(v13, v14, &theArray);
    if (v16)
    {
      v32 = v16;
      v30 = 0;
      goto LABEL_47;
    }

    if (theArray)
    {
      if (CFArrayGetCount(theArray))
      {
        v17 = theArray;
        v35 = v9;
        v36 = v8;
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
        }

        else
        {
          Count = 0;
        }

        v19 = FigGetAllocatorForMedia();
        v20 = CFArrayCreateMutable(v19, 0, MEMORY[0x1E695E9C0]);
        if (v20 && Count >= 1)
        {
          for (k = 0; k != Count; ++k)
          {
            v22 = CFArrayGetValueAtIndex(v17, k);
            CountOfDataChannels = FigDataChannelGroupGetCountOfDataChannels(v22, v23);
            if (CountOfDataChannels >= 1)
            {
              v25 = CountOfDataChannels;
              v26 = 0;
              while (1)
              {
                DataChannelByIndex = FigDataChannelGroupGetDataChannelByIndex(v22, v26);
                *&v39.category = v10;
                v39.value = v11;
                if (CMTagCollectionContainsTag(DataChannelByIndex, v39))
                {
                  break;
                }

                if (v25 == ++v26)
                {
                  goto LABEL_31;
                }
              }

              if (DataChannelByIndex)
              {
                v28 = CFRetain(DataChannelByIndex);
                if (v28)
                {
                  v29 = v28;
                  CFArrayAppendValue(v20, v28);
                  CFRelease(v29);
                }
              }
            }

LABEL_31:
            ;
          }
        }

        if (v20)
        {
          v30 = v20;
          CFArrayGetCount(v20);
          Mutable = v34;
          v9 = v35;
          v8 = v36;
          if (v36)
          {
            if (CFArrayGetCount(v30) && !FigCFEqual())
            {
              FigStreamingPlayerCombinedVideoDestinationCreateCombinedCapability_cold_1(&v38);
              v32 = v38;
              goto LABEL_47;
            }
          }

          else
          {
            v8 = CFRetain(v30);
          }

          CFRelease(v30);
        }

        else
        {
          Mutable = v34;
          v9 = v35;
          v8 = v36;
        }
      }

      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    ++v9;
    if (Mutable)
    {
      goto LABEL_10;
    }

LABEL_11:
    ;
  }

  v30 = 0;
  v32 = 0;
  if (a2)
  {
    *a2 = v8;
    v8 = 0;
  }

LABEL_47:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return v32;
}

double FigStreamingPlayerCombinedVideoDestinationGetMaxRefreshRate(uint64_t a1)
{
  v2 = 0;
  v20 = **&MEMORY[0x1E6960C88];
  v3 = 0.0;
  v4 = MEMORY[0x1E6960CC0];
  while (1)
  {
    Count = *(a1 + 24);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v2 >= Count)
    {
      return v3;
    }

    v15 = *v4;
    *&v19.value = *v4;
    v6 = *(v4 + 2);
    v19.epoch = v6;
    cf = 0;
    CFArrayGetValueAtIndex(*(a1 + 24), v2);
    AllocatorForMedia = FigGetAllocatorForMedia();
    FigVideoTargetGetCMBaseObject();
    v9 = v8;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v11 = v10(v9, @"RefreshRate", AllocatorForMedia, &cf);
      v12 = cf;
      if (v11)
      {
        v13 = 1;
      }

      else
      {
        v13 = cf == 0;
      }

      if (v13)
      {
        goto LABEL_14;
      }

      FigCFDictionaryGetCMTimeIfPresent();
      time1 = v19;
      *&time2.value = v15;
      time2.epoch = v6;
      if (CMTimeCompare(&time1, &time2) < 1)
      {
        goto LABEL_16;
      }

      time1 = v19;
      time2 = v20;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        v20 = v19;
        time1 = v19;
        v3 = 1.0 / CMTimeGetSeconds(&time1);
      }
    }

    v12 = cf;
LABEL_14:
    if (v12)
    {
      CFRelease(v12);
    }

LABEL_16:
    ++v2;
  }
}

uint64_t FigStreamingPlayerCombinedVideoDestinationMaxDesiredPixelCountFromFVTs(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  while (1)
  {
    Count = *(a1 + 24);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v2 >= Count)
    {
      return v3;
    }

    number = 0;
    valuePtr = 0;
    CFArrayGetValueAtIndex(*(a1 + 24), v2);
    AllocatorForMedia = FigGetAllocatorForMedia();
    FigVideoTargetGetCMBaseObject();
    v7 = v6;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = v8(v7, @"DesiredPixelCount", AllocatorForMedia, &number);
    v10 = number;
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = number == 0;
    }

    if (!v11)
    {
      CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr <= v3)
      {
        v3 = v3;
      }

      else
      {
        v3 = valuePtr;
      }

LABEL_13:
      v10 = number;
    }

    if (v10)
    {
      CFRelease(v10);
    }

    ++v2;
  }
}

uint64_t FigStreamingPlayerCombinedVideoDestinationSendFVTConfigAtHostTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 24);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
    v34[0] = 0;
    cf[0] = 0;
    FigDataChannelConfigurationCopyLoggingIdentifier(a5, cf);
    AllocatorForMedia = FigGetAllocatorForMedia();
    Copy = FigDataChannelConfigurationCreateCopy(AllocatorForMedia, a5, v34);
    if (!Copy)
    {
      if (!a4)
      {
        goto LABEL_9;
      }

      v17 = v34[0];
      v18 = cf[0];
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v19)
      {
        goto LABEL_16;
      }

      Copy = v19(a4, ValueAtIndex, v17, v18, 100);
      if (!Copy)
      {
LABEL_9:
        if (!a3)
        {
          goto LABEL_12;
        }

        v20 = v34[0];
        v21 = cf[0];
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v22)
        {
          goto LABEL_16;
        }

        Copy = v22(a3, ValueAtIndex, 101, v20, v21);
        if (!Copy)
        {
LABEL_12:
          if (!a2)
          {
            goto LABEL_15;
          }

          v23 = v34[0];
          v24 = cf[0];
          v25 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (!v25)
          {
LABEL_16:
            v27 = 0;
            v26 = 4294954514;
            goto LABEL_17;
          }

          Copy = v25(a2, ValueAtIndex, 1, v23, v24);
          if (!Copy)
          {
LABEL_15:
            v26 = 0;
            v27 = v34[0];
            v34[0] = 0;
            goto LABEL_17;
          }
        }
      }
    }

    v26 = Copy;
    v27 = 0;
LABEL_17:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v34[0])
    {
      CFRelease(v34[0]);
    }

    if (v26)
    {
      goto LABEL_33;
    }

    if (*(a6 + 12))
    {
      *cf = *a6;
      v33 = *(a6 + 16);
      v30 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v30)
      {
LABEL_32:
        v26 = 4294954514;
LABEL_33:
        if (!v27)
        {
          return v26;
        }

        goto LABEL_34;
      }

      *v34 = *cf;
      v35 = v33;
      v29 = v30(ValueAtIndex, v27, v34);
      if (v29)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v28 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (!v28)
      {
        goto LABEL_32;
      }

      v29 = v28(ValueAtIndex, v27);
      if (v29)
      {
LABEL_37:
        v26 = v29;
        if (!v27)
        {
          return v26;
        }

LABEL_34:
        CFRelease(v27);
        return v26;
      }
    }

    if (v27)
    {
      CFRelease(v27);
    }
  }

  return 0;
}

uint64_t FigStreamingPlayerCombinedVideoDestinationRemoveFVTNotificationListeners(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 24);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(a1 + 24), i);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  return 0;
}

uint64_t FigStreamingPlayerCombinedVideoDestinationAddFVTNotificationListeners(uint64_t a1)
{
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 24);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(a1 + 24), i);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
  }

  return 0;
}

uint64_t FigStreamingPlayerCombinedVideoDestinationCreate(uint64_t a1, const void *a2, uint64_t *a3)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MEMORY[0x19A8D3660](&FigStreamingPlayerCombinedVideoDestinationGetTypeID_sFigStreamingPlayerCombinedVideoDestinationRegisterOnce, FigStreamingPlayerCombinedVideoDestination_initOnce);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    result = 0;
    *(v6 + 16) = v7;
    *a3 = v6;
  }

  else
  {
    FigStreamingPlayerCombinedVideoDestinationCreate_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t FigStreamingItemCombinedVideoDestination_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigStreamingItemCombinedVideoDestinationID = result;
  return result;
}

uint64_t FigStreamingItemCombinedVideoDestinationSetVisualContexts(uint64_t a1, const void *a2)
{
  if (FigCFEqual())
  {
    return 0;
  }

  v5 = *(a1 + 24);
  *(a1 + 24) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

CFTypeRef FigStreamingItemCombinedVideoDestinationCopyVisualContexts(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

const __CFArray *FigStreamingItemCombinedVideoDestinationExpectCPUToReadVideo(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (CFArrayGetCount(result) > 0);
  }

  return result;
}

const __CFArray *FigStreamingItemCombinedVideoDestinationGetCountOfVisualContexts(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t FigStreamingItemCombinedVideoDestinationCreate(uint64_t a1, const void *a2, uint64_t *a3)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MEMORY[0x19A8D3660](&FigStreamingItemCombinedVideoDestinationGetTypeID_sFigStreamingItemCombinedVideoDestinationRegisterOnce, FigStreamingItemCombinedVideoDestination_initOnce);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    result = 0;
    *(v6 + 16) = v7;
    *a3 = v6;
  }

  else
  {
    FigStreamingItemCombinedVideoDestinationCreate_cold_1(&v9);
    return v9;
  }

  return result;
}

void *fscpd_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void fscpd_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }
}

CFStringRef fscpd_copyFormattingDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v4 = *(a1 + 16);
  Count = *(a1 + 24);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  return CFStringCreateWithFormat(v2, 0, @"[%p:%@] FVTs:%d", a1, v4, Count);
}

uint64_t fscid_init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void fscid_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }
}

CFStringRef fscid_copyFormattingDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v4 = *(a1 + 16);
  Count = *(a1 + 24);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  return CFStringCreateWithFormat(v2, 0, @"[%p:%@] FVCs:%d", a1, v4, Count);
}

void FigAudioSessionTriggerAVAudioSessionReset(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [objc_msgSend(MEMORY[0x1E698D718] "defaultManager")];

  objc_autoreleasePoolPop(v2);
}

uint64_t FigAudioSessionCreateWithAVAudioSession(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = objc_autoreleasePoolPush();
  cf = 0;
  FigKTraceInit();
  if (!a2)
  {
    FigAudioSessionCreateWithAVAudioSession_cold_6(v20);
LABEL_19:
    v17 = LODWORD(v20[0]);
    goto LABEL_22;
  }

  FigAudioSessionGetClassID();
  Key = CMDerivedObjectCreate();
  if (Key)
  {
    goto LABEL_16;
  }

  if (qword_1ED4CBA40 != -1)
  {
    FigAudioSessionCreateWithAVAudioSession_cold_1();
  }

  Key = FigCFWeakReferenceTableAddValueAndGetKey();
  if (Key)
  {
LABEL_16:
    v17 = Key;
    goto LABEL_22;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  DerivedStorage[16] = 0;
  v8 = FigDispatchQueueCreateWithPriority();
  DerivedStorage[17] = v8;
  if (!v8)
  {
    FigAudioSessionCreateWithAVAudioSession_cold_5(v20);
    goto LABEL_19;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = CMBaseObjectGetDerivedStorage();
  if (audioSessionAVAudioSession_canUseGenericPipe_onceToken != -1)
  {
    FigAudioSessionCreateWithAVAudioSession_cold_2();
  }

  if (audioSessionAVAudioSession_canUseGenericPipe_canUseGenericPipe)
  {
    v11 = [*v10 getMXSessionProperty:*MEMORY[0x1E69AFD90] error:0];
    if (v11)
    {
      CFStringGetCString(v11, (v10 + 8), 96, 0x600u);
    }
  }

  objc_autoreleasePoolPop(v9);
  v12 = objc_autoreleasePoolPush();
  v13 = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v16 = Mutable;
    FigAudioSessionGetMXNotificationTranslationInternal(Mutable, v15);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __audioSessionAVAudioSession_registerMXNotificationTranslationCallbacks_block_invoke;
    v20[3] = &__block_descriptor_48_e15_v24__0r_v8r_v16l;
    v20[4] = cf;
    v20[5] = v16;
    FigCFDictionaryApplyBlock();
    *(v13 + 104) = v16;
    objc_autoreleasePoolPop(v12);
LABEL_14:
    FigAudioSessionCreateWithAVAudioSession_cold_4(&cf, a3);
    v17 = 0;
    goto LABEL_15;
  }

  if (FigAudioSessionCreateWithAVAudioSession_cold_3(v12, v20, &v21))
  {
    goto LABEL_14;
  }

  v17 = v21;
LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_15:
  objc_autoreleasePoolPop(v5);
  return v17;
}

uint64_t FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4, uint64_t *a5)
{
  v10 = objc_autoreleasePoolPush();
  if (!a5)
  {
    FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID_cold_4(v15);
LABEL_10:
    a4 = 0;
    goto LABEL_12;
  }

  if (!a4)
  {
    FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID_cold_3(v15);
LABEL_12:
    v13 = LODWORD(v15[0]);
    goto LABEL_6;
  }

  if (!a2)
  {
    FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID_cold_2(v15);
    goto LABEL_10;
  }

  v11 = objc_alloc(MEMORY[0x1E698D710]);
  v12 = a3[1];
  v15[0] = *a3;
  v15[1] = v12;
  a4 = [v11 initSiblingSession:a2 auditToken:v15 clientIdentifier:a4];
  if (!a4)
  {
    FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID_cold_1(v15);
    goto LABEL_12;
  }

  v13 = FigAudioSessionCreateWithAVAudioSession(a1, a4, a5);
LABEL_6:

  objc_autoreleasePoolPop(v10);
  return v13;
}