BOOL _NTKImageWriteToFile(CGImage *a1, NSString *a2)
{
  v3 = [NSURL fileURLWithPath:a2];
  v4 = [UTTypePNG identifier];
  v5 = CGImageDestinationCreateWithURL(v3, v4, 1uLL, 0);

  if (!v5)
  {
    return 0;
  }

  CGImageDestinationAddImage(v5, a1, 0);
  v6 = CGImageDestinationFinalize(v5);
  CFRelease(v5);
  return v6;
}

uint64_t _NTKRawWriteToFile(const void **a1, int a2, int a3, void *a4)
{
  v7 = a4;
  v8 = CGDataProviderCreateWithData(0, *a1, 4 * a2 * a3, 0);
  v9 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  v10 = CGImageCreate(a2, a3, 8uLL, 0x20uLL, 4 * a2, v9, 0, v8, 0, 0, kCGRenderingIntentDefault);
  _NTKImageWriteToFile(v10, v7);
  CGImageRelease(v10);
  CGDataProviderRelease(v8);
  CGColorSpaceRelease(v9);

  return 1;
}

NTKKaleidoscopePhotoAnalysis *NTKKaleidoscopeAnalyzePhoto(void *a1, void *a2, char a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, double a9)
{
  v17 = a1;
  v18 = a2;
  v19 = +[NTKKaleidoscopePhotoAnalysis defaultAnalysis];
  if (v17 && (v154.origin.x = a4, v154.origin.y = a5, v154.size.width = a6, v154.size.height = a7, CGRectGetWidth(v154) > 1.0) && (v155.origin.x = a4, v155.origin.y = a5, v155.size.width = a6, v155.size.height = a7, CGRectGetHeight(v155) > 1.0))
  {
    v142 = 0;
    v140 = 0u;
    v141 = 0u;
    if (v19)
    {
      objc_msgSend_structure(v19);
    }

    width = a8;
    v20 = (4 * width);
    height = a9;
    v21 = malloc_type_malloc((v20 * height), 0x100004052888210uLL);
    bzero(v21, (v20 * height));
    v22 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
    c = CGBitmapContextCreate(v21, width, height, 8uLL, v20, v22, 1u);
    v23 = v17;
    v116 = v21;
    v110 = v22;
    v111 = v19;
    v108 = a3;
    v114 = v18;
    v112 = v17;
    v24 = [v17 CGImage];
    v156.origin.x = a4;
    v156.origin.y = a5;
    v156.size.width = a6;
    v156.size.height = a7;
    v25 = CGImageCreateWithImageInRect(v24, v156);
    v157.size.width = width;
    v157.size.height = height;
    v157.origin.x = 0.0;
    v157.origin.y = 0.0;
    CGContextDrawImage(c, v157, v25);
    image = v25;
    memset(v152, 0, sizeof(v152));
    memset(v151, 0, sizeof(v151));
    v146 = vsub_s32(0x100000000, vdup_n_s32(width));
    v26 = 0x1FFFFFFFFuLL;
    v147 = 0x1FFFFFFFFLL;
    v149 = a8;
    v150 = width + 1;
    v27 = (height - 1);
    v28 = 0.0;
    v29 = 0.0;
    v145 = ~width;
    v148 = width - 1;
    if (v27 >= 2)
    {
      v30 = v21 + 4;
      v31 = 1;
      LODWORD(v21) = a8;
      do
      {
        if ((width - 1) >= 2)
        {
          v32 = (v30 + 4 * v21);
          v33 = width - 2;
          do
          {
            v34 = *v32++;
            v20 = v20 & 0xFFFFFFFF00000000 | v34;
            v26.f32[0] = sub_1E84(v20, v26);
            v28 = v28 + v35;
            v29 = v29 + v36;
            v37 = ((v26.f32[0] * 128.0) + 0.5) & 0x7F;
            v26.f32[0] = *(v152 + v37) + v36;
            *(v152 + v37) = v26.i32[0];
            --v33;
          }

          while (v33);
        }

        ++v31;
        v21 = (v21 + width);
      }

      while (v31 != v27);
    }

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v18 = v114;
    obj = v114;
    v38 = [obj countByEnumeratingWithState:&v136 objects:v144 count:16];
    v39 = v116;
    if (v38)
    {
      v106 = v29;
      v107 = v28;
      v40 = 0;
      v118 = *v137;
      v122 = a9 + -1.0;
      v123 = a8 + -1.0;
      v41 = 0.0;
      v42 = 0.0;
      v43 = 0.0;
      do
      {
        v44 = 0;
        v120 = v38;
        do
        {
          if (*v137 != v118)
          {
            objc_enumerationMutation(obj);
          }

          [*(*(&v136 + 1) + 8 * v44) rectValue];
          v162.origin.x = v45;
          v162.origin.y = v46;
          v162.size.width = v47;
          v162.size.height = v48;
          v158.origin.x = 1.0;
          v158.origin.y = 1.0;
          v158.size.height = a9 + -1.0;
          v158.size.width = a8 + -1.0;
          v159 = CGRectIntersection(v158, v162);
          v124 = v44;
          y = v159.origin.y;
          v50 = v159.size.height - 1;
          v128 = v50 + v159.origin.y;
          if (!__CFADD__(v50, v159.origin.y))
          {
            x = v159.origin.x;
            v52 = v159.size.width + v159.origin.x - 1;
            do
            {
              if (v52 >= x)
              {
                v53 = &v116[4 * y * width + 4];
                v54 = x;
                do
                {
                  v21 = v21 & 0xFFFFFFFF00000000 | *v53;
                  *&v159.origin.x = sub_1E84(v21, v159.origin);
                  v57 = 0;
                  v58 = 0;
                  do
                  {
                    v59 = *&v53[4 * *(&v145 + v57)];
                    v58 = vmla_n_f32(v58, qword_1B420[v57++], ((BYTE1(v59) * 0.0028047) + (v59 * 0.00083373)) + (BYTE2(v59) * 0.00028314));
                  }

                  while (v57 != 8);
                  v43 = v43 + sqrtf(vaddv_f32(vmul_f32(v58, v58)));
                  v42 = v42 + v56;
                  v41 = v41 + v55;
                  ++v40;
                  v60 = ((*&v159.origin.x * 128.0) + 0.5) & 0x7F;
                  *&v159.origin.x = v55 + *(v151 + v60);
                  *(v151 + v60) = LODWORD(v159.origin.x);
                  ++v54;
                  v53 += 4;
                }

                while (v54 <= v52);
              }

              ++y;
            }

            while (y <= v128);
          }

          v44 = v124 + 1;
        }

        while ((v124 + 1) != v120);
        v38 = [obj countByEnumeratingWithState:&v136 objects:v144 count:{16, v159.origin.x}];
      }

      while (v38);

      v19 = v111;
      v17 = v112;
      v18 = v114;
      v61 = v110;
      v39 = v116;
      if (v40 >= 1)
      {
        v62 = 0;
        v63 = v40;
        v64 = v42 / v40;
        v65 = ((width - 2) * (height - 2));
        v66 = 0.0;
        v67 = v106 / v65;
        do
        {
          if (*(v151 + v62) > 0.01)
          {
            v66 = v66 + 1.0;
          }

          v62 += 4;
        }

        while (v62 != 512);
        v68 = 0;
        v119 = v43 / v63;
        v69 = 0.0;
        v70 = 0.0;
        v71 = v107 / v65;
        do
        {
          v72 = vcvts_n_f32_u32(v68, 7uLL);
          if (*(v152 + v68) > v69)
          {
            v70 = v72;
            v69 = *(v152 + v68);
          }

          ++v68;
        }

        while (v68 != 128);
        v121 = v40;
        v73 = v41 / v63;
        v125 = v64;
        if ((v64 * 0.75) >= ((v73 * 0.75) + 0.25))
        {
          v74 = (v73 * 0.75) + 0.25;
        }

        else
        {
          v74 = v64 * 0.75;
        }

        v75 = v71 * 0.5;
        DWORD1(v140) = sub_1F5C(v70, v67 * 0.75, v71 * 0.5);
        *(&v140 + 1) = __PAIR64__(v77, v76);
        LODWORD(v141) = sub_1F5C(v70, v67 * 0.9, v71 * 0.4);
        *(&v141 + 4) = __PAIR64__(v79, v78);
        HIDWORD(v141) = sub_1F5C(v70, v73, v74);
        v142 = __PAIR64__(v81, v80);
        v132 = 0u;
        v133 = 0u;
        v134 = 0u;
        v135 = 0u;
        v126 = obj;
        v82 = [v126 countByEnumeratingWithState:&v132 objects:v143 count:16];
        if (v82)
        {
          v129 = *v133;
          v83 = 0.0;
          v84 = 0.0;
          do
          {
            for (i = 0; i != v82; i = i + 1)
            {
              if (*v133 != v129)
              {
                objc_enumerationMutation(v126);
              }

              [*(*(&v132 + 1) + 8 * i) rectValue];
              v163.origin.x = v86;
              v163.origin.y = v87;
              v163.size.width = v88;
              v163.size.height = v89;
              v160.origin.x = 1.0;
              v160.origin.y = 1.0;
              v160.size.height = v122;
              v160.size.width = v123;
              v161 = CGRectIntersection(v160, v163);
              v90 = v161.origin.y;
              v91 = v161.size.height - 1;
              v92 = v91 + v161.origin.y;
              if (!__CFADD__(v91, v161.origin.y))
              {
                v93 = v161.origin.x;
                v94 = v161.size.width + v161.origin.x - 1;
                v95 = &v116[4 * v161.origin.x];
                do
                {
                  if (v94 >= v93)
                  {
                    v96 = &v95[4 * v90 * width];
                    v97 = v93;
                    do
                    {
                      v21 = v21 & 0xFFFFFFFF00000000 | *v96;
                      sub_1E84(v21, v161.origin);
                      *&v161.origin.x = vabds_f32(v98, v75);
                      if (*&v161.origin.x < 0.1)
                      {
                        *&v161.origin.x = ((0.1 - *&v161.origin.x) / 0.01) * sqrtf((0.1 - *&v161.origin.x) / 0.01);
                        v83 = v83 + *&v161.origin.x;
                      }

                      if (v98 > 0.85)
                      {
                        *&v161.origin.x = ((v98 + -0.85) / 0.01) * sqrtf((v98 + -0.85) / 0.01);
                        v84 = v84 + *&v161.origin.x;
                      }

                      ++v97;
                      v96 += 4;
                    }

                    while (v97 <= v94);
                  }

                  ++v90;
                }

                while (v90 <= v92);
              }
            }

            v82 = [v126 countByEnumeratingWithState:&v132 objects:v143 count:{16, v161.origin.x}];
          }

          while (v82);
        }

        else
        {
          v83 = 0.0;
          v84 = 0.0;
        }

        v19 = v111;
        v17 = v112;
        v18 = v114;
        v61 = v110;
        v39 = v116;
        if (v119 <= 0.4)
        {
          v102 = (v84 / v121) > 0.015;
          if (v125 > 0.8)
          {
            v102 = (v66 / v121) > 0.11;
            if ((v83 / v121) > 0.015)
            {
              v102 = 1;
            }
          }
        }

        else
        {
          v102 = 1;
        }

        LOBYTE(v140) = v102;
        BYTE1(v140) = (v125 > 0.8) & ~v102;
        if ((v108 & 1) != 0 && ((v125 > 0.8) & ~v102) != 0)
        {
          BYTE1(v140) = 0;
          *(&v140 + 1) = 0x3F80000000000000;
          DWORD1(v140) = 0;
          *&v103 = *(&v142 + 1) * 0.9;
          *&v104 = *&v142 + (1.0 - *&v142) * 0.15;
          v142 = __PAIR64__(v103, v104);
        }
      }
    }

    else
    {

      v19 = v111;
      v17 = v112;
      v61 = v110;
    }

    free(v39);
    CGImageRelease(image);
    CGContextRelease(c);
    CGColorSpaceRelease(v61);
    v105 = [NTKKaleidoscopePhotoAnalysis alloc];
    v130[0] = v140;
    v130[1] = v141;
    v131 = v142;
    v99 = [(NTKKaleidoscopePhotoAnalysis *)v105 initWithStructure:v130];
  }

  else
  {
    v99 = v19;
  }

  v100 = v99;

  return v100;
}

