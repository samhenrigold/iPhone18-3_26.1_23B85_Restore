unint64_t png_write_filter_row_paeth_neon(unint64_t result, unint64_t a2, int8x16_t *a3, unint64_t a4, int8x16_t *a5, unint64_t a6, unint64_t a7)
{
  v161 = result;
  if (a2 >= result && a2 - result >= a7 && a4 >= a3 && a4 - a3 >= a7 && a2 > result && a6 >= a5 && a6 - a5 >= a7 && result + 1 < a2 && result + 1 >= result && result + 2 < a2 && result + 2 >= result && result + 3 < a2 && result + 3 >= result && a6 > a5 && a5->u64 + 1 < a6 && &a5->i8[1] >= a5 && a5->u64 + 2 < a6 && &a5->i16[1] >= a5 && a5->u64 + 3 < a6 && (a5->i32 + 3) >= a5 && a4 > a3)
  {
    v7 = *(result + 1);
    v8 = *(result + 2);
    v9 = *(result + 3);
    v10 = a5->i8[1];
    v11 = a5->i8[2];
    v12 = a5->i8[3];
    v13 = (*result - a5->i8[0]);
    a3->i8[0] = v13;
    if (a3->u64 + 1 < a4 && &a3->i8[1] >= a3)
    {
      v14 = (v7 - v10);
      a3->i8[1] = v7 - v10;
      if (a3->u64 + 2 < a4 && &a3->i16[1] >= a3)
      {
        v15 = (v8 - v11);
        a3->i8[2] = v15;
        if (a3->u64 + 3 < a4 && (a3->i32 + 3) >= a3)
        {
          v16 = (v9 - v12);
          a3->i8[3] = v16;
          v17 = (a3->i64 + 4);
          if (v13 >= 0)
          {
            v13 = v13;
          }

          else
          {
            v13 = 256 - v13;
          }

          if (v14 >= 0)
          {
            v18 = (v7 - v10);
          }

          else
          {
            v18 = 256 - v14;
          }

          if (v15 >= 0)
          {
            v15 = v15;
          }

          else
          {
            v15 = 256 - v15;
          }

          if (v16 >= 0)
          {
            v16 = v16;
          }

          else
          {
            v16 = 256 - v16;
          }

          v19 = v18 + v13;
          v20 = v15 + v16;
          v21 = a7 - 4;
          if (a7 - 4 < 0x20)
          {
            v45 = result;
            v46 = (result + 4);
            v48 = &a5->i8[4];
            v44 = 0uLL;
            v47 = a5;
          }

          else
          {
            v22 = 0;
            v23 = 0uLL;
            v24 = 0uLL;
            do
            {
              v25 = &v17[v22];
              v27 = *(result + v22 * 16);
              v26 = *(result + v22 * 16 + 16);
              v28 = *(&a5[v22] + 4);
              v29 = *(&a5[v22 + 1] + 4);
              v31 = a5[v22];
              v30 = a5[v22 + 1];
              *v32.i8 = vabd_u8(*v28.i8, *v31.i8);
              *v33.i8 = vabd_u8(*v27.i8, *v31.i8);
              *v34.i8 = vabd_u8(*v29.i8, *v30.i8);
              *v35.i8 = vabd_u8(*v26.i8, *v30.i8);
              v36 = vabdq_u16(vaddl_u8(*v28.i8, *v27.i8), vshll_n_u8(*v31.i8, 1uLL));
              v37 = vabdq_u16(vaddl_u8(*v29.i8, *v26.i8), vshll_n_u8(*v30.i8, 1uLL));
              v38 = vextq_s8(v31, v31, 8uLL).u64[0];
              v39 = vabdq_u16(vaddl_high_u8(v28, v27), vshll_high_n_u8(v31, 1uLL));
              v40 = vextq_s8(v30, v30, 8uLL).u64[0];
              v32.u64[1] = vabd_u8(*&vextq_s8(v28, v28, 8uLL), v38);
              v41 = vabdq_u16(vaddl_high_u8(v29, v26), vshll_high_n_u8(v30, 1uLL));
              v33.u64[1] = vabd_u8(*&vextq_s8(v27, v27, 8uLL), v38);
              v34.u64[1] = vabd_u8(*&vextq_s8(v29, v29, 8uLL), v40);
              v35.u64[1] = vabd_u8(*&vextq_s8(v26, v26, 8uLL), v40);
              v42 = vsubq_s8(*(result + v22 * 16 + 4), vbslq_s8(vandq_s8(vuzp1q_s8(vcgeq_u16(v36, vabdl_u8(*v28.i8, *v31.i8)), vcgeq_u16(v39, vabdl_high_u8(v28, v31))), vcgeq_u8(v33, v32)), v27, vbslq_s8(vuzp1q_s8(vcgtq_u16(vabdl_u8(*v27.i8, *v31.i8), v36), vcgtq_u16(vabdl_high_u8(v27, v31), v39)), v31, v28)));
              v43 = vsubq_s8(*(result + v22 * 16 + 20), vbslq_s8(vandq_s8(vuzp1q_s8(vcgeq_u16(v37, vabdl_u8(*v29.i8, *v30.i8)), vcgeq_u16(v41, vabdl_high_u8(v29, v30))), vcgeq_u8(v35, v34)), v26, vbslq_s8(vuzp1q_s8(vcgtq_u16(vabdl_u8(*v26.i8, *v30.i8), v37), vcgtq_u16(vabdl_high_u8(v26, v30), v41)), v30, v29)));
              *v25 = v42;
              v25[1] = v43;
              v23 = vpadalq_u16(v23, vpaddlq_u8(vabsq_s8(v42)));
              v24 = vpadalq_u16(v24, vpaddlq_u8(vabsq_s8(v43)));
              v21 -= 32;
              v22 += 2;
            }

            while (v21 > 0x1F);
            v44 = vaddq_s32(v23, v24);
            v45 = (result + v22 * 16);
            v46 = (result + v22 * 16 + 4);
            v47 = &a5[v22];
            v48 = &a5[v22].i8[4];
            v17 = (v17 + v22 * 16);
          }

          v49 = v19 + v20;
          if (v21 >= 0x10)
          {
            do
            {
              v50 = *v46++;
              v51 = v50;
              v52 = *v45++;
              v53 = v52;
              v54 = *v48;
              v48 += 16;
              v55 = v54;
              v56 = *v47++;
              *v57.i8 = vabd_u8(*v55.i8, *v56.i8);
              *v58.i8 = vabd_u8(*v53.i8, *v56.i8);
              v59 = vabdq_u16(vaddl_u8(*v55.i8, *v53.i8), vshll_n_u8(*v56.i8, 1uLL));
              v60 = vextq_s8(v56, v56, 8uLL).u64[0];
              v61 = vabdq_u16(vaddl_high_u8(v55, v53), vshll_high_n_u8(v56, 1uLL));
              v57.u64[1] = vabd_u8(*&vextq_s8(v55, v55, 8uLL), v60);
              v58.u64[1] = vabd_u8(*&vextq_s8(v53, v53, 8uLL), v60);
              v62 = vsubq_s8(v51, vbslq_s8(vandq_s8(vuzp1q_s8(vcgeq_u16(v59, vabdl_u8(*v55.i8, *v56.i8)), vcgeq_u16(v61, vabdl_high_u8(v55, v56))), vcgeq_u8(v58, v57)), v53, vbslq_s8(vuzp1q_s8(vcgtq_u16(vabdl_u8(*v53.i8, *v56.i8), v59), vcgtq_u16(vabdl_high_u8(v53, v56), v61)), v56, v55)));
              *v17++ = v62;
              v44 = vpadalq_u16(v44, vpaddlq_u8(vabsq_s8(v62)));
              v21 -= 16;
            }

            while (v21 > 0xF);
          }

          v63 = v49 + vpadalq_u32(vdupq_laneq_s64(vpaddlq_u32(v44), 1), v44).u32[0];
          if (v21 < 4)
          {
            return v63;
          }

          v149 = a5;
          v147 = a2;
          while (v46 < a2)
          {
            if (v46 < v161)
            {
              break;
            }

            v66 = v46->i8[0];
            v64 = &v46->i8[1];
            v65 = v66;
            if (v64 >= a2)
            {
              break;
            }

            if (v64 < v161)
            {
              break;
            }

            v69 = *v64;
            v67 = v64 + 1;
            v68 = v69;
            if (v67 >= a2)
            {
              break;
            }

            if (v67 < v161)
            {
              break;
            }

            v72 = *v67;
            v70 = v67 + 1;
            v71 = v72;
            if (v70 >= a2)
            {
              break;
            }

            if (v70 < v161)
            {
              break;
            }

            if (v45 >= a2)
            {
              break;
            }

            if (v45 < v161)
            {
              break;
            }

            v75 = v45->u8[0];
            v74 = &v45->u8[1];
            v73 = v75;
            if (v74 >= a2)
            {
              break;
            }

            if (v74 < v161)
            {
              break;
            }

            v78 = *v74;
            v77 = v74 + 1;
            v76 = v78;
            if (v77 >= a2)
            {
              break;
            }

            if (v77 < v161)
            {
              break;
            }

            v81 = *v77;
            v79 = v77 + 1;
            v80 = v81;
            if (v79 >= a2)
            {
              break;
            }

            if (v79 < v161)
            {
              break;
            }

            if (v48 >= a6)
            {
              break;
            }

            if (v48 < a5)
            {
              break;
            }

            v84 = *v48;
            v83 = (v48 + 1);
            v82 = v84;
            if (v83 >= a6)
            {
              break;
            }

            if (v83 < a5)
            {
              break;
            }

            v87 = *v83;
            v85 = v83 + 1;
            v86 = v87;
            if (v85 >= a6)
            {
              break;
            }

            if (v85 < a5)
            {
              break;
            }

            v90 = *v85;
            v88 = v85 + 1;
            v89 = v90;
            if (v88 >= a6)
            {
              break;
            }

            if (v88 < a5)
            {
              break;
            }

            if (v47 >= a6)
            {
              break;
            }

            if (v47 < a5)
            {
              break;
            }

            v93 = v47->u8[0];
            v91 = &v47->u8[1];
            v92 = v93;
            if (v91 >= a6)
            {
              break;
            }

            if (v91 < a5)
            {
              break;
            }

            v96 = *v91;
            v94 = v91 + 1;
            v95 = v96;
            if (v94 >= a6)
            {
              break;
            }

            if (v94 < a5)
            {
              break;
            }

            v97 = v94 + 1;
            if ((v94 + 1) >= a6 || v97 < a5)
            {
              break;
            }

            v155 = *v79;
            v156 = *v88;
            v98 = *v94;
            v99 = *v97;
            v158 = v68;
            v159 = v71;
            v101 = v82 - v92;
            v100 = (v82 - v92) < 0;
            v102 = a4;
            v103 = v86 - v95;
            v153 = v82;
            v154 = v89;
            v104 = v89 - v98;
            v105 = v156 - v99;
            v106 = v73 - v92;
            v107 = a6;
            v108 = v76 - v95;
            v109 = v80 - v98;
            v110 = v155 - v99;
            if (v100)
            {
              v111 = -v101;
            }

            else
            {
              v111 = v101;
            }

            v157 = v65;
            if (v103 >= 0)
            {
              v112 = v86 - v95;
            }

            else
            {
              v112 = v95 - v86;
            }

            v150 = v73;
            v151 = v76;
            if (v104 >= 0)
            {
              v113 = v104;
            }

            else
            {
              v113 = -v104;
            }

            if (v105 >= 0)
            {
              v114 = v156 - v99;
            }

            else
            {
              v114 = v99 - v156;
            }

            v152 = v80;
            if (v106 >= 0)
            {
              v115 = v106;
            }

            else
            {
              v115 = -v106;
            }

            v116 = v86;
            if (v108 >= 0)
            {
              v117 = v108;
            }

            else
            {
              v117 = -v108;
            }

            if (v109 >= 0)
            {
              v118 = v109;
            }

            else
            {
              v118 = -v109;
            }

            v160 = v21;
            if (v110 >= 0)
            {
              v119 = v155 - v99;
            }

            else
            {
              v119 = v99 - v155;
            }

            v120 = v101 + v106;
            if (v120 < 0)
            {
              v120 = -v120;
            }

            v121 = v103 + v108;
            v100 = v103 + v108 < 0;
            a4 = v102;
            a6 = v107;
            if (v100)
            {
              v121 = -v121;
            }

            v122 = v104 + v109;
            if (v122 < 0)
            {
              v122 = -v122;
            }

            v123 = v105 + v110;
            if (v105 + v110 < 0)
            {
              v123 = -v123;
            }

            if (v115 <= v120)
            {
              result = v153;
            }

            else
            {
              result = v92;
            }

            v124 = v111 > v120 || v111 > v115;
            a5 = v149;
            if (v124)
            {
              v125 = result;
            }

            else
            {
              v125 = v150;
            }

            if (v117 <= v121)
            {
              v126 = v116;
            }

            else
            {
              v126 = v95;
            }

            v124 = v112 > v121;
            a2 = v147;
            if (v124 || v112 > v117)
            {
              v128 = v126;
            }

            else
            {
              v128 = v151;
            }

            if (v118 <= v122)
            {
              v129 = v154;
            }

            else
            {
              v129 = *(v97 - 1);
            }

            if (v113 > v122 || v113 > v118)
            {
              v131 = v129;
            }

            else
            {
              v131 = v152;
            }

            v132 = *v88;
            if (v119 > v123)
            {
              v132 = *v97;
            }

            v133 = v114 > v123 || v114 > v119;
            v134 = v133 ? v132 : *v79;
            if (v17 >= a4)
            {
              break;
            }

            if (v17 < a3)
            {
              break;
            }

            v135 = *v70;
            v136 = (v157 - v125);
            v17->i8[0] = v157 - v125;
            v137 = &v17->i8[1];
            if (v137 >= a4)
            {
              break;
            }

            if (v137 < a3)
            {
              break;
            }

            v138 = (v158 - v128);
            v137->i8[0] = v158 - v128;
            v139 = &v137->i8[1];
            if (v139 >= a4)
            {
              break;
            }

            if (v139 < a3)
            {
              break;
            }

            v140 = (v159 - v131);
            v139->i8[0] = v159 - v131;
            v141 = &v139->i8[1];
            if (v141 >= a4 || v141 < a3)
            {
              break;
            }

            v142 = (v135 - v134);
            v141->i8[0] = v135 - v134;
            v17 = &v141->i8[1];
            v143 = (v157 - v125);
            result = 256;
            if (v136 < 0)
            {
              v143 = 256 - v136;
            }

            v144 = (v158 - v128);
            if (v138 < 0)
            {
              v144 = 256 - v138;
            }

            if (v140 >= 0)
            {
              v145 = (v159 - v131);
            }

            else
            {
              v145 = 256 - v140;
            }

            if (v142 >= 0)
            {
              v146 = (v135 - v134);
            }

            else
            {
              v146 = 256 - v142;
            }

            v63 = (v143 + v63 + v144 + v145 + v146);
            v21 = v160 - 4;
            v46 = (v70 + 1);
            v45 = (v79 + 1);
            v48 = (v88 + 1);
            v47 = (v97 + 1);
            if (v160 - 4 <= 3)
            {
              return v63;
            }
          }
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

void IIO_LoadJPEGSymbols(uint64_t result, uint64_t a2)
{
  if (gLoadCoreVideoSymbolsInitOnce != -1)
  {
    IIO_LoadJPEGSymbols_cold_1();
  }
}

void IIO_LoadCoreMediaSymbols(uint64_t result, uint64_t a2)
{
  if (gLoadCoreMediaSymbolsInitOnce != -1)
  {
    IIO_LoadCoreMediaSymbols_cold_1();
  }
}

OSStatus CGAnimateImageAtURLWithBlock(CFURLRef url, CFDictionaryRef options, CGImageSourceAnimationBlock block)
{
  v5 = kdebug_trace();
  IIOInitDebugFlags(v5, v6);
  v7 = (gIIODebugFlags >> 12) & 3;
  if (v7)
  {
    ImageIODebugOptions(v7, "A", "CGAnimateImageAtURLWithBlock", url, 0, -1, 0);
  }

  if (url)
  {
    v8 = CFGetTypeID(url);
    if (v8 == CFURLGetTypeID())
    {
      if (options)
      {
        v9 = CFGetTypeID(options);
        if (v9 != CFDictionaryGetTypeID())
        {
          LogError("CGAnimateImageAtURLWithBlock", 127, "*** ERROR: CGAnimateImageAtURLWithBlock: options parameter is not a CFDictionaryRef - ignoring\n");
          options = 0;
        }
      }

      memset(v11, 0, sizeof(v11));
      IIODictionary::IIODictionary(v11, options);
      operator new();
    }

    CGAnimateImageAtURLWithBlock_cold_1();
  }

  else
  {
    CGAnimateImageAtURLWithBlock_cold_2();
  }

  kdebug_trace();
  return -50;
}

void sub_1860B6920(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x186602850](v3, 0x10E1C4080364B91);
  IIODictionary::~IIODictionary(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860B68D8);
}

OSStatus CGAnimateImageDataWithBlock(CFDataRef data, CFDictionaryRef options, CGImageSourceAnimationBlock block)
{
  v5 = kdebug_trace();
  IIOInitDebugFlags(v5, v6);
  v7 = (gIIODebugFlags >> 12) & 3;
  if (v7)
  {
    ImageIODebugOptions(v7, "A", "CGAnimateImageDataWithBlock", data, 0, -1, 0);
  }

  if (data)
  {
    v8 = CFGetTypeID(data);
    if (v8 == CFDataGetTypeID())
    {
      if (options)
      {
        v9 = CFGetTypeID(options);
        if (v9 != CFDictionaryGetTypeID())
        {
          LogError("CGAnimateImageDataWithBlock", 181, "*** ERROR: CGImageSourceCreateWithData: options parameter is not a CFDictionaryRef - ignoring\n");
          options = 0;
        }
      }

      memset(v11, 0, sizeof(v11));
      IIODictionary::IIODictionary(v11, options);
      operator new();
    }

    CGAnimateImageDataWithBlock_cold_1();
  }

  else
  {
    CGAnimateImageDataWithBlock_cold_2();
  }

  kdebug_trace();
  return -50;
}

void sub_1860B6B20(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x186602850](v3, 0x10E1C4080364B91);
  IIODictionary::~IIODictionary(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860B6AD8);
}

uint64_t IIODecodeParameter::saveDataToXPCObject(IIODecodeParameter *this, void *a2)
{
  v4 = iio_xpc_add_source_dict(a2);
  v5 = iio_xpc_add_callback_dict(a2);
  iio_xpc_dictionary_addCGRect(v5, "iio_xpc_cb_blockset_cgrect", *(this + 3), *(this + 4), *(this + 5), *(this + 6));
  iio_xpc_dictionary_addCGSize(v5, "iio_xpc_cb_blockset_dest_cgsize", *(this + 7), *(this + 8));
  xpc_dictionary_set_uint64(v4, "iio_xpc_src_image_index", *(this + 9));
  iio_xpc_dictionary_add_CFDictionary(v5, "iio_xpc_cb_blockset_options", *(this + 10));
  return 0;
}

void IIO_Writer_TGA::~IIO_Writer_TGA(IIO_Writer_TGA *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t IIO_Writer_TGA::write(IIO_Writer_TGA *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "IIO_Writer_TGA::write", 0, 0, -1, 0);
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  TGAWritePlugin::TGAWritePlugin(v9, a2, a3);
  v5 = IIOWritePlugin::writeAll(v9);
  TGAWritePlugin::~TGAWritePlugin(v9, v6, v7);
  return v5;
}

void sub_1860B6D14(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TGAWritePlugin::~TGAWritePlugin(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860B6D00);
}

uint64_t _cg_TIFFComputeTile(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5)
{
  v5 = *(a1 + 100);
  v6 = *(a1 + 104);
  v7 = *(a1 + 96);
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  if (v5 == -1)
  {
    v5 = *(a1 + 88);
  }

  if (v6 == -1)
  {
    v6 = *(a1 + 92);
  }

  if (*(a1 + 108) == -1)
  {
    v9 = *(a1 + 96);
  }

  else
  {
    v9 = *(a1 + 108);
  }

  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v9 == 0)
  {
    return 1;
  }

  v13 = 0;
  v14 = *(a1 + 88);
  if (v14 < -v5)
  {
    v13 = (v5 + v14 - 1) / v5;
  }

  v15 = 0;
  v16 = *(a1 + 92);
  if (v16 < -v6)
  {
    v15 = (v6 + v16 - 1) / v6;
  }

  v17 = 0;
  if (v7 < -v9)
  {
    v17 = (v7 + v9 - 1) / v9;
  }

  v18 = v8 / v9;
  v19 = a3 / v6;
  if (*(a1 + 170) == 2)
  {
    v18 += v17 * a5;
  }

  return a2 / v5 + (v19 + v18 * v15) * v13;
}

uint64_t TIFFCheckTile(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 88) <= a2)
  {
    TIFFErrorExtR(a1, *a1, "%lu: Col out of range, max %lu", a4, a5);
  }

  else if (*(a1 + 92) <= a3)
  {
    TIFFErrorExtR(a1, *a1, "%lu: Row out of range, max %lu", a4, a5);
  }

  else if (*(a1 + 96) <= a4)
  {
    TIFFErrorExtR(a1, *a1, "%lu: Depth out of range, max %lu", a4, a5);
  }

  else
  {
    if (*(a1 + 170) != 2 || *(a1 + 130) > a5)
    {
      return 1;
    }

    TIFFErrorExtR(a1, *a1, "%lu: Sample out of range, max %lu", a4, a5);
  }

  return 0;
}

uint64_t _cg_TIFFNumberOfTiles(uint64_t a1)
{
  v3 = *(a1 + 100);
  v2 = *(a1 + 104);
  if (v3 == -1)
  {
    v3 = *(a1 + 88);
  }

  v4 = *(a1 + 108);
  if (v2 == -1)
  {
    v2 = *(a1 + 92);
  }

  if (v4 == -1)
  {
    v4 = *(a1 + 96);
  }

  v5 = 0;
  if (v3 && v2 && v4)
  {
    v6 = 0;
    v7 = *(a1 + 88);
    if (v7 < -v3)
    {
      v6 = (v3 + v7 - 1) / v3;
    }

    v8 = 0;
    v9 = *(a1 + 92);
    if (v9 < -v2)
    {
      v8 = (v2 + v9 - 1) / v2;
    }

    v10 = _TIFFMultiply32(a1, v6, v8, "TIFFNumberOfTiles");
    v11 = 0;
    v12 = *(a1 + 96);
    if (v12 < -v4)
    {
      v11 = (v4 + v12 - 1) / v4;
    }

    v5 = _TIFFMultiply32(a1, v10, v11, "TIFFNumberOfTiles");
  }

  if (*(a1 + 170) != 2)
  {
    return v5;
  }

  v13 = *(a1 + 130);

  return _TIFFMultiply32(a1, v5, v13, "TIFFNumberOfTiles");
}

unint64_t _cg_TIFFTileRowSize64(uint64_t a1)
{
  if (!*(a1 + 104))
  {
    TIFFErrorExtR(a1, "TIFFTileRowSize64", "Tile length is zero");
    return 0;
  }

  v2 = *(a1 + 100);
  if (!v2)
  {
    TIFFErrorExtR(a1, "TIFFTileRowSize64", "Tile width is zero");
    return 0;
  }

  v3 = _TIFFMultiply64(a1, *(a1 + 116), v2, "TIFFTileRowSize");
  if (*(a1 + 170) == 1)
  {
    if (!*(a1 + 130))
    {
      TIFFErrorExtR(a1, "TIFFTileRowSize64", "Samples per pixel is zero");
      return 0;
    }

    v3 = _TIFFMultiply64(a1, v3, *(a1 + 130), "TIFFTileRowSize");
  }

  if ((v3 & 7) != 0)
  {
    result = (v3 >> 3) + 1;
  }

  else
  {
    result = v3 >> 3;
  }

  if (!result)
  {
    TIFFErrorExtR(a1, "TIFFTileRowSize64", "Computed tile row size is zero");
    return 0;
  }

  return result;
}

uint64_t _cg_TIFFTileRowSize(uint64_t a1)
{
  v2 = _cg_TIFFTileRowSize64(a1);

  return _TIFFCastUInt64ToSSize(a1, v2, "TIFFTileRowSize");
}

unint64_t TIFFVTileSize64(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 104) || !*(a1 + 100) || !*(a1 + 108))
  {
    return 0;
  }

  if (*(a1 + 170) == 1 && *(a1 + 122) == 6 && *(a1 + 130) == 3 && (*(a1 + 17) & 0x40) == 0)
  {
    v21 = 0;
    _cg_TIFFGetFieldDefaulted(a1, 530, a3, a4, a5, a6, a7, a8, &v21);
    if (v21 <= 4u && ((1 << v21) & 0x16) != 0)
    {
      v10 = HIWORD(v21);
      if (HIWORD(v21) <= 4u && ((1 << SBYTE2(v21)) & 0x16) != 0)
      {
        v11 = *(a1 + 100);
        if (v11 >= -v21)
        {
          v12 = 0;
        }

        else
        {
          v12 = (v21 + v11 - 1) / v21;
        }

        if (-HIWORD(v21) > a2)
        {
          v16 = (a2 + HIWORD(v21) - 1) / HIWORD(v21);
        }

        else
        {
          v16 = 0;
        }

        v17 = _TIFFMultiply64(a1, v12, (HIWORD(v21) * v21 + 2), "TIFFVTileSize64");
        v18 = _TIFFMultiply64(a1, v17, *(a1 + 116), "TIFFVTileSize64");
        v19 = _TIFFMultiply64(a1, v17, *(a1 + 116), "TIFFVTileSize64");
        if ((v18 & 7) != 0)
        {
          v20 = (v19 >> 3) + 1;
        }

        else
        {
          v20 = v19 >> 3;
        }

        return _TIFFMultiply64(a1, v20, v16, "TIFFVTileSize64");
      }
    }

    else
    {
      v10 = HIWORD(v21);
    }

    TIFFErrorExtR(a1, "TIFFVTileSize64", "Invalid YCbCr subsampling (%dx%d)", v21, v10);
    return 0;
  }

  v14 = _cg_TIFFTileRowSize64(a1);

  return _TIFFMultiply64(a1, a2, v14, "TIFFVTileSize64");
}

uint64_t _cg_TIFFTileSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = TIFFVTileSize64(a1, *(a1 + 104), a3, a4, a5, a6, a7, a8);

  return _TIFFCastUInt64ToSSize(a1, v9, "TIFFTileSize");
}

void _TIFFDefaultTileSize(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  if (*a2 <= 0)
  {
    v3 = 256;
    *a2 = 256;
  }

  v4 = *a3;
  if (*a3 <= 0)
  {
    v4 = 256;
    *a3 = 256;
    v3 = *a2;
  }

  if ((v3 & 0xF) != 0)
  {
    if (v3 >= 0xFFFFFFF0)
    {
      v5 = 0;
    }

    else
    {
      v5 = (v3 + 15) & 0xFFFFFFF0;
    }

    *a2 = v5;
    v4 = *a3;
  }

  if ((v4 & 0xF) != 0)
  {
    v6 = (v4 + 15) & 0xFFFFFFF0;
    if (v4 >= 0xFFFFFFF0)
    {
      v6 = 0;
    }

    *a3 = v6;
  }
}

void EXRWritePlugin::EXRWritePlugin(EXRWritePlugin *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  IIOWritePlugin::IIOWritePlugin(this, a2, a3, 1163416096);
  *v4 = &unk_1EF4DD2E0;
  AppleEXREnabled(v4, v5);
  *(this + 5) = 0;
}

void EXRWritePlugin::~EXRWritePlugin(EXRWritePlugin *this, uint64_t a2, const char *a3)
{
  *this = &unk_1EF4DD2E0;
  v4 = *(this + 5);
  if (v4)
  {
    os_release(v4);
  }

  _cg_jpeg_mem_term(this, a2, a3);
}

{
  EXRWritePlugin::~EXRWritePlugin(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t EXRWritePlugin::writeAll(IIOImageDestination **this)
{
  ImageCount = IIOWritePlugin::getImageCount(this);
  v3 = gFunc_axr_encoder_create(0);
  this[5] = v3;
  if (ImageCount)
  {
    IIOWritePlugin::getSourceImageAtIndex(this, 0);
    IIOWritePlugin::getPropertiesAtIndex(this, 0);
    operator new();
  }

  return gFunc_axr_encoder_compress(v3, this, EXRWritePlugin::WriteCallback, 0, EXRWritePlugin::DestroyCallback, 0);
}

uint64_t EXRWritePlugin::WriteProc(EXRWritePlugin *this, IIOImageDestination *a2, void *a3, void *a4, void *a5)
{
  if (!AppleEXREnabled(this, a2))
  {
    return 4294967246;
  }

  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "EXRWritePlugin::WriteProc", 0, 0, -1, 0);
  }

  memset(v11, 0, sizeof(v11));
  EXRWritePlugin::EXRWritePlugin(v11, this, a2);
  v7 = EXRWritePlugin::writeAll(v11);
  EXRWritePlugin::~EXRWritePlugin(v11, v8, v9);
  return v7;
}