float sub_1E84(int a1, float32x4_t a2)
{
  a2.f32[0] = a1;
  a2.f32[1] = BYTE1(a1);
  a2.f32[2] = BYTE2(a1);
  v2 = vdivq_f32(a2, vdupq_n_s32(0x437F0000u));
  if (v2.f32[0] >= v2.f32[1])
  {
    v3 = v2.f32[0];
  }

  else
  {
    v3 = v2.f32[1];
  }

  if (v2.f32[0] >= v2.f32[1])
  {
    v4 = v2.f32[1];
  }

  else
  {
    v4 = v2.f32[0];
  }

  if (v3 >= v2.f32[2])
  {
    v5 = v3;
  }

  else
  {
    v5 = v2.f32[2];
  }

  if (v4 >= v2.f32[2])
  {
    v6 = v2.f32[2];
  }

  else
  {
    v6 = v4;
  }

  result = 0.0;
  if (v5 > v6)
  {
    v8 = v5 - v6;
    v9 = ((v2.f32[0] - v2.f32[1]) / (v5 - v6)) + 4.0;
    if (v2.f32[1] == v5)
    {
      v9 = ((v2.f32[2] - v2.f32[0]) / v8) + 2.0;
    }

    v10 = (v2.f32[1] - v2.f32[2]) / v8;
    v11 = 0.0;
    if (v2.f32[1] < v2.f32[2])
    {
      v11 = 6.0;
    }

    v12 = v11 + v10;
    if (v2.f32[0] != v5)
    {
      v12 = v9;
    }

    return v12 / 6.0;
  }

  return result;
}