void EXRWritePluginInput::EXRWritePluginInput(EXRWritePluginInput *this, axr_encoder *a2, CGImageRef image, IIODictionary *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  *this = &unk_1EF4DD368;
  *(this + 1) = a2;
  *(this + 2) = image;
  *(this + 3) = a4;
  v36 = 0uLL;
  v34 = 0u;
  v35 = 0u;
  ColorSpace = CGImageGetColorSpace(image);
  HasRealAlphaChannel = _ImageHasRealAlphaChannel(image);
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 27) = 0;
  if ((CGImageGetBitmapInfo(image) & 0x100) != 0)
  {
    v9 = 16;
  }

  else
  {
    v9 = 10;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(image);
  if (BitsPerComponent <= v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  *(this + 26) = v11;
  if (BitsPerComponent <= v9)
  {
    v12 = 16;
  }

  else
  {
    v12 = 32;
  }

  *(this + 28) = v12;
  v13 = &v35 + 8;
  while (1)
  {
    Model = CGColorSpaceGetModel(ColorSpace);
    if (Model != kCGColorSpaceModelIndexed)
    {
      break;
    }

    ColorSpace = CGColorSpaceGetBaseColorSpace(ColorSpace);
  }

  if (Model > kCGColorSpaceModelRGB)
  {
    if (Model != kCGColorSpaceModelCMYK)
    {
      if (Model != kCGColorSpaceModelXYZ)
      {
LABEL_21:
        EXRWritePluginInput::EXRWritePluginInput(Model);
        return;
      }

      *(this + 27) = 4;
      v36 = xmmword_186227140;
      *&v34 = "X";
      *(&v34 + 1) = "Y";
      *&v35 = "Z";
      v15 = 7;
      goto LABEL_29;
    }
  }

  else
  {
    if (Model == kCGColorSpaceModelMonochrome)
    {
      v15 = 0;
      if (HasRealAlphaChannel)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      *(this + 27) = v16;
      if (HasRealAlphaChannel)
      {
        v17 = 4;
      }

      else
      {
        v17 = -1;
      }

      LODWORD(v36) = 10;
      DWORD1(v36) = v17;
      *&v34 = "Y";
      *(&v36 + 1) = -1;
      v13 = &v34 + 8;
      goto LABEL_29;
    }

    if (Model != kCGColorSpaceModelRGB)
    {
      goto LABEL_21;
    }
  }

  *(this + 27) = 4;
  v36 = xmmword_186224EF0;
  *&v34 = "R";
  *(&v34 + 1) = "G";
  *&v35 = "B";
  v15 = 1;
LABEL_29:
  *v13 = "A";
  v18 = *(this + 3);
  if (!v18)
  {
    goto LABEL_37;
  }

  v19 = IIODictionary::containsKey(v18, @"Compression");
  v20 = *(this + 3);
  if (v19)
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(v20, @"Compression");
    goto LABEL_34;
  }

  if (!IIODictionary::containsKeyGroup(v20, @"Compression", @"{EXR}"))
  {
LABEL_37:
    v22 = 4;
    goto LABEL_38;
  }

  Uint32ForKey = IIODictionary::getUint32ForKeyGroup(*(this + 3), @"Compression", @"{EXR}");
LABEL_34:
  if (Uint32ForKey <= 7)
  {
    v22 = Uint32ForKey;
  }

  else
  {
    v22 = 4;
  }

LABEL_38:
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  appended = gFunc_axr_encoder_append_part(a2, "part name", 0, v22, (Width - 1) << 32, (Height << 32) - 0x100000000, (Width - 1) << 32, (Height << 32) - 0x100000000, 1.0, vcvts_n_f32_s32(Width - 1, 1uLL), vcvts_n_f32_s32(((Height << 32) - 0x100000000) >> 32, 1uLL), Width, 72.0, 0, 0);
  if (appended)
  {
    v26 = appended;
    ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(*(this + 3), @"Chromaticities", @"{EXR}");
    memset(v31, 0, sizeof(v31));
    IIOArray::IIOArray(v31, ObjectForKeyGroup);
    if (IIOArray::getCount(v31) == 8)
    {
      v28 = 0;
      v29 = 0;
      v33[0] = 0;
      v33[1] = 0;
      v32[0] = 0;
      v32[1] = 0;
      do
      {
        *(v33 + v28) = IIOArray::getFloatAtIndex(v31, v29);
        v30 = v29 + 1;
        *(v32 + v28) = IIOArray::getFloatAtIndex(v31, v30);
        v28 += 4;
        v29 = v30 + 1;
      }

      while (v28 != 16);
      gFunc_axr_part_set_chromaticities(v26, v15, v33, v32, 1.0);
    }

    else
    {
      gFunc_axr_part_set_chromaticities(v26, v15, 0, 0, 1.0);
    }

    IIOArray::~IIOArray(v31);
    *(this + 17) = gFunc_axr_part_create_colorspace(v26, 2, 0);
    gFunc_axr_part_append_channels(v26, 0, *(this + 26), 1, 1, 0, &v36, &v34, *(this + 27), EXRWritePluginInput::ReadCallback, EXRWritePluginInput::ReleaseCallback, this);
  }
}

void sub_1860B7B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOArray::~IIOArray(va);
  _Unwind_Resume(a1);
}

uint64_t EXRWritePluginInput::ReleaseCallback(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

void EXRWritePluginInput::~EXRWritePluginInput(EXRWritePluginInput *this)
{
  EXRWritePluginInput::~EXRWritePluginInput(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4DD368;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    CGColorSpaceRelease(v3);
  }
}

unint64_t EXRWritePluginInput::readCB(EXRWritePluginInput *this, const CGFloat *a2, unint64_t a3, unint64_t a4, axr_size_t a5)
{
  v5 = a3;
  v8 = *(this + 4);
  if (!v8)
  {
    v11 = *(this + 27) * *(this + 28);
    v19.bitsPerComponent = *(this + 28);
    v19.bitsPerPixel = v11;
    v19.colorSpace = *(this + 17);
    memset(&v19.bitmapInfo, 0, 24);
    if (CGColorSpaceGetModel(v19.colorSpace) || (CGImageHasAlpha() & 1) != 0)
    {
      v12 = *(this + 28) == 32;
      v13 = 4355;
      v14 = 8451;
    }

    else
    {
      v12 = *(this + 28) == 32;
      v13 = 4352;
      v14 = 8448;
    }

    if (v12)
    {
      v13 = v14;
    }

    v19.bitmapInfo = v13;
    *&v19.version = 0uLL;
    operator new();
  }

  v10 = *(this + 10);
  v9 = *(this + 11);
  v15 = a3 / v10;
  *&v19.bitsPerComponent = 0;
  v19.colorSpace = &v19;
  *&v19.bitmapInfo = 0x2000000000;
  v19.decode = a2;
  if (v9 + a3 / v10 >= *(this + 9))
  {
    v16 = *(this + 9);
  }

  else
  {
    LODWORD(v16) = v9 + v15;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = ___ZN19EXRWritePluginInput6readCBEPvmm10axr_size_t_block_invoke;
  v18[3] = &unk_1E6F41B30;
  v18[4] = &v19;
  if (IIOPixelProvider::iterateOverImage(v8, v9, v16, v15, v18))
  {
    v5 = -12;
  }

  else
  {
    *(this + 11) += v15;
  }

  _Block_object_dispose(&v19, 8);
  return v5;
}

void *___ZN19EXRWritePluginInput6readCBEPvmm10axr_size_t_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = memcpy(*(*(*(a1 + 32) + 8) + 24), *a3, *(a3 + 8) * *(a3 + 24));
  *(*(*(a1 + 32) + 8) + 24) += *(a3 + 24);
  return result;
}

uint64_t IIO_Reader_BC::getImageCount(IIO_Reader_BC *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  if (a5)
  {
    *a5 = 1;
  }

  return 0;
}

double _cg_png_reset_write(uint64_t a1)
{
  png_free(a1, *(a1 + 320));
  png_free(a1, *(a1 + 352));
  png_free(a1, *(a1 + 368));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  result = 0.0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  return result;
}

unint64_t png_read_filter_row_paeth4_apple(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, double a6, double a7, double a8, double a9, int8x8_t a10)
{
  v10 = 0;
  v11 = *(result + 8);
  while (1)
  {
    v12 = (a2 + v10);
    v13 = (a4 + v10);
    if (a2 + v10 >= a3 || v13 >= a5)
    {
      break;
    }

    v15 = *v12 + *v13;
    *v12 = v15;
    if (++v10 == 4)
    {
      v16 = (a4 + v10);
      v17 = a4 + v10 - 4;
      if (v17 < a5 && v17 >= a4)
      {
        v18 = a2 + v10 - 4;
        if (v18 < a3 && v18 >= a2 && v16 < a5 && a2 + v10 < a3)
        {
          v19 = a4 + v10 - 3;
          if (v19 < a5 && v19 >= a4)
          {
            v20 = a2 + v10 - 3;
            if (v20 < a3 && v20 >= a2)
            {
              v21 = a4 + v10 + 1;
              if (v21 < a5 && v21 >= a4)
              {
                v22 = a2 + v10 + 1;
                if (v22 < a3 && v22 >= a2)
                {
                  v23 = a4 + v10 - 2;
                  if (v23 < a5 && v23 >= a4)
                  {
                    v24 = a2 + v10 - 2;
                    if (v24 < a3 && v24 >= a2)
                    {
                      v25 = a4 + v10 + 2;
                      if (v25 < a5 && v25 >= a4)
                      {
                        v26 = a2 + v10 + 2;
                        if (v26 < a3 && v26 >= a2)
                        {
                          v27 = a4 + v10 + 3;
                          if (v27 < a5 && v27 >= a4)
                          {
                            v28 = a2 + v10 + 3;
                            if (v28 < a3 && v28 >= a2)
                            {
                              if (v11 < 5)
                              {
                                return result;
                              }

                              v29 = 0;
                              result = *(v16 - 4);
                              v30 = *(a2 + v10 - 4);
                              v35.i32[0] = *(a2 + v10 - 2);
                              v31 = *v16;
                              v32 = *(a4 + v10 - 3);
                              v33 = *(a2 + v10 - 3);
                              v34 = *(a4 + v10 + 1);
                              v35.i32[1] = v15;
                              v36.i32[0] = *(a4 + v10 - 2);
                              v36.i32[1] = *(v16 - 1);
                              a10.i32[0] = *(a4 + v10 + 2);
                              v37 = a2 + v10;
                              v38 = a4 + v10;
                              a10.i8[4] = *(a4 + v10 + 3);
                              while (1)
                              {
                                v39 = v34;
                                v40 = v37 + v29;
                                if (v37 + v29 >= a3 || v40 < a2)
                                {
                                  break;
                                }

                                v42 = v31;
                                v43 = v31 - result;
                                v44 = v30 - result;
                                v45 = v30 - result + v43;
                                if (v45 < 0)
                                {
                                  v45 = -v45;
                                }

                                if (v44 < 0)
                                {
                                  v44 = result - v30;
                                }

                                if (v43 < 0)
                                {
                                  v43 = -v43;
                                }

                                if (v44 < v43)
                                {
                                  v43 = v44;
                                  LOBYTE(v30) = v42;
                                }

                                if (v45 < v43)
                                {
                                  LOBYTE(v30) = result;
                                }

                                result = v40 + 1;
                                if (v40 + 1 >= a3 || result < a2)
                                {
                                  break;
                                }

                                v46 = v39 - v32;
                                v47 = v33 - v32;
                                v48 = v33 - v32 + v39 - v32;
                                if (v48 < 0)
                                {
                                  v48 = -v48;
                                }

                                if (v47 < 0)
                                {
                                  v47 = v32 - v33;
                                }

                                if (v46 < 0)
                                {
                                  v46 = v32 - v39;
                                }

                                if (v47 < v46)
                                {
                                  v46 = v47;
                                  LOBYTE(v33) = v39;
                                }

                                if (v48 < v46)
                                {
                                  LOBYTE(v33) = v32;
                                }

                                result = v37 + v29 + 2;
                                if (result >= a3)
                                {
                                  break;
                                }

                                if (result < a2)
                                {
                                  break;
                                }

                                result = v37 + v29 + 3;
                                if (result >= a3)
                                {
                                  break;
                                }

                                if (result < a2)
                                {
                                  break;
                                }

                                v49 = vand_s8(a10, 0xFF000000FFLL);
                                LOBYTE(v30) = v30 + *(v37 + v29);
                                LOBYTE(v33) = v33 + *(v40 + 1);
                                v50 = vabd_s32(v35, v36);
                                v51 = vabd_s32(v49, v36);
                                v52 = vbsl_s8(vcgt_u32(vmin_u32(v50, v51), vabs_s32(vadd_s32(vsub_s32(v35, v36), vsub_s32(v49, v36)))), v36, vbsl_s8(vcgt_u32(v51, v50), v49, v35));
                                v53 = a2 + v29 + v10;
                                v54 = (v53 + 2);
                                v55.i32[0] = *(v53 + 2);
                                v55.i32[1] = *(v53 + 3);
                                v56 = vadd_s32(v52, v55);
                                *(v37 + v29) = v30;
                                result = v37 + v29;
                                *(v37 + v29 + 1) = v33;
                                *v54 = v56.i8[0];
                                *(a2 + v29 + v10 + 3) = v56.i8[4];
                                v57 = v38 + v29 + 4;
                                if (v57 >= a5)
                                {
                                  break;
                                }

                                if (v57 < a4)
                                {
                                  break;
                                }

                                v58 = v38 + v29 + 5;
                                if (v58 >= a5)
                                {
                                  break;
                                }

                                if (v58 < a4)
                                {
                                  break;
                                }

                                v59 = v38 + v29 + 6;
                                if (v59 >= a5)
                                {
                                  break;
                                }

                                if (v59 < a4)
                                {
                                  break;
                                }

                                v60 = v38 + v29 + 7;
                                if (v60 >= a5)
                                {
                                  break;
                                }

                                if (v60 < a4)
                                {
                                  break;
                                }

                                v61 = v37 + v29 + 4;
                                if (v61 >= a3)
                                {
                                  break;
                                }

                                if (v61 < a2)
                                {
                                  break;
                                }

                                v62 = v37 + v29 + 5;
                                if (v62 >= a3)
                                {
                                  break;
                                }

                                if (v62 < a2)
                                {
                                  break;
                                }

                                v63 = v37 + v29 + 6;
                                if (v63 >= a3)
                                {
                                  break;
                                }

                                if (v63 < a2)
                                {
                                  break;
                                }

                                v64 = v37 + v29 + 7;
                                if (v64 >= a3 || v64 < a2)
                                {
                                  break;
                                }

                                v30 = v30;
                                v33 = v33;
                                v35 = vand_s8(v56, 0xFF000000FFLL);
                                v31 = *(a4 + v29 + v10 + 4);
                                v34 = *(a4 + v29 + v10 + 5);
                                v65 = *(a4 + v29 + v10 + 7);
                                a10.i32[0] = *(a4 + v29 + v10 + 6);
                                v29 += 4;
                                a10.i32[1] = v65;
                                result = v42;
                                v32 = v39;
                                v36 = v49;
                                if (v29 + 4 >= v11)
                                {
                                  return result;
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

      break;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CGImageCreateDataFromMetadata(const __CFDictionary *a1, uint64_t a2, CGImage *a3, CFDataRef *a4, CFDataRef *a5, CFDataRef *a6, const __CFDictionary *a7)
{
  if (a2)
  {
    v13 = *(a2 + 24);
    if (v13)
    {
      CFDictionaryGetCount(v13);
    }
  }

  v43 = a5;
  v14 = kdebug_trace();
  IIOInitDebugFlags(v14, v15);
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImageCreateDataFromMetadata", 0, 0, -1, 0);
  }

  memset(v45, 0, sizeof(v45));
  IIODictionary::IIODictionary(v45, a1, 1);
  v42 = a6;
  if (IIODictionary::containsKeyGroup(v45, @"{ExifAux}", @"{Exif}"))
  {
    ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(v45, @"{ExifAux}", @"{Exif}");
    IIODictionary::setObjectForKey(v45, ObjectForKeyGroup, @"{ExifAux}");
    IIODictionary::removeObjectForKeyGroup(v45, @"{ExifAux}", @"{Exif}");
  }

  v17 = IIODictionary::getObjectForKeyGroup(v45, @"Caption/Abstract", @"{IPTC}");
  v18 = IIODictionary::getObjectForKeyGroup(v45, @"ImageDescription", @"{TIFF}");
  if (v18)
  {
    if (!v17 || CFEqual(v17, v18))
    {
      goto LABEL_15;
    }
  }

  else if (!v17)
  {
    goto LABEL_15;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(v17))
  {
    IIODictionary::setObjectForKeyGroup(v45, v17, @"ImageDescription", @"{TIFF}");
  }

LABEL_15:
  v20 = CGImageMetadataCreateFromLegacyProps(v45);
  CGImageMetadataMerge(v20, a2, 0);
  if (!a4)
  {
    goto LABEL_45;
  }

  v48 = 0;
  __n = 0;
  v46 = 0;
  v47 = 0;
  IIODictionary::IIODictionary(&v46, a7);
  if (IIODictionary::containsKey(&v46, @"kCGDataFromMetadataAddExifApp1Marker"))
  {
    BoolForKey = IIODictionary::getBoolForKey(&v46, @"kCGDataFromMetadataAddExifApp1Marker");
  }

  else
  {
    BoolForKey = 0;
  }

  if (IIODictionary::containsKey(v45, "{ExifThumbnail}"))
  {
    v22 = IIODictionary::getObjectForKeyGroup(v45, "JPEGThumbnailData", "{ExifThumbnail}");
    JPEGDataFromImage = v22;
    if (v22)
    {
      CFRetain(v22);
    }

    if (!a3)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (IIODictionary::getBoolForKey(v45, @"kCGImageDestinationEmbedThumbnail"))
  {
    if (a3)
    {
      Thumb = CGImageCreateThumb(a3, 0xA0uLL);
      JPEGDataFromImage = AppleJPEGReadPlugin::CreateJPEGDataFromImage(0, v45, Thumb, v25);
LABEL_29:
      Width = CGImageGetWidth(a3);
      Height = CGImageGetHeight(a3);
      ColorSpace = CGImageGetColorSpace(a3);
      goto LABEL_32;
    }

    LogError("IIOCreateExifFromMetadata", 277, "*** ERROR: no image provided - cannot embed thumbnail\n");
    JPEGDataFromImage = 0;
  }

  else
  {
    JPEGDataFromImage = 0;
    if (a3)
    {
LABEL_28:
      Thumb = 0;
      goto LABEL_29;
    }
  }

LABEL_31:
  Width = IIODictionary::getUint32ForKey(&v46, @"PixelXDimension");
  Height = IIODictionary::getUint32ForKey(&v46, @"PixelYDimension");
  Thumb = 0;
  ColorSpace = 0;
LABEL_32:
  IIODebugOrientation("IIOCreateExifFromMetadata", 302, v45);
  v29 = CreateExifBufferFromPropertiesJPEG(v45, Width, Height, ColorSpace, JPEGDataFromImage, @"public.jpeg", &__n);
  if (v29 && (v30 = BoolForKey, v31 = __n, __n))
  {
    if (v30)
    {
      v32 = malloc_type_malloc((__n + 4), 0x100004077774924uLL);
      *v32 = -7681;
      v32[2] = (v31 + 2) >> 8;
      v32[3] = v31 + 2;
      memcpy(v32 + 4, v29, __n);
      v33 = CFDataCreate(*MEMORY[0x1E695E480], v32, (v31 + 4));
    }

    else
    {
      v32 = malloc_type_malloc(__n, 0x100004077774924uLL);
      memcpy(v32, v29, __n);
      v33 = CFDataCreate(*MEMORY[0x1E695E480], v32, __n);
    }

    *a4 = v33;
    free(v32);
  }

  else
  {
    _cg_jpeg_mem_term("IIOCreateExifFromMetadata", 305, "*** WARNING: CreateExifBufferFromPropertiesJPEG returned NULL\n");
  }

  if (JPEGDataFromImage)
  {
    CFRelease(JPEGDataFromImage);
  }

  if (Thumb)
  {
    CGImageRelease(Thumb);
  }

  if (v29)
  {
    free(v29);
  }

  IIODictionary::~IIODictionary(&v46);
LABEL_45:
  if (v43)
  {
    v46 = 0;
    ObjectForKey = IIODictionary::getObjectForKey(v45, @"{IPTC}");
    if (ObjectForKey)
    {
      v35 = CFGetTypeID(ObjectForKey);
      if (v35 == CFDictionaryGetTypeID())
      {
        operator new();
      }
    }

    if (IIODictionary::getCount(v45))
    {
      v36 = IIODictionary::containsKeyGroup(v45, @"ColorSpace", @"{Exif}");
      if (v36)
      {
        LOBYTE(v36) = IIODictionary::getUint32ForKeyGroup(v45, @"ColorSpace", @"{Exif}") == 1;
      }

      v37 = CreateIPTCDataFromProperties(v36, 0, &v46);
      if (v37)
      {
        v38 = v46;
        if (v46)
        {
          v39 = malloc_type_malloc((v46 + 4), 0x100004077774924uLL);
          *v39 = -4609;
          v39[2] = (v38 + 2) >> 8;
          v39[3] = v38 + 2;
          memcpy(v39 + 4, v37, v46);
          *v43 = CFDataCreate(*MEMORY[0x1E695E480], v39, (v38 + 4));
          free(v39);
          free(v37);
        }
      }
    }
  }

  if (v42)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    IIODictionary::IIODictionary(&v46, a7);
    if (IIODictionary::containsKey(&v46, @"kCGDataFromMetadataStripExifFromXMP") && !IIODictionary::getBoolForKey(&v46, @"kCGDataFromMetadataStripExifFromXMP"))
    {
      XMPData = CGImageMetadataCreateXMPData(v20, 0);
    }

    else
    {
      XMPData = CGImageMetadataCreateXMPWithEXIFFiltered(v20);
    }

    *v42 = XMPData;
    IIODictionary::~IIODictionary(&v46);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  kdebug_trace();
  IIODictionary::~IIODictionary(v45);
  return 0;
}

void sub_1860B8B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x186602850](v7, 0x10A1C4047070A01, a3, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t CGImageCreateMetadataFromData(const __CFData *a1, const __CFData *a2, const __CFData *a3, const __CFData *a4, CFDictionaryRef *a5, CGMutableImageMetadataRef *a6)
{
  v11 = kdebug_trace();
  IIOInitDebugFlags(v11, v12);
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImageCreateMetadataFromData", 0, 0, -1, 0);
  }

  if (!a5)
  {
    v13 = a6;
    if (!a6)
    {
      LogError("CGImageCreateMetadataFromData", 452, "*** ERROR: imageProperties or imageMetadata have to be non-nil\n");
LABEL_39:
      v29 = 4294967246;
      goto LABEL_113;
    }

    goto LABEL_7;
  }

  *a5 = 0;
  v13 = a6;
  if (a6)
  {
LABEL_7:
    v67 = 0;
    *v13 = 0;
    goto LABEL_8;
  }

  v67 = 1;
LABEL_8:
  Mutable = CGImageMetadataCreateMutable();
  if (!a1)
  {
    goto LABEL_13;
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (Length < 0x11)
  {
    goto LABEL_13;
  }

  if (!strncmp(BytePtr, "Exif", 5uLL))
  {
    v17 = 6;
  }

  else
  {
    if (strncmp(BytePtr + 4, "Exif", 5uLL))
    {
      LogError("CGImageCreateMetadataFromData", 495, "*** ERROR: exifData not recognized (does not start with 'Exif");
LABEL_13:
      v17 = 0;
      goto LABEL_14;
    }

    v17 = 10;
  }

  MetadataFromDatabuffer = CreateMetadataFromDatabuffer(&BytePtr[v17], Length - v17, 4);
  if (MetadataFromDatabuffer)
  {
    CGImageMetadataMerge(Mutable, MetadataFromDatabuffer, 0);
    CFRelease(MetadataFromDatabuffer);
    v18 = 0;
    if (!a3)
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

LABEL_14:
  v18 = 1;
  if (!a3)
  {
LABEL_30:
    v24 = 1;
    goto LABEL_31;
  }

LABEL_15:
  v19 = CFDataGetBytePtr(a3);
  v20 = CFDataGetLength(a3);
  if (v20 < 0x29)
  {
    goto LABEL_30;
  }

  v21 = 29;
  if (strncmp(v19, kMainXMPSignatureString[0], 0x1DuLL))
  {
    if (strncmp(v19, kMainXMPPlainString[0], 0x21uLL))
    {
      if (!strncmp(v19, "http://ns.adobe.com/xmp/extension/", 0x23uLL))
      {
        LogError("CGImageCreateMetadataFromData", 534, "*** ERROR: XMP exention blocks not handled yet!\n");
      }

      goto LABEL_30;
    }

    v21 = 0;
  }

  MetadataFromXMPBuffer = CreateMetadataFromXMPBuffer(&v19[v21], v20 - v21);
  if (!MetadataFromXMPBuffer)
  {
    LogError("CGImageCreateMetadataFromData", 529, "*** ERROR: XMP not recognized (does not start with 'http://ns.adobe.com/xap/1.0/'\n");
    goto LABEL_30;
  }

  CGImageMetadataMerge(Mutable, MetadataFromXMPBuffer, 0);
  CFRelease(MetadataFromXMPBuffer);
  v24 = 0;
LABEL_31:
  cf = Mutable;
  v66 = v17;
  if (a2)
  {
    v25 = CFDataGetBytePtr(a2);
    v26 = CFDataGetLength(a2);
    if (v26 >= 0x15)
    {
      if (!strncmp(v25, "Photoshop 3.0", 0xEuLL) || !strncmp(v25 + 4, "Photoshop 3.0", 0xEuLL))
      {
        v30 = CGImageMetadataCreateMutable();
        ReadPhotoshopImageResource(v30, (v25 + 14), v26 - 14);
        CGImageMetadataMerge(Mutable, v30, 0);
        CFRelease(v30);
        v28 = a4 == 0;
        v27 = 1;
        goto LABEL_41;
      }

      LogError("CGImageCreateMetadataFromData", 566, "*** ERROR: IPTC not recognized (does not start with 'Photoshop 3.0'\n");
    }
  }

  v27 = 0;
  v28 = a4 == 0;
  if (!a4 && (v18 & v24 & 1) != 0)
  {
    CFRelease(cf);
    goto LABEL_39;
  }

LABEL_41:
  if (!a5)
  {
    goto LABEL_110;
  }

  v31 = CGImagePropertiesCreateFromMetadata(cf);
  v32 = v31;
  if (v31)
  {
    v33 = 1;
  }

  else
  {
    v33 = v28;
  }

  if ((v33 & 1) == 0)
  {
    operator new();
  }

  if (!v31)
  {
    goto LABEL_110;
  }

  IIONumber::IIONumber(v74, 8);
  IIODictionary::setObjectForKey(v32, v74, @"Depth");
  IIONumber::~IIONumber(v74);
  ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(v32, @"XResolution", @"{TIFF}");
  if (ObjectForKeyGroup)
  {
    IIODictionary::setObjectForKey(v32, ObjectForKeyGroup, @"DPIHeight");
  }

  else
  {
    IIONumber::IIONumber(v74, 72);
    IIODictionary::setObjectForKey(v32, v74, @"DPIHeight");
    IIONumber::~IIONumber(v74);
  }

  v35 = IIODictionary::getObjectForKeyGroup(v32, @"YResolution", @"{TIFF}");
  if (v35)
  {
    IIODictionary::setObjectForKey(v32, v35, @"DPIWidth");
  }

  else
  {
    IIONumber::IIONumber(v74, 72);
    IIODictionary::setObjectForKey(v32, v74, @"DPIWidth");
    IIONumber::~IIONumber(v74);
  }

  v36 = IIODictionary::getObjectForKeyGroup(v32, @"Orientation", @"{TIFF}");
  if (v36)
  {
    IIODictionary::setObjectForKey(v32, v36, @"Orientation");
  }

  else
  {
    IIONumber::IIONumber(v74, 1);
    IIODictionary::setObjectForKey(v32, v74, @"Orientation");
    IIONumber::~IIONumber(v74);
  }

  v37 = IIODictionary::getObjectForKeyGroup(v32, @"PixelYDimension", @"{Exif}");
  if (v37)
  {
    IIODictionary::setObjectForKey(v32, v37, @"PixelHeight");
  }

  v38 = IIODictionary::getObjectForKeyGroup(v32, @"PixelXDimension", @"{Exif}");
  if (v38)
  {
    IIODictionary::setObjectForKey(v32, v38, @"PixelWidth");
  }

  if (!v28)
  {
    v50 = CFDataGetBytePtr(a4);
    v51 = CFDataGetLength(a4);
    if (v51 < 0xC9)
    {
      goto LABEL_76;
    }

    v52 = bswap32(*(v50 + 4));
    if (v52 > 1281450527)
    {
      if (v52 == 1281450528)
      {
        v53 = &kCGImagePropertyColorModelLab;
      }

      else
      {
        if (v52 != 1380401696)
        {
          goto LABEL_87;
        }

        v53 = &kCGImagePropertyColorModelRGB;
      }
    }

    else if (v52 == 1129142603)
    {
      v53 = &kCGImagePropertyColorModelCMYK;
    }

    else
    {
      if (v52 != 1196573017)
      {
        goto LABEL_87;
      }

      v53 = &kCGImagePropertyColorModelGray;
    }

    IIODictionary::setObjectForKey(v32, *v53, @"ColorModel");
LABEL_87:
    v78 = 0;
    *__p = 0u;
    v77 = 0u;
    *v74 = 0u;
    v75 = 0u;
    IIOScanner::IIOScanner(v74, v50, v51, 0);
    IIOScanner::seek(v74, 0x80uLL);
    Val32 = IIOScanner::getVal32(v74);
    if (Val32)
    {
      while (IIOScanner::getVal32(v74) != 1684370275)
      {
        IIOScanner::skip(v74, 8uLL);
        if (!--Val32)
        {
          goto LABEL_93;
        }
      }

      v56 = IIOScanner::getVal32(v74);
      IIOScanner::getVal32(v74);
      IIOScanner::seek(v74, v56);
      if (IIOScanner::getVal32(v74) == 1684370275)
      {
        IIOScanner::skip(v74, 4uLL);
        IIOScanner::getVal32(v74);
        v71 = 0;
        v72 = 0;
        value = 0;
        IIOString::IIOString(&v71, &v50[*(&v75 + 1)]);
        IIODictionary::setObjectForKey(v32, value, @"ProfileName");
        IIOString::~IIOString(&v71);
      }
    }

LABEL_93:
    IIOScanner::~IIOScanner(v74);
    if (v27)
    {
      goto LABEL_99;
    }

    goto LABEL_77;
  }

  if (IIODictionary::containsKeyGroup(v32, @"PrimaryChromaticities", @"{TIFF}") && IIODictionary::containsKeyGroup(v32, @"WhitePoint", @"{TIFF}") && IIODictionary::containsKeyGroup(v32, @"Gamma", @"{Exif}"))
  {
    IIODictionary::setObjectForKey(v32, @"RGB", @"ColorModel");
    FloatForKeyGroup = IIODictionary::getFloatForKeyGroup(v32, @"Gamma", @"{Exif}");
    v39 = IIODictionary::getObjectForKeyGroup(v32, @"WhitePoint", @"{TIFF}");
    v74[0] = 0;
    v74[1] = 0;
    *&v75 = 0;
    IIOArray::IIOArray(v74, v39);
    FloatAtIndex = IIOArray::getFloatAtIndex(v74, 0);
    v41 = IIOArray::getFloatAtIndex(v74, 1);
    v42 = IIODictionary::getObjectForKeyGroup(v32, @"PrimaryChromaticities", @"{TIFF}");
    v71 = 0;
    v72 = 0;
    value = 0;
    IIOArray::IIOArray(&v71, v42);
    v43 = IIOArray::getFloatAtIndex(&v71, 0);
    v44 = IIOArray::getFloatAtIndex(&v71, 1);
    v45 = IIOArray::getFloatAtIndex(&v71, 2);
    v46 = IIOArray::getFloatAtIndex(&v71, 3);
    v47 = IIOArray::getFloatAtIndex(&v71, 4);
    v48 = IIOArray::getFloatAtIndex(&v71, 5);
    if (IIOChromaticitiesMatchAdobeRGB(FloatAtIndex, v41, v43, v44, v45, v46, v47, v48, FloatForKeyGroup))
    {
      v49 = @"Adobe RGB (1998)";
    }

    else
    {
      if (!IIOChromaticitiesMatchSRGB(FloatAtIndex, v41, v43, v44, v45, v46, v47, v48, FloatForKeyGroup))
      {
        goto LABEL_98;
      }

      v49 = @"sRGB IEC61966-2.1";
    }

    IIODictionary::setObjectForKey(v32, v49, @"ProfileName");
LABEL_98:
    IIOArray::~IIOArray(&v71);
    IIOArray::~IIOArray(v74);
    if (v27)
    {
      goto LABEL_99;
    }

LABEL_77:
    if (IIODictionary::containsKey(v32, @"{IPTC}"))
    {
      _cg_jpeg_mem_term("CGImageCreateMetadataFromData", 611, "*** NOTE: metadata contains {IPTC} - but IPTCData was not requested...\n");
      ObjectForKey = IIODictionary::getObjectForKey(v32, @"{IPTC}");
      v71 = 0;
      v72 = 0;
      value = 0;
      IIODictionary::IIODictionary(&v71, ObjectForKey);
      v74[0] = 0;
      v74[1] = v74;
      *&v75 = 0x4002000000;
      *(&v75 + 1) = __Block_byref_object_copy__1;
      __p[0] = __Block_byref_object_dispose__1;
      __p[1] = 0;
      v77 = 0uLL;
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 0x40000000;
      v70[2] = __CGImageCreateMetadataFromData_block_invoke;
      v70[3] = &unk_1E6F41B58;
      v70[4] = v74;
      IIODictionary::enumerate(&v71, v70);
      _cg_jpeg_mem_term("CGImageCreateMetadataFromData", 619, "    returning with Exif: '%s'\n");
      kdebug_trace();
      _Block_object_dispose(v74, 8);
      if (SHIBYTE(v77) < 0)
      {
        operator delete(__p[1]);
      }

      IIODictionary::~IIODictionary(&v71);
    }

    goto LABEL_99;
  }

  if (IIODictionary::containsKeyGroup(v32, @"ColorSpace", @"{Exif}") && IIODictionary::getUint32ForKeyGroup(v32, @"ColorSpace", @"{Exif}") == 1)
  {
    IIODictionary::setObjectForKey(v32, @"sRGB IEC61966-2.1", @"ProfileName");
  }

LABEL_76:
  if ((v27 & 1) == 0)
  {
    goto LABEL_77;
  }

LABEL_99:
  if (IIODictionary::containsKeyGroup(v32, @"JPEGInterchangeFormatLength", @"{Exif}"))
  {
    Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(v32, @"JPEGInterchangeFormatLength", @"{Exif}");
    v58 = IIODictionary::getUint32ForKeyGroup(v32, @"JPEGInterchangeFormat", @"{Exif}");
    v59 = IIODictionary::getUint32ForKeyGroup(v32, @"JPEGInterchangeFormatWidth", @"{Exif}");
    v60 = IIODictionary::getUint32ForKeyGroup(v32, @"JPEGInterchangeFormatHeight", @"{Exif}");
    if (v59)
    {
      v61 = v60;
      if (v60)
      {
        if (v58 && Uint32ForKeyGroup)
        {
          v74[0] = 0;
          v74[1] = 0;
          *&v75 = 0;
          IIODictionary::IIODictionary(v74);
          IIODictionary::setObjectForKey(v32, v74[1], @"{ExifThumbnail}");
          IIONumber::IIONumber(&v71, v59);
          IIODictionary::setObjectForKey(v74, value, @"JPEGInterchangeFormatWidth");
          IIONumber::~IIONumber(&v71);
          IIONumber::IIONumber(&v71, v61);
          IIODictionary::setObjectForKey(v74, value, @"JPEGInterchangeFormatHeight");
          IIONumber::~IIONumber(&v71);
          v62 = CFDataGetBytePtr(a1);
          if (CFDataGetLength(a1) > Uint32ForKeyGroup - v66 + v58)
          {
            v63 = CFDataCreate(*MEMORY[0x1E695E480], &v62[v58 - v66], Uint32ForKeyGroup);
            if (v63)
            {
              IIODictionary::setObjectForKey(v74, v63, @"JPEGThumbnailData");
              CFRelease(v63);
            }
          }

          IIODictionary::~IIODictionary(v74);
        }
      }
    }

    IIODictionary::removeObjectForKeyGroup(v32, @"JPEGInterchangeFormatLength", @"{Exif}");
    IIODictionary::removeObjectForKeyGroup(v32, @"JPEGInterchangeFormat", @"{Exif}");
    IIODictionary::removeObjectForKeyGroup(v32, @"JPEGInterchangeFormatWidth", @"{Exif}");
    IIODictionary::removeObjectForKeyGroup(v32, @"JPEGInterchangeFormatHeight", @"{Exif}");
  }

  *a5 = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v32[1]);
  (*(*v32 + 1))(v32);
LABEL_110:
  if (v67)
  {
    CFRelease(cf);
    v29 = 0;
  }

  else
  {
    v29 = 0;
    *a6 = cf;
  }

LABEL_113:
  kdebug_trace();
  return v29;
}

void sub_1860B9940(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  IIOString::~IIOString(&a20);
  IIOScanner::~IIOScanner(&a23);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860B98ECLL);
}

__n128 __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

std::string *__CGImageCreateMetadataFromData_block_invoke(uint64_t a1, const void *a2)
{
  IIOString::IIOString(v5, a2);
  v3 = IIOString::utf8String(v5);
  std::string::append((*(*(a1 + 32) + 8) + 40), v3);
  IIOString::~IIOString(v5);
  return std::string::append((*(*(a1 + 32) + 8) + 40), "  ");
}

void sub_1860B9B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t CGImageCreateMetadataFromDataArray(const __CFArray *a1, CFDictionaryRef *a2, CGMutableImageMetadataRef *a3)
{
  v6 = kdebug_trace();
  IIOInitDebugFlags(v6, v7);
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImageCreateMetadataFromDataArray", 0, 0, -1, 0);
  }

  if (!a1)
  {
    CGImageCreateMetadataFromDataArray_cold_1();
    MetadataFromData = 4294967246;
    goto LABEL_39;
  }

  if (CFArrayGetCount(a1) <= 0)
  {
    MetadataFromData = CGImageCreateMetadataFromData(0, 0, 0, 0, a2, a3);
    goto LABEL_39;
  }

  v21 = a2;
  v8 = 0;
  v9 = 0;
  v22 = 0;
  v23 = 0;
  v10 = 0;
  allocator = *MEMORY[0x1E695E480];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
    v12 = CFGetTypeID(ValueAtIndex);
    if (v12 != CFDataGetTypeID())
    {
      LogError("CGImageCreateMetadataFromDataArray", 701, "*** ERROR: dataArray does not contain CFData\n");
      goto LABEL_15;
    }

    BytePtr = CFDataGetBytePtr(ValueAtIndex);
    Length = CFDataGetLength(ValueAtIndex);
    if (Length < 0x11)
    {
      goto LABEL_15;
    }

    if (!strncmp(BytePtr, "Exif", 5uLL))
    {
      v10 = ValueAtIndex;
      goto LABEL_15;
    }

    if (Length < 0x1F)
    {
      if (Length < 0x15)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!strncmp(BytePtr, kMainXMPSignatureString[0], 0x1DuLL))
      {
        v22 = ValueAtIndex;
        goto LABEL_15;
      }

      if (Length >= 0x29 && !strncmp(BytePtr, "http://ns.adobe.com/xmp/extension/", 0x23uLL))
      {
        LogError("CGImageCreateMetadataFromDataArray", 718, "*** ERROR: XMP exention blocks not handled yet!\n");
        goto LABEL_15;
      }
    }

    if (!strncmp(BytePtr, "Photoshop 3.0", 0xEuLL))
    {
      v23 = ValueAtIndex;
      goto LABEL_15;
    }

    if (Length < 0x81)
    {
      goto LABEL_15;
    }

    if (!strncmp(BytePtr, "ICC_PROFILE", 0xCuLL))
    {
      if (v9)
      {
        CFRelease(v9);
      }

      v15 = Length - 14;
      v17 = BytePtr + 14;
      v16 = allocator;
      goto LABEL_34;
    }

    if (BytePtr[36] == 97 && BytePtr[37] == 99 && BytePtr[38] == 115 && BytePtr[39] == 112)
    {
      if (v9)
      {
        CFRelease(v9);
      }

      v15 = Length;
      v16 = allocator;
      v17 = BytePtr;
LABEL_34:
      v9 = CFDataCreate(v16, v17, v15);
    }

LABEL_15:
    ++v8;
  }

  while (v8 < CFArrayGetCount(a1));
  MetadataFromData = CGImageCreateMetadataFromData(v10, v23, v22, v9, v21, a3);
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_39:
  kdebug_trace();
  return MetadataFromData;
}

uint64_t CGImageCreateCombinedXMPData(const void *a1, const void *a2, CFDataRef *a3, CGMutableImageMetadataRef *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1 || (v8 = CFGetTypeID(a1), v8 != CFDataGetTypeID()))
  {
    CGImageCreateCombinedXMPData_cold_3();
    return 4294967246;
  }

  if (!a2)
  {
    v10 = a3 != 0;
    v11 = a4 != 0;
    if (a3 | a4)
    {
LABEL_51:
      if (v10)
      {
        *a3 = CFRetain(a1);
      }

      if (v11)
      {
        memset(v51, 0, 24);
        IIOArray::IIOArray(v51);
        IIOArray::addObject(v51, a1);
        MetadataFromDataArray = CGImageCreateMetadataFromDataArray(*&v51[8], 0, a4);
        IIOArray::~IIOArray(v51);
        return MetadataFromDataArray;
      }

      return 4294967246;
    }

LABEL_78:
    CGImageCreateCombinedXMPData_cold_2();
    return 4294967246;
  }

  v9 = CFGetTypeID(a2);
  if (v9 != CFArrayGetTypeID())
  {
    CGImageCreateCombinedXMPData_cold_1();
    return 4294967246;
  }

  v10 = a3 != 0;
  v11 = a4 != 0;
  if (!(a3 | a4))
  {
    goto LABEL_78;
  }

  if (CFArrayGetCount(a2) < 1)
  {
    goto LABEL_51;
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (Length >= 0x1E && (*BytePtr == 0x6E2F2F3A70747468 ? (v14 = *(BytePtr + 1) == 0x2E65626F64612E73) : (v14 = 0), v14 ? (v15 = *(BytePtr + 2) == 0x2F7061782F6D6F63) : (v15 = 0), v15))
  {
    v41 = BytePtr[29];
    v40 = (BytePtr + 29);
    v42 = v41 == 60;
    if (v41 == 60)
    {
      v16 = Length - 29;
    }

    else
    {
      v16 = 0;
    }

    if (v42)
    {
      v17 = v40;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  memset(v51, 0, sizeof(v51));
  if (CFArrayGetCount(a2) < 1)
  {
    v37 = 0;
    v18 = 0;
LABEL_64:
    MetadataFromXMPBuffer = 0;
    if (v16 && v17)
    {
      MetadataFromXMPBuffer = CreateMetadataFromXMPBuffer(v17, v16);
    }

    if (!v37)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  v44 = v16;
  v45 = v17;
  v46 = a3;
  v47 = a4;
  v48 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v21);
    v23 = CFDataGetBytePtr(ValueAtIndex);
    v24 = CFDataGetLength(ValueAtIndex);
    if (v24 >= 0x4C)
    {
      v25 = v24;
      if (!strcmp(v23, "http://ns.adobe.com/xmp/extension/"))
      {
        v49 = *(v23 + 35);
        v50 = *(v23 + 51);
        v26 = bswap32(*(v23 + 67));
        v27 = *(v23 + 71);
        if ((v20 & 1) == 0)
        {
          v28 = *(v23 + 51);
          *v51 = *(v23 + 35);
          *&v51[16] = v28;
          v29 = malloc_type_calloc(1uLL, v26, 0x100004077774924uLL);
          if (!v29)
          {
            return 4294967246;
          }

          v18 = v29;
          v19 = v26;
        }

        if (*v51 == v49 && *&v51[8] == *(&v49 + 1) && *&v51[16] == v50 && *&v51[24] == *(&v50 + 1) && v26 == v19)
        {
          v35 = bswap32(v27);
          v36 = v25 - 75;
          if (v36 + v35 > v26)
          {
            return 4294967246;
          }

          memcpy(&v18[v35], v23 + 75, v36);
          v48 += v36;
        }

        v20 = 1;
      }
    }

    ++v21;
  }

  while (v21 < CFArrayGetCount(a2));
  v37 = v18 != 0;
  a3 = v46;
  v16 = v44;
  if (!v18)
  {
    a4 = v47;
    v17 = v45;
    goto LABEL_64;
  }

  v17 = v45;
  if (!v19 || (v37 = 1, !v44) || !v45 || v48 != v19)
  {
    a4 = v47;
    goto LABEL_64;
  }

  MetadataFromXMPBuffer = CreateMetadataFromExtendedXMPData(v45, v44, v18, v48);
  a4 = v47;
LABEL_68:
  free(v18);
LABEL_69:
  if (a3 && MetadataFromXMPBuffer)
  {
    CGImageMetadataCreateExtendedXMPWithEXIFFiltered(MetadataFromXMPBuffer, a3, 0, 0, 0, 0);
  }

  if (a4)
  {
    MetadataFromDataArray = 0;
    *a4 = MetadataFromXMPBuffer;
  }

  else
  {
    if (MetadataFromXMPBuffer)
    {
      CFRelease(MetadataFromXMPBuffer);
    }

    return 0;
  }

  return MetadataFromDataArray;
}

uint64_t EXRReadPlugin::EXRReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *v6 = &unk_1EF4DD4D0;
  *(v6 + 464) = 0u;
  *(v6 + 480) = 0u;
  *(v6 + 496) = 0u;
  *(v6 + 512) = 0u;
  *(v6 + 528) = 0u;
  *(v6 + 544) = 0u;
  *(v6 + 560) = 0u;
  *(v6 + 576) = 0u;
  *(v6 + 592) = 0u;
  *(v6 + 608) = 0u;
  *(v6 + 624) = 0;
  AppleEXREnabled(v6, v7);
  return a1;
}

void sub_1860BA31C(_Unwind_Exception *a1)
{
  EXRPluginData::~EXRPluginData(v1 + 58);
  IIOReadPlugin::~IIOReadPlugin(v1);
  _Unwind_Resume(a1);
}

void sub_1860BA3A0(_Unwind_Exception *a1)
{
  EXRPluginData::~EXRPluginData(v1 + 58);
  IIOReadPlugin::~IIOReadPlugin(v1);
  _Unwind_Resume(a1);
}

void EXRReadPlugin::~EXRReadPlugin(EXRReadPlugin *this)
{
  *this = &unk_1EF4DD4D0;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 78) = 0;
  IIOReadPlugin::~IIOReadPlugin(this);
}

{
  *this = &unk_1EF4DD4D0;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 78) = 0;
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t EXRReadPlugin::initialize(EXRReadPlugin *this, IIODictionary *a2)
{
  if (!AppleEXREnabled(this, a2))
  {
    updated = 4294967246;
LABEL_48:
    kdebug_trace();
    return updated;
  }

  v63 = 0;
  v3 = IIOImageReadSession::retainBytePointer(*(this + 3), &v63, 1);
  Size = IIOImageReadSession::getSize(*(this + 3));
  v62 = 0;
  v5 = gFunc_axr_data_create(v3, Size, &v62, 0, 0);
  logical_image_list = gFunc_axr_data_create_logical_image_list(v5);
  v59 = 0;
  v60 = 0;
  v61 = 0;
  updated = IIO_Reader_OpenEXR::UpdateImageInfo(logical_image_list, &v59);
  if (updated)
  {
    _cg_jpeg_mem_term("initialize", 89, "*** ERROR: IIO_Reader_OpenEXR::UpdateImageInfo failed: %d\n");
    goto LABEL_41;
  }

  v8 = *(this + 56);
  if (0xCF3CF3CF3CF3CF3DLL * ((v60 - v59) >> 3) <= v8)
  {
    LogError("initialize", 91, "*** IIO_Reader_OpenEXR::UpdateImageInfo read past end of imageInfo\n");
    goto LABEL_41;
  }

  v9 = (v59 + 168 * v8);
  v10 = *v9;
  *(this + 474) = *(v9 + 10);
  *(this + 29) = v10;
  std::string::operator=((this + 496), (v9 + 2));
  std::string::operator=((this + 520), (v9 + 56));
  std::string::operator=((this + 544), (v9 + 5));
  v11 = *(v9 + 104);
  v12 = *(v9 + 120);
  v13 = *(v9 + 152);
  *(this + 600) = *(v9 + 136);
  *(this + 616) = v13;
  *(this + 568) = v11;
  *(this + 584) = v12;
  if (v62)
  {
    name = gFunc_axr_error_get_name();
    LogError("initialize", 93, "*** axr_data_create failed: %s (%d)\n", name, v62);
    goto LABEL_41;
  }

  decoder = gFunc_axr_logical_image_list_create_decoder(logical_image_list, v5, *(this + 117), *(this + 118), 0, 0, 0, 1.0);
  v15 = decoder;
  if (!decoder)
  {
    LogError("initialize", 97, "*** axr_logical_image_list_create_decoder returned NULL\n");
    goto LABEL_41;
  }

  channel_count = gFunc_axr_decoder_get_channel_count(decoder);
  v17 = channel_count;
  *(this + 152) = channel_count;
  v18 = NAN;
  if ((channel_count & 1) == 0)
  {
    v18 = 1.0;
  }

  *(this + 60) = v18;
  *(this + 489) = *(this + 382);
  gFunc_axr_data_get_part_info(v49, v5, *(this + 147), 1);
  v20 = v51;
  v19 = v52;
  v22 = v53;
  v21 = v54;
  v24 = v55;
  v23 = v56;
  v26 = v57;
  v25 = v58;
  v46 = 0;
  value = 0;
  v48 = 0;
  IIODictionary::IIODictionary(&v46);
  IIODictionary::setObjectForKey(*(this + 7), value, @"{EXR}");
  v43 = 0;
  v44 = 0;
  v45 = 0;
  IIOArray::IIOArray(&v43);
  IIODictionary::setObjectForKey(&v46, v44, @"Chromaticities");
  IIONumber::IIONumber(v49, v20);
  IIOArray::addObject(&v43, v50);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, v24);
  IIOArray::addObject(&v43, v50);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, v19);
  IIOArray::addObject(&v43, v50);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, v23);
  IIOArray::addObject(&v43, v50);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, v22);
  IIOArray::addObject(&v43, v50);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, v26);
  IIOArray::addObject(&v43, v50);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, v21);
  IIOArray::addObject(&v43, v50);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, v25);
  IIOArray::addObject(&v43, v50);
  IIONumber::~IIONumber(v49);
  v27 = *(this + 149);
  v29 = v27 != 1 && v27 != 7;
  *(this + 488) = v29;
  colorspace = gFunc_axr_decoder_create_colorspace(v15, 0, 0);
  *(this + 20) = colorspace;
  if (colorspace)
  {
    if (*(this + 489) != 1)
    {
      goto LABEL_26;
    }

    if (CGColorSpaceGetModel(colorspace) == kCGColorSpaceModelRGB)
    {
      CGColorSpaceRelease(*(this + 20));
      v31 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
      *(this + 20) = v31;
      if (v31)
      {
        goto LABEL_26;
      }
    }

    else
    {
      *(this + 489) = 0;
      if (*(this + 20))
      {
        goto LABEL_26;
      }
    }
  }

  if ((*(this + 152) - 1) > 1)
  {
    v32 = MEMORY[0x1E695F0B8];
    if (!*(this + 489))
    {
      v32 = MEMORY[0x1E695F108];
    }

    *(this + 20) = CGColorSpaceCreateWithName(*v32);
  }

  else
  {
    *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0F8]);
    *(this + 489) = 0;
  }

LABEL_26:
  if (*(this + 488) == 1)
  {
    gFunc_axr_decoder_get_read_pixels_info(v49, v15, 0, 1);
  }

  else
  {
    gFunc_axr_decoder_get_read_rgba_pixels_info(v49, v15, 0, 1, *(this + 60));
  }

  Model = CGColorSpaceGetModel(*(this + 20));
  if (Model == kCGColorSpaceModelMonochrome)
  {
    v34 = 1196573017;
    goto LABEL_33;
  }

  if (Model == kCGColorSpaceModelRGB)
  {
    v34 = 1380401696;
LABEL_33:
    *(this + 85) = v34;
  }

  os_release(v15);
  IIOArray::~IIOArray(&v43);
  IIODictionary::~IIODictionary(&v46);
  v35 = *(this + 72);
  *(this + 244) = v35;
  v36 = *(this + 152);
  *(this + 130) = v36;
  v37 = *(this + 489);
  if (v37)
  {
    v38 = 16;
  }

  else
  {
    v38 = *(this + 232);
  }

  *(this + 128) = v38;
  v39 = v38 * v36;
  *(this + 129) = v39;
  if (v17)
  {
    v40 = 5;
  }

  else
  {
    v40 = 3;
  }

  *(this + 262) = v40;
  *(this + 63) = v35 * (v39 >> 3);
  *(this + 26) = 0;
  *(this + 372) = 0;
  *(this + 374) = 0;
  *(this + 204) = 1;
  *(this + 373) = v37 ^ 1;
LABEL_41:
  if (v5)
  {
    os_release(v5);
  }

  if (logical_image_list)
  {
    os_release(logical_image_list);
  }

  if (v63)
  {
    IIOImageReadSession::releaseBytePointer(*(this + 3), v63);
  }

  v49[0] = &v59;
  std::vector<EXRPluginData>::__destroy_vector::operator()[abi:fe200100](v49);
  if (updated)
  {
    goto LABEL_48;
  }

  return updated;
}

void sub_1860BAA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  IIOArray::~IIOArray(&a11);
  IIODictionary::~IIODictionary(&a14);
  a17 = (v17 - 168);
  std::vector<EXRPluginData>::__destroy_vector::operator()[abi:fe200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t EXRReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 12)
  {
    return IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

uint64_t EXRReadPlugin::loadDataFromXPCObject(EXRReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_exr", &length);
    if (length == 168)
    {
      v6 = data;
      result = 0;
      v7 = *v6;
      v8 = v6[2];
      *(this + 30) = v6[1];
      *(this + 31) = v8;
      *(this + 29) = v7;
      v9 = v6[3];
      v10 = v6[4];
      v11 = v6[6];
      *(this + 34) = v6[5];
      *(this + 35) = v11;
      *(this + 32) = v9;
      *(this + 33) = v10;
      v12 = v6[7];
      v13 = v6[8];
      v14 = v6[9];
      *(this + 78) = *(v6 + 20);
      *(this + 37) = v13;
      *(this + 38) = v14;
      *(this + 36) = v12;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t EXRReadPlugin::saveDataToXPCObject(EXRReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_exr", this + 464, 0xA8uLL);
  }

  return v4;
}

uint64_t EXRReadPlugin::decodeBlockAppleEXR(EXRReadPlugin *this, char *a2, size_t a3)
{
  v4 = a2;
  if (!AppleEXREnabled(this, a2))
  {
    return 4294967246;
  }

  v6 = *(this + 70);
  v39 = 0;
  v7 = IIOImageReadSession::retainBytePointer(*(this + 3), &v39, 1);
  Size = IIOImageReadSession::getSize(*(this + 3));
  v38 = 0;
  v9 = gFunc_axr_data_create(v7, Size, &v38, 0, 0);
  if (!v38)
  {
    logical_image_list = gFunc_axr_data_create_logical_image_list(v9);
    decoder = gFunc_axr_logical_image_list_create_decoder(logical_image_list, v9, *(this + 117), *(this + 118), 0, 0, 0, *(this + 60));
    if (decoder)
    {
      if (*(this + 489) == 1 && *(this + 232) == 32)
      {
        v12 = 4 * *(this + 152) * *(this + 61);
        a3 = v12 * *(this + 78);
        v13 = malloc_type_malloc(a3, 0xFE4B78AEuLL);
        v14 = v13;
      }

      else
      {
        v14 = 0;
        v12 = *(this + 79);
        v13 = v4;
      }

      if (*(this + 488) == 1)
      {
        gFunc_axr_decoder_get_read_pixels_info(v37, decoder, 0, 1);
        pixels = gFunc_axr_decoder_read_pixels(decoder, v13, v12, 2);
      }

      else
      {
        gFunc_axr_decoder_get_read_rgba_pixels_info(v37, decoder, 0, 1, *(this + 60));
        pixels = gFunc_axr_decoder_read_rgba_pixels(decoder, v13, v12, 2, 1.0);
      }

      v38 = pixels;
      if (pixels)
      {
        EXRReadPlugin::decodeBlockAppleEXR(pixels, &v38);
        v15 = 4294967246;
      }

      else
      {
        if (*(this + 78) == v6)
        {
          v15 = 0;
        }

        else
        {
          v15 = 4294967246;
        }

        if (*(this + 489) == 1 && *(this + 85) == 1380401696)
        {
          memset(v37, 0, 24);
          IIODictionary::IIODictionary(v37);
          if (*(this + 232) == 16)
          {
            v17 = 1380411457;
          }

          else
          {
            v17 = 1380410945;
          }

          v18 = IIOCreatePixelBufferWithBuffer(*(this + 77), *(this + 78), v12, v17, v13, a3, v37);
          if (v18)
          {
            v35 = 0;
            v36 = 0;
            IIOColorSpace::IIOColorSpace(&v35, *MEMORY[0x1E695F108]);
            IIOPixelBufferSetColorSpace(v18, v36);
            v19 = IIOCreatePixelBuffer(*(this + 77), *(this + 78), 1815491698, v37);
            v33 = 0;
            v34 = 0;
            IIOColorSpace::IIOColorSpace(&v33, *MEMORY[0x1E695F0B8]);
            IIOPixelBufferSetColorSpace(v19, v34);
            v30 = 0;
            v31 = 0;
            v32 = 0;
            IIODictionary::IIODictionary(&v30);
            IIODictionary::setObjectForKey(&v30, *MEMORY[0x1E695E4D0], @"kCGDisableMetal");
            v15 = IIOConvertHDRData(v18, v19, v31);
            IIODictionary::~IIODictionary(&v30);
            IIOColorSpace::~IIOColorSpace(&v33);
            IIOColorSpace::~IIOColorSpace(&v35);
          }

          else
          {
            v19 = 0;
          }

          object = logical_image_list;
          free(v14);
          if (!v15 && v19)
          {
            gFunc_CVPixelBufferLockBaseAddress(v19, 1);
            Width = gFunc_CVPixelBufferGetWidth(v19);
            v28 = v18;
            BytesPerRow = gFunc_CVPixelBufferGetBytesPerRow(v19);
            BaseAddress = gFunc_CVPixelBufferGetBaseAddress(v19);
            if (*(this + 78))
            {
              v23 = BaseAddress;
              v24 = 0;
              v25 = 8 * Width;
              do
              {
                memcpy(v4, v23, v25);
                v4 += *(this + 79);
                v23 += BytesPerRow;
                ++v24;
              }

              while (v24 < *(this + 78));
            }

            gFunc_CVPixelBufferUnlockBaseAddress(v19, 1);
            v18 = v28;
          }

          IIODictionary::~IIODictionary(v37);
          if (v18)
          {
            gFunc_CVPixelBufferRelease(v18, v26);
          }

          if (v19)
          {
            gFunc_CVPixelBufferRelease(v19, v26);
          }

          logical_image_list = object;
          goto LABEL_40;
        }
      }

      if (v14)
      {
        free(v14);
      }

      goto LABEL_40;
    }

    EXRReadPlugin::decodeBlockAppleEXR();
    v15 = 4294967246;
LABEL_40:
    if (logical_image_list)
    {
      os_release(logical_image_list);
    }

    if (decoder)
    {
      os_release(decoder);
    }

    goto LABEL_44;
  }

  EXRReadPlugin::decodeBlockAppleEXR(v38, &v38);
  v15 = 4294967246;
LABEL_44:
  if (v9)
  {
    os_release(v9);
  }

  if (v39)
  {
    IIOImageReadSession::releaseBytePointer(*(this + 3), v39);
  }

  return v15;
}

void sub_1860BB124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

double TGAReadPlugin::TGAReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *v5 = &unk_1EF4DD618;
  result = 0.0;
  *(v5 + 464) = 0u;
  *(v5 + 480) = 0u;
  *(v5 + 496) = 0;
  return result;
}

void TGAReadPlugin::~TGAReadPlugin(TGAReadPlugin *this)
{
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t TGAReadPlugin::loadDataFromXPCObject(TGAReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_tga", &length);
    if (length == 40)
    {
      v6 = data;
      result = 0;
      v7 = *v6;
      v8 = v6[1];
      *(this + 62) = *(v6 + 4);
      *(this + 29) = v7;
      *(this + 30) = v8;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t TGAReadPlugin::saveDataToXPCObject(TGAReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_tga", this + 464, 0x28uLL);
  }

  return v4;
}

ssize_t TGAReadPlugin::readHeader(TGAReadPlugin *this)
{
  result = IIOImageReadSession::getBytesAtOffset(*(this + 3), this + 464, 0, 18);
  if (result != 18)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -36;
  }

  return result;
}

const char *TGAReadPlugin::debugHeader(TGAReadPlugin *this)
{
  v2 = (this + 467);
  ImageIOLog("    TGA:\n");
  ImageIOLog("                  sizeOfImageID:  %d\n", *(this + 464));
  ImageIOLog("                     hasPalette:  %d\n", *(this + 465));
  v3 = *(this + 466);
  v4 = "Compressed";
  if ((v3 & 8) == 0)
  {
    v4 = "Uncompressed";
  }

  ImageIOLog("                      imageType:  %d = %s+%s\n", v3, off_1E6F41B78[v3 & 3], v4);
  ImageIOLog("                       palStart:  %d\n", *v2);
  ImageIOLog("                        palSize:  %d\n", v2[1]);
  ImageIOLog("                palBitsPerPixel:  %d\n", *(this + 471));
  ImageIOLog("                        xOffset:  %d\n", *(this + 236));
  ImageIOLog("                        yOffset:  %d\n", *(this + 237));
  ImageIOLog("                          width:  %d\n", *(this + 238));
  ImageIOLog("                         height:  %d\n", *(this + 239));
  ImageIOLog("                   bitsPerPixel:  %d\n", *(this + 480));
  return ImageIOLog("                       attrBits:  0x%.2X = %d alphabits + %d origin\n", *(this + 481), *(this + 481) & 0xF, (*(this + 481) >> 4) & 3);
}

uint64_t TGAReadPlugin::initialize(IIOImageReadSession **this, IIODictionary *a2)
{
  if (*(this + 369) == 1)
  {
    TGAReadPlugin::readHeader(this);
    if (*(this + 194) == 1)
    {
      TGAReadPlugin::debugHeader(this);
    }

    if (*(this + 465) >= 2u)
    {
      _cg_jpeg_mem_term("initialize", 141, "*** ERROR: _tga._tgaHeader.hasPalette: %d\n");
    }

    else
    {
      v3 = *(this + 466);
      if (v3 <= 0xB && ((0xE0Fu >> v3) & 1) != 0)
      {
        if (TGAReadPlugin::sanityCheck(this, (0x202u >> v3) & 1, (0xE00u >> v3) & 1))
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          IIODictionary::IIODictionary(&v16);
          IIONumber::IIONumber(v14, *(this + 466) > 3u);
          IIODictionary::setObjectForKey(&v16, value, @"Compression");
          IIONumber::~IIONumber(v14);
          IIODictionary::setObjectForKey(this[7], v17, @"{TGA}");
          IIODictionary::~IIODictionary(&v16);
          v10 = (TGAReadPlugin::setupGeometry(this, v4, v5, v6, v7, v8, v9) + *(this + 464) + 18);
          this[26] = v10;
          v11 = *(this + 129);
          *(this + 63) = (*(this + 129) * *(this + 238) + 7) >> 3;
          this[49] = 1;
          *(this + 130) = v11 / *(this + 128);
          if (v10 < IIOImageReadSession::getSize(this[3]))
          {
            Size = IIOImageReadSession::getSize(this[3]);
            result = 0;
            this[61] = (Size - this[26]);
            *(this + 496) = (*(this + 466) & 8) != 0;
            *(this + 497) = ~(*(this + 481) >> 5) & 1;
            *(this + 204) = 1;
            return result;
          }

          TGAReadPlugin::initialize((this + 26), this + 3);
        }

        else
        {
          TGAReadPlugin::initialize();
        }
      }
    }
  }

  kdebug_trace();
  return 4294967246;
}

void sub_1860BB6C0(void *a1)
{
  __cxa_begin_catch(a1);
  _cg_jpeg_mem_term("initialize", 186, "*** ERROR: setupGeometry failed\n");
  __cxa_end_catch();
  JUMPOUT(0x1860BB670);
}

uint64_t TGAReadPlugin::sanityCheck(TGAReadPlugin *this, char a2, char a3)
{
  v6 = *(this + 466);
  if (*(this + 465))
  {
    if ((((*(this + 471) - 8) >> 3) | (32 * (*(this + 471) - 8))) >= 4u)
    {
      v7 = "*** invalid paletteBitsPerPixel (%d)\n";
      v8 = 463;
      goto LABEL_20;
    }

    if ((v6 & 0xFFFFFFF7) != 1)
    {
      v7 = "*** ERROR: unexpected image type (%d) with color palette\n";
      v8 = 464;
      goto LABEL_20;
    }

    if (*(this + 469) - 4097 <= 0xFFFFEFFF)
    {
      v7 = "*** invalid paletteSize (%d)\n";
      v8 = 465;
      goto LABEL_20;
    }

    if (*(this + 467))
    {
      v7 = "*** unhandled paletteStart (%d)\n";
      v8 = 466;
LABEL_20:
      _cg_jpeg_mem_term("sanityCheck", v8, v7);
      return 0;
    }
  }

  else if (*(this + 467))
  {
    v7 = "*** true-color (no palette) has paletteStart and paletteSize set (%d and %d)\n";
    v8 = 470;
    goto LABEL_20;
  }

  if (!*(this + 238))
  {
    TGAReadPlugin::sanityCheck();
    return 0;
  }

  if (!*(this + 239))
  {
    TGAReadPlugin::sanityCheck();
    return 0;
  }

  if (*(this + 481) >= 0x40u)
  {
    v7 = "*** invalid attrBits [%X]\n";
    v8 = 475;
    goto LABEL_20;
  }

  v9 = v6 & 3;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = *(this + 480);
      if (v10 > 0x20 || ((1 << v10) & 0x101018000) == 0)
      {
        v7 = "*** RGB - invalid bitsPerPixel [%d]\n";
        v8 = 482;
        goto LABEL_20;
      }
    }

    else
    {
      v11 = *(this + 480);
      if (v11 != 8 && v11 != 16)
      {
        v7 = "*** Gray - invalid bitsPerPixel [%d]\n";
        v8 = 480;
        goto LABEL_20;
      }
    }
  }

  else if (v9 && *(this + 480) != 8)
  {
    v7 = "*** Indexed - invalid bitsPerPixel [%d]\n";
    v8 = 478;
    goto LABEL_20;
  }

  Size = IIOImageReadSession::getSize(*(this + 3));
  v13 = *(this + 239) * *(this + 238);
  if (a3)
  {
    if (100 * Size < v13)
    {
      return 0;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      v13 = v13 * (*(this + 480) >> 3);
    }

    if (Size < v13)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t TGAReadPlugin::setupGeometry(TGAReadPlugin *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(this + 466) & 3;
  v9 = *(this + 238);
  v10 = *(this + 239);
  *(this + 61) = v9;
  *(this + 62) = v10;
  v11 = *(this + 480);
  *(this + 129) = v11;
  *(this + 128) = 8;
  if (v11 == 32)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  *(this + 262) = v12;
  *(this + 20) = 0;
  if (v8 == 3)
  {
    v13 = 1196573017;
  }

  else
  {
    v13 = 1380401696;
  }

  *(this + 85) = v13;
  if (*(this + 465))
  {
    v14 = (*(this + 471) * *(this + 469)) >> 3;
  }

  else
  {
    v14 = 0;
  }

  switch(v8)
  {
    case 2:
      if (v11 - 15 >= 2)
      {
        if (v11 != 24)
        {
          if (v11 <= 8 && !v14)
          {
            goto LABEL_28;
          }

          *(this + 294) = v12;
          if (v11 != 32)
          {
            break;
          }

LABEL_22:
          *(this + 146) = 4;
          *(this + 72) = 2097160;
          *(this + 295) = 0;
          break;
        }
      }

      else
      {
        *(this + 128) = 5;
      }

      *(this + 294) = 5;
      goto LABEL_22;
    case 1:
      if (TGAReadPlugin::createIndexedColorSpace(this, v14, a3, a4, a5, a6, a7) && *(this + 129) <= 8u)
      {
        v9 = *(this + 61);
        break;
      }

LABEL_28:
      exception = __cxa_allocate_exception(4uLL);
      *exception = -50;
    case 3:
      *(this + 294) = v12;
      if (v11 == 16)
      {
        *(this + 72) = 1048584;
        *(this + 294) = 3;
      }

      break;
  }

  v15 = *(this + 296);
  v16 = *(this + 295);
  v17 = *(this + 297) != 0;
  *(this + 326) = *(this + 294) & 0x1F;
  *(this + 327) = v16 & 7;
  *(this + 328) = v15 & 0xF | (v16 >> 4);
  *(this + 329) = v17;
  *(this + 378) = 1;
  *(this + 71) = ((*(this + 145) + 7) >> 3) * v9;
  *(this + 372) = 0;
  *(this + 374) = 0;
  return v14;
}

uint64_t TGAReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 12)
  {
    return IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

BOOL TGAReadPlugin::createIndexedColorSpace(TGAReadPlugin *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x1EEE9AC00](this, a2, a3, a4, a5, a6, a7);
  *&v36[16382] = *MEMORY[0x1E69E9840];
  if (!v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = *(v7 + 464);
  v11 = *(v7 + 469);
  if (v11 >= 0x100)
  {
    v12 = 256;
  }

  else
  {
    v12 = *(v7 + 469);
  }

  v13 = *(v7 + 471);
  v14 = malloc_type_calloc(v12, 3uLL, 0x100004077774924uLL);
  if (!v14)
  {
    return *(v9 + 160) != 0;
  }

  v15 = v14;
  v16 = (v12 * v13) >> 3;
  v17 = (((*(v9 + 471) - 8) >> 3) | (32 * (*(v9 + 471) - 8)));
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      if (IIOImageReadSession::getBytesAtOffset(*(v9 + 24), v14, v10 + 18, v16) == v16)
      {
        if (v11)
        {
          v30 = v12;
          v31 = v15;
          do
          {
            v32 = *v31;
            *v31 = v31[2];
            v31[2] = v32;
            v31 += 3;
            --v30;
          }

          while (v30);
        }

        goto LABEL_30;
      }
    }

    else
    {
      if (v17 != 3)
      {
        goto LABEL_30;
      }

      bzero(v35, 0x4000uLL);
      if (IIOImageReadSession::getBytesAtOffset(*(v9 + 24), v35, v10 + 18, v16) == v16)
      {
        if (v11)
        {
          v22 = v15 + 2;
          v23 = v36;
          v24 = v12;
          do
          {
            *(v22 - 2) = *(v23 - 2);
            *(v22 - 1) = *(v23 - 1);
            v25 = *v23;
            v23 += 4;
            *v22 = v25;
            v22 += 3;
            --v24;
          }

          while (v24);
        }

        goto LABEL_30;
      }
    }
  }

  else
  {
    if (((*(v9 + 471) - 8) >> 3) | (32 * (*(v9 + 471) - 8)))
    {
      if (v17 == 1)
      {
        bzero(v35, 0x2000uLL);
        if (IIOImageReadSession::getBytesAtOffset(*(v9 + 24), v35, v10 + 18, v16) == v16)
        {
          if (v11)
          {
            v18 = v15 + 2;
            v19 = v35;
            v20 = v12;
            do
            {
              v21 = *v19;
              v19 += 2;
              *(v18 - 2) = ((v21 & 0x7C00) >> 7) & 0xF8 | (v21 >> 12) & 7;
              *(v18 - 1) = ((v21 & 0x3E0) >> 2) & 0xF8 | (v21 >> 7) & 7;
              *v18 = (8 * v21) | (v21 >> 2) & 7;
              v18 += 3;
              --v20;
            }

            while (v20);
          }

          goto LABEL_30;
        }

        goto LABEL_32;
      }

LABEL_30:
      v33 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      *(v9 + 160) = CGColorSpaceCreateIndexed(v33, (v12 - 1), v15);
      CGColorSpaceRelease(v33);
      free(v15);
      return *(v9 + 160) != 0;
    }

    bzero(v35, 0x1000uLL);
    if (IIOImageReadSession::getBytesAtOffset(*(v9 + 24), v35, v10 + 18, v16) == v16)
    {
      if (v11)
      {
        v26 = v15 + 2;
        v27 = v35;
        v28 = v12;
        do
        {
          v29 = *v27++;
          *v26 = v29;
          *(v26 - 1) = v29;
          *(v26 - 2) = v29;
          v26 += 3;
          --v28;
        }

        while (v28);
      }

      goto LABEL_30;
    }
  }

LABEL_32:
  free(v15);
  return 0;
}

unsigned int *TGAReadPlugin::adjustAlphaIfNeeded(unsigned int *this, char *a2)
{
  v2 = this[78];
  if (v2)
  {
    v3 = 0;
    v4 = this[77];
    v5 = this[79];
    v6 = a2 + 3;
    while (!v4)
    {
LABEL_7:
      ++v3;
      v6 += v5;
      if (v3 == v2)
      {
        v10 = 0;
        while (!v4)
        {
LABEL_13:
          if (++v10 >= v2)
          {
            return this;
          }
        }

        v11 = &a2[v10 * v5];
        v12 = this[77];
        while (!*v11)
        {
          v11 += 4;
          if (!--v12)
          {
            goto LABEL_13;
          }
        }

        v13 = 0;
        v14 = (v4 + 15) & 0x1FFFFFFF0;
        v15 = vdupq_n_s64(v4 - 1);
        v16 = a2 + 31;
        do
        {
          v17 = 0;
          v18 = v16;
          do
          {
            v19 = vdupq_n_s64(v17);
            v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_186205EC0)));
            if (vuzp1_s8(vuzp1_s16(v20, *v15.i8), *v15.i8).u8[0])
            {
              *(v18 - 28) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v20, *&v15), *&v15).i8[1])
            {
              *(v18 - 24) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_186205EB0)))), *&v15).i8[2])
            {
              *(v18 - 20) = -1;
              *(v18 - 16) = -1;
            }

            v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_186205EA0)));
            if (vuzp1_s8(*&v15, vuzp1_s16(v21, *&v15)).i32[1])
            {
              *(v18 - 12) = -1;
            }

            if (vuzp1_s8(*&v15, vuzp1_s16(v21, *&v15)).i8[5])
            {
              *(v18 - 8) = -1;
            }

            if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_186205E90))))).i8[6])
            {
              *(v18 - 4) = -1;
              *v18 = -1;
            }

            v22 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_186205E80)));
            if (vuzp1_s8(vuzp1_s16(v22, *v15.i8), *v15.i8).u8[0])
            {
              v18[4] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v22, *&v15), *&v15).i8[1])
            {
              v18[8] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_186205E70)))), *&v15).i8[2])
            {
              v18[12] = -1;
              v18[16] = -1;
            }

            v23 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_186205E60)));
            if (vuzp1_s8(*&v15, vuzp1_s16(v23, *&v15)).i32[1])
            {
              v18[20] = -1;
            }

            if (vuzp1_s8(*&v15, vuzp1_s16(v23, *&v15)).i8[5])
            {
              v18[24] = -1;
            }

            if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_186205E50))))).i8[6])
            {
              v18[28] = -1;
              v18[32] = -1;
            }

            v17 += 16;
            v18 += 64;
          }

          while (v14 != v17);
          ++v13;
          v16 += v5;
        }

        while (v13 != v2);
        return this;
      }
    }

    v7 = v6;
    v8 = this[77];
    while (1)
    {
      v9 = *v7;
      v7 += 4;
      if (v9)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_7;
      }
    }
  }

  return this;
}