float sub_1F5C(float a1, float a2, float a3)
{
  v3 = a3;
  v4 = a3;
  if (a2 >= 0.00001)
  {
    v6 = (a3 + a2) - (a3 * a2);
    v7 = a3 * (a2 + 1.0);
    if (a3 < 0.5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    v9 = -(v8 - (a3 * 2.0));
    v4 = sub_6338(v9, v8, a1 + 0.33333);
    v3 = sub_6338(v9, v8, a1);
    a3 = sub_6338(v9, v8, a1 + -0.33333);
  }

  v10 = 0.0;
  if (v3 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v10 = -1.0;
    v11 = v3;
  }

  if (v3 >= a3)
  {
    a3 = v3;
  }

  if (v4 >= a3)
  {
    v12 = a3;
  }

  else
  {
    v10 = -0.33333 - v10;
    v12 = v4;
  }

  if (v4 >= a3)
  {
    a3 = v4;
  }

  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  return fabsf(v10 + ((v12 - v11) / (((a3 - v13) * 6.0) + 0.00001)));
}

void NTKKaleidoscopeAnalyzeInterestingness(void *a1, float *a2, int a3, int a4, int a5)
{
  v8 = a1;
  v58 = a2;
  bzero(a2, 4 * a4 * a3);
  v9 = [v8 width];
  v10 = [v8 height];
  v11 = v9 / a3;
  if (v9 / a3 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9 / a3;
  }

  if (v12 >= 16)
  {
    v13 = 16;
  }

  else
  {
    v13 = v12;
  }

  v72 = v13;
  v14 = v10 / a4;
  v65 = v10 / a4;
  if (v10 / a4 <= 1)
  {
    v14 = 1;
  }

  if (v14 >= 16)
  {
    v15 = 16;
  }

  else
  {
    v15 = v14;
  }

  v71 = v15;
  v56 = v8;
  v16 = (v71 * a4);
  v70 = v72 * a3;
  if ([v56 width] != v72 * a3 || (v17 = v56, objc_msgSend(v56, "height") != v16))
  {
    v17 = [v56 scaleToWidth:v70 height:v16];
  }

  [v17 contents];
  v55 = v17;
  v66 = v11;
  v18 = malloc_type_malloc(16 * v72 * v71, 0x1000040451B5BE8uLL);
  if (a4 - a5 > a5)
  {
    v67 = a3 - a5;
    v19 = vsub_s32(0x100000000, vdup_n_s32(v72));
    v20 = ((v71 - 2) * (v72 - 2));
    if (v12 >= 0x10)
    {
      v21 = 16;
    }

    else
    {
      v21 = v12;
    }

    v57 = a3;
    v62 = a5 * v72 + a5 * v72 * a3 * v71;
    v59 = a3 * v71 * v72;
    __asm { FMOV            V0.4S, #1.0 }

    v73 = HIDWORD(_Q0);
    v61 = a5;
    v64 = v21;
    v63 = vdupq_n_s32(0x3C23D70Au);
    do
    {
      if (v67 > a5)
      {
        v27 = a5;
        v28 = v62;
        do
        {
          v68 = v27;
          v29 = 0;
          v30 = 0;
          v69 = v28;
          do
          {
            v31 = v30;
            v32 = v71;
            v33 = v28;
            do
            {
              _CLKUIRGB2LAB();
              *&v35 = v34;
              *(&v35 + 1) = __PAIR64__(v73, v36);
              v30 = v31 + 1;
              v18[v31] = v35;
              ++v33;
              ++v31;
              --v32;
            }

            while (v32);
            ++v29;
            v28 += v70;
          }

          while (v29 != v72);
          v74 = ~v72;
          v75 = v19;
          v76 = 0x1FFFFFFFFLL;
          v37 = 0.0;
          v38 = 0.0;
          v77 = v72 - 1;
          v78 = v72;
          v39 = 0.0;
          v40 = 0.0;
          v79 = v72 + 1;
          if (v65 >= 3)
          {
            v41 = 1;
            v42 = v64;
            do
            {
              if (v66 >= 3)
              {
                v43 = 1;
                v44 = v42;
                do
                {
                  v45 = 0;
                  v46 = &v18[++v44];
                  v47 = 0;
                  v48 = 0;
                  v49 = 0;
                  do
                  {
                    v50 = qword_1B420[v45];
                    v51 = vmulq_f32(v46[*(&v74 + v45)], v63);
                    v49 = vmla_n_f32(v49, v50, v51.f32[0]);
                    v48 = vmla_lane_f32(v48, v50, *v51.f32, 1);
                    v47 = vmla_laneq_f32(v47, v50, v51, 2);
                    ++v45;
                  }

                  while (v45 != 8);
                  v40 = v40 + sqrtf(vaddv_f32(vmul_f32(v49, v49)));
                  v39 = v39 + sqrtf(vaddv_f32(vmul_f32(v48, v48)));
                  v38 = v38 + sqrtf(vaddv_f32(vmul_f32(v47, v47)));
                  v37 = v37 + (0.01 * COERCE_FLOAT(*v46));
                  ++v43;
                }

                while (v43 != v72 - 1);
              }

              v42 += v64;
            }

            while (v41++ != v71 - 2);
          }

          v52 = v37 / v20;
          v53 = (v37 / v20) <= 0.9;
          v54 = 1.0;
          if (v53)
          {
            if (v52 < 0.25)
            {
              v54 = v52 * 4.0;
            }
          }

          else
          {
            v54 = (1.0 - v52) * 10.0;
          }

          v58[v61 * v57 + v68] = (((v54 * 0.2) + (sqrtf(v40 / v20) * 0.2)) + (sqrtf(v39 / v20) * 0.3)) + (sqrtf(v38 / v20) * 0.3);
          v27 = v68 + 1;
          v28 = v69 + v72;
        }

        while (v67 != v68 + 1);
      }

      v62 += v59;
      ++v61;
    }

    while (a4 - a5 != v61);
  }

  free(v18);
}

id NTKGeneratePathFromInterestingness()
{
  v0 = __chkstk_darwin();
  v5 = v4;
  v6 = v0;
  v7 = v2 * v1;
  v399 = v1;
  v369 = v2;
  if (v7 < 1)
  {
    v409 = 0;
    v8 = 0;
  }

  else
  {
    v409 = malloc_type_malloc(v7, 0x100004077774924uLL);
    v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
    v1 = v399;
    v2 = v369;
  }

  v9 = v2 - v5;
  if (v2 - v5 > v5)
  {
    v15 = v1 - v5;
    v16 = v5;
    v17 = 4 * v1;
    v18 = (v6 + (v17 + 4) * v5);
    v12 = 0;
    v13 = 1.0;
    v19 = v5;
    v14 = 0.0;
    do
    {
      v20 = v18;
      v21 = v1 - 2 * v5;
      if (v15 > v5)
      {
        do
        {
          v22 = *v20++;
          v23 = v22;
          if (v13 >= v22)
          {
            v13 = v23;
          }

          if (v12.f32[0] < v23)
          {
            v12.f32[0] = v23;
          }

          v14 = v14 + v23;
          --v21;
        }

        while (v21);
      }

      ++v19;
      v18 = (v18 + v17);
    }

    while (v19 != v9);
    v418 = 0;
    v417 = 0;
    v419 = 0;
    v11 = v12.f32[0] - v13;
    v24 = 4 * v1;
    v25 = (v6 + (v24 + 4) * v5);
    do
    {
      v26 = v25;
      v27 = v1 - 2 * v5;
      if (v15 > v5)
      {
        do
        {
          v28 = *v26++;
          v29 = ((((v28 - v13) / v11) * 9.0) + 0.5);
          ++*(&v417 + v29);
          --v27;
        }

        while (v27);
      }

      ++v16;
      v25 = (v25 + v24);
    }

    while (v16 != v9);
    v10 = HIWORD(v419);
    v2 = v369;
  }

  else
  {
    v10 = 0;
    v418 = 0;
    v417 = 0;
    v11 = -1.0;
    v12 = 0;
    v13 = 1.0;
    v14 = 0.0;
    v419 = 0;
  }

  v30 = (v2 - 2 * v5) * (v1 - 2 * v5);
  v31 = v14 / v30;
  LODWORD(v32) = (((v31 - v13) / v11) * 9.0);
  if (v32 <= 7)
  {
    if (v32 <= 4)
    {
      v32 = 4;
    }

    else
    {
      v32 = v32;
    }

    for (i = 8; i > v32; --i)
    {
      v10 += *(&v417 + i);
    }
  }

  v34 = (v13 + v12.f32[0]) * 0.5;
  if (v31 >= v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = v31;
  }

  v36 = v1 - v5;
  if (v9 > v5)
  {
    v37 = 0;
    v38 = v5;
    v39 = 4 * v1;
    v40 = (v6 + (v39 + 4) * v5);
    do
    {
      v41 = v40;
      v42 = v1 - 2 * v5;
      if (v36 > v5)
      {
        do
        {
          v43 = *v41++;
          if (v43 > v35)
          {
            ++v37;
          }

          --v42;
        }

        while (v42);
      }

      ++v38;
      v40 = (v40 + v39);
    }

    while (v38 != v9);
  }

  else
  {
    v37 = 0;
  }

  LODWORD(v44) = v30 - 3;
  if (v10 >= v44)
  {
    v10 = v44;
  }

  if (v37 < v44)
  {
    LODWORD(v44) = v37;
  }

  if (v10 <= 3)
  {
    v10 = 3;
  }

  if (v44 <= 3)
  {
    v44 = 3;
  }

  else
  {
    v44 = v44;
  }

  v393 = (v44 + (v10 - 1) + 1) >> 1;
  if (v9 > v5)
  {
    v46 = v5;
    v47 = 4 * v1;
    v48 = (v6 + (v47 + 4) * v5);
    v45 = -1;
    v12.i32[0] = -1.0;
    do
    {
      if (v36 > v5)
      {
        v49 = v48;
        v50 = v5;
        v51 = v1 - 2 * v5;
        do
        {
          v52 = *v49++;
          v3.f32[0] = v52;
          v45 = vbsl_s8(vdup_lane_s32(vcgt_f32(v3, v12), 0), __PAIR64__(v46, v50), v45);
          if (v52 > v12.f32[0])
          {
            v12.f32[0] = v3.f32[0];
          }

          ++v50;
          --v51;
        }

        while (v51);
      }

      ++v46;
      v48 = (v48 + v47);
    }

    while (v46 != v9);
  }

  else
  {
    v45 = -1;
  }

  v405 = v45;
  v378 = v1;
  v53 = v45.i32[0] + v45.i32[1] * v1;
  v397 = v1 - v5;
  v398 = v9;
  bzero(v409, v7);
  v55 = v397;
  v54 = v398;
  v56 = 0;
  v409[v53] = 1;
  LODWORD(v57) = -1.0;
  v58 = -1;
  v59 = -1;
  do
  {
    v60 = vadd_s32(qword_1B460[v56], v405);
    v61 = v60.i32[0] >= v5 && v60.i32[1] < v398;
    if (v61 && v60.i32[1] >= v5 && v60.i32[0] < v397)
    {
      v64 = v60.i32[0] + v60.i32[1] * v399;
      if (*(v6 + 4 * v64) > *&v57)
      {
        LODWORD(v57) = *(v6 + 4 * v64);
        v59 = v56;
        v58 = v60.i32[0] + v60.i32[1] * v399;
      }
    }

    ++v56;
  }

  while (v56 != 8);
  v371 = v8;
  v65 = 0;
  v66 = v59 + 7;
  v67 = 1;
  v68 = -1.0;
  v69 = -1;
  v70 = v399;
  do
  {
    v71 = vadd_s32(qword_1B460[(v66 + v65) & 7], v405);
    v72 = v67;
    if (v71.i32[0] >= v5 && v71.i32[1] < v398 && v71.i32[1] >= v5 && v71.i32[0] < v397)
    {
      v76 = v71.i32[0] + v71.i32[1] * v399;
      if (*(v6 + 4 * v76) > v68)
      {
        v68 = *(v6 + 4 * v76);
        v69 = v71.i32[0] + v71.i32[1] * v399;
      }
    }

    v67 = 0;
    v65 = 2;
  }

  while ((v72 & 1) != 0);
  v390 = v7;
  v381 = v7;
  size = v6;
  v77 = 0;
  v78 = 0;
  ptr = 0;
  v79 = 0;
  v409[v58] = 1;
  v409[v69] = 1;
  v417 = __PAIR64__(v58, v53);
  LODWORD(v418) = v69;
  do
  {
    v80 = 0;
    v81 = *(&v417 + v79);
    v82 = v81 / v70;
    v83 = v81 % v70;
    do
    {
      v84 = *&qword_1B460[v80] + v83;
      v85 = HIDWORD(*&qword_1B460[v80]) + v82;
      if (v84 >= v5 && v85 >= v5 && v84 < v55 && v85 < v54)
      {
        v89 = v84 + v85 * v70;
        if (!v409[v89])
        {
          v90 = v89;
          if (*(size + 4 * v89) <= v35)
          {
            v92 = 3;
          }

          else
          {
            if (v78 >= v77)
            {
              v77 = 2 * v77 + 2;
              v91 = malloc_type_realloc(ptr, 2 * v77, 0x1000040BDFB0063uLL);
              v54 = v398;
              v70 = v399;
              v55 = v397;
            }

            else
            {
              v91 = ptr;
            }

            ptr = v91;
            v91[v78++] = v90;
            v92 = 2;
          }

          v409[v90] = v92;
        }
      }

      ++v80;
    }

    while (v80 != 8);
    ++v79;
  }

  while (v79 != 3);
  v93 = v5;
  v94 = v54;
  v95 = v55;
  v96 = v378;
  v97 = 3;
  v98 = v371;
  v406 = v5;
  v395 = v54;
  while (1)
  {
    __src = v393 - v97;
    if (v393 - v97 < 1)
    {
      v100 = size;
    }

    else
    {
      v99 = 0;
      v100 = size;
      do
      {
        if (v78 < 1)
        {
          break;
        }

        v101 = *ptr;
        v102 = 0;
        if (v78 != 1)
        {
          v103 = *(size + 4 * *ptr);
          for (j = 1; j != v78; ++j)
          {
            v105 = ptr[j];
            if (*(size + 4 * v105) > v103)
            {
              v103 = *(size + 4 * v105);
              v101 = ptr[j];
              v102 = j;
            }
          }
        }

        if (v78 - 1 != v102)
        {
          memmove(&ptr[v102], &ptr[v102 + 1], 2 * (v78 + ~v102));
          v55 = v397;
          v54 = v398;
          v70 = v399;
          v102 = v78 - 1;
        }

        v106 = 0;
        v409[v101] = 1;
        v107 = v101 / v70;
        v108 = v101 % v70;
        v78 = v102;
        do
        {
          v109 = *&qword_1B460[v106] + v108;
          v110 = HIDWORD(*&qword_1B460[v106]) + v107;
          if (v109 >= v5 && v110 >= v5 && v109 < v55 && v110 < v54)
          {
            v114 = v109 + v110 * v70;
            if (!v409[v114])
            {
              v115 = v114;
              if (*(size + 4 * v114) <= v35)
              {
                v117 = 3;
              }

              else
              {
                if (v78 >= v77)
                {
                  v77 = 2 * v77 + 2;
                  v116 = malloc_type_realloc(ptr, 2 * v77, 0x1000040BDFB0063uLL);
                  v54 = v398;
                  v70 = v399;
                  v55 = v397;
                }

                else
                {
                  v116 = ptr;
                }

                ptr = v116;
                v116[v78++] = v115;
                v117 = 2;
              }

              v409[v115] = v117;
            }
          }

          ++v106;
        }

        while (v106 != 8);
        ++v99;
        v98 = v371;
        v100 = size;
        v96 = v378;
        v93 = v5;
        v94 = v395;
      }

      while (v99 != __src);
    }

    v97 = 0;
    if (v54 > v5)
    {
      v118 = &v409[v5 + v378 * v5];
      v119 = v93;
      do
      {
        v120 = v118;
        v121 = v378 - 2 * v5;
        if (v55 > v5)
        {
          do
          {
            v122 = *v120++;
            if (v122 == 1)
            {
              ++v97;
            }

            --v121;
          }

          while (v121);
        }

        ++v119;
        v118 += v96;
      }

      while (v119 != v94);
    }

    if (v54 <= v5 || v97 >= v393)
    {
      break;
    }

    v123 = -1.0;
    v124 = -1;
    v125 = v93;
    v126 = 0xFFFFFFFFLL;
    do
    {
      if (v55 > v5)
      {
        v127 = v125 * v96;
        v128 = v93;
        v129 = v126;
        v130 = v123;
        do
        {
          v126 = v128 + v127;
          if (v409[v128 + v127] == 3 && (v123 = *(v100 + 4 * v126), v123 > v130))
          {
            v131 = 0;
            while (1)
            {
              v132 = *&qword_1B460[v131] + v128;
              v133 = HIDWORD(*&qword_1B460[v131]) + v125;
              v134 = v132 >= v55 || v132 < v5;
              v135 = v134 || v133 < v5;
              if (!v135 && v133 < v54)
              {
                v137 = v132 + v133 * v70;
                if (!v409[v137] && *(v100 + 4 * v137) > v35)
                {
                  break;
                }
              }

              if (++v131 == 8)
              {
                goto LABEL_171;
              }
            }

            v124 = v137;
          }

          else
          {
LABEL_171:
            v123 = v130;
            v126 = v129;
          }

          ++v128;
          v129 = v126;
          v130 = v123;
        }

        while (v128 != v95);
      }

      ++v125;
    }

    while (v125 != v94);
    if (v123 <= 0.0)
    {
      break;
    }

    v409[v126] = 1;
    if (v78 >= v77)
    {
      v77 = 2 * v77 + 2;
      v138 = malloc_type_realloc(ptr, 2 * v77, 0x1000040BDFB0063uLL);
      v54 = v398;
      v70 = v399;
      v55 = v397;
    }

    else
    {
      v138 = ptr;
    }

    ptr = v138;
    v138[v78++] = v124;
    v409[v124] = 2;
  }

  v139 = v390;
  if (v381 >= 1)
  {
    v140 = v409;
    v141 = v98;
    do
    {
      v142 = *v140++;
      *v141++ = v142 == 1;
      --v139;
    }

    while (v139);
  }

  if (v54 > v5)
  {
    v143 = v93;
    do
    {
      if (v55 > v5)
      {
        v144 = v93;
        do
        {
          if (v98[v143 * v96 + v144])
          {
            v145 = 0;
            v146 = 0;
            v147 = -1;
            do
            {
              v148 = *&qword_1B460[v145] + v144;
              v149 = HIDWORD(*&qword_1B460[v145]) + v143;
              if (v148 < v55 && v148 >= v5 && v149 >= v5 && v149 < v54)
              {
                v153 = v98[v148 + v149 * v70];
                if (v153)
                {
                  v147 = v145;
                }

                v146 += v153;
              }

              ++v145;
            }

            while (v145 != 8);
            if (v146 == 1)
            {
              v154 = 0;
              v155 = v147 + 7;
              v156 = 1;
              v157 = -1;
              v158 = -1.0;
              do
              {
                v159 = v156;
                v160 = HIDWORD(*&qword_1B460[(v155 + v154) & 7]);
                v161 = *&qword_1B460[(v155 + v154) & 7] + v144;
                v162 = v160 + v143;
                if (v161 < v55 && v161 >= v5 && v162 >= v5 && v162 < v54)
                {
                  v166 = v161 + v162 * v70;
                  if (*(v100 + 4 * v166) > v158)
                  {
                    v157 = v166;
                    v158 = *(v100 + 4 * v166);
                  }
                }

                v156 = 0;
                v154 = 2;
              }

              while ((v159 & 1) != 0);
              v98[v157] = 1;
            }
          }

          ++v144;
        }

        while (v144 != v95);
      }

      ++v143;
    }

    while (v143 != v94);
  }

  if (v70 <= v369)
  {
    v167 = v369;
  }

  else
  {
    v167 = v70;
  }

  if (v167 < 1)
  {
LABEL_237:
    *&v57 = -1;
    *(&v57 + 1) = -1;
  }

  else
  {
    v168 = 0;
    v169 = v5;
    while (1)
    {
      v170 = v168 + v5;
      if (v94 - v168 > v168 + v5)
      {
        break;
      }

LABEL_236:
      ++v168;
      ++v169;
      if (v168 == v167)
      {
        goto LABEL_237;
      }
    }

    v171 = &v98[(v96 + 1) * v169];
    v172 = v70 - v170;
    v173 = v169;
    while (v170 >= v172)
    {
LABEL_235:
      ++v173;
      v171 += v96;
      if (v173 >= v94 - v168)
      {
        goto LABEL_236;
      }
    }

    v174 = v171;
    v175 = v169;
    while (1)
    {
      v176 = *v174++;
      if (v176)
      {
        break;
      }

      if (++v175 >= v172)
      {
        goto LABEL_235;
      }
    }

    *&v57 = __PAIR64__(v173, v175);
  }

  v177 = 0;
  v178 = v57;
  if ((v57 & 0x80000000) != 0)
  {
    v180 = 0;
  }

  else
  {
    v179 = DWORD1(v57);
    v180 = 0;
    if ((DWORD1(v57) & 0x80000000) == 0)
    {
      *__srca = v57;
      bzero(v409, v381);
      for (k = 0; k != 8; ++k)
      {
        v182 = vadd_s32(qword_1B460[k], __srca[0]);
        if (v182.i32[0] < v5 || v182.i32[1] < v5 || v182.i32[0] >= v397 || v182.i32[1] >= v398)
        {
          v187 = v371;
          goto LABEL_259;
        }
      }

      k = 0;
      v187 = v371;
      while (1)
      {
        v186 = vadd_s32(qword_1B460[k], __srca[0]);
        if (!v371[v186.i32[0] + v186.i32[1] * v399])
        {
          break;
        }

        if (++k == 8)
        {
          LODWORD(k) = -1;
          break;
        }
      }

LABEL_259:
      v188 = 0;
      v189.i64[1] = -1;
      v189.i64[0] = __PAIR64__(v369, v399);
      while (1)
      {
        v190 = vadd_s32(qword_1B460[(k + v188) & 7], __srca[0]);
        *v191.i8 = v190;
        v191.u64[1] = v190;
        v192.i32[0] = vmovn_s32(vcgtq_s32(v189, v191)).u32[0];
        v192.i32[1] = vmovn_s32(vcgtq_s32(v191, v189)).i32[1];
        if ((vminv_u16(v192) & 1) != 0 && v187[v190.i32[0] + v190.i32[1] * v399])
        {
          break;
        }

        if (++v188 == 8)
        {
          goto LABEL_265;
        }
      }

      LODWORD(k) = (k + v188) & 7;
LABEL_265:
      v193 = v178 + v179 * v399;
      v409[v193] |= 1 << k;
      v194 = malloc_type_realloc(0, 4uLL, 0x1000040BDFB0063uLL);
      *v194 = v193;
      *(&v195 + 1) = __srca[1];
      *&v196 = vadd_s32(qword_1B460[k], __srca[0]);
      v197 = 2;
      v198 = 1;
      v200 = v398;
      v199 = v399;
      v201 = v369;
      v202 = v397;
LABEL_266:
      while (1)
      {
        v203 = 5;
        while (1)
        {
          v204 = (k + v203) & 7;
          *&v195 = vadd_s32(qword_1B460[v204], *&v196);
          if (v195 < v199 && (v195 & 0x80000000) == 0 && (DWORD1(v195) & 0x80000000) == 0 && SDWORD1(v195) < v201 && v187[v195 + DWORD1(v195) * v199])
          {
            break;
          }

          if (++v203 == 13)
          {
            goto LABEL_266;
          }
        }

        v205 = v196 + DWORD1(v196) * v199;
        LODWORD(k) = 1 << v204;
        if (((1 << v204) & v409[v205]) != 0)
        {
          break;
        }

        if (v198 >= v197)
        {
          *__srcd = v195;
          v197 = (2 * v197 + 2);
          v206 = malloc_type_realloc(v194, 2 * v197, 0x1000040BDFB0063uLL);
          v200 = v398;
          v199 = v399;
          v201 = v369;
          v202 = v397;
          v195 = *__srcd;
        }

        else
        {
          v206 = v194;
        }

        v194 = v206;
        v206[v198] = v205;
        v409[v205] |= k;
        ++v198;
        LOBYTE(k) = v204;
        *&v196 = v195;
      }

      v375 = v199 - 1;
      v377 = v201 - 1;
      if (v200 > v5)
      {
        v374 = 0;
        v376 = 0;
        v207 = 0;
        v210 = v5 + v5 * v378;
        v211 = &v409[v210];
        v212 = &v187[v210];
        v208 = size;
        v209 = v198;
        do
        {
          if (v202 > v5)
          {
            v213 = v212;
            v214 = v211;
            v215 = v378 - 2 * v5;
            v216 = v5;
            do
            {
              v217 = *v213++;
              if (v217 == 1)
              {
                v219 = v374;
                v218 = v375;
                if (v375 >= v216)
                {
                  v220 = v216;
                }

                else
                {
                  v220 = v375;
                }

                if (v374 <= v216)
                {
                  v221 = v216;
                }

                else
                {
                  v221 = v374;
                }

                if (v377 >= v406)
                {
                  v222 = v406;
                }

                else
                {
                  v222 = v377;
                }

                v223 = v376;
                if (v376 <= v406)
                {
                  v224 = v406;
                }

                else
                {
                  v224 = v376;
                }

                if (*v214)
                {
                  v225 = 0;
                }

                else
                {
                  v225 = -2;
                }

                if (!*v214)
                {
                  ++v207;
                  v223 = v224;
                  v219 = v221;
                }

                v374 = v219;
                if (*v214)
                {
                  v226 = v377;
                }

                else
                {
                  v226 = v222;
                }

                v377 = v226;
                if (!*v214)
                {
                  v218 = v220;
                }

                v375 = v218;
                v376 = v223;
              }

              else
              {
                v225 = -1;
              }

              *v214++ = v225;
              ++v216;
              --v215;
            }

            while (v215);
          }

          v211 += v378;
          v212 += v378;
          ++v406;
        }

        while (v406 != v395);
      }

      else
      {
        v207 = 0;
        v376 = 0;
        v374 = 0;
        v208 = size;
        v209 = v198;
      }

      v227 = v374 - v375;
      if (v374 - v375 >= v376 - v377)
      {
        v227 = v376 - v377;
      }

      v368 = v227;
      if (v227 > 1 && v207 >= 1)
      {
        v370 = 0;
        v228 = 1;
        v229 = v197;
        while (1)
        {
          v230 = v376 - ((v228 - 1) >> 1);
          if ((v377 + ((v228 - 1) >> 1)) <= v230)
          {
            break;
          }

LABEL_429:
          if (++v228 < v368)
          {
            ++v370;
            if (v207 > 0)
            {
              continue;
            }
          }

          goto LABEL_431;
        }

        v231 = (v228 - 1) >> 1;
        v373 = v231 + v375;
        v232 = v374 - v231;
        v233 = v232;
        v372 = v230;
        v234 = v377 + (v370 >> 1);
        v392 = v228;
        v379 = v232;
LABEL_318:
        if (v373 > v233)
        {
          goto LABEL_428;
        }

        v388 = v234 * v378;
        v235 = (v375 + (v370 >> 1));
        v396 = v234;
LABEL_320:
        if (v409[v235 + v388] != 254)
        {
          goto LABEL_427;
        }

        v385 = v235 + v388;
        v236 = 0;
        v414 = 8;
        v412 = 0;
        do
        {
          v237 = *&qword_1B460[v236] + v235 + (HIDWORD(*&qword_1B460[v236]) + v234) * v199;
          *(v413 + v236) = v237;
          if (v228 > v409[v237])
          {
            v238 = v412++;
            *(&v410 + v238) = v237;
          }

          ++v236;
        }

        while (v236 != 8);
        v387 = v412;
        __srcb = v235;
        if (v412 != 1)
        {
          goto LABEL_391;
        }

        v407 = v410;
        if (v209 < 1)
        {
          v240 = 0;
          v244 = -1;
          v242 = v381;
        }

        else
        {
          v239 = v209;
          v240 = 1;
          v241 = v194;
          v242 = v381;
          while (1)
          {
            v243 = *v241++;
            if (v410 == v243)
            {
              break;
            }

            ++v240;
            if (!--v239)
            {
              v240 = 0;
              v244 = -1;
              goto LABEL_333;
            }
          }

          v244 = v194[v240 % v209];
        }

LABEL_333:
        if (v242 > 4096)
        {
          LODWORD(v208) = 0;
          goto LABEL_390;
        }

        v422 = v242;
        v380 = v207;
        if (v242)
        {
          v245 = &v417;
          do
          {
            *v245 = -NAN;
            v245[1].i32[0] = 0x7FFFFFFF;
            v245[1].i8[4] = 0;
            v245 += 2;
          }

          while (v245 != (&v417 + 2 * v381));
          v246 = *(&v418 + 16 * v407 + 4) | 1;
        }

        else
        {
          v246 = -1;
        }

        v247.i32[0] = v407 % v199;
        v247.i32[1] = v407 / v199;
        v248.i32[0] = v244 % v199;
        v248.i32[1] = v244 / v199;
        v389 = v248;
        v249 = vsub_s32(v247, v248);
        v250 = vmul_s32(v249, v249);
        v251 = (&v417 + 2 * v407);
        v251[1].i32[0] = vadd_s32(v250, vdup_lane_s32(v250, 1)).u32[0];
        ++v251;
        v251[-1].i32[1] = 0;
        v384 = v251;
        v251->i8[4] = v246;
        v252 = 1;
        v416 = 1;
        LODWORD(v415[0]) = v407;
        v253 = v240;
        v391 = v244;
        v382 = -v240;
        v394 = v244;
        while (1)
        {
          v254 = v415[0];
          if (v252 < 2)
          {
            v255 = 0;
          }

          else
          {
            v255 = 0;
            v256 = *(&v417 + 4 * SLODWORD(v415[0]) + 2);
            for (m = 1; m != v252; ++m)
            {
              if (*(&v417 + 4 * *(v415 + m) + 2) < v256)
              {
                v256 = *(&v417 + 4 * *(v415 + m) + 2);
                v255 = m;
              }
            }

            v254 = *(v415 + v255);
          }

          if (v254 != v244)
          {
            break;
          }

          if (v244 < 1)
          {
            goto LABEL_388;
          }

          v258 = -1;
          LODWORD(v208) = -2;
          v259 = v244;
          do
          {
            v260 = (&v417 + 2 * v259);
            v260[1].i32[0] = v258;
            v258 = v259;
            LODWORD(v208) = v208 + 1;
            v259 = v260->i32[0];
          }

          while (v260->i32[0] > 0);
          if ((v208 + 1) >= 3)
          {
            v279 = v384->i32[0];
            if (v384->i32[0] != v244)
            {
              v280 = v209;
              v281 = v382 + v209;
              do
              {
                if (v280 >= v229)
                {
                  v282 = (2 * v229 + 2);
                  v194 = malloc_type_realloc(v194, 2 * v282, 0x1000040BDFB0063uLL);
                  v200 = v398;
                  v199 = v399;
                  v234 = v396;
                  v202 = v397;
                  v229 = v282;
                  v235 = __srcb;
                  v244 = v394;
                }

                if (v253 != v280)
                {
                  v283 = v229;
                  memmove(&v194[v253 + 1], &v194[v253], 2 * v281);
                  v244 = v394;
                  v234 = v396;
                  v199 = v399;
                  v235 = __srcb;
                  v229 = v283;
                  v202 = v397;
                  v200 = v398;
                }

                v194[v253] = v279;
                v409[v279] = v392;
                v279 = *(&v417 + 4 * v279 + 2);
                ++v281;
                ++v280;
              }

              while (v279 != v244);
              v209 = v280;
              v233 = v379;
            }
          }

          else
          {
            LODWORD(v208) = 0;
          }

LABEL_386:
          if (v254 == v244)
          {
            goto LABEL_389;
          }

          v252 = v416;
          if (v416 < 1)
          {
LABEL_388:
            LODWORD(v208) = 0;
LABEL_389:
            v207 = v380;
LABEL_390:
            v228 = v392;
            v207 -= v208;
            v208 = size;
LABEL_391:
            if (v387 >= 2)
            {
              v421 = 0;
              if (v209 >= 1)
              {
                v284 = 0;
                do
                {
                  v285 = 0;
                  v286 = 0;
                  v287 = 0;
                  v288 = v284;
                  v289 = v194[v284++];
                  if (v284 == v209)
                  {
                    v290 = 0;
                  }

                  else
                  {
                    v290 = v288 + 1;
                  }

                  v291 = v194[v290];
                  do
                  {
                    v292 = *(v413 + v285);
                    v287 |= v292 == v289;
                    v286 |= v292 == v291;
                    v285 += 4;
                  }

                  while (v285 != 32);
                  if (v287 & v286)
                  {
                    *&v196 = __PAIR64__(v289, v288);
                    DWORD2(v196) = v291;
                    v293 = v421++;
                    *(&v417 + v293) = v196;
                  }
                }

                while (v284 != v209);
                if (v421 > 0)
                {
                  if (v421 == 1)
                  {
                    v294 = 0;
                  }

                  else
                  {
                    v295 = 0;
                    if (SHIDWORD(v417) / v199 == v418 / v199 || SHIDWORD(v417) % v199 == v418 % v199)
                    {
                      v297 = 0.0;
                    }

                    else
                    {
                      v297 = -1.0;
                    }

                    v298 = v297 + (*(v208 + 4 * SHIDWORD(v417)) + *(v208 + 4 * v418));
                    v299 = &v420;
                    for (n = 1; n != v421; ++n)
                    {
                      v301 = *(v299 - 1);
                      v302 = *v299;
                      if (v301 / v199 == v302 / v199 || v301 % v199 == v302 % v199)
                      {
                        v304 = 0.0;
                      }

                      else
                      {
                        v304 = -1.0;
                      }

                      if ((v304 + (*(v208 + 4 * v301) + *(v208 + 4 * v302))) < v298)
                      {
                        v295 = n;
                        v298 = v304 + (*(v208 + 4 * v301) + *(v208 + 4 * v302));
                      }

                      v299 += 2;
                    }

                    v294 = v295;
                  }

                  v305 = *(&v417 + 4 * v294);
                  if (v209 >= v229)
                  {
                    v306 = (2 * v229 + 2);
                    v307 = malloc_type_realloc(v194, 2 * v306, 0x1000040BDFB0063uLL);
                    v229 = v306;
                    v194 = v307;
                    v200 = v398;
                    v199 = v399;
                    v234 = v396;
                    v202 = v397;
                    v235 = __srcb;
                  }

                  v308 = v385;
                  v309 = v305 + 1;
                  v310 = v305 + 1;
                  v311 = v209 - v309;
                  if (v311)
                  {
                    v312 = v229;
                    memmove(&v194[v310 + 1], &v194[v310], 2 * v311);
                    v308 = v385;
                    v199 = v399;
                    v235 = __srcb;
                    v234 = v396;
                    v202 = v397;
                    v229 = v312;
                    v233 = v379;
                    v200 = v398;
                  }

                  ++v209;
                  v194[v310] = v308;
                  v228 = v392;
                  v409[v308] = v392;
                  --v207;
                }
              }
            }

LABEL_427:
            v61 = v235++ < v233;
            if (!v61)
            {
LABEL_428:
              v61 = v234++ < v372;
              if (!v61)
              {
                goto LABEL_429;
              }

              goto LABEL_318;
            }

            goto LABEL_320;
          }
        }

        if (v252 - 1 != v255)
        {
          v261 = v229;
          memmove(v415 + 4 * v255, v415 + 4 * v255 + 4, 4 * (v252 + ~v255));
          v244 = v394;
          v234 = v396;
          v199 = v399;
          v235 = __srcb;
          v229 = v261;
          v202 = v397;
          v200 = v398;
          v255 = v416 - 1;
        }

        v262 = 0;
        v264 = (&v417 + 2 * v254);
        v416 = v255;
        v264[1].i8[4] = v264[1].i8[4] & 0xFC | 2;
        while (1)
        {
          v265 = qword_1B460[v262];
          v263.i32[1] = v254 / v199;
          v263.i32[0] = v254 % v199;
          v266 = vadd_s32(v265, v263);
          v267 = v266.i32[0] >= v5 && v266.i32[1] < v200;
          v268 = !v267 || v266.i32[1] < v5;
          if (!v268 && v266.i32[0] < v202)
          {
            v270 = v266.i32[0] + v266.i32[1] * v199;
            if (v254 != v407)
            {
              v271 = v391;
              if (v270 == v244)
              {
                goto LABEL_373;
              }
            }

            if (v409[v270] == 254)
            {
              break;
            }
          }

LABEL_367:
          if (++v262 == 8)
          {
            goto LABEL_386;
          }
        }

        v271 = v270;
LABEL_373:
        v272 = (&v417 + 2 * v271);
        v273 = v272[1].i8[4];
        if ((v273 & 2) == 0)
        {
          if ((v272[1].i8[4] & 1) == 0)
          {
            v274 = v416++;
            *(v415 + v274) = v270;
            v272[1].i8[4] = v273 | 1;
          }

          v275 = vmul_s32(v265, v265);
          v276 = vadd_s32(v275, vdup_lane_s32(v275, 1)).u32[0] + v264->i32[1];
          if (v276 < v272->i32[1])
          {
            v272->i32[0] = v254;
            v272->i32[1] = v276;
            v277 = vsub_s32(v266, v389);
            v278 = vmul_s32(v277, v277);
            v272[1].i32[0] = vadd_s32(v278, vdup_lane_s32(v278, 1)).u32[0];
          }
        }

        goto LABEL_367;
      }

LABEL_431:
      if (v209 < 1)
      {
        v316 = 0;
        __srcc = 0;
        v317 = 0;
        v417 = 0;
        LODWORD(v418) = v209;
        HIDWORD(v418) = v209;
        v177 = v194;
      }

      else
      {
        v313 = 0;
        v314 = -1;
        v315 = -1.0;
        v177 = v194;
        do
        {
          if (*(v208 + 4 * v194[v313]) > v315)
          {
            v314 = v313;
            v315 = *(v208 + 4 * v194[v313]);
          }

          ++v313;
        }

        while (v209 != v313);
        __srcc = malloc_type_malloc(8 * v209, 0x100004000313F17uLL);
        HIDWORD(v418) = v209;
        v316 = malloc_type_malloc(8 * v209, 0x100004000313F17uLL);
        v417 = v316;
        v317 = malloc_type_malloc(v209, 0x100004077774924uLL);
        for (ii = 0; ii != v209; v317[ii++] = v319 == v327)
        {
          v319 = 0;
          v320 = v194[(v314 + ii) % v209];
          v321 = v320 / v399;
          v322 = v320 % v399;
          *&v323 = ((v320 % v399) + 0.5) / v399;
          *(&v323 + 1) = ((v320 / v399) + 0.5) / v369;
          __srcc[ii] = v323;
          v324 = v194[(v209 - 1 + v314 + ii) % v209];
          while (1)
          {
            v325.i32[1] = v324 / v399;
            v325.i32[0] = v324 % v399;
            v326 = vadd_s32(qword_1B460[v319], v325);
            if (v326.i32[0] + v326.i32[1] * v399 == v320)
            {
              break;
            }

            if (++v319 == 8)
            {
              LODWORD(v319) = -1;
              break;
            }
          }

          v327 = 0;
          while (1)
          {
            v328 = vadd_s32(qword_1B460[v327], __PAIR64__(v321, v322));
            if (v328.i32[0] + v328.i32[1] * v399 == v194[(v314 + ii + 1) % v209])
            {
              break;
            }

            if (++v327 == 8)
            {
              LODWORD(v327) = -1;
              break;
            }
          }
        }

        memcpy(v316, __srcc, 8 * v209);
        v329 = 0;
        LODWORD(v418) = v209;
        v330 = v209 + 2;
        v331 = 2;
        v332 = vdup_n_s32(0x3F2AAAABu);
        v333 = v209;
        do
        {
          v334 = v329 + 1;
          if ((v317[v329] & 1) == 0)
          {
            v335 = v334 == v209 ? 0 : v329 + 1;
            if (v317[v335] == 1)
            {
              if (v209 < 3)
              {
LABEL_456:
                v338 = -1;
              }

              else
              {
                v336 = v331;
                v337 = v209 - 2;
                v338 = v330;
                while (v317[v336 % v209] == 1)
                {
                  ++v338;
                  ++v336;
                  if (!--v337)
                  {
                    goto LABEL_456;
                  }
                }
              }

              v339 = v329 + v209;
              v340 = v338 - (v329 + v209);
              if (v340 >= 2)
              {
                v341 = 0;
                v342 = __srcc[(v339 - 1) % v209];
                v343 = __srcc[(v338 + 1) % v209];
                v344 = __srcc[v339 % v209];
                v345 = __srcc[v338 % v209];
                v346 = vmul_f32(vadd_f32(v344, v345), 0x3F0000003F000000);
                v347 = vmla_f32(v342, v332, vsub_f32(v344, v342));
                v348 = vmla_f32(v343, v332, vsub_f32(v345, v343));
                v349 = vsub_f32(v344, v347);
                v350 = vsub_f32(v346, v344);
                v351 = vsub_f32(v345, v348);
                v352 = vsub_f32(v346, v345);
                v353 = v340 / 2;
                v354 = v353;
                v355 = v333;
                do
                {
                  v356 = v341 / v354;
                  v357 = 1.0 - sqrtf(1.0 - v356);
                  v358 = sqrtf(v356);
                  v316[v355 % v209] = vmla_n_f32(vmla_n_f32(v347, v349, v358), v350, v357);
                  v316[v338 % v209] = vmla_n_f32(vmla_n_f32(v348, v351, v358), v352, v357);
                  ++v341;
                  --v338;
                  ++v355;
                  --v353;
                }

                while (v353);
              }
            }
          }

          ++v330;
          ++v331;
          ++v333;
          v329 = v334;
        }

        while (v334 != v209);
      }

      sub_63B8(&v417, v415);
      sub_63B8(v415, v413);
      sub_63B8(v413, &v410);
      v359 = v411;
      v360 = objc_alloc_init(NSMutableArray);
      v361 = v410;
      if (v359 >= 1)
      {
        v362 = 0;
        v363 = 8 * v359;
        do
        {
          v408 = HIDWORD(*&v361[v362]);
          v364 = [NSNumber numberWithFloat:?];
          [v360 addObject:v364];

          HIDWORD(v365) = v408;
          LODWORD(v365) = v408;
          v366 = [NSNumber numberWithFloat:v365];
          [v360 addObject:v366];

          v362 += 8;
        }

        while (v363 != v362);
      }

      free(v361);
      free(v413[0]);
      free(v415[0]);
      free(v317);
      free(v316);
      free(__srcc);
      v180 = v360;
    }
  }

  free(ptr);
  free(v177);
  free(v371);
  free(v409);

  return v180;
}

void sub_41B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  free(v59);
  free(a43);
  free(a27);
  free(v58);
  free(a15);
  free(a47);
  _Unwind_Resume(a1);
}

void NTKKaleidoscopeAnalyzeDominance()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __b = v7;
  v8 = v0;
  v9 = [v8 width];
  v10 = [v8 height];
  v11 = v9 / v6;
  if (v9 / v6 <= 1)
  {
    v11 = 1;
  }

  if (v11 >= 16)
  {
    v12 = 16;
  }

  else
  {
    v12 = v11;
  }

  v13 = v10 / v4;
  if (v10 / v4 <= 1)
  {
    v13 = 1;
  }

  if (v13 >= 16)
  {
    v13 = 16;
  }

  v116 = v13;
  v104 = v8;
  v14 = v12 * v6;
  v15 = (v116 * v4);
  if ([v104 width] != v12 * v6 || (v16 = v104, objc_msgSend(v104, "height") != v15))
  {
    v16 = [v104 scaleToWidth:(v12 * v6) height:v15];
  }

  v17 = [v16 contents];
  v103 = v6;
  v120 = 256;
  if (v4 * v6 >= 1)
  {
    memset_pattern16(__b, &unk_1B410, 16 * (v4 * v6));
  }

  v109 = v4 - v2;
  if ((v4 - v2) > v2)
  {
    v113 = v6 - v2;
    v111 = v2 * v12 + v2 * v12 * v6 * v116;
    v107 = v6 * v116 * v12;
    v105 = v2;
    v110 = v2;
    v112 = v12;
    v108 = v2;
    do
    {
      if (v113 > v2)
      {
        v18 = v105;
        v19 = v111;
        do
        {
          v115 = v18;
          v20 = 0;
          LODWORD(v18) = 0;
          v114 = v19;
          do
          {
            v18 = v18;
            v21 = v18 + 1;
            v22 = v12;
            v23 = v19;
            do
            {
              v24 = v21;
              v119[v18++] = v17[v23++];
              ++v21;
              --v22;
            }

            while (v22);
            ++v20;
            v19 += v14;
          }

          while (v20 != v116);
          v124 = 512;
          bzero(v123, 0x2000uLL);
          if (v18 - 1 >= 0)
          {
            v25 = v24;
            v26 = v119;
            do
            {
              v27 = *v26++;
              v28.i64[0] = 0x3F0000003F000000;
              v28.i64[1] = 0x3F0000003F000000;
              v29 = vmlaq_f32(v28, xmmword_1B3E0, v27);
              *v29.f32 = vshl_u32(vcvt_s32_f32(*v29.f32), 0x300000006);
              v123[v29.i32[1] | v29.f32[2] | v29.i32[0]] = vaddq_f32(v27, v123[v29.i32[1] | v29.f32[2] | v29.i32[0]]);
              --v25;
            }

            while (v25);
          }

          v30 = 0;
          v122 = 9;
          while (1)
          {
            v31 = 0;
            v32 = 1.0;
            v33 = -1;
            v34 = (v123 | 0xC);
            do
            {
              v35 = *v34;
              v34 += 4;
              v36 = v35;
              if (v32 <= v36)
              {
                v32 = v36;
                v33 = v31;
              }

              ++v31;
            }

            while (v31 != 512);
            if ((v33 & 0x80000000) != 0)
            {
              break;
            }

            v37 = (v33 >> 3) & 7;
            v38 = v33 & 7;
            if (((v33 >> 6) & 6) != 0)
            {
              v39 = (v33 >> 6) & 7;
            }

            else
            {
              v39 = 1;
            }

            v40 = v39 - 1;
            if (((v33 >> 3) & 6) != 0)
            {
              v41 = (v33 >> 3) & 7;
            }

            else
            {
              v41 = 1;
            }

            if ((v33 & 6) != 0)
            {
              v42 = v33 & 7;
            }

            else
            {
              v42 = 1;
            }

            if (((v33 >> 6) & 7) >= 6)
            {
              v43 = 6;
            }

            else
            {
              v43 = (v33 >> 6) & 7;
            }

            v44 = v43 + 1;
            v45 = 0uLL;
            if (v40 <= v44)
            {
              v46 = v41 - 1;
              v47 = v42 - 1;
              if (v38 >= 6)
              {
                v48 = 6;
              }

              else
              {
                v48 = v38;
              }

              if (v37 >= 6)
              {
                v37 = 6;
              }

              v49 = v37 + 1;
              v50 = v48 - v42 + 3;
              do
              {
                if (v46 <= v49)
                {
                  v51 = v46;
                  do
                  {
                    if (v47 <= v48 + 1)
                    {
                      v52 = v50;
                      v53 = v47;
                      do
                      {
                        v54 = &v123[(v40 << 6) | (8 * v51) | v53];
                        v45 = vaddq_f32(v45, *v54);
                        v54->i64[0] = 0;
                        v54->i64[1] = 0;
                        ++v53;
                        --v52;
                      }

                      while (v52);
                    }

                    _ZF = v51++ == v49;
                  }

                  while (!_ZF);
                }

                _ZF = v40++ == v44;
              }

              while (!_ZF);
            }

            v121[v30++] = v45;
            if (v30 == 9)
            {
              v56 = 9;
              goto LABEL_64;
            }
          }

          if (!v30)
          {
            goto LABEL_77;
          }

          v56 = v30;
LABEL_64:
          v57 = v121;
          v58 = v56;
          do
          {
            v117 = *v57;
            v118 = vdivq_f32(*v57, vdupq_laneq_s32(*v57, 3));
            _CLKUIRGB2LAB();
            _S1 = _V0.S[1];
            __asm { FMLA            S2, S1, V0.S[1] }

            v65.i32[1] = sqrtf(_S2);
            _D0 = vmulq_f32(v65, xmmword_1B3F0).u64[0];
            _S1 = 1077936127;
            v68 = (*&_D0 * 3.0) + 0.1;
            if (*&_D0 >= 0.3)
            {
              v68 = 1.0;
            }

            __asm { FMLA            S4, S1, V0.S[1] }

            if (*(&_D0 + 1) >= 0.3)
            {
              v70 = 1.0;
            }

            else
            {
              v70 = _S4;
            }

            v71 = v118;
            v71.i32[3] = vmuls_lane_f32(v70 * (v70 * (v68 * v68)), v117, 3);
            *v57++ = v71;
            --v58;
          }

          while (v58);
          v12 = v112;
          if (v56 >= 2)
          {
            v72 = 0;
            for (i = 1; i != v56; ++i)
            {
              v74 = v72;
              do
              {
                v75 = v121[v74];
                v76 = v121[v74 + 1];
                if ((vmovn_s32(vcgtq_f32(v76, v75)).i8[6] & 1) == 0)
                {
                  break;
                }

                v121[v74 + 1] = v75;
                v121[v74] = v76;
                v77 = v74-- + 1;
              }

              while (v77 > 1);
              ++v72;
            }
          }

LABEL_77:
          _CLKUIRGB2LAB();
          _CLKUILAB2RGB();
          HIDWORD(v78) = 1.0;
          *&__b[16 * v110 * v6 + 16 * v115] = v78;
          v18 = v115 + 1;
          v19 = v114 + v12;
        }

        while (v113 != v115 + 1);
      }

      v111 += v107;
      ++v110;
      v2 = v108;
    }

    while (v109 != v110);
  }

  v79 = v2 - 2;
  if (v2 >= 2)
  {
    v80 = v2;
    v81 = (v4 - v2) * v6;
    v82 = 16 * v81 + 16 * v2;
    v83 = v6 * v79;
    v84 = &__b[16 * v81 - 16 + 16 * v6 + 16 * v2];
    v85 = 16 * v6;
    v86 = v85 - 16;
    v87 = &__b[v82 - 16];
    v88 = &__b[16 * (v2 - 2) * v6 - 16 + 16 * v2];
    v89 = &__b[16 * v83 + 16 * v2];
    v90 = &__b[16 * v83];
    v91 = v85 ^ 0xFFFFFFFFFFFFFFF0;
    v92 = &__b[16 * (v2 - 1) * v6 - 16 + 16 * v2];
    v93 = v79 - 1;
    v94 = v89 - 16;
    v95 = v6 - v2;
    do
    {
      v96 = v80 - 1;
      if (v80 - 1 <= v103 - v80)
      {
        v98 = 0;
        v97 = v80 - 2;
        do
        {
          *(v88 + 16 * v98) = *(v92 + 16 * v98);
          *(v84 + 16 * v98) = *(v87 + 16 * v98);
          ++v98;
        }

        while (v80 + v98 - 2 < v103 - v80);
      }

      else
      {
        v97 = v80 - 2;
      }

      if (v97 <= v4 - v96)
      {
        v99 = &v90[16 * v95];
        v100 = v94;
        v101 = v93;
        do
        {
          *(v100 - 1) = *v100;
          *(v99 + 1) = *v99;
          ++v101;
          v100 = (v100 + v85);
          v99 += v85;
        }

        while (v101 < v4 - v96);
      }

      v84 += v86;
      v87 += v86;
      v88 += v91;
      v92 += v91;
      --v93;
      v94 += v91;
      v90 -= 16 * v103;
      ++v95;
    }

    while (v80-- > 2);
  }
}