uint64_t TGAReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v44 = 0;
  seed = 0;
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v8 = *(this + 55);
    v9 = v8 >> 24;
    v10 = MEMORY[0x1E69E9830];
    if ((v8 >> 24) <= 0x7F)
    {
      v11 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
    }

    else
    {
      v11 = __maskrune(v9, 0x40000uLL);
      v8 = *(this + 55);
    }

    if (v11)
    {
      v12 = (v8 >> 24);
    }

    else
    {
      v12 = 46;
    }

    v13 = v8 << 8 >> 24;
    if (v13 <= 0x7F)
    {
      v14 = *(v10 + 4 * v13 + 60) & 0x40000;
    }

    else
    {
      v14 = __maskrune(v13, 0x40000uLL);
      v8 = *(this + 55);
    }

    if (v14)
    {
      v15 = (v8 << 8 >> 24);
    }

    else
    {
      v15 = 46;
    }

    v16 = v8 >> 8;
    if (v16 <= 0x7F)
    {
      v17 = *(v10 + 4 * v16 + 60) & 0x40000;
    }

    else
    {
      v17 = __maskrune(v16, 0x40000uLL);
      v8 = *(this + 55);
    }

    if (v17)
    {
      v18 = (v8 >> 8);
    }

    else
    {
      v18 = 46;
    }

    if (v8 <= 0x7F)
    {
      if ((*(v10 + 4 * v8 + 60) & 0x40000) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (__maskrune(v8, 0x40000uLL))
    {
LABEL_22:
      v19 = *(this + 220);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v12, v15, v18, v19, iioTypeStr[a3], "virtual OSStatus TGAReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_26;
    }

    v19 = 46;
    goto LABEL_25;
  }

LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  if (*(this + 446) != 1)
  {
    return 4294967115;
  }

  v20 = *(this + 3);
  if (v20)
  {
    v21 = IIOImageReadSession::mapData(v20);
  }

  else
  {
    v21 = 0;
  }

  if (a3 == 3)
  {
    BlockArray = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
    LODWORD(v29) = *(this + 77);
    v28 = v29;
    v30 = *(this + 78);
    v26 = v30;
    v25 = *(this + 79) * v30;
    BaseAddress = _ImageIO_Malloc(v25, *(this + 52), &v44, kImageMalloc_TGA_Data[0], 0, 0);
    v27 = 0;
  }

  else
  {
    if (a3 != 1 || !a4 || !*a4)
    {
      BlockArray = 0;
      goto LABEL_65;
    }

    IOSurfaceLock(*a4, 0, &seed);
    BaseAddress = IOSurfaceGetBaseAddress(*a4);
    Height = IOSurfaceGetHeight(*a4);
    BlockArray = 0;
    v25 = IOSurfaceGetBytesPerRow(*a4) * Height;
    v44 = v25;
    v26 = 0.0;
    v27 = 1;
    v28 = 0.0;
  }

  if (!BaseAddress)
  {
LABEL_56:
    if (!v27)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  memset(BaseAddress, 255, v25);
  if (*(this + 496) == 1)
  {
    v31 = TGAReadPlugin::decodeRLE(this, BaseAddress);
  }

  else
  {
    v31 = TGAReadPlugin::decodeUncompressed(this, BaseAddress);
  }

  BlockArray = v31;
  if (v31)
  {
    *(this + 26) = 0;
    if ((v27 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (*(this + 161) == 32 && *(this + 160) == 8)
  {
    v32 = *(this + 78);
    dest.data = BaseAddress;
    dest.height = v32;
    v33 = *(this + 79);
    dest.width = *(this + 77);
    dest.rowBytes = v33;
    if (*(this + 437))
    {
      *permuteMap = 50331906;
      vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
    }

    if ((*(this + 445) & 1) == 0 && !*(this + 437))
    {
      vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
    }
  }

  if (a3 != 3)
  {
    BlockArray = 0;
    goto LABEL_56;
  }

  v34 = 0;
  v45.origin.x = 0.0;
  v45.origin.y = 0.0;
  v45.size.width = v28;
  v45.size.height = v26;
  **(this + 12) = IIOReadPlugin::createImageBlock(this, BaseAddress, v25, v45, *(this + 79), *(this + 371));
  if (CGRectEqualToRect(*(this + 120), *MEMORY[0x1E695F050]))
  {
    v35 = 0;
  }

  else
  {
    v46.origin.x = 0.0;
    v46.origin.y = 0.0;
    v46.size.width = v28;
    v46.size.height = v26;
    *(&v35 - 1) = CGRectUnion(*(this + 120), v46);
    v34 = v36;
    v28 = v37;
    v26 = v38;
  }

  BlockArray = 0;
  *(this + 15) = v34;
  *(this + 16) = v35;
  *(this + 17) = v28;
  *(this + 18) = v26;
  if (v27)
  {
    BaseAddress = 0;
LABEL_61:
    IOSurfaceUnlock(*a4, 0, &seed);
LABEL_62:
    if (a3 == 3 && BaseAddress)
    {
      _ImageIO_Free(BaseAddress, v44);
    }
  }

LABEL_65:
  if (v21)
  {
    v39 = *(this + 3);
    if (v39)
    {
      IIOImageReadSession::unmapData(v39);
    }
  }

  return BlockArray;
}

void HDRFlexGTC_curveFit(uint64_t a1, uint64_t a2, char a3, uint64_t a4, _DWORD *a5)
{
  v8 = 0;
  v64 = *MEMORY[0x1E69E9840];
  v44 = 0.0;
  memset(v63, 0, 128);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  v10 = -1.0;
  memset(v45, 0, sizeof(v45));
  v43 = 0.0;
  do
  {
    v63[v8] = (v8 + 0.5) * 0.03125;
    v11 = binY(a1, v8, *(&a2 + 1));
    v12 = fmaxf(v11, v10);
    if (a3)
    {
      v10 = v12;
    }

    else
    {
      v10 = v11;
    }

    *(&v55 + v8++) = v10;
  }

  while (v8 != 32);
  v13 = 0;
  do
  {
    v14 = v13++;
    v15 = 2;
    do
    {
      LODWORD(v16) = v14 - v15;
      if (v14 >= v15)
      {
        v16 = v16;
      }

      else
      {
        v16 = 0;
      }

      if (v14 >= 31 - v15)
      {
        v17 = 32;
      }

      else
      {
        v17 = (v15 + v13);
      }

      v18 = v17 - v16;
      if (v17 <= v16)
      {
        v23 = 1;
      }

      else
      {
        v19 = 0;
        v20 = (a1 + 140 * v16);
        v21 = v16;
        do
        {
          v22 = *v20;
          v20 += 35;
          v19 += v22;
          ++v21;
        }

        while (v21 < v17);
        v23 = v19 < 201;
      }

      if (v15 > 0xE)
      {
        break;
      }

      ++v15;
    }

    while (v23);
    linearRegression(&v63[v16], &v55 + v16, v18, &v44, &v43);
    v24 = v43;
    v25 = v44 + (v43 * v63[v14]);
    *(&v47 + v14) = v25;
    *(v45 + v14) = v24;
    if (v25 > 1.0)
    {
      *(&v47 + v14) = 1065353216;
      *(v45 + v14) = 0;
    }
  }

  while (v13 != 32);
  v26 = 0;
  v59 = v51;
  v60 = v52;
  v61 = v53;
  v62 = v54;
  v55 = v47;
  v56 = v48;
  v57 = v49;
  v58 = v50;
  *a4 = 0;
  v27 = v45[0];
  *(a4 + 4) = fminf(fmaxf(*&v47 + (*v45 * -0.015625), 0.0), 1.0);
  *(a4 + 8) = v27;
  v28 = a4 + 28;
  v29 = 1;
  do
  {
    v30 = v29;
    v31 = v28;
    LODWORD(v32) = v26 + 2;
    if (v26 <= 29)
    {
      v32 = v26 + 2;
      v33 = 3;
      do
      {
        *(a4 + 28) = (v32 + 0.5) * 0.03125;
        *(a4 + 32) = *(&v47 + v32);
        *(a4 + 36) = *(v45 + v32);
        computeCubic(a4);
        v34 = 0.0;
        if (v32 >= v26)
        {
          v34 = 0.0;
          v35 = v26;
          v36 = &v55 + v26;
          v37 = v33;
          do
          {
            v38 = *v36++;
            v39 = *(a4 + 24) + (*(a4 + 20) + (*(a4 + 16) + *(a4 + 12) * ((v35 + 0.5) * 0.03125)) * ((v35 + 0.5) * 0.03125)) * ((v35 + 0.5) * 0.03125);
            v34 = v34 + ((v38 - v39) * (v38 - v39));
            ++v35;
            --v37;
          }

          while (v37);
        }

        if (sqrtf(v34 / (v32 - v26 + 1)) > *&a2)
        {
          break;
        }

        ++v32;
        ++v33;
      }

      while (v32 != 32);
    }

    if (v32 >= 32)
    {
      v26 = 32;
    }

    else
    {
      v26 = v32;
    }

    v40 = v26 - 1;
    *(a4 + 28) = (v40 + 0.5) * 0.03125;
    *(a4 + 32) = *(&v47 + v40);
    *(a4 + 36) = *(v45 + v40);
    computeCubic(a4);
    if (v32 > 31)
    {
      break;
    }

    v29 = v30 + 1;
    v28 = v31 + 28;
    a4 = v31;
  }

  while (v30 < 0x1E);
  *(v31 + 28) = 1065353216;
  v41 = HIDWORD(v46);
  *(v31 + 32) = fminf(fmaxf(*(&v54 + 3) + (*(&v46 + 3) * 0.015625), 0.0), 1.0);
  *(v31 + 36) = v41;
  computeCubic(v31);
  *a5 = v30 + 2;
}

float HDRFlexGTC_fillTable(float *a1, int a2, uint64_t a3, int a4, float result)
{
  v7 = a1;
  v8 = a2 - 1;
  if (a2 > 1)
  {
    v9 = (a2 - 1);
    v10 = a1;
    do
    {
      result = computeCubic(v10);
      v10 += 7;
      --v9;
    }

    while (v9);
  }

  if (a4 >= 1)
  {
    v11 = 0;
    v12 = &v7[7 * v8];
    v13 = v7[7];
    result = (a4 - 1);
    do
    {
      v14 = v11 / result;
      v15 = v14 > v13;
      if (v14 > v13 && (v7 + 7) < v12)
      {
        v17 = v7 + 14;
        v18 = v7 + 14;
        do
        {
          v19 = *v18;
          v18 += 7;
          v13 = v19;
          v15 = v14 > v19;
          v20 = v14 <= v19 || v17 >= v12;
          v17 = v18;
        }

        while (!v20);
        v7 = v18 - 14;
      }

      if (v15)
      {
        v14 = v13;
      }

      v21 = v7[6] + (v7[5] + (v7[4] + v7[3] * v14) * v14) * v14;
      *(a3 + 4 * v11++) = v21;
    }

    while (v11 != a4);
  }

  return result;
}

float computeCubic(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 8);
  v4 = *(a1 + 28);
  v5 = *(a1 + 36);
  v6 = (v3 + v5 - (*(a1 + 32) - v2 + *(a1 + 32) - v2) / (v4 - v1)) / ((v1 - v4) * (v1 - v4));
  v7 = (v5 - v3) / (v4 - v1 + v4 - v1) + (v1 + v4) * -1.5 * v6;
  v8 = v3 + v1 * -3.0 * v1 * v6 + v1 * -2.0 * v7;
  v9 = v2 + -(v1 * v1) * v1 * v6 + -(v1 * v1) * v7 - v1 * v8;
  *&v2 = v6;
  *&v7 = v7;
  *(a1 + 12) = LODWORD(v2);
  *(a1 + 16) = LODWORD(v7);
  *&v2 = v8;
  result = v9;
  *(a1 + 20) = LODWORD(v2);
  *(a1 + 24) = result;
  return result;
}

BOOL HDRFlexGTC_fillGaps(int *a1, uint64_t a2, char a3)
{
  LOBYTE(v4) = 0;
  v50 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = 0;
  v5 = *(&a2 + 1);
  v46 = 0;
  v6 = v49;
  v7 = -1;
  v8 = a1;
  memset(v49, 0, sizeof(v49));
  do
  {
    v9 = *v8;
    if (v4)
    {
      if (v9)
      {
        v4 = 0;
        *(v6 + 1) = v7;
        v6 += 8;
        goto LABEL_10;
      }
    }

    else
    {
      if (v9)
      {
        v4 = 0;
        goto LABEL_10;
      }

      if (v6 - v49 >= 121)
      {
        puts("too many gaps");
        LODWORD(v10) = 16;
LABEL_16:
        v11 = 0;
        v12 = 0;
        v44 = a1 + 3;
        for (i = v49; ; i += 2)
        {
          v14 = *i;
          v15 = i[1];
          v16 = v15 + 1;
          v17 = *i - 1;
          if (*i < 1)
          {
            if (v15 > 30)
            {
              puts("no gain samples");
              return v11;
            }

            if (!slopeScan(a1, v16, 1, &v48 + 1, &v48))
            {
              return v11;
            }

            multiBinLinearRegression(a1, SHIDWORD(v48), v48, &v47 + 1, &v47, &v46, a3 & 1, v5);
            v25 = *i;
            v26 = i[1];
            if (*i <= v26)
            {
              v27 = v47;
              v28 = &v44[35 * v25];
              v29 = v26 + 1;
              v30 = v46;
              do
              {
                v31 = *(&v27 + 1) + (*&v27 * ((v25 + 0.5) * 0.03125));
                v32 = vcvtms_s32_f32(v31 * 32.0);
                *(v28 - 3) = 1;
                if (v32 >= 31)
                {
                  v32 = 31;
                }

                *(v28 - 2) = v31;
                *(v28 - 1) = v30;
                v28[v32 & ~(v32 >> 31)] = 1;
                ++v25;
                v28 += 35;
              }

              while (v29 != v25);
            }
          }

          else if (v15 > 30)
          {
            if (!slopeScan(a1, v14 - 1, -1, &v48 + 1, &v48))
            {
              return v11;
            }

            multiBinLinearRegression(a1, SHIDWORD(v48), v48, &v47 + 1, &v47, &v46, a3 & 1, v5);
            v33 = (v17 + 0.5) * 0.03125;
            v34 = *(&v47 + 1);
            v35 = *&v47;
            if ((*(&v47 + 1) + *&v47) <= 1.0)
            {
              if (*&v47 < 0.0)
              {
                v34 = *(&v47 + 1) + (*&v47 * v33);
                *(&v47 + 1) = v34;
                LODWORD(v47) = 0;
                v35 = 0.0;
              }
            }

            else
            {
              v35 = fmaxf((1.0 - (*(&v47 + 1) + (*&v47 * v33))) / (1.0 - v33), 0.0);
              v34 = 1.0 - v35;
              *&v47 = v35;
              *(&v47 + 1) = 1.0 - v35;
            }

            v36 = *i;
            v37 = i[1];
            if (*i <= v37)
            {
              v38 = v46;
              v39 = &v44[35 * v36];
              v40 = v37 + 1;
              do
              {
                v41 = v34 + (v35 * ((v36 + 0.5) * 0.03125));
                v42 = vcvtms_s32_f32(v41 * 32.0);
                *(v39 - 3) = 50;
                if (v42 >= 31)
                {
                  v42 = 31;
                }

                *(v39 - 2) = v41;
                *(v39 - 1) = v38;
                v39[v42 & ~(v42 >> 31)] = 1;
                ++v36;
                v39 += 35;
              }

              while (v40 != v36);
            }
          }

          else if (v14 <= v15)
          {
            v18 = *&a1[35 * v17 + 1];
            v19 = vsub_f32(*&a1[35 * v16 + 1], v18);
            v20 = &v44[35 * v14];
            v21 = v15 - v14 + 1;
            v22 = 1;
            do
            {
              v23 = vmla_n_f32(v18, v19, v22 / (v16 - v17));
              v24 = vcvtms_s32_f32(32.0 * v23.f32[0]);
              if (v24 >= 31)
              {
                v24 = 31;
              }

              *(v20 - 1) = v23;
              *(v20 - 3) = 1;
              v20[v24 & ~(v24 >> 31)] = 1;
              v20 += 35;
              ++v22;
              --v21;
            }

            while (v21);
          }

          v11 = ++v12 >= v10;
          if (v12 == v10)
          {
            return v11;
          }
        }
      }

      *v6 = v7 + 1;
    }

    v4 = 1;
LABEL_10:
    v8 += 35;
    ++v7;
  }

  while (v7 != 31);
  if (v4)
  {
    *(v6 + 1) = 31;
    v6 += 8;
  }

  v10 = (v6 - v49) >> 3;
  if (v10 >= 1)
  {
    goto LABEL_16;
  }

  return 1;
}

float binY(uint64_t a1, int a2, float a3)
{
  v3 = (a1 + 140 * a2);
  v5 = *v3;
  v4 = v3 + 3;
  v6 = (a3 / 100.0) * v5;
  v7 = 0;
  if (v6 == 0.0)
  {
    while (!v4[v7])
    {
      if (++v7 == 32)
      {
        return 0.0;
      }
    }

    return vcvts_n_f32_u32(v7, 5uLL);
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = v4[v7];
      if (v6 >= v8 && v6 <= (v9 + v8))
      {
        return (((v6 - v8) / v9) + v7) * 0.03125;
      }

      ++v7;
      v8 += v9;
    }

    while (v7 != 32);
    return 0.0;
  }
}

float linearRegression(float *a1, float *a2, unsigned int a3, float *a4, float *a5)
{
  if (a3 <= 0)
  {
    v15 = 0.0;
    v16 = 0.0 / a3;
    v13 = v16;
    v14 = 0.0;
  }

  else
  {
    v5 = a3;
    v6 = 0.0;
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v10 = 0.0;
    do
    {
      v11 = *v8++;
      v10 = v10 + v11;
      v12 = *v9++;
      v6 = v6 + v12;
      --v7;
    }

    while (v7);
    v13 = v10 / a3;
    v14 = 0.0;
    v15 = 0.0;
    v16 = v6 / a3;
    do
    {
      v17 = *a1++;
      v18 = v17 - v16;
      v14 = v14 + (v18 * v18);
      v19 = *a2++;
      v15 = v15 + ((v19 - v13) * v18);
      --v5;
    }

    while (v5);
  }

  v20 = v15 / v14;
  v21 = v14 == 0.0;
  v22 = 0.0;
  if (!v21)
  {
    v22 = v20;
  }

  result = v13 - (v22 * v16);
  *a4 = result;
  *a5 = v22;
  return result;
}

uint64_t slopeScan(uint64_t a1, int a2, int a3, int *a4, int *a5)
{
  if (a3 == 1)
  {
    v5 = 32;
  }

  else
  {
    v5 = -1;
  }

  v6 = *(a1 + 140 * a2);
  v7 = a3 + a2;
  v8 = a3 + a2;
  v9 = v5 - v8;
  v10 = (a1 + 140 * v8);
  v11 = 1;
  do
  {
    v12 = v7;
    if (!v9)
    {
      break;
    }

    if (*v10 > 0)
    {
      ++v11;
    }

    v6 += *v10;
    v7 += a3;
    v9 -= a3;
    v10 += 35 * a3;
  }

  while (v6 < 200 || v11 < 5);
  v14 = v6 <= 199 || v11 <= 4;
  v15 = !v14;
  if (v14)
  {
    puts("too few samples");
  }

  else
  {
    if (a3 <= 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = a2;
    }

    *a4 = v16;
    if (a3 <= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = v12;
    }

    *a5 = v17;
  }

  return v15;
}

void multiBinLinearRegression(uint64_t a1, int a2, int a3, _DWORD *a4, _DWORD *a5, float *a6, int a7, float a8)
{
  v11 = 0;
  v34 = *MEMORY[0x1E69E9840];
  v31 = 0;
  memset(v33, 0, 128);
  memset(v32, 0, sizeof(v32));
  if (a2 <= a3)
  {
    v13 = a2;
    v11 = 0;
    v15 = a3 + 1;
    v16 = 140 * a2;
    v17 = -1.0;
    v18 = v33;
    v19 = v32;
    do
    {
      if (*(a1 + v16))
      {
        *v18++ = (v13 + 0.5) * 0.03125;
        v20 = binY(a1, v13, a8);
        v21 = fmaxf(v20, v17);
        if (a7)
        {
          v17 = v21;
        }

        else
        {
          v17 = v20;
        }

        *v19++ = v17;
        ++v11;
      }

      ++v13;
      v16 += 140;
    }

    while (v15 != v13);
  }

  linearRegression(v33, v32, v11, &v31 + 1, &v31);
  v22 = v31;
  *a4 = HIDWORD(v31);
  *a5 = v22;
  if (v11 < 1)
  {
    v24 = 0.0;
  }

  else
  {
    v23 = v11;
    v24 = 0.0;
    v25 = v32;
    v26 = v33;
    do
    {
      v27 = *v26++;
      v28 = *(&v22 + 1) + (*&v22 * v27);
      v29 = *v25++;
      v24 = v24 + ((v29 - v28) * (v29 - v28));
      --v23;
    }

    while (v23);
  }

  *a6 = sqrtf(v24 / v11);
}

uint64_t _TIFFMultiply32(uint64_t a1, unsigned int a2, unsigned int a3, const char *a4)
{
  if (!a3 || ((a3 * a2) & 0xFFFFFFFF00000000) == 0)
  {
    return a3 * a2;
  }

  TIFFErrorExtR(a1, a4, "Integer overflow in %s", a4);
  return 0;
}

unint64_t _TIFFMultiply64(uint64_t a1, unint64_t a2, unint64_t a3, const char *a4)
{
  if (!a3 || is_mul_ok(a3, a2))
  {
    return a3 * a2;
  }

  TIFFErrorExtR(a1, a4, "Integer overflow in %s", a4);
  return 0;
}

unint64_t _TIFFMultiplySSize(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 1 || a3 <= 0)
  {
    v4 = 0;
    if (a1 && a4)
    {
      TIFFErrorExtR(a1, a4, "Invalid argument to _TIFFMultiplySSize() in %s");
      return 0;
    }
  }

  else
  {
    if (0x7FFFFFFFFFFFFFFFuLL / a3 >= a2)
    {
      return a3 * a2;
    }

    v4 = 0;
    if (a1 && a4)
    {
      TIFFErrorExtR(a1, a4, "Integer overflow in %s");
      return 0;
    }
  }

  return v4;
}

uint64_t _TIFFCastUInt64ToSSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    a2 = 0;
    if (a1)
    {
      if (a3)
      {
        TIFFErrorExtR(a1, a3, "Integer overflow");
        return 0;
      }
    }
  }

  return a2;
}

void *_TIFFCheckRealloc(uint64_t *a1, void *ptr, unint64_t a3, uint64_t a4, const char *a5)
{
  if (a3 < 1 || a4 < 1 || 0x7FFFFFFFFFFFFFFFuLL / a4 < a3 || (result = malloc_type_realloc(ptr, a4 * a3, 0xE952D191uLL)) == 0)
  {
    TIFFErrorExtR(a1, *a1, "Failed to allocate memory for %s (%lld elements of %lld bytes each)", a5, a3, a4);
    return 0;
  }

  return result;
}

uint64_t TIFFVGetFieldDefaulted(uint64_t a1, uint64_t a2, _WORD **a3)
{
  v3 = a2;
  v20 = a3;
  result = TIFFVGetField(a1, a2, a3);
  if (result)
  {
    return 1;
  }

  if (v3 <= 317)
  {
    if (v3 <= 277)
    {
      if (v3 > 265)
      {
        switch(v3)
        {
          case 266:
            LOWORD(v8) = *(a1 + 126);
            break;
          case 274:
            LOWORD(v8) = *(a1 + 128);
            break;
          case 277:
            LOWORD(v8) = *(a1 + 130);
            break;
          default:
            return result;
        }

        goto LABEL_82;
      }

      if (v3 != 254)
      {
        if (v3 == 258)
        {
          LOWORD(v8) = *(a1 + 116);
        }

        else
        {
          if (v3 != 263)
          {
            return result;
          }

          LOWORD(v8) = *(a1 + 124);
        }

        goto LABEL_82;
      }

      v14 = *(a1 + 112);
    }

    else
    {
      if (v3 > 283)
      {
        if (v3 > 300)
        {
          if (v3 == 301)
          {
            v15 = *(a1 + 344);
            if (!v15)
            {
              if (!TIFFDefaultTransferFunction(a1 + 72))
              {
                TIFFErrorExtR(a1, *a1, "No space for TransferFunction tag");
                return 0;
              }

              v15 = *(a1 + 344);
            }

            v16 = v20;
            v21 = v20 + 1;
            **v16 = v15;
            if (*(a1 + 130) - *(a1 + 212) < 2)
            {
              return 1;
            }

            v17 = v21;
            v20 = v21 + 1;
            **v17 = *(a1 + 352);
            v7 = *(a1 + 360);
            goto LABEL_67;
          }

          if (v3 != 317)
          {
            return result;
          }

          v11 = *(a1 + 1096);
          if (!v11)
          {
            TIFFErrorExtR(a1, *a1, "Cannot get Predictor tag as plugin is not configured");
            result = 0;
            **v20 = 0;
            return result;
          }

          v8 = *v11;
        }

        else if (v3 == 284)
        {
          LOWORD(v8) = *(a1 + 170);
        }

        else
        {
          if (v3 != 296)
          {
            return result;
          }

          LOWORD(v8) = *(a1 + 168);
        }

        goto LABEL_82;
      }

      if (v3 != 278)
      {
        if (v3 == 280)
        {
          LOWORD(v8) = *(a1 + 136);
        }

        else
        {
          if (v3 != 281)
          {
            return result;
          }

          v9 = *(a1 + 116);
          if (v9 <= 0x10)
          {
            v10 = ~(-1 << v9);
          }

          else
          {
            LOWORD(v10) = -1;
          }

          if (*(a1 + 116))
          {
            LOWORD(v8) = v10;
          }

          else
          {
            LOWORD(v8) = 0;
          }
        }

        goto LABEL_82;
      }

      v14 = *(a1 + 132);
    }

    goto LABEL_77;
  }

  if (v3 > 529)
  {
    if (v3 <= 32994)
    {
      switch(v3)
      {
        case 530:
          v19 = v20++;
          **v19 = *(a1 + 336);
          LOWORD(v8) = *(a1 + 338);
          break;
        case 531:
          LOWORD(v8) = *(a1 + 340);
          break;
        case 532:
          v7 = *(a1 + 368);
          if (!v7)
          {
            result = TIFFDefaultRefBlackWhite(a1 + 72);
            if (!result)
            {
              return result;
            }

            v7 = *(a1 + 368);
          }

          goto LABEL_67;
        default:
          return result;
      }

LABEL_82:
      **v20 = v8;
      return 1;
    }

    if (v3 <= 32996)
    {
      if (v3 == 32995)
      {
        LOWORD(v8) = *(a1 + 212) == 1 && **(a1 + 216) == 1;
      }

      else
      {
        LOWORD(v8) = *(a1 + 118) - 1;
      }

      goto LABEL_82;
    }

    if (v3 == 32997)
    {
      v14 = *(a1 + 96);
    }

    else
    {
      if (v3 != 32998)
      {
        return result;
      }

      v14 = *(a1 + 108);
    }

LABEL_77:
    **v20 = v14;
    return 1;
  }

  if (v3 > 335)
  {
    if (v3 <= 338)
    {
      if (v3 != 336)
      {
        if (v3 != 338)
        {
          return result;
        }

        v6 = v20++;
        **v6 = *(a1 + 212);
        v7 = *(a1 + 216);
LABEL_67:
        **v20 = v7;
        return 1;
      }

      v18 = v20++;
      **v18 = 0;
      v8 = ~(-1 << *(a1 + 116));
      goto LABEL_82;
    }

    if (v3 == 339)
    {
      LOWORD(v8) = *(a1 + 118);
      goto LABEL_82;
    }

    if (v3 != 529)
    {
      return result;
    }

    v12 = *v20;
    v13 = &TIFFVGetFieldDefaulted_ycbcrcoeffs;
LABEL_79:
    *v12 = v13;
    return 1;
  }

  switch(v3)
  {
    case 318:
      v12 = *v20;
      v13 = &TIFFVGetFieldDefaulted_whitepoint;
      goto LABEL_79;
    case 332:
      result = 1;
      **v20 = 1;
      return result;
    case 334:
      **v20 = 4;
      return 1;
  }

  return result;
}

uint64_t TIFFDefaultTransferFunction(uint64_t a1)
{
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  v1 = *(a1 + 44);
  if (v1 > 0x3D)
  {
    return 0;
  }

  v4 = 2 << v1;
  result = malloc_type_malloc(2 << v1, 0x1000040BDFB0063uLL);
  *(a1 + 272) = result;
  if (result)
  {
    v5 = result;
    *result = 0;
    if (v1)
    {
      v6 = 0;
      v7 = 1 << v1;
      v8 = (1 << v1);
      if ((1 << v1) <= 2)
      {
        v7 = 2;
      }

      v9 = vdupq_n_s64(v7 - 2);
      v10 = (v7 + 6) & 0xFFFFFFFFFFFFFFF8;
      v33 = vdupq_lane_s64(COERCE__INT64(v8 + -1.0), 0);
      v34 = vdupq_n_s64(0x40EFFFE000000000uLL);
      __asm { FMOV            V5.2D, #0.5 }

      v35 = v9;
      v32 = _Q5;
      do
      {
        v46 = vdupq_n_s64(v6);
        v16 = vcgeq_u64(v9, vorrq_s8(v46, xmmword_186205EC0));
        v17 = vmovn_s64(v16);
        *v16.i8 = vuzp1_s16(v17, *v16.i8);
        v38 = vuzp1_s8(*v16.i8, *v16.i8).u8[0];
        v47 = vaddq_s64(v46, xmmword_1862272A0);
        v45 = vaddq_s64(v46, xmmword_186227290);
        v41 = vaddq_s64(v46, xmmword_186227280);
        v39 = vaddq_s64(v46, xmmword_186227270);
        v50 = vdivq_f64(vcvtq_f64_u64(v41), v33);
        v52 = vdivq_f64(vcvtq_f64_u64(v39), v33);
        v48 = vdivq_f64(vcvtq_f64_u64(v45), v33);
        v42 = vdivq_f64(vcvtq_f64_u64(v47), v33);
        v44 = pow(v42.f64[1], 2.2);
        v43 = pow(v42.f64[0], 2.2);
        v40 = pow(v48.f64[1], 2.2);
        v49 = pow(v48.f64[0], 2.2);
        v37 = pow(v50.f64[1], 2.2);
        v51 = pow(v50.f64[0], 2.2);
        v36 = pow(v52.f64[1], 2.2);
        v18.f64[0] = pow(v52.f64[0], 2.2);
        v18.f64[1] = v36;
        v19 = vrndmq_f64(vmlaq_f64(v32, v34, v18));
        if (v38)
        {
          *(v5 + 2 * v39.i64[0]) = v19.f64[0];
        }

        if (vuzp1_s8(vuzp1_s16(v17, *&v19), *&v19).i8[1])
        {
          *(v5 + 2 * v39.i64[1]) = v19.f64[1];
        }

        v20.f64[0] = v51;
        v20.f64[1] = v37;
        v21 = vrndmq_f64(vmlaq_f64(v32, v34, v20));
        v9 = v35;
        if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v35, vorrq_s8(*&v46, xmmword_186205EB0)))), *&v21).i8[2])
        {
          *(v5 + 2 * v41.i64[0]) = v21.f64[0];
          *(v5 + 2 * v41.i64[1]) = v21.f64[1];
        }

        v22.f64[0] = v49;
        v22.f64[1] = v40;
        v23 = vrndmq_f64(vmlaq_f64(v32, v34, v22));
        v24 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v46, xmmword_186205EA0)));
        if (vuzp1_s8(*&v23, vuzp1_s16(v24, *&v23)).i32[1])
        {
          *(v5 + 2 * v45.i64[0]) = v23.f64[0];
        }

        if (vuzp1_s8(*&v23, vuzp1_s16(v24, *&v23)).i8[5])
        {
          *(v5 + 2 * v45.i64[1]) = v23.f64[1];
        }

        v25.f64[0] = v43;
        v25.f64[1] = v44;
        v26 = vrndmq_f64(vmlaq_f64(v32, v34, v25));
        if (vuzp1_s8(*&v26, vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v35, vorrq_s8(*&v46, xmmword_186205E90))))).i8[6])
        {
          *(v5 + 2 * v47.i64[0]) = v26.f64[0];
          *(v5 + 2 * v47.i64[1]) = v26.f64[1];
        }

        v6 += 8;
      }

      while (v10 != v6);
    }

    if (*(a1 + 58) - *(a1 + 140) < 2)
    {
      return 1;
    }

    v27 = malloc_type_malloc(v4, 0x1000040BDFB0063uLL);
    *(a1 + 280) = v27;
    if (v27)
    {
      _TIFFmemcpy(v27, *(a1 + 272), v4);
      v28 = malloc_type_malloc(v4, 0x1000040BDFB0063uLL);
      *(a1 + 288) = v28;
      if (v28)
      {
        _TIFFmemcpy(v28, *(a1 + 272), v4);
        return 1;
      }
    }

    v29 = *(a1 + 272);
    if (v29)
    {
      free(v29);
    }

    v30 = *(a1 + 280);
    if (v30)
    {
      free(v30);
    }

    v31 = *(a1 + 288);
    if (v31)
    {
      free(v31);
    }

    result = 0;
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
    *(a1 + 288) = 0;
  }

  return result;
}

uint64_t TIFFDefaultRefBlackWhite(uint64_t a1)
{
  result = malloc_type_malloc(0x18uLL, 0x100004052888210uLL);
  *(a1 + 296) = result;
  if (result)
  {
    if (*(a1 + 50) == 6)
    {
      *(result + 16) = 0x437F000043000000;
      *result = xmmword_1862272B0;
    }

    else
    {
      v3 = ~(-1 << *(a1 + 44));
      *result = 0;
      *(result + 4) = v3;
      *(result + 8) = 0;
      *(result + 12) = v3;
      *(result + 16) = 0;
      *(result + 20) = v3;
    }

    return 1;
  }

  return result;
}

float _TIFFClampDoubleToFloat(double a1)
{
  if (a1 > 3.40282347e38)
  {
    return 3.4028e38;
  }

  if (a1 < -3.40282347e38)
  {
    return -3.4028e38;
  }

  return a1;
}

void ASTCReadPlugin::~ASTCReadPlugin(ASTCReadPlugin *this)
{
  *this = &unk_1EF4DD770;
  CommonASTCReadPlugin::~CommonASTCReadPlugin(this);
}

{
  *this = &unk_1EF4DD770;
  CommonASTCReadPlugin::~CommonASTCReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t ASTCReadPlugin::loadDataFromXPCObject(ASTCReadPlugin *this, void *a2)
{
  DataFromXPCObject = CommonASTCReadPlugin::loadDataFromXPCObject(this, a2);
  if (!DataFromXPCObject)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_astc", &length);
    if (length == 22)
    {
      DataFromXPCObject = 0;
      v6 = *data;
      *(this + 526) = *(data + 14);
      *(this + 32) = v6;
    }

    else
    {
      DataFromXPCObject = 4294967246;
    }

    v7 = *(this + 62);
    if (v7)
    {
      (*(*v7 + 16))(v7, a2);
    }
  }

  return DataFromXPCObject;
}

uint64_t ASTCReadPlugin::saveDataToXPCObject(ASTCReadPlugin *this, void *a2)
{
  v4 = CommonASTCReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_astc", this + 512, 0x16uLL);
    v5 = *(this + 62);
    if (v5)
    {
      (*(*v5 + 24))(v5, a2);
    }
  }

  return v4;
}

void ASTCReadPlugin::addImageTypeIdentifier(ASTCReadPlugin *this, CGImage *a2, const __CFString *a3, int a4)
{
  if (*(this + 528) == 1)
  {
    CGImageSetProperty();
    IIOString::IIOString(v6, 1263818784);
  }

  else
  {
    CGImageSetProperty();
    IIOString::IIOString(v6, *(this + 55));
  }

  CGImageSetProperty();
  IIOString::~IIOString(v6);
  IIONumber::IIONumber(v6, a4);
  CGImageSetProperty();
  IIONumber::~IIONumber(v6);
}

void sub_1860BE274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t ASTCReadPlugin::extractMetadata(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 60);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  IIOScanner::IIOScanner(&v21, *(a1 + 24));
  if (v3 + 64 < v22)
  {
    v4 = *(&v21 + 1) + 64;
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    IIOScanner::IIOScanner(&v16, (*(&v21 + 1) + 64), v3, *(a1 + 372));
    while (1)
    {
      if (*(&v17 + 1) + 4 >= v3 || (Val32 = IIOScanner::getVal32(&v16), v6 = *(&v17 + 1), v3 - *(&v17 + 1) <= Val32) || (v7 = (Val32 + 3) & 0xFFFFFFFC, v8 = *(&v17 + 1) + v7, *(&v17 + 1) + v7 > v3) || *(a1 + 200) <= v7)
      {
LABEL_37:
        v14 = 1;
        IIOScanner::~IIOScanner(&v16);
        goto LABEL_38;
      }

      if (!strncmp((v4 + *(&v17 + 1)), "KTXorientation", v7))
      {
        IIOScanner::skip(&v16, 0xFuLL);
        v10 = *(&v17 + 1);
        v11 = v3 - *(&v17 + 1);
        if (v3 - *(&v17 + 1) < 7)
        {
          goto LABEL_33;
        }

        if (!strncmp((v4 + *(&v17 + 1)), "S=r,T=d", v7))
        {
LABEL_21:
          v12 = 1;
LABEL_32:
          *(a1 + 533) = v12;
          goto LABEL_33;
        }

        if (!strncmp((v4 + v10), "S=r,T=u", v7))
        {
          v12 = 4;
          goto LABEL_32;
        }

        if (v11 >= 0xC && (!strncmp((v4 + v10), "S=r,T=d,R=i", v7) || !strncmp((v4 + v10), "S=r,T=u,R=o", v7)))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (!strncmp((v4 + v6), "ColorSpace_APPLE", v7))
        {
          IIOScanner::skip(&v16, 0x11uLL);
          Val8 = IIOScanner::getVal8(&v16);
        }

        else
        {
          if (!strncmp((v4 + v6), "Compression_APPLE", v7))
          {
            IIOScanner::skip(&v16, 0x12uLL);
LABEL_26:
            *(a1 + 532) = 1;
            goto LABEL_33;
          }

          if (!strncmp((v4 + v6), "AlphaInfo_APPLE", v7))
          {
            IIOScanner::skip(&v16, 0x10uLL);
            v9 = IIOScanner::getVal8(&v16);
LABEL_28:
            if ((v9 & 0xF8) == 0x30)
            {
              *(a1 + 531) = v9 - 48;
            }

            goto LABEL_33;
          }

          if (strncmp((v4 + v6), "ColorSpace", v7))
          {
            if (!strncmp((v4 + v6), "Compression", v7))
            {
              IIOScanner::skip(&v16, 0xCuLL);
              goto LABEL_26;
            }

            if (strncmp((v4 + v6), "AlphaInfo", v7))
            {
              goto LABEL_33;
            }

            IIOScanner::skip(&v16, 0xAuLL);
            v9 = IIOScanner::getVal8(&v16);
            goto LABEL_28;
          }

          IIOScanner::skip(&v16, 0xBuLL);
          Val8 = IIOScanner::getVal8(&v16);
        }

        if ((Val8 - 48) <= 4)
        {
          *(a1 + 530) = Val8 - 48;
        }
      }

LABEL_33:
      if (v8 >= v3)
      {
        goto LABEL_37;
      }

      IIOScanner::seek(&v16, v8);
    }
  }

  _cg_jpeg_mem_term("extractMetadata", 153, "*** invalid KTX file: KTXHeader: %d  metadatSize: %d    fileSize: %d\n");
  v14 = 0;
LABEL_38:
  IIOScanner::~IIOScanner(&v21);
  return v14;
}

void sub_1860BE5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

void sub_1860BE5F0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860BE5A4);
}

void sub_1860BE620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  IIOScanner::~IIOScanner(va);
  JUMPOUT(0x1860BE5E0);
}

unint64_t ASTCReadPlugin::calculateKTXOffsetToRequestedImage(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 334);
  v10 = 0;
  v6 = *(a2 + 48);
  if (v5)
  {
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = *(a2 + 52);
    }

    do
    {
      IIOImageReadSession::seek(*(a1 + 24), a3, 0);
      IIOImageReadSession::getBytes(*(a1 + 24), &v10, 4);
      a3 += v10 * v7 + 4;
      --v5;
    }

    while (v5);
  }

  IIOImageReadSession::seek(*(a1 + 24), a3, 0);
  IIOImageReadSession::getBytes(*(a1 + 24), &v10, 4);
  v8 = v10;
  if (v6)
  {
    v8 = v10 / v6;
  }

  return a3 + (*(a1 + 224) * v8) + 4;
}