id NTKPlusImage()
{
  v0 = +[CLKRenderingContext sharedRenderingContext];
  v1 = [v0 device];
  sub_4ACC(v1, v1);

  v2 = qword_2CDE8;

  return v2;
}

uint64_t sub_4ACC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_2CDF4);
  if (qword_2CDF8)
  {
    v3 = qword_2CDF8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_2CE00))
  {
    v5 = byte_2CDF0;
  }

  else
  {
    qword_2CDF8 = v2;
    qword_2CE00 = [v2 version];
    sub_4B84(qword_2CE00, v2);
    v5 = 1;
    byte_2CDF0 = 1;
  }

  os_unfair_lock_unlock(&stru_2CDF4);

  return v5;
}

void sub_4B84(uint64_t a1, void *a2)
{
  v9 = a2;
  v2 = [CLKDeviceMetrics metricsWithDevice:"metricsWithDevice:identitySizeClass:" identitySizeClass:?];
  [v2 setRoundingBehavior:4];
  [v2 scaledValue:55.0];
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:?];
  v4 = +[UIColor whiteColor];
  v5 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v4];

  v6 = [v3 configurationByApplyingConfiguration:v5];
  v7 = [UIImage systemImageNamed:@"plus.circle.fill" withConfiguration:v6];
  v8 = qword_2CDE8;
  qword_2CDE8 = v7;
}