uint64_t ASTCReadPlugin::initialize(ASTCReadPlugin *this, IIODictionary *a2)
{
  v92 = *MEMORY[0x1E69E9840];
  v3 = *(this + 62);
  if (v3)
  {
  }

  else
  {
    v4 = 0;
  }

  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  IIOScanner::IIOScanner(&v78, *(this + 3));
  if ((*(this + 369) & 1) == 0)
  {
    goto LABEL_132;
  }

  v5 = v79;
  if (IIOScanner::getBytesAtOffset(&v78, this + 512, *(this + 26), 0x10uLL) != 16)
  {
    goto LABEL_132;
  }

  if (*(this + 128) == 1554098963)
  {
    *(this + 264) = 0;
    v9 = *(this + 516);
    v10 = *(this + 517) | (v9 << 8);
    if (v10 > 2055)
    {
      if (v10 <= 2567)
      {
        switch(v10)
        {
          case 2056:
            v11 = 212;
            goto LABEL_94;
          case 2565:
            v11 = 213;
            goto LABEL_94;
          case 2566:
            v11 = 214;
            goto LABEL_94;
        }
      }

      else if (v10 > 3081)
      {
        if (v10 == 3082)
        {
          v11 = 217;
          goto LABEL_94;
        }

        if (v10 == 3084)
        {
          v11 = 218;
          goto LABEL_94;
        }
      }

      else
      {
        if (v10 == 2568)
        {
          v11 = 215;
          goto LABEL_94;
        }

        if (v10 == 2570)
        {
          v11 = 216;
          goto LABEL_94;
        }
      }
    }

    else if (v10 <= 1540)
    {
      switch(v10)
      {
        case 1028:
          v11 = 204;
          goto LABEL_94;
        case 1284:
          v11 = 205;
          goto LABEL_94;
        case 1285:
          v11 = 206;
          goto LABEL_94;
      }
    }

    else if (v10 > 2052)
    {
      if (v10 == 2053)
      {
        v11 = 210;
        goto LABEL_94;
      }

      if (v10 == 2054)
      {
        v11 = 211;
        goto LABEL_94;
      }
    }

    else
    {
      if (v10 == 1541)
      {
        v11 = 207;
        goto LABEL_94;
      }

      if (v10 == 1542)
      {
        v11 = 208;
LABEL_94:
        *(this + 119) = v11;
        *(this + 26) = 16;
        ASTCTextureImp::setTextureBaseOffset(v4, 16);
        v38 = *(this + 519) | (*(this + 521) << 16);
        *(this + 116) = v38;
        v39 = *(this + 261) | (*(this + 524) << 16);
        *(this + 117) = v39;
        *(this + 118) = *(this + 525) | (*(this + 527) << 16);
        v40 = (v38 + *(this + 516) - 1) / *(this + 516);
        *(this + 120) = v40;
        v41 = (v39 + *(this + 517) - 1) / *(this + 517);
        *(this + 121) = v41;
        if (*(this + 25) < *(this + 26) + (16 * v40 * v41))
        {
          _cg_jpeg_mem_term("initialize", 364, "*** bad ASTC %dx%d data [%d x %d] vs. %ld bytes - expected %ld bytes\n");
          goto LABEL_132;
        }

        v42 = *(this + 7);
        IIONumber::IIONumber(v83, 4);
        IIODictionary::setObjectForKey(v42, v83, @"Orientation");
        IIONumber::~IIONumber(v83);
        goto LABEL_97;
      }
    }

    LogError("initialize", 343, "*** can't handle ASTC image with block dimension (%d/%d/%d)\n", v9, *(this + 517), *(this + 518));
    goto LABEL_132;
  }

  v90 = 0u;
  v91 = 0u;
  __dst = 0u;
  v89 = 0u;
  if (IIOScanner::getBytesAtOffset(&v78, &__dst, *(this + 26), 0x40uLL) != 64)
  {
LABEL_132:
    kdebug_trace();
    v57 = 4294967246;
    goto LABEL_133;
  }

  if (!IsKTXHeader(&__dst))
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    *v83 = 0u;
    if (IIOScanner::getBytesAtOffset(&v78, v83, *(this + 26), 0x50uLL) != 80 || !IsKTX2Header(v83))
    {
      goto LABEL_132;
    }

    if (v79 <= v85)
    {
      v71 = "*** ERROR: Invalid numberOfArrayElements (%d).";
      v72 = 497;
    }

    else if (v79 <= v86)
    {
      v71 = "*** ERROR: Invalid dfdOffset (%d).";
      v72 = 498;
    }

    else if (v79 <= DWORD1(v86))
    {
      v71 = "*** ERROR: Invalid dfdLength (%d).";
      v72 = 499;
    }

    else if (v79 <= DWORD2(v86))
    {
      v71 = "*** ERROR: Invalid kvdOffset (%d).";
      v72 = 500;
    }

    else if (v79 <= HIDWORD(v86))
    {
      v71 = "*** ERROR: Invalid kvdLength (%d).";
      v72 = 501;
    }

    else if (v87 >= v79)
    {
      v71 = "*** ERROR: Invalid scgdOffset (%d).";
      v72 = 502;
    }

    else
    {
      if (*(&v87 + 1) < v79)
      {
        *(this + 264) = 256;
        if (v5 <= DWORD1(v84) || v5 <= DWORD2(v84) || DWORD2(v85) > 0x10)
        {
          goto LABEL_132;
        }

        v12 = ASTCTextureImp::MetalFormatForVulkanFormat(HIDWORD(v83[1]));
        *(this + 119) = v12;
        if ((v12 - 222) <= 0xE)
        {
          ASTCTextureImp::set_needs_hdr(v4, 1);
          v12 = *(this + 119);
        }

        *(this + 372) = 0;
        v15 = DWORD1(v84);
        v14 = DWORD2(v84);
        *(this + 116) = DWORD1(v84);
        *(this + 117) = v14;
        *(this + 118) = 1;
        v16 = *(this + 56);
        LOBYTE(v76) = 0;
        v77 = 0;
        ASTCTextureImp::GetXYdimFromMetalFormat(v12, &v76, &v77, v13);
        v17 = v76;
        if (!v76)
        {
          goto LABEL_132;
        }

        *(this + 516) = v76;
        v18 = v77;
        *(this + 517) = v77;
        *(this + 518) = 1;
        *(this + 519) = v15 >> v16;
        *(this + 521) = v15 >> v16 >> 16;
        *(this + 261) = v14 >> v16;
        *(this + 524) = v14 >> v16 >> 16;
        *(this + 525) = 1;
        *(this + 527) = 0;
        v19 = (v17 + *(this + 116) - 1) / v17;
        *(this + 120) = v19;
        v20 = (v18 + *(this + 117) - 1) / v18;
        *(this + 121) = v20;
        if (v5 < v19 || v5 < v20)
        {
          goto LABEL_132;
        }

        goto LABEL_97;
      }

      v71 = "*** ERROR: Invalid scgdLength (%d).";
      v72 = 503;
    }

    _cg_jpeg_mem_term("initialize", v72, v71);
    goto LABEL_132;
  }

  *(this + 264) = 1;
  SwapKTXHeader(&__dst);
  *(this + 167) = 0;
  v6 = IIODictionary::containsKey(*(this + 6), @"kCGImageSourceMipmapLevel");
  v7 = *(this + 6);
  if (v6)
  {
    LOWORD(Uint32ForKey) = IIODictionary::getUint32ForKey(v7, @"kCGImageSourceMipmapLevel");
LABEL_51:
    *(this + 167) = Uint32ForKey;
    goto LABEL_59;
  }

  if (IIODictionary::containsKey(v7, @"kCGImageSourceSubsampleFactor"))
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(*(this + 6), @"kCGImageSourceSubsampleFactor");
    if (Uint32ForKey)
    {
      Uint32ForKey = log2(Uint32ForKey);
    }

    goto LABEL_51;
  }

  LOWORD(Uint32ForKey) = *(this + 167);
LABEL_59:
  v21 = DWORD2(v91);
  if (DWORD2(v91) <= Uint32ForKey)
  {
    v22 = WORD4(v91) - 1;
    if (!DWORD2(v91))
    {
      v22 = 0;
    }

    *(this + 167) = v22;
  }

  else
  {
    LOBYTE(v22) = Uint32ForKey;
  }

  v23 = (DWORD1(v90) >> v22);
  LODWORD(v24) = DWORD2(v90) >> v22;
  if (v24)
  {
    v25 = 1;
  }

  else
  {
    v25 = v23 == 0;
  }

  if (v25)
  {
    v24 = v24;
  }

  else
  {
    v24 = 1;
  }

  *(this + 61) = v23;
  *(this + 62) = v24;
  if (v5 <= v23 || v21 > 0x10 || v5 <= v24)
  {
    goto LABEL_132;
  }

  if (DWORD1(v91) != 1 && DWORD1(v91) != 6)
  {
    _cg_jpeg_mem_term("initialize", 414, "*** Error: invalid numberOfFaces (%ld)");
    goto LABEL_132;
  }

  if (HIDWORD(v90) > 0x1F)
  {
    goto LABEL_132;
  }

  v26 = ASTCTextureImp::MetalFormatForGLFormat(HIDWORD(v89));
  *(this + 119) = v26;
  *(this + 372) = __dst.i32[3] == 67305985;
  v28 = *(this + 61);
  v27 = *(this + 62);
  *(this + 116) = v28;
  *(this + 117) = v27;
  *(this + 118) = 1;
  LOBYTE(v76) = 0;
  v77 = 0;
  ASTCTextureImp::GetXYdimFromMetalFormat(v26, &v76, &v77, v29);
  v30 = v76;
  if (!v76)
  {
    goto LABEL_132;
  }

  *(this + 516) = v76;
  v31 = v77;
  *(this + 517) = v77;
  *(this + 518) = 1;
  *(this + 519) = v28;
  *(this + 521) = BYTE2(v28);
  *(this + 261) = v27;
  *(this + 524) = BYTE2(v27);
  *(this + 525) = 1;
  *(this + 527) = 0;
  v32 = (v30 + *(this + 116) - 1) / v30;
  *(this + 120) = v32;
  v33 = (v31 + *(this + 117) - 1) / v31;
  *(this + 121) = v33;
  if (v5 < v32 || v5 < v33 || !ASTCReadPlugin::extractMetadata(this, &__dst))
  {
    goto LABEL_132;
  }

  v34 = *(this + 533);
  if (v34 != 255)
  {
    v35 = *(this + 7);
    IIONumber::IIONumber(v83, v34);
    IIODictionary::setObjectForKey(v35, v83, @"Orientation");
    IIONumber::~IIONumber(v83);
  }

  v36 = HIDWORD(v91) + 64;
  *(this + 26) = v36;
  v37 = ASTCReadPlugin::calculateKTXOffsetToRequestedImage(this, &__dst, v36);
  *(this + 26) = v37;
  ASTCTextureImp::setTextureBaseOffset(v4, v37);
  if (!*(this + 532) && *(this + 25) < *(this + 26) + (16 * *(this + 120) * *(this + 121)))
  {
    _cg_jpeg_mem_term("initialize", 481, "*** bad KTX/ASTC %dx%d data [%d x %d] vs. %ld bytes - expected %ld bytes\n");
    goto LABEL_132;
  }

LABEL_97:
  ASTCTextureImp::setTextureDimension(v4, *(this + 116), *(this + 117));
  ASTCTextureImp::setMetalFormat(v4, *(this + 119));
  ASTCTextureImp::setDim(v4, *(this + 516), *(this + 517));
  ASTCTextureImp::setBlocks(v4, *(this + 120), *(this + 121));
  if (*(this + 528) == 1)
  {
    IIOScanner::seek(&v78, *(this + 26));
    if (IIOScanner::getVal32(&v78) == 1397119564)
    {
      v43 = *(this + 26);
    }

    else
    {
      IIOScanner::getVal32(&v78);
      v43 = *(this + 26) + 4;
    }

    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    KTX with LZFSE compressed ASTC data\n");
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("                    lzfseOffset: %d\n", v43);
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("                        _rpd._offset: %d\n", *(this + 26));
        }
      }
    }
  }

  else
  {
    v43 = 16;
  }

  if ((*(this + 529) & 1) == 0)
  {
    IIOScanner::seek(&v78, v43);
    if (IIOScanner::getVal32(&v78) == 1397119564)
    {
      ASTCTextureImp::setInputIsLZFSECompressed(v4, 1);
      LODWORD(v83[0]) = 0;
      v44 = v43 + 4;
      IIOScanner::getBytesAtOffset(&v78, v83, v43 + 4, 4uLL);
      ASTCTextureImp::setCompressedLZFSESize(v4, v83[0]);
      v45 = v43 + 8;
      ASTCTextureImp::setCompressedLZFSEDataOffset(v4, v45);
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("                      lzfseSize: %d\n", LODWORD(v83[0]));
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("                lzfseDataOffset: %d\n", v45);
        }
      }

      if (LODWORD(v83[0]) >= 9)
      {
        __dst.i32[0] = 0;
        v76 = 0;
        IIOScanner::getBytesAtOffset(&v78, &__dst, v45, 4uLL);
        IIOScanner::getBytesAtOffset(&v78, &v76, v44 + LODWORD(v83[0]), 4uLL);
        v46 = __dst.i32[0];
        if (__dst.i32[0] != 846755426 || v76 != 611874402)
        {
          if ((__dst.i32[0] >> 24) > 0x7F)
          {
            __maskrune(__dst.i32[0] >> 24, 0x40000uLL);
            v46 = __dst.i32[0];
          }

          v61 = v46 << 8 >> 24;
          if (v61 > 0x7F)
          {
            __maskrune(v61, 0x40000uLL);
            LOWORD(v46) = __dst.i16[0];
          }

          v62 = v46 >> 8;
          if (v62 > 0x7F)
          {
            __maskrune(v62, 0x40000uLL);
            LOBYTE(v46) = __dst.i8[0];
          }

          if (v46 > 0x7F)
          {
            __maskrune(v46, 0x40000uLL);
          }

          v63 = v76;
          if ((v76 >> 24) > 0x7F)
          {
            __maskrune(v76 >> 24, 0x40000uLL);
            v63 = v76;
          }

          v64 = v63 << 8 >> 24;
          if (v64 > 0x7F)
          {
            __maskrune(v64, 0x40000uLL);
            LOWORD(v63) = v76;
          }

          v65 = v63 >> 8;
          if (v65 > 0x7F)
          {
            __maskrune(v65, 0x40000uLL);
            LOBYTE(v63) = v76;
          }

          if (v63 > 0x7F)
          {
            __maskrune(v63, 0x40000uLL);
          }

          _cg_jpeg_mem_term("initialize", 630, "    ERROR: bad LZFSE data (does not start/end with 'bvx2'/'bvx$'  [%c%c%c%c][%c%c%c%c])\n");
          goto LABEL_132;
        }
      }
    }
  }

  v47 = *(this + 516);
  v48 = *(this + 517);
  v49 = *(this + 518);
  if ((v47 - 13) < 0xFFFFFFF6 || (v48 - 13) < 0xFFFFFFF6 || (v49 < 3 ? (v50 = v49 == 1) : (v50 = 1), v50 ? (v51 = 0) : (v51 = 1), v49 > 0xC || v51))
  {
    _cg_jpeg_mem_term("initialize", 647, "xyz-dim not supported:  xdim:%d  ydim:%d  zdim:%d\n");
    goto LABEL_132;
  }

  v52 = v79 - *(this + 26);
  if (v52 < 0)
  {
    _cg_jpeg_mem_term("initialize", 655, "bad file _offset: %ld  fileSize: %ld\n");
    goto LABEL_132;
  }

  v53 = *(this + 116);
  v54 = *(this + 117);
  isInputLZFSECompressed = ASTCTextureImp::isInputLZFSECompressed(v4);
  if (16 * (v47 + v53 - 1) / v47 * ((v48 + v54 - 1) / v48) <= v52)
  {
    v56 = 1;
  }

  else
  {
    v56 = isInputLZFSECompressed;
  }

  if ((v56 & 1) == 0)
  {
    _cg_jpeg_mem_term("initialize", 668, "bad file size:  xdim:%d  ydim:%d  zdim:%d  size:%dx%d  dataSize:%d  expected:%d\n");
    goto LABEL_132;
  }

  if ((*(this + 525) | (*(this + 527) << 16)) >= 2u)
  {
    _cg_jpeg_mem_term("initialize", 681, "zsize '%d' not supported\n");
    goto LABEL_132;
  }

  v59 = *(this + 519) | (*(this + 521) << 16);
  v60 = *(this + 261) | (*(this + 524) << 16);
  if (v59 && ((v59 * v60) & 0xFFFFFFFF00000000) != 0)
  {
    _cg_jpeg_mem_term("initialize", 687, "overflow: xsize: %d    ysize: %d\n");
    goto LABEL_132;
  }

  *(this + 61) = v59;
  *(this + 62) = v60;
  *(this + 64) = 2097160;
  *(this + 130) = 4;
  *(this + 85) = 1380401696;
  v66 = *(this + 531);
  if (v66 == 255)
  {
    v67 = 3;
  }

  else
  {
    v67 = v66 & 0x1F;
  }

  *(this + 262) = v67;
  *(this + 20) = 0;
  v68 = *(this + 530);
  if (v68 <= 4)
  {
    *(this + 20) = CGColorSpaceCreateWithName(**(&unk_1E6F41B98 + v68));
  }

  *(this + 63) = 4 * v59;
  *(this + 374) = 0;
  if (*(this + 3))
  {
    if ((ASTCTextureImp::isInputLZFSECompressed(v4) & 1) == 0 && (ASTCTextureImp::isInputPreTwiddled(v4) & 1) == 0 && *(this + 531) == 255 && *(this + 530) == 255 && (*(this + 529) & 1) == 0)
    {
      v83[0] = 0;
      v83[1] = 0;
      v69 = *(this + 3);
      v70 = ASTCTextureImp::textureBaseOffset(v4);
      if (IIOImageReadSession::getBytesAtOffset(v69, v83, v70, 16) == 16)
      {
        if ((v83[0] & 0x1FF) == 0x1FC)
        {
          ASTCTextureImp::set_needs_hdr(v4, (v83[0] & 0x200) != 0);
        }

        else
        {
          v73 = (LODWORD(v83[0]) >> 13) & 0xF;
          if ((v83[0] & 0x1800) != 0)
          {
            v73 = (LODWORD(v83[0]) >> 23) & 0x3F;
          }

          if ((v73 & 0x3E) == 0xE || v73 == 11 || v73 == 7 || (v73 & 0x3E) == 2)
          {
            ASTCTextureImp::set_needs_hdr(v4, 1);
          }
        }
      }
    }
  }

  if (ASTCTextureImp::needs_hdr(v4))
  {
    *(this + 373) = 1;
    *(this + 63) = 8 * v59;
    *(this + 64) = 4194320;
    *(this + 263) = 1;
    if (!*(this + 20))
    {
      *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
    }
  }

  v74 = getenv("IIO_useV3");
  if (v74 && !atoi(v74))
  {
    v75 = 1;
  }

  else
  {
    v75 = 13;
  }

  v57 = 0;
  *(this + 204) = v75;
LABEL_133:
  IIOScanner::~IIOScanner(&v78);
  return v57;
}

void sub_1860BF718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