void sub_4C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_5560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
{
  free(v19);
  free(a17);
  free(a18);
  free(v18);
  _Unwind_Resume(a1);
}

id NTKBlurImage(void *a1, double a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && a2 > 0.0)
  {
    v5 = [[CIImage alloc] initWithImage:v3];
    if (v5)
    {
      v6 = [CIFilter filterWithName:@"CIAffineClamp"];
      [v6 setDefaults];
      [v6 setValue:v5 forKey:kCIInputImageKey];
      v7 = [CIFilter filterWithName:@"CIGaussianBlur"];
      v8 = [NSNumber numberWithDouble:a2];
      [v7 setValue:v8 forKey:kCIInputRadiusKey];

      v9 = [v6 outputImage];
      [v7 setValue:v9 forKey:kCIInputImageKey];

      v10 = [v7 outputImage];
      if (v10)
      {
        v11 = +[CIContext context];
        [v5 extent];
        v12 = [v11 createCGImage:v10 fromRect:?];
        if (v12)
        {
          v13 = [UIImage alloc];
          [v4 scale];
          v15 = [v13 initWithCGImage:v12 scale:objc_msgSend(v4 orientation:{"imageOrientation"), v14}];
          CGImageRelease(v12);
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = v3;
  }

  return v15;
}

void sub_58C4(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

id NTKCropImage(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = v9;
  if (v9)
  {
    [v9 size];
    v12 = v11;
    v14 = v13;
    [v10 scale];
    v16 = v15;
    if ((v12 * v15))
    {
      v17 = (v14 * v15) == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      v21 = v10;
    }

    else
    {
      v18 = [v10 imageOrientation];
      v19 = [v10 CGImage];
      v24.size.height = a5 * v16;
      v24.size.width = a4 * v16;
      v24.origin.y = a3 * v16;
      v24.origin.x = a2 * v16;
      v20 = CGImageCreateWithImageInRect(v19, v24);
      v21 = [UIImage imageWithCGImage:v20 scale:v18 orientation:v16];
      CGImageRelease(v20);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void sub_5A58(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id NTKDefaultMonochromeColorMatrix(uint64_t a1)
{
  if (qword_2CE08 != -1)
  {
    sub_1508C();
  }

  v2 = qword_2CE10;

  return v2;
}

void sub_5AD0(id a1)
{
  v3[0] = 0;
  v3[1] = 0;
  v4 = 1056964608;
  v6 = 0;
  v5 = 0;
  v7 = 1056964608;
  v8 = 0;
  v9 = 0;
  v10 = 1056964608;
  v11 = 0;
  v12 = 0;
  v13 = 1065353216;
  v1 = [NSValue valueWithBytes:v3 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
  v2 = qword_2CE10;
  qword_2CE10 = v1;
}

BOOL NTKIsDefaultMonochromeColorMatrix(void *a1)
{
  v1 = a1;
  v2 = NTKDefaultMonochromeColorMatrix(v1);

  return v2 == v1;
}

id NTKGenerateMonochromeColorMatrixFromImage(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_18;
  }

  [v1 scale];
  v4 = v3;
  v1 = [v2 size];
  v6 = (v4 * v5);
  v8 = (v4 * v7);
  if (!v6 || v8 == 0)
  {
    goto LABEL_18;
  }

  v10 = malloc_type_calloc(1uLL, (4 * v6 * v8), 0x100004052888210uLL);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12 = CGBitmapContextCreate(v10, v6, v8, 8uLL, (4 * v6), DeviceRGB, 1u);
  v13 = [v2 CGImage];
  v42.size.width = v6;
  v42.size.height = v8;
  v42.origin.x = 0.0;
  v42.origin.y = 0.0;
  CGContextDrawImage(v12, v42, v13);
  bzero(v40, 0x400uLL);
  v16 = v6 * v8;
  if (v6 * v8)
  {
    v17 = v10;
    do
    {
      LOBYTE(v14) = *v17;
      LOBYTE(v15) = v17[1];
      *&v18 = LODWORD(v15) * 0.7152;
      v19 = *&v18 + (LODWORD(v14) * 0.2126);
      LOBYTE(v18) = v17[2];
      v15 = v18;
      v14 = v19 + (v15 * 0.0722);
      ++v40[v14];
      v17 += 4;
    }

    while (v17 < &v10[4 * v16]);
  }

  v20 = 0;
  v21 = 0;
  v22 = v16 / 0x3E8;
  while (1)
  {
    v21 += v40[v20];
    if (v21 > v22)
    {
      break;
    }

    if (++v20 == 256)
    {
      LODWORD(v20) = 0;
      break;
    }
  }

  v23 = 0;
  v24 = 255;
  while (1)
  {
    v23 += v40[v24];
    if (v23 > v22)
    {
      break;
    }

    if (--v24 == -1)
    {
      v24 = 255;
      break;
    }
  }

  CGContextRelease(v12);
  free(v10);
  CGColorSpaceRelease(DeviceRGB);
  if (v24 - v20 > 9)
  {
    v28.f32[0] = -v20 / 255.0;
    v32 = 0;
    v28.i32[1] = 1046066128;
    v28.i64[1] = 0x3D93DD983F371759;
    v29 = vmulq_n_f32(v28, 255.0 / (v24 - v20));
    v30 = vextq_s8(v29, v29, 4uLL).u64[0];
    v31 = v29.i32[3];
    v33 = v29;
    v34 = 0;
    v35 = v29;
    v36 = 0;
    v37 = v29.i32[0];
    v38 = xmmword_1B400;
    v39 = 0;
    v25 = [NSValue valueWithBytes:&v30 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
  }

  else
  {
LABEL_18:
    v25 = NTKDefaultMonochromeColorMatrix(v1);
  }

  v26 = v25;

  return v26;
}

id NTKInterpolateColorMatrixToIdentity(void *a1, double a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0uLL;
  memset(v30, 0, sizeof(v30));
  if (v3)
  {
    objc_msgSend_CAColorMatrixValue(v3);
    v6 = *v30;
    v5 = *(v30 + 4);
    v7 = *(&v30[1] + 2);
    v8 = *(&v30[1] + 1);
    v9 = *(&v30[1] + 12);
    v11 = *(&v30[2] + 3);
    v10 = *&v30[3];
    v12 = *(&v30[3] + 4);
    v13 = *(&v30[4] + 2);
    v14 = *(&v30[4] + 1);
    v15 = *(&v30[4] + 3);
  }

  else
  {
    v15 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v6 = 0.0;
    v9 = 0uLL;
    v12 = 0uLL;
  }

  v16 = a2;
  v19 = v6 + ((1.0 - v6) * v16);
  v20 = vmulq_n_f32(v5, 1.0 - v16);
  v21 = (1.0 - v16) * v8;
  v22 = v7 + ((1.0 - v7) * v16);
  v23 = vmulq_n_f32(v9, 1.0 - v16);
  v24 = (1.0 - v16) * v11;
  v25 = v10 + ((1.0 - v10) * v16);
  v26 = vmulq_n_f32(v12, 1.0 - v16);
  v27 = (1.0 - v16) * v14;
  v28 = v13 + ((1.0 - v13) * v16);
  v29 = (1.0 - v16) * v15;
  v17 = [NSValue valueWithBytes:&v19 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];

  return v17;
}

id NTKInterpolateBetweenImages(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = v6;
  if (!v5 || (v8 = v5, !v6) || (([v5 size], v10 = v9, v12 = v11, objc_msgSend(v5, "scale"), v14 = v13, v15 = (v10 * v13), v16 = (v12 * v13), v15) ? (v17 = v16 == 0) : (v17 = 1), (v8 = v7, v17) || ((objc_msgSend(v7, "size"), v19 = v18, v21 = v20, objc_msgSend(v7, "scale"), v23 = (v19 * v22), v24 = (v21 * v22), v23) ? (v25 = v24 == 0) : (v25 = 1), v8 = v7, v25)))
  {
    v26 = v8;
  }

  else
  {
    if (v15 <= v23)
    {
      v28 = v23;
    }

    else
    {
      v28 = v15;
    }

    if (v16 <= v24)
    {
      v29 = v24;
    }

    else
    {
      v29 = v16;
    }

    space = CGColorSpaceCreateDeviceRGB();
    v43 = malloc_type_calloc(1uLL, (4 * v28 * v29), 0x100004052888210uLL);
    c = CGBitmapContextCreate(v43, v28, v29, 8uLL, (4 * v28), space, 1u);
    v30 = malloc_type_calloc(1uLL, (4 * v28 * v29), 0x100004052888210uLL);
    v31 = CGBitmapContextCreate(v30, v28, v29, 8uLL, (4 * v28), space, 1u);
    v32 = [v5 CGImage];
    v47.size.height = v16;
    v47.size.width = v15;
    v47.origin.x = 0.0;
    v47.origin.y = 0.0;
    CGContextDrawImage(c, v47, v32);
    v33 = [v7 CGImage];
    v48.size.height = v24;
    v48.size.width = v23;
    v48.origin.x = 0.0;
    v48.origin.y = 0.0;
    CGContextDrawImage(v31, v48, v33);
    if (v28 * v29)
    {
      *v34.i32 = a3;
      *v35.i32 = 1.0 - *v34.i32;
      v38 = vdupq_lane_s32(v35, 0);
      v39 = v43;
      v40 = v30;
      do
      {
        v36.i32[0] = *v39;
        v41 = *v40++;
        v37.i32[0] = v41;
        v37 = vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v37.f32))), *v34.i32), v38, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v36))));
        v36 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(v37)), v34);
        *v39++ = v36.i32[0];
      }

      while (v39 < &v43[4 * (v28 * v29)]);
    }

    Image = CGBitmapContextCreateImage(c);
    CGContextRelease(c);
    CGContextRelease(v31);
    v26 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", Image, [v5 imageOrientation], v14);
    CGImageRelease(Image);
    free(v43);
    free(v30);
    CGColorSpaceRelease(space);
  }

  return v26;
}

float sub_6338(float a1, float a2, float a3)
{
  if (a3 < 0.0)
  {
    a3 = a3 + 1.0;
  }

  if (a3 > 1.0)
  {
    a3 = a3 + -1.0;
  }

  if (a3 < 0.16667)
  {
    v3 = (a2 - a1) * 6.0;
    return a1 + (v3 * a3);
  }

  if (a3 >= 0.5)
  {
    if (a3 < 0.66667)
    {
      v3 = (a2 - a1) * (0.66667 - a3);
      a3 = 6.0;
      return a1 + (v3 * a3);
    }

    return a1;
  }

  return a2;
}

float32x2_t *sub_63B8@<X0>(float32x2_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1].u32[0];
  v4 = (2 * v3);
  *(a2 + 8) = v4;
  *(a2 + 12) = v4;
  if (v3 <= 0)
  {
    *a2 = 0;
  }

  else
  {
    v5 = result;
    result = malloc_type_malloc(8 * (2 * v3), 0x100004000313F17uLL);
    v6 = 0;
    *a2 = result;
    v7 = result + 1;
    do
    {
      v8 = *(*v5 + 8 * v6);
      if (--v3)
      {
        v9 = v6 + 1;
      }

      else
      {
        v9 = 0;
      }

      ++v6;
      v10 = vmul_f32(vadd_f32(v8, *(*v5 + 8 * v9)), 0x3F0000003F000000);
      v7[-1] = v8;
      *v7 = v10;
      v7 += 2;
    }

    while (v3);
    v11 = 0;
    v12 = v4 - 1;
    __asm { FMOV            V1.2S, #0.25 }

    do
    {
      result[v11] = vmul_f32(vadd_f32(vmla_f32(result[(v11 + 1) % v4], 0x4000000040000000, result[v11]), result[v12 % v4]), _D1);
      v11 += 2;
      v12 += 2;
    }

    while (v11 < v4);
  }

  return result;
}