uint64_t ASTCReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 13)
  {
    return IIOReadPlugin::setupImageProviderCallbackV3(a1, a2, IIO_Reader::CopyImageBlockSetProc, 0, 0, IIO_Reader::CopyImageTextureDataProc);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

uint64_t ASTCReadPlugin::decodeImageData(ASTCReadPlugin *this, unsigned __int8 *a2)
{
  v4 = *(this + 62);
  if (v4)
  {
  }

  v5 = *(this + 69);
  v6 = *(this + 70);
  v7 = *(this + 79);
  v10.data = a2;
  v10.height = v6;
  v10.width = v5;
  v10.rowBytes = v7;
  v8 = *(this + 3);
  if (v8)
  {
    return ASTCTextureImp::decodeASTCtoRGBX(v4, v8, &v10, *(this + 326), *(this + 437) == 0);
  }

  else
  {
    return 0;
  }
}

uint64_t ASTCReadPlugin::decodeImageImp(uint64_t a1, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v69[0] = 0;
  v8 = *(a1 + 496);
  if (v8)
  {
  }

  else
  {
    v9 = 0;
  }

  seed = 0;
  v67 = 0;
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v10 = *(a1 + 220);
    v11 = v10 >> 24;
    v12 = MEMORY[0x1E69E9830];
    if ((v10 >> 24) <= 0x7F)
    {
      v13 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v13 = __maskrune(v11, 0x40000uLL);
      v10 = *(a1 + 220);
    }

    if (v13)
    {
      v14 = (v10 >> 24);
    }

    else
    {
      v14 = 46;
    }

    v15 = v10 << 8 >> 24;
    if (v15 <= 0x7F)
    {
      v16 = *(v12 + 4 * v15 + 60) & 0x40000;
    }

    else
    {
      v16 = __maskrune(v15, 0x40000uLL);
      v10 = *(a1 + 220);
    }

    if (v16)
    {
      v17 = (v10 << 8 >> 24);
    }

    else
    {
      v17 = 46;
    }

    v18 = v10 >> 8;
    if (v18 <= 0x7F)
    {
      v19 = *(v12 + 4 * v18 + 60) & 0x40000;
    }

    else
    {
      v19 = __maskrune(v18, 0x40000uLL);
      v10 = *(a1 + 220);
    }

    if (v19)
    {
      v20 = (v10 >> 8);
    }

    else
    {
      v20 = 46;
    }

    if (v10 <= 0x7F)
    {
      if ((*(v12 + 4 * v10 + 60) & 0x40000) != 0)
      {
        goto LABEL_25;
      }
    }

    else if (__maskrune(v10, 0x40000uLL))
    {
LABEL_25:
      v21 = *(a1 + 220);
LABEL_28:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v14, v17, v20, v21, iioTypeStr[a3], "virtual OSStatus ASTCReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_29;
    }

    v21 = 46;
    goto LABEL_28;
  }

LABEL_29:
  IIOReadPlugin::debugDecodeImage(a1, a2);
  if (*(a1 + 442) == 1 && *(a1 + 424) != 16)
  {
    _cg_jpeg_mem_term("decodeImageImp", 904, "*** ERROR: ASTC cannot handle %d rowBytesAlignment\n");
    BlockArray = 0;
    goto LABEL_78;
  }

  *(a1 + 424) = 16;
  v22 = *(a1 + 24);
  if (v22)
  {
    v23 = IIOImageReadSession::mapData(v22);
  }

  else
  {
    v23 = 0;
  }

  v24 = ASTCTextureImp::needs_hdr(v9);
  v25 = *(a1 + 252);
  if (v24)
  {
    v26 = *(a1 + 244);
    if (v25 < 8 * v26)
    {
      v25 = 8 * v26;
      *(a1 + 252) = 8 * v26;
    }
  }

  *(a1 + 316) = ImageIOAlignRowBytes(v25, *(a1 + 424));
  if (a3 == 3)
  {
    BlockArray = IIOReadPlugin::allocateBlockArray(a1, *(a1 + 104));
    LODWORD(v34) = *(a1 + 308);
    v33 = v34;
    v35 = *(a1 + 312);
    v31 = v35;
    v30 = *(a1 + 316) * v35;
    BaseAddress = _ImageIO_Malloc(v30, *(a1 + 416), v69, kImageMalloc_ASTC_Data[0], 0, 0);
    v32 = 0;
  }

  else
  {
    if (a3 != 1 || !a4 || !*a4)
    {
      BlockArray = 0;
      if (!v23)
      {
        goto LABEL_78;
      }

      goto LABEL_76;
    }

    IOSurfaceLock(*a4, 0, &seed);
    BaseAddress = IOSurfaceGetBaseAddress(*a4);
    Height = IOSurfaceGetHeight(*a4);
    BlockArray = 0;
    v30 = IOSurfaceGetBytesPerRow(*a4) * Height;
    v69[0] = v30;
    v31 = 0.0;
    v32 = 1;
    v33 = 0.0;
  }

  if (!BaseAddress)
  {
    v38 = 0;
LABEL_63:
    if (!v32)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if (*(a1 + 529) == 1)
  {
    v55 = v32;
    v36 = v23;
    v37 = (16 * *(a1 + 480) * *(a1 + 484));
    v38 = malloc_type_calloc(v37, 1uLL, 0x100004077774924uLL);
    if (!v38 || (v66 = 0, v64 = 0u, v65 = 0u, v62 = 0u, v63 = 0u, memset(&v61, 0, sizeof(v61)), CreateKtxStream(&v61, *(a1 + 24))))
    {
LABEL_49:
      v23 = v36;
      if ((v55 & 1) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    if (ktxTexture2_CreateFromStream(&v61, 0, &v67))
    {
      v53 = "*** ERROR: ktxTexture2_CreateFromStream failed [%d]\n";
      v54 = 973;
    }

    else
    {
      v57 = *(a1 + 224);
      v58 = v38;
      v59 = v37;
      v60 = 0;
      if (!(*(*(v67 + 8) + 40))())
      {
        v43 = *(a1 + 276);
        v44 = *(a1 + 280);
        v45 = *(a1 + 316);
        v56.data = BaseAddress;
        v56.height = v44;
        v56.width = v43;
        v56.rowBytes = v45;
        BlockArray = ASTCTextureImp::decodeASTCtoRGBX(v9, v38, v60, &v56, *(a1 + 326), *(a1 + 437) == 0);
        v23 = v36;
        v32 = v55;
        if (!BlockArray)
        {
          goto LABEL_59;
        }

LABEL_54:
        *(a1 + 104) = 0;
        if ((v32 & 1) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_68;
      }

      v53 = "*** ERROR: ktxTexture_IterateLoadLevelFaces failed [%d]\n";
      v54 = 977;
    }

    _cg_jpeg_mem_term("decodeImageImp", v54, v53);
    goto LABEL_49;
  }

  v39 = *(a1 + 308);
  v40 = *(a1 + 312);
  v41 = *(a1 + 316);
  v61.data = BaseAddress;
  v61.height = v40;
  v61.width = v39;
  v61.rowBytes = v41;
  v42 = *(a1 + 24);
  if (v42)
  {
    BlockArray = ASTCTextureImp::decodeASTCtoRGBX(v9, v42, &v61, *(a1 + 326), *(a1 + 437) == 0);
  }

  v38 = 0;
  if (BlockArray)
  {
    goto LABEL_54;
  }

LABEL_59:
  if (a3 != 3)
  {
    BlockArray = 0;
    goto LABEL_63;
  }

  v46 = 0;
  v70.origin.x = 0.0;
  v70.origin.y = 0.0;
  v70.size.width = v33;
  v70.size.height = v31;
  **(a1 + 96) = IIOReadPlugin::createImageBlock(a1, BaseAddress, v30, v70, *(a1 + 316), *(a1 + 371));
  if (CGRectEqualToRect(*(a1 + 120), *MEMORY[0x1E695F050]))
  {
    v47 = 0;
  }

  else
  {
    v71.origin.x = 0.0;
    v71.origin.y = 0.0;
    v71.size.width = v33;
    v71.size.height = v31;
    *(&v47 - 1) = CGRectUnion(*(a1 + 120), v71);
    v46 = v48;
    v33 = v49;
    v31 = v50;
  }

  BlockArray = 0;
  *(a1 + 120) = v46;
  *(a1 + 128) = v47;
  *(a1 + 136) = v33;
  *(a1 + 144) = v31;
  if ((v32 & 1) == 0)
  {
    goto LABEL_72;
  }

  BaseAddress = 0;
LABEL_68:
  IOSurfaceUnlock(*a4, 0, &seed);
LABEL_69:
  if (a3 == 3 && BaseAddress)
  {
    _ImageIO_Free(BaseAddress, v69[0]);
  }

LABEL_72:
  if (v38)
  {
    free(v38);
    if (!v23)
    {
      goto LABEL_78;
    }
  }

  else if (!v23)
  {
    goto LABEL_78;
  }

LABEL_76:
  v51 = *(a1 + 24);
  if (v51)
  {
    IIOImageReadSession::unmapData(v51);
  }

LABEL_78:
  if (v67)
  {
    (**(v67 + 8))(v67);
  }

  return BlockArray;
}

uint64_t TIFFInitLZW(int8x16_t *a1, int a2)
{
  if (a2 != 5)
  {
    TIFFInitLZW_cold_1();
  }

  v3 = malloc_type_malloc(0x128uLL, 0x10B00406908570BuLL);
  a1[68].i64[1] = v3;
  if (v3)
  {
    v3[29] = 0;
    v3[24] = 0;
    v3[36] = 0;
    *(v3 + 38) = a1->i32[3];
    a1[59].i64[1] = LZWFixupTags;
    a1[60].i64[0] = LZWSetupDecode;
    a1[60].i64[1] = LZWPreDecode;
    a1[63].i64[0] = LZWDecode;
    a1[64].i64[0] = LZWDecode;
    a1[65].i64[0] = LZWDecode;
    a1[61].i64[0] = LZWSetupEncode;
    a1[62].i64[0] = LZWPreEncode;
    a1[62].i64[1] = LZWPostEncode;
    a1[63].i64[1] = LZWEncode;
    a1[64].i64[1] = LZWEncode;
    a1[65].i64[1] = LZWEncode;
    a1[67].i64[0] = LZWCleanup;
    TIFFPredictorInit(a1);
    return 1;
  }

  else
  {
    TIFFErrorExtR(a1, "TIFFInitLZW", "No space for LZW state block");
    return 0;
  }
}

uint64_t LZWSetupDecode(int8x16_t *a1)
{
  v2 = a1[68].i64[1];
  if (!v2)
  {
    v3 = malloc_type_malloc(0x128uLL, 0x10B00406908570BuLL);
    a1[68].i64[1] = v3;
    if (!v3)
    {
      TIFFErrorExtR(a1, "LZWSetupDecode", "No space for LZW state block");
      return 0;
    }

    v2 = v3;
    v3[29] = 0;
    v3[24] = 0;
    TIFFPredictorInit(a1);
  }

  if (v2[29])
  {
    return 1;
  }

  v4 = malloc_type_malloc(0x13FF0uLL, 0x102004034E03FFCuLL);
  v2[29] = v4;
  if (v4)
  {
    v5 = v4 + 4092;
    for (i = 255; i != -1; --i)
    {
      *(v5 - 2) = i;
      *(v5 - 1) = i;
      *v5 = 1;
      *(v5 - 2) = 1;
      *(v5 - 12) = 0;
      v5 -= 16;
    }

    *(v4 + 257) = 0u;
    *(v4 + 256) = 0u;
    return 1;
  }

  TIFFErrorExtR(a1, "LZWSetupDecode", "No space for LZW code table");
  return 0;
}

uint64_t LZWPreDecode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    LZWPreDecode_cold_1();
  }

  v3 = *(v1 + 232);
  if (!v3)
  {
    (*(a1 + 960))(a1);
    v3 = *(v1 + 232);
    if (!v3)
    {
      return 0;
    }
  }

  if (*(a1 + 1160) >= 2 && (v4 = *(a1 + 1120), !*v4) && (v4[1] & 1) != 0)
  {
    if (!*(v1 + 192))
    {
      TIFFWarningExtR(a1, "LZWPreDecode", "Old-style LZW codes, convert file");
      *(a1 + 1008) = LZWDecodeCompat;
      *(a1 + 1024) = LZWDecodeCompat;
      *(a1 + 1040) = LZWDecodeCompat;
      (*(a1 + 960))(a1);
      *(v1 + 192) = LZWDecodeCompat;
      v3 = *(v1 + 232);
    }

    *(v1 + 130) = 511;
  }

  else
  {
    *(v1 + 130) = 510;
    *(v1 + 192) = LZWDecode;
  }

  *(v1 + 128) = 9;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 160) = xmmword_1862272F0;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  *(v1 + 208) = v3;
  *(v1 + 216) = v3 - 16;
  *(v1 + 224) = v3 + 8160;
  *(v1 + 240) = 0;
  return 1;
}

uint64_t LZWDecode(uint64_t *a1, char *__b, int64_t a3)
{
  v3 = a1[137];
  if (!v3)
  {
    LZWDecode_cold_2();
  }

  v4 = *(v3 + 232);
  if (!v4)
  {
    LZWDecode_cold_1();
  }

  v5 = a3;
  v6 = __b;
  v7 = a1;
  if (*(v3 + 240))
  {
    bzero(__b, a3);
    TIFFErrorExtR(v7, "LZWDecode", "LZWDecode: Scanline %u cannot be read due to previous error");
    return 0;
  }

  v9 = *(v3 + 168);
  if (v9)
  {
    v10 = *(v3 + 200);
    v11 = *(v10 + 4);
    v12 = v11 - v9;
    v13 = a3 - (v11 - v9);
    if (a3 >= v11 - v9)
    {
      v17 = &__b[v12];
      v18 = ~v9 + v11;
      do
      {
        __b[v18] = *(v10 + 11);
        v16 = v18-- != 0;
        if (!v16)
        {
          break;
        }

        v10 = *v10;
      }

      while (v10);
      *(v3 + 168) = 0;
    }

    else
    {
      *(v3 + 168) = v9 + a3;
      v14 = ~v9 + v11;
      do
      {
        v10 = *v10;
        if (v14 <= a3)
        {
          break;
        }

        --v14;
      }

      while (v10);
      if (v10)
      {
        v15 = a3 - 1;
        do
        {
          __b[v15] = *(v10 + 11);
          v16 = v15-- != 0;
          if (!v16)
          {
            break;
          }

          v10 = *v10;
        }

        while (v10);
        v13 = v15 + 1;
      }

      else
      {
        v13 = a3;
      }

      v17 = __b;
    }

    if (a3 < v12)
    {
      return 1;
    }

    v4 = *(v3 + 232);
    v5 = v13;
    v6 = v17;
  }

  v19 = a1[144];
  v20 = *(v3 + 176) + 8 * (a1[145] - *(v3 + 184));
  *(v3 + 176) = v20;
  v21 = *(v3 + 128);
  v23 = *(v3 + 136);
  v22 = *(v3 + 144);
  v24 = *(v3 + 160);
  v25 = *(v3 + 208);
  v26 = *(v3 + 216);
  v27 = *(v3 + 224);
  if (!v5)
  {
    goto LABEL_108;
  }

  v28 = v4 - 16;
  v29 = v4 + 4128;
  v30 = v4 + 8160;
  v31 = v4 + 81904;
  v72 = v7;
LABEL_28:
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v22 -= v21;
        if (v22 >= 0)
        {
          goto LABEL_29;
        }

        if (v20 < 0x40)
        {
          if (v20 < 8)
          {
            goto LABEL_111;
          }

          v23 = *v19 | (v23 << 8);
          if (v22 > 0xFFFFFFFFFFFFFFF7)
          {
            v22 += 8;
            v20 -= 8;
            ++v19;
          }

          else
          {
            if (v20 - 8 < 8)
            {
LABEL_111:
              bzero(v6, v5);
              *(v3 + 240) = 1;
              TIFFErrorExtR(v7, "LZWDecode", "LZWDecode: Strip %u not terminated with EOI code");
              return 0;
            }

            v55 = v19[1];
            v19 += 2;
            v23 = v55 | (v23 << 8);
            v22 += 16;
            v20 -= 16;
          }

LABEL_29:
          v32 = v23 >> v22;
          goto LABEL_30;
        }

        v41 = v23 << -v22;
        v42 = *v19;
        v19 += 8;
        v23 = bswap64(v42);
        v43 = v23 >> v22;
        v22 += 64;
        v32 = v43 | v41;
        v20 -= 64;
LABEL_30:
        v33 = v32 & v24;
        v34 = v4 + 16 * (v32 & v24);
        if ((v32 & v24) <= 0x101)
        {
          if (v33 < 0x100)
          {
            if (v34 > v26)
            {
              goto LABEL_112;
            }

            *v26 = v25;
            *(v26 + 10) = *(v25 + 10);
            *(v26 + 8) = *(v25 + 8) + 1;
            *(v26 + 11) = v33;
            if (v33 == *(v25 + 11))
            {
              v37 = *(v25 + 12);
            }

            else
            {
              v37 = 0;
            }

            *(v26 + 12) = v37;
            v38 = v26 + 16;
            if (v21 >= 11)
            {
              v39 = 11;
            }

            else
            {
              v39 = v21;
            }

            if (v38 >= v31)
            {
              v40 = v28;
            }

            else
            {
              v40 = v26 + 16;
            }

            if (v38 <= v27)
            {
              v26 += 16;
            }

            else
            {
              v21 = v39 + 1;
              v24 = ~(-2 << v39);
              v26 = v40;
            }

            if (v38 > v27)
            {
              v27 = v28 + 16 * ~(-2 << v39);
            }

            *v6++ = v33;
            v25 = v34;
            if (!--v5)
            {
              goto LABEL_122;
            }

            continue;
          }

          if (v33 == 257)
          {
            goto LABEL_108;
          }

          while (v22 <= 8)
          {
            if (v20 < 0x40)
            {
              if (v20 < 8)
              {
                goto LABEL_111;
              }

              v23 = *v19 | (v23 << 8);
              if (v22 <= 0)
              {
                if (v20 - 8 < 8)
                {
                  goto LABEL_111;
                }

                v53 = v19[1];
                v19 += 2;
                v23 = v53 | (v23 << 8);
                v22 += 7;
                v20 -= 16;
              }

              else
              {
                --v22;
                v20 -= 8;
                ++v19;
              }

              goto LABEL_82;
            }

            v50 = *v19;
            v19 += 8;
            v51 = 2 * v23;
            v23 = bswap64(v50);
            v22 += 55;
            v52 = (v51 << ~v22) | (v23 >> v22);
            v20 -= 64;
LABEL_83:
            v54 = v52 & 0x1FF;
            if (v54 != 256)
            {
              if (v54 == 257)
              {
                v24 = 511;
                LOWORD(v21) = 9;
LABEL_107:
                v26 = v29;
                v27 = v30;
                goto LABEL_108;
              }

              if (v54 > 0x101)
              {
LABEL_112:
                bzero(v6, v5);
                *(v3 + 240) = 1;
                TIFFErrorExtR(v7, *v7, "Using code not yet in table");
                return 0;
              }

              *v6++ = v52;
              v25 = v4 + 16 * v54;
              v21 = 9;
              v24 = 511;
              v26 = v29;
              v27 = v30;
              if (!--v5)
              {
                LOWORD(v21) = 9;
                v24 = 511;
                goto LABEL_107;
              }

              goto LABEL_28;
            }
          }

          v22 -= 9;
LABEL_82:
          v52 = v23 >> v22;
          goto LABEL_83;
        }

        break;
      }

      if (v34 >= v26)
      {
        if (v34 != v26)
        {
          goto LABEL_112;
        }

        v36 = *(v25 + 10);
        *(v26 + 11) = v36;
        v35 = v36;
      }

      else
      {
        v35 = *(v34 + 10);
        *(v26 + 11) = v35;
        LOBYTE(v36) = *(v25 + 10);
      }

      if (*(v25 + 11) == v35)
      {
        v44 = *(v25 + 12);
      }

      else
      {
        v44 = 0;
      }

      *(v26 + 12) = v44;
      *v26 = v25;
      *(v26 + 10) = v36;
      *(v26 + 8) = *(v25 + 8) + 1;
      v45 = v26 + 16;
      if (v21 >= 11)
      {
        v46 = 11;
      }

      else
      {
        v46 = v21;
      }

      if (v45 >= v31)
      {
        v47 = v28;
      }

      else
      {
        v47 = v26 + 16;
      }

      if (v45 <= v27)
      {
        v26 += 16;
      }

      else
      {
        v21 = v46 + 1;
        v24 = ~(-2 << v46);
        v26 = v47;
      }

      if (v45 > v27)
      {
        v27 = v28 + 16 * ~(-2 << v46);
      }

      v48 = *(v34 + 8);
      if (v48 <= 2)
      {
        v49 = v5 - 2;
        if (v5 <= 2)
        {
          if (v5 == 2)
          {
            v5 = 0;
            *v6 = *(v34 + 10);
            v6 += 2;
LABEL_117:
            v25 = v34;
            v7 = v72;
            goto LABEL_108;
          }

          goto LABEL_118;
        }

        *v6 = *(v34 + 10);
        v6 += 2;
        goto LABEL_91;
      }

      if (v48 != 3)
      {
        if (v5 < v48)
        {
          goto LABEL_118;
        }

        if (*(v34 + 12) == 1)
        {
          v66 = v30;
          v67 = v29;
          v64 = v31;
          v65 = v28;
          v70 = v24;
          v71 = v19;
          v68 = v4;
          v69 = v27;
          memset(v6, *(v34 + 11), v48);
          v31 = v64;
          v28 = v65;
          v30 = v66;
          v29 = v67;
          v4 = v68;
          v27 = v69;
          v24 = v70;
          v19 = v71;
          v6 += v48;
          v25 = v34;
          v5 -= v48;
          v7 = v72;
          if (!v5)
          {
            goto LABEL_122;
          }
        }

        else
        {
          v56 = &v6[v48];
          *(v56 - 1) = *(v34 + 11);
          v57 = *v34;
          *(v56 - 2) = *(*v34 + 11);
          v58 = *v57;
          *(v56 - 3) = *(v58 + 11);
          v59 = *v58;
          v6[v48 - 4] = *(v59 + 11);
          if (&v6[v48 - 4] > v6)
          {
            v60 = v56 - 5;
            do
            {
              v59 = *v59;
              v61 = v60 > v6;
              *v60-- = *(v59 + 11);
            }

            while (v61);
          }

          v25 = v34;
          v6 += v48;
          v5 -= v48;
          v7 = v72;
          if (!v5)
          {
            v25 = v34;
            v6 = v56;
            goto LABEL_108;
          }
        }

        continue;
      }

      break;
    }

    v49 = v5 - 3;
    if (v5 > 3)
    {
      *v6 = *(v34 + 10);
      v6[1] = *(*v34 + 11);
      v6[2] = *(v34 + 11);
      v6 += 3;
LABEL_91:
      v25 = v34;
      v5 = v49;
      v7 = v72;
      continue;
    }

    break;
  }

  if (v5 == 3)
  {
    v5 = 0;
    *v6 = *(v34 + 10);
    v6[1] = *(*v34 + 11);
    v6[2] = *(v34 + 11);
    v6 += 3;
    goto LABEL_117;
  }

LABEL_118:
  *(v3 + 200) = v34;
  v63 = v34;
  do
  {
    v63 = *v63;
  }

  while (v5 < *(v63 + 4));
  *(v3 + 168) = v5;
  v7 = v72;
  do
  {
    v6[v5 - 1] = *(v63 + 11);
    v63 = *v63;
    --v5;
  }

  while (v5);
LABEL_122:
  v25 = v34;
LABEL_108:
  v62 = v7[144] - v19 + v7[145];
  v7[145] = v62;
  v7[144] = v19;
  *(v3 + 176) = v20;
  *(v3 + 184) = v62;
  *(v3 + 128) = v21;
  *(v3 + 136) = v23;
  *(v3 + 144) = v22;
  *(v3 + 160) = v24;
  *(v3 + 208) = v25;
  *(v3 + 216) = v26;
  *(v3 + 224) = v27;
  if (v5 >= 1)
  {
    bzero(v6, v5);
    TIFFErrorExtR(v7, "LZWDecode", "Not enough data at scanline %u (short %llu bytes)");
    return 0;
  }

  return 1;
}

uint64_t LZWSetupEncode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    LZWSetupEncode_cold_1();
  }

  v3 = malloc_type_malloc(0x23290uLL, 0x100004090896170uLL);
  *(v1 + 288) = v3;
  if (v3)
  {
    return 1;
  }

  TIFFErrorExtR(a1, "LZWSetupEncode", "No space for LZW hash table");
  return 0;
}

uint64_t LZWPreEncode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    LZWPreEncode_cold_1();
  }

  v3 = *(v1 + 288);
  if (!v3)
  {
    (*(a1 + 976))(a1);
    v3 = *(v1 + 288);
  }

  *(v1 + 128) = 33488905;
  *(v1 + 132) = 258;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 248) = 10000;
  *(v1 + 256) = 0;
  *(v1 + 264) = 0;
  *(v1 + 272) = 0;
  *(v1 + 280) = *(a1 + 1120) + *(a1 + 1128) - 5;
  v4 = 9001;
  v5 = 17986;
  do
  {
    v6 = &v3[v5];
    *v6 = -1;
    v6[2] = -1;
    v6[4] = -1;
    v6[6] = -1;
    v6[8] = -1;
    v6[10] = -1;
    v6[12] = -1;
    v4 -= 8;
    v5 -= 16;
    v6[14] = -1;
  }

  while (v4 > 7);
  *v3 = -1;
  *(v1 + 244) = 0xFFFF;
  return 1;
}

uint64_t LZWPostEncode(void *a1)
{
  v2 = a1[137];
  v3 = a1[144];
  v4 = *(v2 + 136);
  v5 = *(v2 + 144);
  v6 = *(v2 + 128);
  if (v3 > *(v2 + 280))
  {
    a1[145] = &v3[-a1[140]];
    result = TIFFFlushData1(a1);
    if (!result)
    {
      return result;
    }

    v3 = a1[140];
  }

  v8 = *(v2 + 244);
  if (v8 != 0xFFFF)
  {
    v15 = *(v2 + 132);
    v4 = (v4 << v6) | v8;
    v16 = v5 + v6;
    v5 = v5 + v6 - 8;
    *v3 = v4 >> v5;
    v13 = v16 < 16;
    v17 = v16 - 16;
    if (v13)
    {
      ++v3;
    }

    else
    {
      v3[1] = v4 >> v17;
      v3 += 2;
      v5 = v17;
    }

    *(v2 + 244) = 0xFFFF;
    if (v15 == 4093)
    {
      v4 = (v4 << v6) | 0x100;
      v18 = v5 + v6;
      v5 = v5 + v6 - 8;
      *v3 = v4 >> v5;
      v13 = v18 < 16;
      v19 = v18 - 16;
      if (v13)
      {
        LODWORD(v6) = 9;
        ++v3;
      }

      else
      {
        v3[1] = v4 >> v19;
        v3 += 2;
        LODWORD(v6) = 9;
        v5 = v19;
      }
    }

    else if (v15 >= *(v2 + 130))
    {
      if (v6 >= 0xC)
      {
        LZWPostEncode_cold_1();
      }

      LODWORD(v6) = v6 + 1;
    }
  }

  v9 = (v4 << v6) | 0x101;
  v10 = v5 + v6;
  v11 = v10 - 8;
  *v3 = v9 >> (v10 - 8);
  v12 = v3 + 1;
  v13 = v10 < 16;
  v14 = v10 - 16;
  if (!v13)
  {
    v12 = v3 + 2;
    v3[1] = v9 >> v14;
    v11 = v14;
  }

  if (v11 >= 1)
  {
    *v12++ = v9 << (8 - v11);
  }

  a1[145] = &v12[-a1[140]];
  return 1;
}

uint64_t LZWEncode(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1[137];
  if (!v3)
  {
    return 0;
  }

  if (!*(v3 + 288))
  {
    LZWEncode_cold_2();
  }

  v4 = a3;
  v6 = a1;
  v8 = *(v3 + 264);
  v7 = *(v3 + 272);
  v9 = *(v3 + 248);
  v11 = *(v3 + 136);
  v10 = *(v3 + 144);
  v12 = *(v3 + 132);
  v13 = *(v3 + 130);
  v14 = *(v3 + 128);
  v15 = a1[144];
  v16 = *(v3 + 280);
  v17 = *(v3 + 244);
  if (a3 >= 1 && v17 == 0xFFFF)
  {
    v11 = (v11 << v14) | 0x100;
    v18 = v10 + *(v3 + 128);
    v10 = v18 - 8;
    *v15 = v11 >> (v18 - 8);
    v19 = v18 < 16;
    v20 = v18 - 16;
    if (v19)
    {
      ++v15;
    }

    else
    {
      v15[1] = v11 >> v20;
      v15 += 2;
      v10 = v20;
    }

    v7 += v14;
    v22 = *a2++;
    v17 = v22;
    ++v8;
    v4 = a3 - 1;
  }

  if (v4 >= 1)
  {
    v23 = v14;
    while (1)
    {
      v24 = 0;
      v25 = *(v3 + 288);
      v58 = v8;
      v26 = (v8 << 8) + 256;
      v27 = 1;
      v28 = v17;
      while (1)
      {
        v17 = a2[v24];
        v29 = v28 + (v17 << 12);
        v30 = v28 ^ (32 * v17);
        v31 = v25 + 16 * v30;
        if (*v31 != v29)
        {
          break;
        }

        v28 = *(v31 + 8);
        ++v24;
        v26 += 256;
        --v27;
        if ((v4 + v27) <= 1)
        {
          v48 = v58 + v24;
          LODWORD(v17) = v28;
          goto LABEL_54;
        }
      }

      v57 = v58 + v24 + 1;
      if ((*v31 & 0x8000000000000000) == 0)
      {
        if (32 * v17 == v28)
        {
          v32 = -1;
        }

        else
        {
          v32 = v30 - 9001;
        }

        while (1)
        {
          v30 += v32 + ((v30 + v32) < 0 ? 0x2329 : 0);
          v33 = *(v25 + 16 * v30);
          if (v33 == v29)
          {
            break;
          }

          if (v33 < 0)
          {
            v31 = v25 + 16 * v30;
            goto LABEL_23;
          }
        }

        v17 = *(v25 + 16 * v30 + 8);
        v48 = v58 + v24 + 1;
        goto LABEL_48;
      }

LABEL_23:
      if (v15 > v16)
      {
        v49 = v6;
        v50 = v12;
        v51 = v7;
        v52 = v13;
        v53 = v10;
        v54 = v16;
        v55 = v9;
        v56 = v11;
        v6[145] = &v15[-v6[140]];
        result = TIFFFlushData1(v6);
        if (!result)
        {
          return result;
        }

        v6 = v49;
        v15 = v49[140];
        v9 = v55;
        v11 = v56;
        v10 = v53;
        v16 = v54;
        v13 = v52;
        v7 = v51;
        v12 = v50;
      }

      v11 = (v11 << v23) | v28;
      v34 = v10 + v23;
      v10 = v34 - 8;
      *v15 = v11 >> (v34 - 8);
      v19 = v34 < 16;
      v35 = v34 - 16;
      if (v19)
      {
        ++v15;
      }

      else
      {
        v15[1] = v11 >> v35;
        v15 += 2;
        v10 = v35;
      }

      v36 = v23;
      *(v31 + 8) = v12;
      *v31 = v29;
      if (v12 == 4093)
      {
        break;
      }

      v7 += v23;
      if (v12 >= v13)
      {
        v48 = v58 + v24 + 1;
        if (v23 >= 12)
        {
          LZWEncode_cold_1();
        }

        v13 = ~(-1 << (v23 + 1));
        ++v12;
        ++v23;
        goto LABEL_48;
      }

      v48 = v58 + v24 + 1;
      if (v57 >= v9)
      {
        if (v58 + v24 < 0x7FFFFF)
        {
          v43 = v26 / v7;
        }

        else if (v7 >= 0x100)
        {
          v43 = v57 / (v7 >> 8);
        }

        else
        {
          v43 = 0x7FFFFFFFLL;
        }

        v9 = v58 + v24 + 10001;
        if (v43 <= *(v3 + 256))
        {
          v37 = *(v3 + 288);
          v45 = 17986;
          for (i = 9001; i > 7; i -= 8)
          {
            v47 = &v37[v45];
            *v47 = -1;
            v47[2] = -1;
            v47[4] = -1;
            v47[6] = -1;
            v47[8] = -1;
            v47[10] = -1;
            v47[12] = -1;
            v45 -= 16;
            v47[14] = -1;
          }

          goto LABEL_32;
        }

        *(v3 + 256) = v43;
      }

      ++v12;
LABEL_48:
      a2 += v24 + 1;
      v44 = v4 - v24;
      v4 = v4 - v24 - 1;
      v8 = v48;
      if (v44 <= 1)
      {
        goto LABEL_54;
      }
    }

    v37 = *(v3 + 288);
    v38 = 17986;
    for (j = 9001; j > 7; j -= 8)
    {
      v40 = &v37[v38];
      *v40 = -1;
      v40[2] = -1;
      v40[4] = -1;
      v40[6] = -1;
      v40[8] = -1;
      v40[10] = -1;
      v40[12] = -1;
      v38 -= 16;
      v40[14] = -1;
    }

LABEL_32:
    *v37 = -1;
    *(v3 + 256) = 0;
    v11 = (v11 << v23) | 0x100;
    v41 = v10 + v23;
    v10 = v41 - 8;
    *v15 = v11 >> (v41 - 8);
    v48 = 0;
    v19 = v41 < 16;
    v42 = v41 - 16;
    if (v19)
    {
      v23 = 9;
      v13 = 511;
      v12 = 258;
      v7 = v36;
      ++v15;
    }

    else
    {
      v15[1] = v11 >> v42;
      v15 += 2;
      v23 = 9;
      v13 = 511;
      v12 = 258;
      v7 = v36;
      v10 = v42;
    }

    goto LABEL_48;
  }

  LOWORD(v23) = v14;
  v48 = v8;
LABEL_54:
  *(v3 + 264) = v48;
  *(v3 + 272) = v7;
  *(v3 + 248) = v9;
  *(v3 + 244) = v17;
  *(v3 + 136) = v11;
  *(v3 + 144) = v10;
  *(v3 + 132) = v12;
  *(v3 + 130) = v13;
  *(v3 + 128) = v23;
  result = 1;
  v6[144] = v15;
  return result;
}

uint64_t LZWCleanup(void *a1, uint64_t a2)
{
  TIFFPredictorCleanup(a1, a2);
  v3 = a1[137];
  if (!v3)
  {
    LZWCleanup_cold_1();
  }

  if (v3[29])
  {
    free(v3[29]);
    v3 = a1[137];
  }

  if (v3[36])
  {
    free(v3[36]);
    v3 = a1[137];
  }

  free(v3);
  a1[137] = 0;

  return _TIFFSetDefaultCompressionState(a1);
}

uint64_t LZWDecodeCompat(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = *(a1 + 1096);
  if (!v3)
  {
    LZWDecodeCompat_cold_1();
  }

  v4 = a3;
  v5 = a2;
  v6 = *(v3 + 168);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = *(v3 + 200);
  v8 = *(v7 + 4) - v6;
  v9 = a3 - v8;
  if (a3 >= v8)
  {
    v11 = *(v7 + 4) - v6;
    do
    {
      a2[v11 - 1] = *(v7 + 11);
      v7 = *v7;
      --v11;
    }

    while (v11);
    *(v3 + 168) = 0;
    v5 = &a2[v8];
  }

  else
  {
    *(v3 + 168) = v6 + a3;
    v10 = v8;
    do
    {
      v7 = *v7;
      --v10;
    }

    while (v10 > a3);
    v9 = a3;
    do
    {
      a2[v9 - 1] = *(v7 + 11);
      v7 = *v7;
      --v9;
    }

    while (v9);
  }

  v4 = v9;
  if (a3 >= v8)
  {
LABEL_13:
    v12 = *(a1 + 1152);
    v13 = *(v3 + 176) + 8 * (*(a1 + 1160) - *(v3 + 184));
    *(v3 + 176) = v13;
    LODWORD(v14) = *(v3 + 128);
    v16 = *(v3 + 136);
    v15 = *(v3 + 144);
    v17 = *(v3 + 160);
    v18 = *(v3 + 208);
    v19 = *(v3 + 216);
    v20 = *(v3 + 224);
    if (v4 >= 1)
    {
      v46 = a1;
      while (1)
      {
        if (v13 < v14)
        {
          v43 = v20;
          v45 = v17;
          TIFFWarningExtR(v46, "LZWDecodeCompat", "LZWDecode: Strip %u not terminated with EOI code", *(a1 + 884));
          v17 = v45;
          a1 = v46;
          v20 = v43;
          goto LABEL_54;
        }

        v21 = (*v12 << v15) | v16;
        v22 = v15 + 8;
        if (v15 + 8 >= v14)
        {
          ++v12;
        }

        else
        {
          v23 = v12[1];
          v12 += 2;
          v21 |= v23 << v22;
          v22 = v15 + 16;
        }

        v24 = v21 & v17;
        v16 = v21 >> v14;
        v15 = v22 - v14;
        v13 -= v14;
        v25 = v21 & v17;
        if (v25 == 256)
        {
          break;
        }

        if (v25 == 257)
        {
          goto LABEL_54;
        }

        v26 = *(v3 + 232);
        if (v19 < v26 || v19 >= v26 + 81904 || (*v19 = v18, v18 < v26) || v18 >= v26 + 81904)
        {
          TIFFErrorExtR(a1, "LZWDecodeCompat", "Corrupted LZW table at scanline %u");
          return 0;
        }

        v27 = v26 + 16 * v24;
        v19[10] = *(v18 + 10);
        *(v19 + 4) = *(v18 + 8) + 1;
        if (v27 >= v19)
        {
          v28 = v19;
        }

        else
        {
          v28 = (v26 + 16 * v24);
        }

        v19[11] = v28[10];
        v19 += 16;
        if (v19 > v20)
        {
          if (v14 >= 11)
          {
            v29 = 11;
          }

          else
          {
            v29 = v14;
          }

          LODWORD(v14) = v29 + 1;
          v17 = ~(-1 << (v29 + 1));
          v20 = v26 + 16 * v17;
        }

        if ((v24 & 0xFF00) != 0)
        {
          v30 = *(v27 + 8);
          if (!*(v27 + 8))
          {
            TIFFErrorExtR(a1, "LZWDecodeCompat", "Wrong length of decoded string: data probably corrupted at scanline %u");
            return 0;
          }

          v31 = v4 - v30;
          if (v4 < v30)
          {
            *(v3 + 200) = v27;
            v44 = v27;
            do
            {
              v44 = *v44;
            }

            while (*(v44 + 8) > v4);
            *(v3 + 168) = v4;
            do
            {
              v5[v4 - 1] = *(v44 + 11);
              v44 = *v44;
              --v4;
            }

            while (v4);
            goto LABEL_56;
          }

          v32 = &v5[v30];
          v33 = v32 - 1;
          v34 = v27;
          v35 = v32 - 1;
          do
          {
            *v35-- = *(v34 + 11);
            v34 = *v34;
            if (v34)
            {
              v36 = v33 > v5;
            }

            else
            {
              v36 = 0;
            }

            v33 = v35;
          }

          while (v36);
          v4 = v31;
        }

        else
        {
          *v5 = v24;
          --v4;
          v32 = v5 + 1;
        }

LABEL_51:
        v18 = v27;
        v5 = v32;
        if (v4 <= 0)
        {
          goto LABEL_56;
        }
      }

      do
      {
        v19 = (*(v3 + 232) + 4128);
        _TIFFmemset(v19, 0, 0x12FD0uLL);
        if (v13 <= 8)
        {
          v14 = *(v3 + 232) + 8176;
          TIFFWarningExtR(v46, "LZWDecodeCompat", "LZWDecode: Strip %u not terminated with EOI code", *(v46 + 884));
          v20 = v14;
          a1 = v46;
          LOWORD(v14) = 9;
          v17 = 511;
          goto LABEL_54;
        }

        v37 = (*v12 << v15) | v16;
        v38 = v15 + 8;
        if (v15 <= 0)
        {
          v39 = v12[1];
          v12 += 2;
          v37 |= v39 << v38;
          v38 = v15 + 16;
        }

        else
        {
          ++v12;
        }

        v40 = v37 & 0x1FF;
        v16 = v37 >> 9;
        v15 = v38 - 9;
        v13 -= 9;
      }

      while (v40 == 256);
      if (v40 == 257)
      {
        v20 = *(v3 + 232) + 8176;
        LOWORD(v14) = 9;
        v17 = 511;
        v27 = v18;
        a1 = v46;
        goto LABEL_56;
      }

      a1 = v46;
      if (v40 < 0x101)
      {
        v20 = *(v3 + 232) + 8176;
        *v5 = v37;
        --v4;
        v27 = *(v3 + 232) + 16 * (v37 & 0x1FF);
        LODWORD(v14) = 9;
        v32 = v5 + 1;
        v17 = 511;
        goto LABEL_51;
      }

      TIFFErrorExtR(v46, *v46, "LZWDecode: Corrupted LZW table at scanline %u");
      return 0;
    }

LABEL_54:
    v27 = v18;
LABEL_56:
    v41 = *(a1 + 1152) - v12 + *(a1 + 1160);
    *(a1 + 1160) = v41;
    *(a1 + 1152) = v12;
    *(v3 + 176) = v13;
    *(v3 + 184) = v41;
    *(v3 + 128) = v14;
    *(v3 + 136) = v16;
    *(v3 + 144) = v15;
    *(v3 + 160) = v17;
    *(v3 + 208) = v27;
    *(v3 + 216) = v19;
    *(v3 + 224) = v20;
    if (v4 >= 1)
    {
      TIFFErrorExtR(a1, "LZWDecodeCompat", "Not enough data at scanline %u (short %llu bytes)");
      return 0;
    }
  }

  return 1;
}