id _NTKKaleidoscopeLoggingObjectForDomain(uint64_t a1, uint64_t a2)
{
  v3 = (&unk_2CE20 + 8 * a1);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_6554;
  v6[3] = &unk_24910;
  v6[4] = a1;
  v6[5] = a2;
  if (*v3 != -1)
  {
    dispatch_once(v3, v6);
  }

  v4 = qword_2CE18[a1];

  return v4;
}

void sub_6554(uint64_t a1)
{
  v2 = [NSString stringWithCString:*(a1 + 40) encoding:4];
  v7 = [v2 substringFromIndex:{objc_msgSend(@"NTKKaleidoscopeLoggingDomain", "length")}];

  v3 = v7;
  v4 = os_log_create("com.apple.NanoTimeKit.Kaleidoscope", [v7 cStringUsingEncoding:4]);
  v5 = *(a1 + 32);
  v6 = qword_2CE18[v5];
  qword_2CE18[v5] = v4;
}

uint64_t sub_6824(id *a1)
{
  v2 = *a1;
  v3 = [v2 options];
  v4 = [v3 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = [v2 options];
    v7 = [v6 mutableCopy];

    v8 = [v4 device];
    v9 = [(NTKKaleidoscopeAssetOption *)NTKKaleidoscopeCustomAssetOption optionWithAsset:1000 forDevice:v8];
    [v7 insertObject:v9 atIndex:0];

    v10 = [NTKEditOptionCollection alloc];
    v11 = [v2 mode];
    v12 = [v2 localizedName];
    *a1 = [v10 initWithEditMode:v11 localizedName:v12 options:v7 collectionType:{objc_msgSend(v2, "collectionType")}];

    v5 = 0;
  }

  return v5;
}

BOOL sub_6CFC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  if (v7)
  {
    objc_storeStrong(v8 + 2, a2);
    [*(a1 + 32) _setPhotoFromDictionary:v7];
  }

  else
  {
    v9 = [v8 cell];
    [v9 ensureSelectedOptionVisible:0];
  }

  return v7 != 0;
}

void sub_6F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6F28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finalizeEditor];
}

void sub_702C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_7048(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finalizeEditor];
}

void sub_714C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_7168(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finalizeEditor];
}

id sub_7224(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 face];
  [v5 setResourceDirectory:v4];

  v6 = [*(a1 + 32) cell];
  [v6 selectUserOption];

  result = *(*(a1 + 32) + 16);
  if (result)
  {

    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void sub_77E0(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v4 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v4 count:1];
  [v2 reloadItemsAtIndexPaths:v3];
}

void sub_7D48(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 56) defaultFaceForDevice:*(a1 + 32)];
  if (v6)
  {
    v7 = +[NTKKaleidoscopeAssetOption optionWithAsset:forDevice:](NTKKaleidoscopeAssetOption, "optionWithAsset:forDevice:", [v5 unsignedIntValue], *(a1 + 32));
    [v6 selectOption:v7 forCustomEditMode:12 slot:0];
    if ([*(a1 + 40) count] > a3)
    {
      v8 = [*(a1 + 40) objectAtIndexedSubscript:a3];
      v9 = +[NTKKaleidoscopeStyleOption optionWithStyle:forDevice:](NTKKaleidoscopeStyleOption, "optionWithStyle:forDevice:", [v8 unsignedIntValue], *(a1 + 32));

      [v6 selectOption:v9 forCustomEditMode:15 slot:0];
    }

    v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v11 = v10;
    if (a3)
    {
      v17 = v10;
      v12 = &v17;
      v13 = 4000;
    }

    else
    {
      v18 = v10;
      v12 = &v18;
      v13 = 8000;
    }

    v14 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v12[1] = v14;
    v15 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:19 zOrder:v13];
    v12[2] = v15;
    v16 = [NSArray arrayWithObjects:v12 count:3];
    [v6 setCurationPlacements:v16];

    [*(a1 + 48) addObject:v6];
  }
}

void sub_8C1C(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceDirectory];
  [*(a1 + 32) setGalleryPreviewResourceDirectory:v2];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) resourceDirectory];
  (*(v3 + 16))(v3, v4);
}

uint64_t sub_8C9C(uint64_t a1)
{
  [*(a1 + 32) setResourceDirectory:0];
  [*(a1 + 32) setGalleryPreviewResourceDirectory:0];
  [*(a1 + 32) setState:1];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_8D00(uint64_t a1)
{
  NTKPhotosCreateResourceDirectory();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_8F1C;
  v2 = v13[3] = &unk_24A78;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v5 = objc_retainBlock(v13);
  v6 = v5;
  if (v2)
  {
    v7 = [objc_opt_class() _writeAsset:*(*(a1 + 32) + 24) image:*(*(a1 + 32) + 32) withImageCrop:v2 to:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];
    if (v7)
    {
      v8 = [NTKKaleidoscopePathfinder pathfinderWithImage:*(*(a1 + 32) + 32)];
      if ([v8 writeToDirectory:v2] && (objc_msgSend(v7, "encodeAsDictionary"), v9 = objc_claimAutoreleasedReturnValue(), v17 = v9, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v17, 1), v10 = objc_claimAutoreleasedReturnValue(), v11 = NTKPhotosWriteImageList(), v10, v9, v11))
      {
        [*(a1 + 32) _reinitializeWithPhoto:v7 image:*(*(a1 + 32) + 32)];
        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      v6[2](v6, v12);
    }

    else
    {
      v6[2](v6, 0);
    }
  }

  else
  {
    (v5[2])(v5, 0);
  }
}

void sub_8F1C(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v5 = v4;
  if (a2)
  {
    v6 = 1;
  }

  else
  {
    if (v4)
    {
      v7 = +[NSFileManager defaultManager];
      [v7 removeItemAtPath:v5 error:0];

      v5 = 0;
    }

    v6 = 0;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_9020;
  v10[3] = &unk_24A50;
  v13 = v6;
  v8 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

uint64_t sub_9020(uint64_t a1)
{
  [*(a1 + 32) setState:*(a1 + 56)];
  [*(a1 + 32) setResourceDirectory:*(a1 + 40)];
  [*(a1 + 32) setGalleryPreviewResourceDirectory:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t sub_9250(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setState:a2];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_92C8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = 768.0 / [v3 pixelWidth];
    v7 = [v3 pixelHeight];
    if (v6 >= 768.0 / v7)
    {
      v8 = 768.0 / v7;
    }

    else
    {
      v8 = v6;
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_9BB8;
    v9[3] = &unk_24B18;
    v10 = v3;
    v12 = v8;
    v11 = v5;
    [NTKCompanionResourceDirectoryEditor _imageDataForAsset:v10 completion:v9];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

void sub_93E8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_9600(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setState:a2];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_9678(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void sub_996C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void sub_9BB8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [[NTKCompanionImageDataScaler alloc] initWithSize:v6 crop:a3 data:objc_msgSend(v5 orientation:"pixelWidth") outputSize:{objc_msgSend(*(a1 + 32), "pixelHeight"), 0.0, 0.0, objc_msgSend(*(a1 + 32), "pixelWidth"), objc_msgSend(*(a1 + 32), "pixelHeight"), *(a1 + 48) * objc_msgSend(*(a1 + 32), "pixelWidth"), *(a1 + 48) * objc_msgSend(*(a1 + 32), "pixelHeight")}];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_9D10;
  v8[3] = &unk_24AF0;
  v9 = *(a1 + 40);
  [v7 cropAndScaleWithCompletion:v8];
}

void sub_9D10(uint64_t a1, void *a2)
{
  if (a2)
  {
    a2 = [UIImage imageWithData:a2 scale:1.0];
  }

  v3 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_9DC4(id a1)
{
  qword_2CE28 = [[NTKKaleidoscopeSwatchMappedImageCache alloc] _init];

  _objc_release_x1();
}

void sub_9FA0(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "NTKKaleidoscopeSwatchMappedImageCache: removing key %@", &v5, 0xCu);
  }

  [*(a1 + 40) removeImageForKey:v3];
}

BOOL sub_A37C(id a1, NSString *a2)
{
  v2 = a2;
  v3 = NTKBuildVersion();
  v4 = [(NSString *)v2 hasPrefix:v3];

  return v4 ^ 1;
}

void sub_A66C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 deviceUUID];
  v5 = [CLKDevice deviceForNRDeviceUUID:v4];

  v6 = objc_opt_new();
  if ([NTKKaleidoscopeStyleOption numberOfOptionsForDevice:v5])
  {
    v7 = 0;
    do
    {
      v8 = [NTKKaleidoscopeStyleOption optionAtIndex:v7 forDevice:v5];
      [v6 addObject:v8];

      ++v7;
    }

    while (v7 < [NTKKaleidoscopeStyleOption numberOfOptionsForDevice:v5]);
  }

  v9 = [(NTKKaleidoscopeAssetOption *)NTKKaleidoscopeCustomAssetOption optionWithAsset:1000 forDevice:v5];
  v10 = *(a1 + 32);
  v11 = [NSString stringWithFormat:@"%@", v9];
  [v10 addObject:v11];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_A838;
  v16[3] = &unk_24BF0;
  v17 = v6;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v18 = v12;
  v19 = v13;
  v20 = v9;
  v14 = v9;
  v15 = v6;
  [v3 enumerateFacesUsingBlock:v16];
}

void sub_A838(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 resourceDirectory];
  if ([v3 faceStyle] == &dword_14 + 3 && v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(a1 + 40);
          v11 = [objc_opt_class() keyForAsset:*(a1 + 56) style:*(*(&v12 + 1) + 8 * v9) resourceDirectory:{v4, v12}];
          [v10 addObject:v11];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

uint64_t sub_A994(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 containsString:{*(*(&v11 + 1) + 8 * v8), v11}])
        {

          v9 = [*(a1 + 40) containsObject:v3] ^ 1;
          goto LABEL_11;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

void sub_ABD8(id a1)
{
  qword_2CE38 = objc_opt_new();

  _objc_release_x1();
}

void sub_C7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_C7C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_C7DC(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_C838(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

uint64_t sub_CD1C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_2CE54);
  if (qword_2CE58)
  {
    v3 = qword_2CE58 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_2CE60))
  {
    v5 = byte_2CE50;
  }

  else
  {
    qword_2CE58 = v2;
    qword_2CE60 = [v2 version];
    sub_CDC4(qword_2CE60, v2);
    v5 = 1;
    byte_2CE50 = 1;
  }

  os_unfair_lock_unlock(&stru_2CE54);

  return v5;
}

void sub_CDC4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _EnumValueRange();
  v4 = qword_2CE48;
  qword_2CE48 = v3;

  v5 = [v2 deviceCategory];
  if (v5 != &dword_0 + 1)
  {
    qword_2CE48 = [&off_266B8 arrayByAddingObjectsFromArray:qword_2CE48];

    _objc_release_x1();
  }
}

void sub_CFBC(id a1)
{
  v3[0] = &off_25ED0;
  v3[1] = &off_25EE8;
  v4[0] = NTKFaceBundleKaleidoscopeStyleFaceted;
  v4[1] = NTKFaceBundleKaleidoscopeStyleRadial;
  v3[2] = &off_25F00;
  v3[3] = &off_25EB8;
  v4[2] = NTKFaceBundleKaleidoscopeStyleLimit;
  v4[3] = NTKFaceBundleKaleidoscopeStyleFullscreenFacet;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_2CE68;
  qword_2CE68 = v1;
}

void sub_D35C(id a1)
{
  v3[0] = &off_25ED0;
  v3[1] = &off_25EE8;
  v4[0] = NTKFaceBundleKaleidoscopeAsset01;
  v4[1] = NTKFaceBundleKaleidoscopeAsset02;
  v3[2] = &off_25F00;
  v3[3] = &off_25EB8;
  v4[2] = NTKFaceBundleKaleidoscopeAsset03;
  v4[3] = NTKFaceBundleKaleidoscopeAsset04;
  v3[4] = &off_26170;
  v3[5] = &off_26188;
  v4[4] = NTKFaceBundleKaleidoscopeAsset05;
  v4[5] = NTKFaceBundleKaleidoscopeAsset06;
  v3[6] = &off_261A0;
  v3[7] = &off_261B8;
  v4[6] = NTKFaceBundleKaleidoscopeAsset07;
  v4[7] = NTKFaceBundleKaleidoscopeAsset08;
  v3[8] = &off_26128;
  v3[9] = &off_26110;
  v4[8] = NTKFaceBundleKaleidoscopeAsset09;
  v4[9] = NTKFaceBundleKaleidoscopeAsset10;
  v3[10] = &off_26140;
  v3[11] = &off_26158;
  v4[10] = NTKFaceBundleKaleidoscopeAsset11;
  v4[11] = NTKFaceBundleKaleidoscopeAsset12;
  v3[12] = &off_260E0;
  v3[13] = &off_260B0;
  v4[12] = NTKFaceBundleKaleidoscopeAsset13;
  v4[13] = NTKFaceBundleKaleidoscopeAsset14;
  v3[14] = &off_260C8;
  v3[15] = &off_260F8;
  v4[14] = NTKFaceBundleKaleidoscopeAsset15;
  v4[15] = NTKFaceBundleKaleidoscopeAsset16;
  v3[16] = &off_26008;
  v3[17] = &off_26020;
  v4[16] = NTKFaceBundleKaleidoscopeAsset17;
  v4[17] = NTKFaceBundleKaleidoscopeAsset18;
  v3[18] = &off_26038;
  v3[19] = &off_26050;
  v4[18] = NTKFaceBundleKaleidoscopeAsset19;
  v4[19] = NTKFaceBundleKaleidoscopeAsset20;
  v3[20] = &off_26068;
  v3[21] = &off_26080;
  v4[20] = NTKFaceBundleKaleidoscopeAsset21;
  v4[21] = NTKFaceBundleKaleidoscopeAsset22;
  v3[22] = &off_26098;
  v3[23] = &off_25FA8;
  v4[22] = NTKFaceBundleKaleidoscopeAsset23;
  v4[23] = NTKFaceBundleKaleidoscopeAsset24;
  v3[24] = &off_25FF0;
  v3[25] = &off_25FD8;
  v4[24] = NTKFaceBundleKaleidoscopeAsset25;
  v4[25] = NTKFaceBundleKaleidoscopeAsset26;
  v3[26] = &off_25FC0;
  v3[27] = &off_25F18;
  v4[26] = NTKFaceBundleKaleidoscopeAsset27;
  v4[27] = NTKFaceBundleKaleidoscopeAsset28;
  v3[28] = &off_25F30;
  v3[29] = &off_25F48;
  v4[28] = NTKFaceBundleKaleidoscopeAsset29;
  v4[29] = NTKFaceBundleKaleidoscopeAsset30;
  v3[30] = &off_25F60;
  v3[31] = &off_25F78;
  v4[30] = NTKFaceBundleKaleidoscopeAsset31;
  v4[31] = NTKFaceBundleKaleidoscopeAsset32;
  v3[32] = &off_25F90;
  v4[32] = NTKFaceBundleKaleidoscopeAsset33;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:33];
  v2 = qword_2CE78;
  qword_2CE78 = v1;
}

uint64_t sub_D8AC(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&stru_2CE94);
  if (qword_2CE98)
  {
    v4 = qword_2CE98 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 && (v5 = [v3 version], v5 == qword_2CEA0))
  {
    v6 = byte_2CE90;
  }

  else
  {
    qword_2CE98 = v3;
    qword_2CEA0 = [v3 version];
    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_DA60;
    v9[3] = &unk_24CE8;
    v9[4] = v8;
    sub_DA60(v9, v3);
    v6 = 1;
    byte_2CE90 = 1;
  }

  os_unfair_lock_unlock(&stru_2CE94);

  return v6;
}

uint64_t sub_D9EC(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_DA60;
  v3[3] = &unk_24CE8;
  v3[4] = *(a1 + 32);
  sub_DA60(v3, a2);
  return 1;
}

void sub_DA60(uint64_t a1, uint64_t a2)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___NTKKaleidoscopeCustomAssetOption;
  v2 = objc_msgSendSuper2(&v5, "_orderedValuesForDevice:", a2);
  v3 = [&off_26748 arrayByAddingObjectsFromArray:v2];
  v4 = qword_2CE88;
  qword_2CE88 = v3;
}

void sub_DD04(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = NTKKaleidoscopeCustomAssetOption;
  v1 = objc_msgSendSuper2(&v5, "_valueToFaceBundleStringDict");
  v2 = [v1 mutableCopy];

  [v2 setObject:NTKFaceBundleKaleidoscopeAssetCustom forKeyedSubscript:&off_261D0];
  v3 = [v2 copy];
  v4 = qword_2CEA8;
  qword_2CEA8 = v3;
}

uint64_t sub_DDDC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_2CEC4);
  if (qword_2CEC8)
  {
    v3 = qword_2CEC8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_2CED0))
  {
    v5 = byte_2CEC0;
  }

  else
  {
    qword_2CEC8 = v2;
    qword_2CED0 = [v2 version];
    sub_DE80();
    v5 = 1;
    byte_2CEC0 = 1;
  }

  os_unfair_lock_unlock(&stru_2CEC4);

  return v5;
}

void sub_DE80()
{
  v2[0] = xmmword_1B4C8;
  v2[1] = unk_1B4D8;
  v2[2] = xmmword_1B4E8;
  v2[3] = unk_1B4F8;
  v0 = [NSIndexSet indexSetWithIndexes:v2 count:8];
  v1 = qword_2CEB8;
  qword_2CEB8 = v0;
}

uint64_t sub_DF08(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_2CEE4);
  if (qword_2CEE8)
  {
    v3 = qword_2CEE8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_2CEF0))
  {
    v5 = byte_2CEE0;
  }

  else
  {
    qword_2CEE8 = v2;
    qword_2CEF0 = [v2 version];
    sub_DFAC();
    v5 = 1;
    byte_2CEE0 = 1;
  }

  os_unfair_lock_unlock(&stru_2CEE4);

  return v5;
}

void sub_DFAC()
{
  v2[0] = xmmword_1B508;
  v2[1] = unk_1B518;
  v2[2] = xmmword_1B528;
  v3 = 22;
  v0 = [NSIndexSet indexSetWithIndexes:v2 count:7];
  v1 = qword_2CED8;
  qword_2CED8 = v0;
}

void sub_E7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_E81C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained complicationColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v3 = ;

  return v3;
}

id sub_E884(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[6];
  }

  else
  {
    v3 = CLKUIDefaultComplicationBackgroundColor();
  }

  v4 = v3;

  return v4;
}

void sub_10B28(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = [a3 display];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = v10;
    v6 = [v4 complicationColor];
    [v5 setForegroundColor:v6];

    [v5 setPlatterColor:*(*(a1 + 32) + 48)];
  }

  if ([v10 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v7 = *(a1 + 32);
    v8 = v10;
    v9 = [v7 complicationColor];
    [v8 setForegroundColor:v9];
  }
}

void sub_119C8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 display];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = v7;
    v6 = [v4 complicationColor];
    [*(a1 + 32) setComplicationColor:v6];
    [*(a1 + 32) setInterpolatedComplicationColor:v6];
    [v5 updateMonochromeColor];
  }
}

uint64_t sub_11B74(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_2CF64);
  if (qword_2CF68)
  {
    v3 = qword_2CF68 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_2CF70))
  {
    v5 = byte_2CF60;
  }

  else
  {
    qword_2CF68 = v2;
    qword_2CF70 = [v2 version];
    sub_11C1C(qword_2CF70, v2);
    v5 = 1;
    byte_2CF60 = 1;
  }

  os_unfair_lock_unlock(&stru_2CF64);

  return v5;
}

void sub_11C1C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 sizeClass];
  [NTKAnalogUtilities dialSizeForDevice:v2];
  *&qword_2CEF8 = v4 + -1.0;
  qword_2CF00 = 0;
  unk_2CF08 = 0;
  *&qword_2CF10 = v4 + -1.0;
  unk_2CF18 = v4 + -1.0;
  v5 = -3.0;
  if (!v3)
  {
    v5 = -2.0;
  }

  qword_2CF20 = 0;
  qword_2CF28 = *&v5;
  *algn_2CF30 = CGPointZero;
  qword_2CF40 = 0x3FF0000000000000;
  [v2 screenBounds];
  v7 = v6;
  [NTKAnalogUtilities dialSizeForDevice:v2];
  *&v8 = v7 / v8;
  dword_2CF48 = LODWORD(v8);
  v9 = [v2 deviceCategory];
  v10 = 10;
  if (v9 != &dword_0 + 1)
  {
    v10 = 24;
  }

  qword_2CF50 = v10;
  v11 = [v2 deviceCategory];

  v12 = 30;
  if (v11 == &dword_0 + 1)
  {
    v12 = 24;
  }

  qword_2CF58 = v12;
}

void sub_11D14(id a1)
{
  qword_2CF78 = [UIColor colorWithWhite:0.898039216 alpha:1.0];

  _objc_release_x1();
}

void sub_127C4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = _NTKKaleidoscopeLoggingObjectForDomain(0, "NTKKaleidoscopeLoggingDomainDefault");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_152B4();
    }

    objc_end_catch();
    JUMPOUT(0x12770);
  }

  _Unwind_Resume(exception_object);
}

void sub_12F84(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_12FA4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_15030(id a1)
{
  qword_2CF90 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void sub_15118(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[kaleidoscope pathfinder cache] link failed %@", &v2, 0xCu);
}

void sub_151D4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[kaleidoscope pathfinder cache] missing pathfinder: %@", &v2, 0xCu);
}

void sub_15524(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[kaleidoscope pathfinder cache] insufficent path length %d", v2, 8u);
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}