void PSDWritePlugin::~PSDWritePlugin(PSDWritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t PSDWritePlugin::PackBits(PSDWritePlugin *this, const unsigned __int8 *a2, int a3, uint64_t a4, unsigned __int8 *a5, unsigned __int8 *a6, int a7)
{
  LOWORD(v7) = a5;
  if (a4 >= 1)
  {
    v8 = a7 << 31 >> 31;
    v9 = 2 * a3;
    v10 = a3;
    v7 = a5;
    do
    {
      v11 = 0;
      v12 = 1;
      v13 = 1;
      v14 = a2;
      while (1)
      {
        if (a4 + v11 >= 3)
        {
          v15 = *v14;
          if (v14[v10] == v15 && v14[v9] == v15)
          {
            break;
          }
        }

        v14 += v10;
        v13 = v12 < a4;
        --v11;
        ++v12;
        if (!(a4 + v11))
        {
          v16 = a4;
          goto LABEL_9;
        }
      }

      if (!v11)
      {
        goto LABEL_18;
      }

      v16 = -v11;
      do
      {
LABEL_9:
        if (v16 >= 0x7F)
        {
          v17 = 127;
        }

        else
        {
          v17 = v16;
        }

        a4 -= v17;
        if (v7 >= a6)
        {
          break;
        }

        *v7++ = v17 - 1;
        if (v7 < a6)
        {
          v18 = v17;
          do
          {
            *v7++ = *a2 ^ v8;
            a2 += v10;
            if (v18 < 2)
            {
              break;
            }

            --v18;
          }

          while (v7 < a6);
        }

        v16 -= v17;
      }

      while (v16 >= 1);
LABEL_18:
      if (v13)
      {
        v19 = *a2;
        a2 += v10;
        v20 = a4 - 2;
        if (a4 < 2)
        {
          v23 = 1;
        }

        else
        {
          if (v20 >= 0x7D)
          {
            v20 = 125;
          }

          v21 = v20 + 2;
          v22 = -v20;
          v23 = 1;
          while (*a2 == v19)
          {
            ++v23;
            a2 += v10;
            if (v22 + v23 == 2)
            {
              v23 = v21;
              break;
            }
          }
        }

        if (v7 >= a6)
        {
          return (v7 - a5);
        }

        *v7 = 1 - v23;
        if (v7 + 1 >= a6)
        {
          LOWORD(v7) = v7 + 1;
          return (v7 - a5);
        }

        v7[1] = v19 ^ v8;
        v7 += 2;
        a4 -= v23;
      }
    }

    while (a4 > 0);
  }

  return (v7 - a5);
}

uint64_t PSDWritePlugin::zipWithPrediction(unint64_t this, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, unint64_t *a5, uint64_t a6, uint64_t a7)
{
  v8 = a6 - 1;
  v9 = 2 * a6 - 2;
  v10 = a2;
  v11 = a3;
  do
  {
    if (a7 == 16)
    {
      if (a6 != 1)
      {
        v12 = &v10[v9];
        v13 = a6 - 1;
        v14 = &v10[v9];
        do
        {
          this = *(v12 - 1);
          v15 = v12[1] - this;
          v12[1] = v15;
          v16 = *(v14 - 2);
          v14 -= 2;
          *v12 = *v12 - ((this + v15) >> 8) - v16;
          v12 = v14;
          --v13;
        }

        while (v13);
        v10 += v9;
      }

      v10 += 2;
      v17 = 2 * a6;
    }

    else
    {
      if (a6 != 1)
      {
        v18 = &v10[v8];
        v19 = 1 - a6;
        v20 = &v10[v8];
        do
        {
          v21 = *--v20;
          this = v21;
          *v18 -= v21;
          v18 = v20;
        }

        while (!__CFADD__(v19++, 1));
        v10 += v8;
      }

      ++v10;
      v17 = a6;
    }

    v11 -= v17;
  }

  while (v11 > 0);

  return PSDWritePlugin::zipWithoutPrediction(this, a2, a3, a4, a5);
}

uint64_t PSDWritePlugin::zipWithoutPrediction(PSDWritePlugin *this, unsigned __int8 *a2, uInt a3, unsigned __int8 *a4, unint64_t *a5)
{
  memset(&v10.avail_in, 0, 104);
  v6 = *a5;
  v10.next_in = a2;
  v10.avail_in = a3;
  v10.next_out = a4;
  v10.avail_out = v6;
  *a5 = 0;
  if (deflateInit_(&v10, -1, "1.2.12", 112))
  {
    return 0;
  }

  do
  {
    v9 = deflate(&v10, 1);
    if (v9 == 1)
    {
      deflateEnd(&v10);
      goto LABEL_8;
    }

    v8 = v9;
  }

  while (!v9 && v10.avail_in);
  deflateEnd(&v10);
  if (v8)
  {
    return 0;
  }

LABEL_8:
  *a5 = v6 - v10.avail_out;
  return 1;
}

uint64_t PSDWritePlugin::writeOne(IIOImageWriteSession **this, IIOImagePixelDataProvider *a2, IIODictionary *a3, IIODictionary *a4)
{
  v5 = a2;
  v171 = *MEMORY[0x1E69E9840];
  v165 = 0;
  memset(v170, 0, sizeof(v170));
  v161 = 0;
  v162 = 0;
  v160 = 0;
  __ptr = 0;
  v156 = 0uLL;
  v157 = 0;
  v158 = 0;
  v159 = 1296646712;
  AlphaInfo = IIOImagePixelDataProvider::getAlphaInfo(a2);
  size = IIOImagePixelDataProvider::getBytesPerRow(v5);
  v148 = IIOImageSource::count(v5);
  v149 = IIO_Reader::testHeaderSize(v5);
  Error = _cg_GifLastError(v5);
  appleflags = _cg_png_get_appleflags(v5);
  SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(v5);
  Type = CGColorSpaceGetType();
  Model = CGColorSpaceGetModel(SourceGeomColorSpace);
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(SourceGeomColorSpace);
  hasAlpha = IIOImagePixelDataProvider::hasAlpha(v5);
  Ref = IIOImageSource::imageReadRef(v5);
  RenderingIntent = CGImageGetRenderingIntent(Ref);
  v14 = CGColorSpaceCopyData(SourceGeomColorSpace, RenderingIntent);
  v130 = v14;
  if (v14)
  {
    v15 = v14;
    BytePtr = CFDataGetBytePtr(v14);
    Length = CFDataGetLength(v15);
  }

  else
  {
    BytePtr = 0;
    Length = 0;
  }

  v164 = 0;
  v163 = 0;
  ObjectForKey = IIODictionary::getObjectForKey(a4, @"{IPTC}");
  v137 = v5;
  v150 = AlphaInfo;
  if (ObjectForKey)
  {
    valuePtr = 0;
    v167 = 0;
    v168 = 0;
    IIODictionary::IIODictionary(&valuePtr, ObjectForKey);
    v17 = SizeOfIPTCData(&valuePtr);
    v18 = v17;
    if (v17)
    {
      v19 = malloc_type_malloc(v17, 0x100004077774924uLL);
      if (!v19)
      {
        _cg_jpeg_mem_term("writeOne", 1413, "*** ERRROR: could not allocate iptcData - size=%d\n");
        IIODictionary::~IIODictionary(&valuePtr);
        v35 = 0;
        v38 = 0;
        v37 = 0;
        table = 0;
        v121 = 4294967246;
        goto LABEL_226;
      }

      WriteIPTCData(&valuePtr, v19);
    }

    else
    {
      v19 = 0;
    }

    IIODictionary::~IIODictionary(&valuePtr);
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  __nitems = v18;
  v132 = v19;
  if (v5)
  {
    v5 = IIOImageSource::count(v5);
    v20 = IIO_Reader::testHeaderSize(v137);
    v21 = IIOImagePlus::getSourceGeomColorSpace(v137);
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v131 = CreateExifBufferFromPropertiesJPEG(a3, v5, v20, v21, 0, @"com.adobe.photoshop-image", &v164);
  if (v164 <= 6)
  {
    v22 = 0;
  }

  else
  {
    v22 = (v164 - 6);
  }

  if (IIODictionary::getBoolForKey(a4, @"kCGImageMetadataShouldExcludeXMP"))
  {
    goto LABEL_25;
  }

  v23 = IIODictionary::getObjectForKey(a4, @"{MetaData}");
  v24 = v23;
  if (v23)
  {
    v25 = CFGetTypeID(v23);
    if (v25 == CGImageMetadataGetTypeID())
    {
      XMPData = CGImageMetadataCreateXMPData(v24, 0);
      goto LABEL_23;
    }
  }

  v27 = CGImageMetadataCreateFromLegacyProps(a4);
  v28 = v27;
  if (!v27)
  {
LABEL_25:
    v29 = 0;
    goto LABEL_26;
  }

  XMPData = CGImageMetadataCreateXMPData(v27, 0);
  CFRelease(v28);
LABEL_23:
  v29 = XMPData;
  if (XMPData)
  {
    v140 = CFDataGetBytePtr(XMPData);
    v30 = CFDataGetLength(XMPData);
    v29 = XMPData;
    goto LABEL_27;
  }

LABEL_26:
  v140 = 0;
  v30 = 0;
LABEL_27:
  if (Type == 7)
  {
    v31 = v29;
    BaseColorSpace = CGColorSpaceGetBaseColorSpace(SourceGeomColorSpace);
    Model = CGColorSpaceGetModel(BaseColorSpace);
    if (Model == kCGColorSpaceModelRGB)
    {
      v145 = 0;
      v33 = 2;
      v29 = v31;
      v34 = v150;
      goto LABEL_40;
    }

    v29 = v31;
  }

  v34 = v150;
  if (Model)
  {
    v33 = 3;
  }

  else
  {
    v33 = 1;
  }

  if (Model < kCGColorSpaceModelCMYK)
  {
    v145 = 0;
  }

  else if (Model == kCGColorSpaceModelCMYK)
  {
    v145 = 1;
    v33 = 4;
  }

  else
  {
    if (Model != kCGColorSpaceModelLab)
    {
      goto LABEL_63;
    }

    v145 = 0;
    v33 = 9;
  }

LABEL_40:
  if (Error == 16 || Error == 8)
  {
    v35 = 0;
    v36 = 4294967246;
    table = 0;
    v37 = 0;
    v38 = 0;
    if (!size || !SourceGeomColorSpace)
    {
      goto LABEL_220;
    }

    cf = v29;
    v39 = NumberOfComponents + hasAlpha;
    v40 = v39 != 4 || v34 == 0;
    v41 = v40;
    v134 = v41;
    v43 = v34 == 4 || v34 == 2;
    v126 = v43;
    LODWORD(__ptr) = 1397768760;
    WORD2(__ptr) = 256;
    WORD2(v156) = bswap32(v39) >> 16;
    *(&v156 + 6) = bswap32(v149);
    *(&v156 + 10) = bswap32(v148);
    v133 = Error;
    HIWORD(v156) = bswap32(Error) >> 16;
    v157 = v33 << 8;
    if (IIOImageWriteSession::putBytes(this[2], &__ptr, 0x1AuLL) != 26)
    {
      table = 0;
      goto LABEL_62;
    }

    if (Type == 7)
    {
      bzero(&valuePtr, 0x304uLL);
      BYTE2(valuePtr) = 3;
      v44 = CGColorSpaceGetBaseColorSpace(SourceGeomColorSpace);
      v45 = CGColorSpaceGetNumberOfComponents(v44);
      ColorTableCount = CGColorSpaceGetColorTableCount(SourceGeomColorSpace);
      table = malloc_type_malloc(ColorTableCount * v45, 0x100004077774924uLL);
      CGColorSpaceGetColorTable(SourceGeomColorSpace, table);
      if (ColorTableCount)
      {
        v47 = (table + 2);
        v48 = &v169;
        do
        {
          *(v48 - 256) = *(v47 - 2);
          *v48 = *(v47 - 1);
          v49 = *v47;
          v47 += 3;
          *(v48 + 256) = v49;
          v48 = (v48 + 1);
          --ColorTableCount;
        }

        while (ColorTableCount);
      }

      if (IIOImageWriteSession::putBytes(this[2], &valuePtr, 0x304uLL) != 772)
      {
        goto LABEL_62;
      }
    }

    else
    {
      LODWORD(valuePtr) = 0;
      v35 = 0;
      table = 0;
      if (IIOImageWriteSession::putBytes(this[2], &valuePtr, 4uLL) != 4)
      {
        v36 = 4294967246;
        v37 = 0;
        v38 = 0;
        goto LABEL_130;
      }
    }

    if (v134)
    {
      v50 = 28;
    }

    else
    {
      v50 = 54;
    }

    v51 = v158 + v50;
    v52 = BytePtr != 0;
    v53 = Length != 0;
    v54 = v52 && v53;
    v40 = !v52 || !v53;
    v55 = Length + (Length & 1) + 12;
    if (v40)
    {
      v55 = 0;
    }

    v56 = v132 != 0;
    v57 = __nitems != 0;
    v58 = v57 && v56;
    v40 = !v57 || !v56;
    v59 = __nitems + (__nitems & 1) + 12;
    if (v40)
    {
      v59 = 0;
    }

    v60 = v51 + v55 + v59;
    v61 = v22 + (v22 & 1) + 12;
    if (v131 == 0 || v22 == 0)
    {
      v61 = 0;
    }

    v62 = v60 + v61;
    if (v140)
    {
      v63 = v30 == 0;
    }

    else
    {
      v63 = 1;
    }

    v64 = !v63;
    v123 = v64;
    if (!v63)
    {
      if (v58)
      {
        v65 = 40;
      }

      else
      {
        v65 = 12;
      }

      v62 += v30 + (v30 & 1) + v65;
    }

    v158 = bswap32(v62);
    if (IIOImageWriteSession::putBytes(this[2], &v158, 4uLL) == 4 && ((v134 & 1) != 0 || IIOImageWriteSession::putBytes(this[2], &gAlphaNames, 0x1AuLL) == 26))
    {
      LOWORD(v160) = -4861;
      HIDWORD(v160) = 0x10000000;
      if (IIOImageWriteSession::putBytes(this[2], &v159, 0xCuLL) == 12)
      {
        if (IIODictionary::containsKey(a3, @"DPIWidth") && IIODictionary::containsKey(a3, @"DPIHeight"))
        {
          FloatForKey = IIODictionary::getFloatForKey(a3, @"DPIWidth");
          v67 = IIODictionary::getFloatForKey(a3, @"DPIHeight");
          v68 = ((FloatForKey * 65536.0) + 0.5);
          v69 = ((v67 * 65536.0) + 0.5);
        }

        else
        {
          v68 = 4718592;
          v69 = 4718592;
        }

        v161 = bswap32(v68) | 0x100010000000000;
        v162 = bswap32(v69) | 0x100010000000000;
        if (IIOImageWriteSession::putBytes(this[2], &v161, 0x10uLL) == 16)
        {
          if (!v54 || (LOWORD(v160) = 3844, HIDWORD(v160) = bswap32(Length), IIOImageWriteSession::putBytes(this[2], &v159, 0xCuLL) == 12) && IIOImageWriteSession::putBytes(this[2], BytePtr, Length) == Length && ((Length & 1) == 0 || IIOImageWriteSession::putBytes(this[2], &v165, 1uLL) == 1))
          {
            if (!v58 || (LOWORD(v160) = 1028, HIDWORD(v160) = bswap32(__nitems), IIOImageWriteSession::putBytes(this[2], &v159, 0xCuLL) == 12) && IIOImageWriteSession::putBytes(this[2], v132, __nitems) == __nitems && ((__nitems & 1) == 0 || IIOImageWriteSession::putBytes(this[2], &v165, 1uLL) == 1))
            {
              if (v131 == 0 || v22 == 0 || (LOWORD(v160) = 8708, HIDWORD(v160) = bswap32(v22), IIOImageWriteSession::putBytes(this[2], &v159, 0xCuLL) == 12) && IIOImageWriteSession::putBytes(this[2], v131 + 6, v22) == v22 && ((v22 & 1) == 0 || IIOImageWriteSession::putBytes(this[2], &v165, 1uLL) == 1))
              {
                if (v123)
                {
                  LOWORD(v160) = 9220;
                  HIDWORD(v160) = bswap32(v30);
                  if (IIOImageWriteSession::putBytes(this[2], &v159, 0xCuLL) != 12 || IIOImageWriteSession::putBytes(this[2], v140, v30) != v30 || (v30 & 1) != 0 && IIOImageWriteSession::putBytes(this[2], &v165, 1uLL) != 1)
                  {
                    goto LABEL_62;
                  }

                  if (v58)
                  {
                    IIMHashArrayForIIMBlock = CreateIIMHashArrayForIIMBlock(v132, __nitems);
                    LOWORD(v160) = 9476;
                    HIDWORD(v160) = 0x10000000;
                    if (IIOImageWriteSession::putBytes(this[2], &v159, 0xCuLL) != 12)
                    {
                      goto LABEL_62;
                    }

                    for (i = 0; i != 16; ++i)
                    {
                      LOBYTE(valuePtr) = 0;
                      if (IIMHashArrayForIIMBlock)
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(IIMHashArrayForIIMBlock, i);
                        CFNumberGetValue(ValueAtIndex, kCFNumberCharType, &valuePtr);
                      }

                      if (IIOImageWriteSession::putBytes(this[2], &valuePtr, 1uLL) != 1)
                      {
                        goto LABEL_62;
                      }
                    }

                    if (IIMHashArrayForIIMBlock)
                    {
                      CFRelease(IIMHashArrayForIIMBlock);
                    }
                  }
                }

                __nitemsa = malloc_type_malloc(size, 0xD6EE35BCuLL);
                if (__nitemsa)
                {
                  v154 = (appleflags / Error);
                  if (v134)
                  {
                    LODWORD(v167) = 0;
                    valuePtr = 0x8000000;
                    v74 = IIOImageWriteSession::putBytes(this[2], &valuePtr, 0xCuLL);
                    v36 = 4294967246;
                    if (v74 == 12)
                    {
                      v75 = v148;
                      v76 = v149;
                      goto LABEL_135;
                    }
                  }

                  else
                  {
                    if (Error == 8)
                    {
                      v77 = PSDWritePlugin::writeLayerMaskBlock8bit(this, v137, v148, v149, size, v154, 4uLL, v126);
                    }

                    else
                    {
                      v77 = PSDWritePlugin::writeLayerMaskBlock16bit(this, v137, v148, v149, size, v73, 4uLL, v126);
                    }

                    v75 = v148;
                    v76 = v149;
                    v36 = v77;
                    if (!v77)
                    {
LABEL_135:
                      v163 = 0;
                      v78 = v76 * v75;
                      v124 = v36;
                      if (Error == 8)
                      {
                        v80 = (2 * v39 * v76);
                        v163 = 256;
                        v81 = ((v75 + 127) * 0x204081020408103uLL) >> 64;
                        v79 = (v75 + ((v81 + ((v75 + 127 - v81) >> 1)) >> 6)) * v76;
                        if (v80)
                        {
                          v125 = 2 * v39 * v76;
                          v37 = malloc_type_malloc(v80, 0x1000040BDFB0063uLL);
                          if (!v37)
                          {
                            _cg_jpeg_mem_term("writeOne", 1737, "*** ERRROR: could not allocate rlebuf - size=%d\n");
                            v37 = 0;
                            goto LABEL_240;
                          }
                        }

                        else
                        {
                          v125 = 0;
                          v37 = 0;
                        }
                      }

                      else
                      {
                        v125 = 0;
                        v37 = 0;
                        v79 = (v78 * Error) >> 3;
                      }

                      if (is_mul_ok(v39, v79))
                      {
                        v142 = v39 * v79;
                        v144 = v37;
                        v38 = malloc_type_malloc(v39 * v79, 0x100004077774924uLL);
                        if (v38)
                        {
                          if (Error == 16 && v39)
                          {
                            v82 = v170;
                            v83 = 1;
                            do
                            {
                              *v82++ = v79;
                              v84 = v39 > v83++;
                            }

                            while (v84);
                          }

                          IIOImagePixelDataProvider::rewind(v137);
                          if (v149)
                          {
                            v85 = 0;
                            v86 = 0;
                            v87 = v39 - 1;
                            if (v144)
                            {
                              v88 = v39 == 0;
                            }

                            else
                            {
                              v88 = 1;
                            }

                            v90 = v88 || Error != 8;
                            v127 = v90;
                            v91 = 2 * v78;
                            v147 = v79;
                            while (1)
                            {
                              Bytes = IIOImagePixelDataProvider::getBytes(v137, __nitemsa);
                              if (Bytes != size)
                              {
                                goto LABEL_209;
                              }

                              v135 = v86;
                              if (v133 != 16)
                              {
                                break;
                              }

                              v93 = &v38[2 * v148 * v86];
                              v94 = v149;
                              if (v150 <= 2)
                              {
                                v95 = __nitemsa;
                                switch(v150)
                                {
                                  case 0:
                                    goto LABEL_195;
                                  case 1:
LABEL_202:
                                    if (v148)
                                    {
                                      v114 = 0;
                                      do
                                      {
                                        v115 = 0;
                                        if (v39 != 1)
                                        {
                                          v116 = 1;
                                          v117 = v93;
                                          do
                                          {
                                            *v117 = v95[v115] ^ ((v145 << 15) >> 15);
                                            v115 = v116;
                                            v117 += v91;
                                            v84 = v87 > v116++;
                                          }

                                          while (v84);
                                        }

                                        *&v38[2 * (v85 + v115 * v149) * v148 + 2 * v114] = v95[v115];
                                        v114 = (v114 + 1);
                                        v95 += v154;
                                        v93 += 2;
                                      }

                                      while (v148 > v114);
                                    }

                                    break;
                                  case 2:
                                    goto LABEL_177;
                                }
                              }

                              else
                              {
                                if (v150 <= 4)
                                {
                                  v95 = __nitemsa;
                                  if (v150 == 3)
                                  {
                                    goto LABEL_202;
                                  }

LABEL_177:
                                  if (v148)
                                  {
                                    v102 = 0;
                                    do
                                    {
                                      if (v39 == 1)
                                      {
                                        v106 = 0;
                                      }

                                      else
                                      {
                                        v103 = 1;
                                        v104 = v93;
                                        do
                                        {
                                          v105 = v103;
                                          *v104 = v95[v103] ^ ((v145 << 15) >> 15);
                                          v104 += v91;
                                          ++v103;
                                        }

                                        while (v87 > v105);
                                        v106 = v105;
                                      }

                                      *&v38[2 * (v85 + v106 * v149) * v148 + 2 * v102] = *v95;
                                      v102 = (v102 + 1);
                                      v95 += v154;
                                      v93 += 2;
                                    }

                                    while (v148 > v102);
                                  }

                                  goto LABEL_208;
                                }

                                v95 = __nitemsa;
                                if (v150 == 5)
                                {
LABEL_195:
                                  if (v148)
                                  {
                                    LODWORD(v110) = 0;
                                    do
                                    {
                                      if (v39)
                                      {
                                        v111 = 0;
                                        v112 = 1;
                                        v113 = v93;
                                        do
                                        {
                                          *v113 = v95[v111] ^ ((v145 << 15) >> 15);
                                          v111 = v112;
                                          v113 += v91;
                                          v84 = v39 > v112++;
                                        }

                                        while (v84);
                                      }

                                      v110 = (v110 + 1);
                                      v95 += v154;
                                      v93 += 2;
                                    }

                                    while (v148 > v110);
                                  }

                                  goto LABEL_208;
                                }

                                if (v150 == 6 && v148)
                                {
                                  LODWORD(v107) = 0;
                                  do
                                  {
                                    if (v39)
                                    {
                                      v108 = 1;
                                      v109 = v93;
                                      do
                                      {
                                        *v109 = v95[v108] ^ ((v145 << 15) >> 15);
                                        v109 += v91;
                                        v84 = v39 > v108++;
                                      }

                                      while (v84);
                                    }

                                    v107 = (v107 + 1);
                                    v95 += v154;
                                    v93 += 2;
                                  }

                                  while (v148 > v107);
                                }
                              }

LABEL_208:
                              v85 = v135 + 1;
                              v86 = v135 + 1;
                              v79 = v147;
                              if (v94 <= v85)
                              {
                                goto LABEL_209;
                              }
                            }

                            v96 = v150;
                            v94 = v149;
                            v97 = __nitemsa;
                            if (v127)
                            {
                              goto LABEL_208;
                            }

                            v98 = 0;
                            v99 = 1;
                            while (1)
                            {
                              if (v96 == 2)
                              {
                                goto LABEL_170;
                              }

                              v100 = &v97[v98];
                              if (v96 == 6)
                              {
                                ++v100;
                                goto LABEL_172;
                              }

                              if (v96 == 4)
                              {
LABEL_170:
                                v100 = &v97[v99 % v154];
                              }

LABEL_172:
                              v101 = *(v170 + v98);
                              Bytes = PSDWritePlugin::PackBits(Bytes, v100, v154, v148, &v38[v98 * v147 + v101], &v38[v142], v145);
                              v97 = __nitemsa;
                              v96 = v150;
                              v94 = v149;
                              v144[v85 + v98 * v149] = __rev16(Bytes);
                              *(v170 + v98) = v101 + Bytes;
                              v98 = v99;
                              v84 = v39 > v99++;
                              if (!v84)
                              {
                                goto LABEL_208;
                              }
                            }
                          }

LABEL_209:
                          if (IIOImageWriteSession::putBytes(this[2], &v163, 2uLL) == 2)
                          {
                            v37 = v144;
                            if (!v144 || (v37 = v144, IIOImageWriteSession::putBytes(this[2], v144, v125) == v125))
                            {
                              if (v39)
                              {
                                v118 = 0;
                                v119 = 1;
                                while (1)
                                {
                                  v120 = *(v170 + v118);
                                  if (IIOImageWriteSession::putBytes(this[2], &v38[v118 * v79], v120) != v120)
                                  {
                                    goto LABEL_243;
                                  }

                                  v118 = v119;
                                  v84 = v39 > v119++;
                                  if (!v84)
                                  {
                                    v36 = 0;
                                    v29 = cf;
                                    v35 = __nitemsa;
                                    goto LABEL_217;
                                  }
                                }
                              }

                              v36 = 0;
LABEL_219:
                              v29 = cf;
                              v35 = __nitemsa;
                              goto LABEL_220;
                            }

LABEL_241:
                            v29 = cf;
                            v35 = __nitemsa;
                            v36 = v124;
                            goto LABEL_220;
                          }
                        }

                        else
                        {
                          PSDWritePlugin::writeOne();
                          v38 = 0;
                        }

LABEL_243:
                        v29 = cf;
                        v35 = __nitemsa;
                        v36 = v124;
LABEL_217:
                        v37 = v144;
                        goto LABEL_220;
                      }

LABEL_240:
                      v38 = 0;
                      goto LABEL_241;
                    }
                  }

                  v37 = 0;
                  v38 = 0;
                  goto LABEL_219;
                }

                _cg_jpeg_mem_term("writeOne", 1694, "*** ERRROR: could not allocate rowbuf - size=%d\n");
              }
            }
          }
        }
      }
    }

LABEL_62:
    v37 = 0;
    v38 = 0;
    v35 = 0;
    v36 = 4294967246;
LABEL_130:
    v29 = cf;
    goto LABEL_220;
  }

LABEL_63:
  table = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 4294967246;
LABEL_220:
  v121 = v36;
  if (v29)
  {
    CFRelease(v29);
  }

  if (v131)
  {
    free(v131);
  }

  if (v132)
  {
    free(v132);
  }

LABEL_226:
  if (v130)
  {
    CFRelease(v130);
  }

  if (v38)
  {
    free(v38);
  }

  if (v35)
  {
    free(v35);
  }

  if (v37)
  {
    free(v37);
  }

  if (table)
  {
    free(table);
  }

  return v121;
}