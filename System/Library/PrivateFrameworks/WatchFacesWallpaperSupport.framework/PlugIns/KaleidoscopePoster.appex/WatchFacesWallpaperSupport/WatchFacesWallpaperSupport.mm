void sub_1000025C4(id a1)
{
  qword_10003C6E8 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

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
    v146 = vsub_s32(&_mh_execute_header, vdup_n_s32(width));
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
            v26.f32[0] = sub_100003AB4(v20, v26);
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
                  *&v159.origin.x = sub_100003AB4(v21, v159.origin);
                  v57 = 0;
                  v58 = 0;
                  do
                  {
                    v59 = *&v53[4 * *(&v145 + v57)];
                    v58 = vmla_n_f32(v58, qword_100027F50[v57++], ((BYTE1(v59) * 0.0028047) + (v59 * 0.00083373)) + (BYTE2(v59) * 0.00028314));
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
        DWORD1(v140) = sub_100003B8C(v70, v67 * 0.75, v71 * 0.5);
        *(&v140 + 1) = __PAIR64__(v77, v76);
        LODWORD(v141) = sub_100003B8C(v70, v67 * 0.9, v71 * 0.4);
        *(&v141 + 4) = __PAIR64__(v79, v78);
        HIDWORD(v141) = sub_100003B8C(v70, v73, v74);
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
                      sub_100003AB4(v21, v161.origin);
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

float sub_100003AB4(int a1, float32x4_t a2)
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

float sub_100003B8C(float a1, float a2, float a3)
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
    v4 = sub_100007F68(v9, v8, a1 + 0.33333);
    v3 = sub_100007F68(v9, v8, a1);
    a3 = sub_100007F68(v9, v8, a1 + -0.33333);
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
    v19 = vsub_s32(&_mh_execute_header, vdup_n_s32(v72));
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
                    v50 = qword_100027F50[v45];
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

id NTKGeneratePathFromInterestingness(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v6 = v5;
  v7 = v1;
  v8 = v3 * v2;
  v400 = v2;
  v370 = v3;
  if (v8 < 1)
  {
    v410 = 0;
    v9 = 0;
  }

  else
  {
    v410 = malloc_type_malloc(v8, 0x100004077774924uLL);
    v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
    v2 = v400;
    v3 = v370;
  }

  v10 = v3 - v6;
  if (v3 - v6 > v6)
  {
    v16 = v2 - v6;
    v17 = v6;
    v18 = 4 * v2;
    v19 = (v7 + (v18 + 4) * v6);
    v13 = 0;
    v14 = 1.0;
    v20 = v6;
    v15 = 0.0;
    do
    {
      v21 = v19;
      v22 = v2 - 2 * v6;
      if (v16 > v6)
      {
        do
        {
          v23 = *v21++;
          v24 = v23;
          if (v14 >= v23)
          {
            v14 = v24;
          }

          if (v13.f32[0] < v24)
          {
            v13.f32[0] = v24;
          }

          v15 = v15 + v24;
          --v22;
        }

        while (v22);
      }

      ++v20;
      v19 = (v19 + v18);
    }

    while (v20 != v10);
    v419 = 0;
    v418 = 0;
    v420 = 0;
    v12 = v13.f32[0] - v14;
    v25 = 4 * v2;
    v26 = (v7 + (v25 + 4) * v6);
    do
    {
      v27 = v26;
      v28 = v2 - 2 * v6;
      if (v16 > v6)
      {
        do
        {
          v29 = *v27++;
          v30 = ((((v29 - v14) / v12) * 9.0) + 0.5);
          ++*(&v418 + v30);
          --v28;
        }

        while (v28);
      }

      ++v17;
      v26 = (v26 + v25);
    }

    while (v17 != v10);
    v11 = HIWORD(v420);
    v3 = v370;
  }

  else
  {
    v11 = 0;
    v419 = 0;
    v418 = 0;
    v12 = -1.0;
    v13 = 0;
    v14 = 1.0;
    v15 = 0.0;
    v420 = 0;
  }

  v31 = (v3 - 2 * v6) * (v2 - 2 * v6);
  v32 = v15 / v31;
  LODWORD(v33) = (((v32 - v14) / v12) * 9.0);
  if (v33 <= 7)
  {
    if (v33 <= 4)
    {
      v33 = 4;
    }

    else
    {
      v33 = v33;
    }

    for (i = 8; i > v33; --i)
    {
      v11 += *(&v418 + i);
    }
  }

  v35 = (v14 + v13.f32[0]) * 0.5;
  if (v32 >= v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = v32;
  }

  v37 = v2 - v6;
  if (v10 > v6)
  {
    v38 = 0;
    v39 = v6;
    v40 = 4 * v2;
    v41 = (v7 + (v40 + 4) * v6);
    do
    {
      v42 = v41;
      v43 = v2 - 2 * v6;
      if (v37 > v6)
      {
        do
        {
          v44 = *v42++;
          if (v44 > v36)
          {
            ++v38;
          }

          --v43;
        }

        while (v43);
      }

      ++v39;
      v41 = (v41 + v40);
    }

    while (v39 != v10);
  }

  else
  {
    v38 = 0;
  }

  LODWORD(v45) = v31 - 3;
  if (v11 >= v45)
  {
    v11 = v45;
  }

  if (v38 < v45)
  {
    LODWORD(v45) = v38;
  }

  if (v11 <= 3)
  {
    v11 = 3;
  }

  if (v45 <= 3)
  {
    v45 = 3;
  }

  else
  {
    v45 = v45;
  }

  v394 = (v45 + (v11 - 1) + 1) >> 1;
  if (v10 > v6)
  {
    v47 = v6;
    v48 = 4 * v2;
    v49 = (v7 + (v48 + 4) * v6);
    v46 = -1;
    v13.i32[0] = -1.0;
    do
    {
      if (v37 > v6)
      {
        v50 = v49;
        v51 = v6;
        v52 = v2 - 2 * v6;
        do
        {
          v53 = *v50++;
          v4.f32[0] = v53;
          v46 = vbsl_s8(vdup_lane_s32(vcgt_f32(v4, v13), 0), __PAIR64__(v47, v51), v46);
          if (v53 > v13.f32[0])
          {
            v13.f32[0] = v4.f32[0];
          }

          ++v51;
          --v52;
        }

        while (v52);
      }

      ++v47;
      v49 = (v49 + v48);
    }

    while (v47 != v10);
  }

  else
  {
    v46 = -1;
  }

  v406 = v46;
  v379 = v2;
  v54 = v46.i32[0] + v46.i32[1] * v2;
  v398 = v2 - v6;
  v399 = v10;
  bzero(v410, v8);
  v56 = v398;
  v55 = v399;
  v57 = 0;
  v410[v54] = 1;
  LODWORD(v58) = -1.0;
  v59 = -1;
  v60 = -1;
  do
  {
    v61 = vadd_s32(qword_100027F90[v57], v406);
    v62 = v61.i32[0] >= v6 && v61.i32[1] < v399;
    if (v62 && v61.i32[1] >= v6 && v61.i32[0] < v398)
    {
      v65 = v61.i32[0] + v61.i32[1] * v400;
      if (*(v7 + 4 * v65) > *&v58)
      {
        LODWORD(v58) = *(v7 + 4 * v65);
        v60 = v57;
        v59 = v61.i32[0] + v61.i32[1] * v400;
      }
    }

    ++v57;
  }

  while (v57 != 8);
  v372 = v9;
  v66 = 0;
  v67 = v60 + 7;
  v68 = 1;
  v69 = -1.0;
  v70 = -1;
  v71 = v400;
  do
  {
    v72 = vadd_s32(qword_100027F90[(v67 + v66) & 7], v406);
    v73 = v68;
    if (v72.i32[0] >= v6 && v72.i32[1] < v399 && v72.i32[1] >= v6 && v72.i32[0] < v398)
    {
      v77 = v72.i32[0] + v72.i32[1] * v400;
      if (*(v7 + 4 * v77) > v69)
      {
        v69 = *(v7 + 4 * v77);
        v70 = v72.i32[0] + v72.i32[1] * v400;
      }
    }

    v68 = 0;
    v66 = 2;
  }

  while ((v73 & 1) != 0);
  v391 = v8;
  v382 = v8;
  size = v7;
  v78 = 0;
  v79 = 0;
  ptr = 0;
  v80 = 0;
  v410[v59] = 1;
  v410[v70] = 1;
  v418 = __PAIR64__(v59, v54);
  LODWORD(v419) = v70;
  do
  {
    v81 = 0;
    v82 = *(&v418 + v80);
    v83 = v82 / v71;
    v84 = v82 % v71;
    do
    {
      v85 = *&qword_100027F90[v81] + v84;
      v86 = HIDWORD(*&qword_100027F90[v81]) + v83;
      if (v85 >= v6 && v86 >= v6 && v85 < v56 && v86 < v55)
      {
        v90 = v85 + v86 * v71;
        if (!v410[v90])
        {
          v91 = v90;
          if (*(size + 4 * v90) <= v36)
          {
            v93 = 3;
          }

          else
          {
            if (v79 >= v78)
            {
              v78 = 2 * v78 + 2;
              v92 = malloc_type_realloc(ptr, 2 * v78, 0x1000040BDFB0063uLL);
              v55 = v399;
              v71 = v400;
              v56 = v398;
            }

            else
            {
              v92 = ptr;
            }

            ptr = v92;
            v92[v79++] = v91;
            v93 = 2;
          }

          v410[v91] = v93;
        }
      }

      ++v81;
    }

    while (v81 != 8);
    ++v80;
  }

  while (v80 != 3);
  v94 = v6;
  v95 = v55;
  v96 = v56;
  v97 = v379;
  v98 = 3;
  v99 = v372;
  v407 = v6;
  v396 = v55;
  while (1)
  {
    __src = v394 - v98;
    if (v394 - v98 < 1)
    {
      v101 = size;
    }

    else
    {
      v100 = 0;
      v101 = size;
      do
      {
        if (v79 < 1)
        {
          break;
        }

        v102 = *ptr;
        v103 = 0;
        if (v79 != 1)
        {
          v104 = *(size + 4 * *ptr);
          for (j = 1; j != v79; ++j)
          {
            v106 = ptr[j];
            if (*(size + 4 * v106) > v104)
            {
              v104 = *(size + 4 * v106);
              v102 = ptr[j];
              v103 = j;
            }
          }
        }

        if (v79 - 1 != v103)
        {
          memmove(&ptr[v103], &ptr[v103 + 1], 2 * (v79 + ~v103));
          v56 = v398;
          v55 = v399;
          v71 = v400;
          v103 = v79 - 1;
        }

        v107 = 0;
        v410[v102] = 1;
        v108 = v102 / v71;
        v109 = v102 % v71;
        v79 = v103;
        do
        {
          v110 = *&qword_100027F90[v107] + v109;
          v111 = HIDWORD(*&qword_100027F90[v107]) + v108;
          if (v110 >= v6 && v111 >= v6 && v110 < v56 && v111 < v55)
          {
            v115 = v110 + v111 * v71;
            if (!v410[v115])
            {
              v116 = v115;
              if (*(size + 4 * v115) <= v36)
              {
                v118 = 3;
              }

              else
              {
                if (v79 >= v78)
                {
                  v78 = 2 * v78 + 2;
                  v117 = malloc_type_realloc(ptr, 2 * v78, 0x1000040BDFB0063uLL);
                  v55 = v399;
                  v71 = v400;
                  v56 = v398;
                }

                else
                {
                  v117 = ptr;
                }

                ptr = v117;
                v117[v79++] = v116;
                v118 = 2;
              }

              v410[v116] = v118;
            }
          }

          ++v107;
        }

        while (v107 != 8);
        ++v100;
        v99 = v372;
        v101 = size;
        v97 = v379;
        v94 = v6;
        v95 = v396;
      }

      while (v100 != __src);
    }

    v98 = 0;
    if (v55 > v6)
    {
      v119 = &v410[v6 + v379 * v6];
      v120 = v94;
      do
      {
        v121 = v119;
        v122 = v379 - 2 * v6;
        if (v56 > v6)
        {
          do
          {
            v123 = *v121++;
            if (v123 == 1)
            {
              ++v98;
            }

            --v122;
          }

          while (v122);
        }

        ++v120;
        v119 += v97;
      }

      while (v120 != v95);
    }

    if (v55 <= v6 || v98 >= v394)
    {
      break;
    }

    v124 = -1.0;
    v125 = -1;
    v126 = v94;
    v127 = 0xFFFFFFFFLL;
    do
    {
      if (v56 > v6)
      {
        v128 = v126 * v97;
        v129 = v94;
        v130 = v127;
        v131 = v124;
        do
        {
          v127 = v129 + v128;
          if (v410[v129 + v128] == 3 && (v124 = *(v101 + 4 * v127), v124 > v131))
          {
            v132 = 0;
            while (1)
            {
              v133 = *&qword_100027F90[v132] + v129;
              v134 = HIDWORD(*&qword_100027F90[v132]) + v126;
              v135 = v133 >= v56 || v133 < v6;
              v136 = v135 || v134 < v6;
              if (!v136 && v134 < v55)
              {
                v138 = v133 + v134 * v71;
                if (!v410[v138] && *(v101 + 4 * v138) > v36)
                {
                  break;
                }
              }

              if (++v132 == 8)
              {
                goto LABEL_171;
              }
            }

            v125 = v138;
          }

          else
          {
LABEL_171:
            v124 = v131;
            v127 = v130;
          }

          ++v129;
          v130 = v127;
          v131 = v124;
        }

        while (v129 != v96);
      }

      ++v126;
    }

    while (v126 != v95);
    if (v124 <= 0.0)
    {
      break;
    }

    v410[v127] = 1;
    if (v79 >= v78)
    {
      v78 = 2 * v78 + 2;
      v139 = malloc_type_realloc(ptr, 2 * v78, 0x1000040BDFB0063uLL);
      v55 = v399;
      v71 = v400;
      v56 = v398;
    }

    else
    {
      v139 = ptr;
    }

    ptr = v139;
    v139[v79++] = v125;
    v410[v125] = 2;
  }

  v140 = v391;
  if (v382 >= 1)
  {
    v141 = v410;
    v142 = v99;
    do
    {
      v143 = *v141++;
      *v142++ = v143 == 1;
      --v140;
    }

    while (v140);
  }

  if (v55 > v6)
  {
    v144 = v94;
    do
    {
      if (v56 > v6)
      {
        v145 = v94;
        do
        {
          if (v99[v144 * v97 + v145])
          {
            v146 = 0;
            v147 = 0;
            v148 = -1;
            do
            {
              v149 = *&qword_100027F90[v146] + v145;
              v150 = HIDWORD(*&qword_100027F90[v146]) + v144;
              if (v149 < v56 && v149 >= v6 && v150 >= v6 && v150 < v55)
              {
                v154 = v99[v149 + v150 * v71];
                if (v154)
                {
                  v148 = v146;
                }

                v147 += v154;
              }

              ++v146;
            }

            while (v146 != 8);
            if (v147 == 1)
            {
              v155 = 0;
              v156 = v148 + 7;
              v157 = 1;
              v158 = -1;
              v159 = -1.0;
              do
              {
                v160 = v157;
                v161 = HIDWORD(*&qword_100027F90[(v156 + v155) & 7]);
                v162 = *&qword_100027F90[(v156 + v155) & 7] + v145;
                v163 = v161 + v144;
                if (v162 < v56 && v162 >= v6 && v163 >= v6 && v163 < v55)
                {
                  v167 = v162 + v163 * v71;
                  if (*(v101 + 4 * v167) > v159)
                  {
                    v158 = v167;
                    v159 = *(v101 + 4 * v167);
                  }
                }

                v157 = 0;
                v155 = 2;
              }

              while ((v160 & 1) != 0);
              v99[v158] = 1;
            }
          }

          ++v145;
        }

        while (v145 != v96);
      }

      ++v144;
    }

    while (v144 != v95);
  }

  if (v71 <= v370)
  {
    v168 = v370;
  }

  else
  {
    v168 = v71;
  }

  if (v168 < 1)
  {
LABEL_237:
    *&v58 = -1;
    *(&v58 + 1) = -1;
  }

  else
  {
    v169 = 0;
    v170 = v6;
    while (1)
    {
      v171 = v169 + v6;
      if (v95 - v169 > v169 + v6)
      {
        break;
      }

LABEL_236:
      ++v169;
      ++v170;
      if (v169 == v168)
      {
        goto LABEL_237;
      }
    }

    v172 = &v99[(v97 + 1) * v170];
    v173 = v71 - v171;
    v174 = v170;
    while (v171 >= v173)
    {
LABEL_235:
      ++v174;
      v172 += v97;
      if (v174 >= v95 - v169)
      {
        goto LABEL_236;
      }
    }

    v175 = v172;
    v176 = v170;
    while (1)
    {
      v177 = *v175++;
      if (v177)
      {
        break;
      }

      if (++v176 >= v173)
      {
        goto LABEL_235;
      }
    }

    *&v58 = __PAIR64__(v174, v176);
  }

  v178 = 0;
  v179 = v58;
  if ((v58 & 0x80000000) != 0)
  {
    v181 = 0;
  }

  else
  {
    v180 = DWORD1(v58);
    v181 = 0;
    if ((DWORD1(v58) & 0x80000000) == 0)
    {
      *__srca = v58;
      bzero(v410, v382);
      for (k = 0; k != 8; ++k)
      {
        v183 = vadd_s32(qword_100027F90[k], __srca[0]);
        if (v183.i32[0] < v6 || v183.i32[1] < v6 || v183.i32[0] >= v398 || v183.i32[1] >= v399)
        {
          v188 = v372;
          goto LABEL_259;
        }
      }

      k = 0;
      v188 = v372;
      while (1)
      {
        v187 = vadd_s32(qword_100027F90[k], __srca[0]);
        if (!v372[v187.i32[0] + v187.i32[1] * v400])
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
      v189 = 0;
      v190.i64[1] = -1;
      v190.i64[0] = __PAIR64__(v370, v400);
      while (1)
      {
        v191 = vadd_s32(qword_100027F90[(k + v189) & 7], __srca[0]);
        *v192.i8 = v191;
        v192.u64[1] = v191;
        v193.i32[0] = vmovn_s32(vcgtq_s32(v190, v192)).u32[0];
        v193.i32[1] = vmovn_s32(vcgtq_s32(v192, v190)).i32[1];
        if ((vminv_u16(v193) & 1) != 0 && v188[v191.i32[0] + v191.i32[1] * v400])
        {
          break;
        }

        if (++v189 == 8)
        {
          goto LABEL_265;
        }
      }

      LODWORD(k) = (k + v189) & 7;
LABEL_265:
      v194 = v179 + v180 * v400;
      v410[v194] |= 1 << k;
      v195 = malloc_type_realloc(0, 4uLL, 0x1000040BDFB0063uLL);
      *v195 = v194;
      *(&v196 + 1) = __srca[1];
      *&v197 = vadd_s32(qword_100027F90[k], __srca[0]);
      v198 = 2;
      v199 = 1;
      v201 = v399;
      v200 = v400;
      v202 = v370;
      v203 = v398;
LABEL_266:
      while (1)
      {
        v204 = 5;
        while (1)
        {
          v205 = (k + v204) & 7;
          *&v196 = vadd_s32(qword_100027F90[v205], *&v197);
          if (v196 < v200 && (v196 & 0x80000000) == 0 && (DWORD1(v196) & 0x80000000) == 0 && SDWORD1(v196) < v202 && v188[v196 + DWORD1(v196) * v200])
          {
            break;
          }

          if (++v204 == 13)
          {
            goto LABEL_266;
          }
        }

        v206 = v197 + DWORD1(v197) * v200;
        LODWORD(k) = 1 << v205;
        if (((1 << v205) & v410[v206]) != 0)
        {
          break;
        }

        if (v199 >= v198)
        {
          *__srcd = v196;
          v198 = (2 * v198 + 2);
          v207 = malloc_type_realloc(v195, 2 * v198, 0x1000040BDFB0063uLL);
          v201 = v399;
          v200 = v400;
          v202 = v370;
          v203 = v398;
          v196 = *__srcd;
        }

        else
        {
          v207 = v195;
        }

        v195 = v207;
        v207[v199] = v206;
        v410[v206] |= k;
        ++v199;
        LOBYTE(k) = v205;
        *&v197 = v196;
      }

      v376 = v200 - 1;
      v378 = v202 - 1;
      if (v201 > v6)
      {
        v375 = 0;
        v377 = 0;
        v208 = 0;
        v211 = v6 + v6 * v379;
        v212 = &v410[v211];
        v213 = &v188[v211];
        v209 = size;
        v210 = v199;
        do
        {
          if (v203 > v6)
          {
            v214 = v213;
            v215 = v212;
            v216 = v379 - 2 * v6;
            v217 = v6;
            do
            {
              v218 = *v214++;
              if (v218 == 1)
              {
                v220 = v375;
                v219 = v376;
                if (v376 >= v217)
                {
                  v221 = v217;
                }

                else
                {
                  v221 = v376;
                }

                if (v375 <= v217)
                {
                  v222 = v217;
                }

                else
                {
                  v222 = v375;
                }

                if (v378 >= v407)
                {
                  v223 = v407;
                }

                else
                {
                  v223 = v378;
                }

                v224 = v377;
                if (v377 <= v407)
                {
                  v225 = v407;
                }

                else
                {
                  v225 = v377;
                }

                if (*v215)
                {
                  v226 = 0;
                }

                else
                {
                  v226 = -2;
                }

                if (!*v215)
                {
                  ++v208;
                  v224 = v225;
                  v220 = v222;
                }

                v375 = v220;
                if (*v215)
                {
                  v227 = v378;
                }

                else
                {
                  v227 = v223;
                }

                v378 = v227;
                if (!*v215)
                {
                  v219 = v221;
                }

                v376 = v219;
                v377 = v224;
              }

              else
              {
                v226 = -1;
              }

              *v215++ = v226;
              ++v217;
              --v216;
            }

            while (v216);
          }

          v212 += v379;
          v213 += v379;
          ++v407;
        }

        while (v407 != v396);
      }

      else
      {
        v208 = 0;
        v377 = 0;
        v375 = 0;
        v209 = size;
        v210 = v199;
      }

      v228 = v375 - v376;
      if (v375 - v376 >= v377 - v378)
      {
        v228 = v377 - v378;
      }

      v369 = v228;
      if (v228 > 1 && v208 >= 1)
      {
        v371 = 0;
        v229 = 1;
        v230 = v198;
        while (1)
        {
          v231 = v377 - ((v229 - 1) >> 1);
          if ((v378 + ((v229 - 1) >> 1)) <= v231)
          {
            break;
          }

LABEL_429:
          if (++v229 < v369)
          {
            ++v371;
            if (v208 > 0)
            {
              continue;
            }
          }

          goto LABEL_431;
        }

        v232 = (v229 - 1) >> 1;
        v374 = v232 + v376;
        v233 = v375 - v232;
        v234 = v233;
        v373 = v231;
        v235 = v378 + (v371 >> 1);
        v393 = v229;
        v380 = v233;
LABEL_318:
        if (v374 > v234)
        {
          goto LABEL_428;
        }

        v389 = v235 * v379;
        v236 = (v376 + (v371 >> 1));
        v397 = v235;
LABEL_320:
        if (v410[v236 + v389] != 254)
        {
          goto LABEL_427;
        }

        v386 = v236 + v389;
        v237 = 0;
        v415 = 8;
        v413 = 0;
        do
        {
          v238 = *&qword_100027F90[v237] + v236 + (HIDWORD(*&qword_100027F90[v237]) + v235) * v200;
          *(v414 + v237) = v238;
          if (v229 > v410[v238])
          {
            v239 = v413++;
            *(&v411 + v239) = v238;
          }

          ++v237;
        }

        while (v237 != 8);
        v388 = v413;
        __srcb = v236;
        if (v413 != 1)
        {
          goto LABEL_391;
        }

        v408 = v411;
        if (v210 < 1)
        {
          v241 = 0;
          v245 = -1;
          v243 = v382;
        }

        else
        {
          v240 = v210;
          v241 = 1;
          v242 = v195;
          v243 = v382;
          while (1)
          {
            v244 = *v242++;
            if (v411 == v244)
            {
              break;
            }

            ++v241;
            if (!--v240)
            {
              v241 = 0;
              v245 = -1;
              goto LABEL_333;
            }
          }

          v245 = v195[v241 % v210];
        }

LABEL_333:
        if (v243 > 4096)
        {
          LODWORD(v209) = 0;
          goto LABEL_390;
        }

        v423 = v243;
        v381 = v208;
        if (v243)
        {
          v246 = &v418;
          do
          {
            *v246 = -NAN;
            v246[1].i32[0] = 0x7FFFFFFF;
            v246[1].i8[4] = 0;
            v246 += 2;
          }

          while (v246 != (&v418 + 2 * v382));
          v247 = *(&v419 + 16 * v408 + 4) | 1;
        }

        else
        {
          v247 = -1;
        }

        v248.i32[0] = v408 % v200;
        v248.i32[1] = v408 / v200;
        v249.i32[0] = v245 % v200;
        v249.i32[1] = v245 / v200;
        v390 = v249;
        v250 = vsub_s32(v248, v249);
        v251 = vmul_s32(v250, v250);
        v252 = (&v418 + 2 * v408);
        v252[1].i32[0] = vadd_s32(v251, vdup_lane_s32(v251, 1)).u32[0];
        ++v252;
        v252[-1].i32[1] = 0;
        v385 = v252;
        v252->i8[4] = v247;
        v253 = 1;
        v417 = 1;
        LODWORD(v416[0]) = v408;
        v254 = v241;
        v392 = v245;
        v383 = -v241;
        v395 = v245;
        while (1)
        {
          v255 = v416[0];
          if (v253 < 2)
          {
            v256 = 0;
          }

          else
          {
            v256 = 0;
            v257 = *(&v418 + 4 * SLODWORD(v416[0]) + 2);
            for (m = 1; m != v253; ++m)
            {
              if (*(&v418 + 4 * *(v416 + m) + 2) < v257)
              {
                v257 = *(&v418 + 4 * *(v416 + m) + 2);
                v256 = m;
              }
            }

            v255 = *(v416 + v256);
          }

          if (v255 != v245)
          {
            break;
          }

          if (v245 < 1)
          {
            goto LABEL_388;
          }

          v259 = -1;
          LODWORD(v209) = -2;
          v260 = v245;
          do
          {
            v261 = (&v418 + 2 * v260);
            v261[1].i32[0] = v259;
            v259 = v260;
            LODWORD(v209) = v209 + 1;
            v260 = v261->i32[0];
          }

          while (v261->i32[0] > 0);
          if ((v209 + 1) >= 3)
          {
            v280 = v385->i32[0];
            if (v385->i32[0] != v245)
            {
              v281 = v210;
              v282 = v383 + v210;
              do
              {
                if (v281 >= v230)
                {
                  v283 = (2 * v230 + 2);
                  v195 = malloc_type_realloc(v195, 2 * v283, 0x1000040BDFB0063uLL);
                  v201 = v399;
                  v200 = v400;
                  v235 = v397;
                  v203 = v398;
                  v230 = v283;
                  v236 = __srcb;
                  v245 = v395;
                }

                if (v254 != v281)
                {
                  v284 = v230;
                  memmove(&v195[v254 + 1], &v195[v254], 2 * v282);
                  v245 = v395;
                  v235 = v397;
                  v200 = v400;
                  v236 = __srcb;
                  v230 = v284;
                  v203 = v398;
                  v201 = v399;
                }

                v195[v254] = v280;
                v410[v280] = v393;
                v280 = *(&v418 + 4 * v280 + 2);
                ++v282;
                ++v281;
              }

              while (v280 != v245);
              v210 = v281;
              v234 = v380;
            }
          }

          else
          {
            LODWORD(v209) = 0;
          }

LABEL_386:
          if (v255 == v245)
          {
            goto LABEL_389;
          }

          v253 = v417;
          if (v417 < 1)
          {
LABEL_388:
            LODWORD(v209) = 0;
LABEL_389:
            v208 = v381;
LABEL_390:
            v229 = v393;
            v208 -= v209;
            v209 = size;
LABEL_391:
            if (v388 >= 2)
            {
              v422 = 0;
              if (v210 >= 1)
              {
                v285 = 0;
                do
                {
                  v286 = 0;
                  v287 = 0;
                  v288 = 0;
                  v289 = v285;
                  v290 = v195[v285++];
                  if (v285 == v210)
                  {
                    v291 = 0;
                  }

                  else
                  {
                    v291 = v289 + 1;
                  }

                  v292 = v195[v291];
                  do
                  {
                    v293 = *(v414 + v286);
                    v288 |= v293 == v290;
                    v287 |= v293 == v292;
                    v286 += 4;
                  }

                  while (v286 != 32);
                  if (v288 & v287)
                  {
                    *&v197 = __PAIR64__(v290, v289);
                    DWORD2(v197) = v292;
                    v294 = v422++;
                    *(&v418 + v294) = v197;
                  }
                }

                while (v285 != v210);
                if (v422 > 0)
                {
                  if (v422 == 1)
                  {
                    v295 = 0;
                  }

                  else
                  {
                    v296 = 0;
                    if (SHIDWORD(v418) / v200 == v419 / v200 || SHIDWORD(v418) % v200 == v419 % v200)
                    {
                      v298 = 0.0;
                    }

                    else
                    {
                      v298 = -1.0;
                    }

                    v299 = v298 + (*(v209 + 4 * SHIDWORD(v418)) + *(v209 + 4 * v419));
                    v300 = &v421;
                    for (n = 1; n != v422; ++n)
                    {
                      v302 = *(v300 - 1);
                      v303 = *v300;
                      if (v302 / v200 == v303 / v200 || v302 % v200 == v303 % v200)
                      {
                        v305 = 0.0;
                      }

                      else
                      {
                        v305 = -1.0;
                      }

                      if ((v305 + (*(v209 + 4 * v302) + *(v209 + 4 * v303))) < v299)
                      {
                        v296 = n;
                        v299 = v305 + (*(v209 + 4 * v302) + *(v209 + 4 * v303));
                      }

                      v300 += 2;
                    }

                    v295 = v296;
                  }

                  v306 = *(&v418 + 4 * v295);
                  if (v210 >= v230)
                  {
                    v307 = (2 * v230 + 2);
                    v308 = malloc_type_realloc(v195, 2 * v307, 0x1000040BDFB0063uLL);
                    v230 = v307;
                    v195 = v308;
                    v201 = v399;
                    v200 = v400;
                    v235 = v397;
                    v203 = v398;
                    v236 = __srcb;
                  }

                  v309 = v386;
                  v310 = v306 + 1;
                  v311 = v306 + 1;
                  v312 = v210 - v310;
                  if (v312)
                  {
                    v313 = v230;
                    memmove(&v195[v311 + 1], &v195[v311], 2 * v312);
                    v309 = v386;
                    v200 = v400;
                    v236 = __srcb;
                    v235 = v397;
                    v203 = v398;
                    v230 = v313;
                    v234 = v380;
                    v201 = v399;
                  }

                  ++v210;
                  v195[v311] = v309;
                  v229 = v393;
                  v410[v309] = v393;
                  --v208;
                }
              }
            }

LABEL_427:
            v62 = v236++ < v234;
            if (!v62)
            {
LABEL_428:
              v62 = v235++ < v373;
              if (!v62)
              {
                goto LABEL_429;
              }

              goto LABEL_318;
            }

            goto LABEL_320;
          }
        }

        if (v253 - 1 != v256)
        {
          v262 = v230;
          memmove(v416 + 4 * v256, v416 + 4 * v256 + 4, 4 * (v253 + ~v256));
          v245 = v395;
          v235 = v397;
          v200 = v400;
          v236 = __srcb;
          v230 = v262;
          v203 = v398;
          v201 = v399;
          v256 = v417 - 1;
        }

        v263 = 0;
        v265 = (&v418 + 2 * v255);
        v417 = v256;
        v265[1].i8[4] = v265[1].i8[4] & 0xFC | 2;
        while (1)
        {
          v266 = qword_100027F90[v263];
          v264.i32[1] = v255 / v200;
          v264.i32[0] = v255 % v200;
          v267 = vadd_s32(v266, v264);
          v268 = v267.i32[0] >= v6 && v267.i32[1] < v201;
          v269 = !v268 || v267.i32[1] < v6;
          if (!v269 && v267.i32[0] < v203)
          {
            v271 = v267.i32[0] + v267.i32[1] * v200;
            if (v255 != v408)
            {
              v272 = v392;
              if (v271 == v245)
              {
                goto LABEL_373;
              }
            }

            if (v410[v271] == 254)
            {
              break;
            }
          }

LABEL_367:
          if (++v263 == 8)
          {
            goto LABEL_386;
          }
        }

        v272 = v271;
LABEL_373:
        v273 = (&v418 + 2 * v272);
        v274 = v273[1].i8[4];
        if ((v274 & 2) == 0)
        {
          if ((v273[1].i8[4] & 1) == 0)
          {
            v275 = v417++;
            *(v416 + v275) = v271;
            v273[1].i8[4] = v274 | 1;
          }

          v276 = vmul_s32(v266, v266);
          v277 = vadd_s32(v276, vdup_lane_s32(v276, 1)).u32[0] + v265->i32[1];
          if (v277 < v273->i32[1])
          {
            v273->i32[0] = v255;
            v273->i32[1] = v277;
            v278 = vsub_s32(v267, v390);
            v279 = vmul_s32(v278, v278);
            v273[1].i32[0] = vadd_s32(v279, vdup_lane_s32(v279, 1)).u32[0];
          }
        }

        goto LABEL_367;
      }

LABEL_431:
      if (v210 < 1)
      {
        v317 = 0;
        __srcc = 0;
        v318 = 0;
        v418 = 0;
        LODWORD(v419) = v210;
        HIDWORD(v419) = v210;
        v178 = v195;
      }

      else
      {
        v314 = 0;
        v315 = -1;
        v316 = -1.0;
        v178 = v195;
        do
        {
          if (*(v209 + 4 * v195[v314]) > v316)
          {
            v315 = v314;
            v316 = *(v209 + 4 * v195[v314]);
          }

          ++v314;
        }

        while (v210 != v314);
        __srcc = malloc_type_malloc(8 * v210, 0x100004000313F17uLL);
        HIDWORD(v419) = v210;
        v317 = malloc_type_malloc(8 * v210, 0x100004000313F17uLL);
        v418 = v317;
        v318 = malloc_type_malloc(v210, 0x100004077774924uLL);
        for (ii = 0; ii != v210; v318[ii++] = v320 == v328)
        {
          v320 = 0;
          v321 = v195[(v315 + ii) % v210];
          v322 = v321 / v400;
          v323 = v321 % v400;
          *&v324 = ((v321 % v400) + 0.5) / v400;
          *(&v324 + 1) = ((v321 / v400) + 0.5) / v370;
          __srcc[ii] = v324;
          v325 = v195[(v210 - 1 + v315 + ii) % v210];
          while (1)
          {
            v326.i32[1] = v325 / v400;
            v326.i32[0] = v325 % v400;
            v327 = vadd_s32(qword_100027F90[v320], v326);
            if (v327.i32[0] + v327.i32[1] * v400 == v321)
            {
              break;
            }

            if (++v320 == 8)
            {
              LODWORD(v320) = -1;
              break;
            }
          }

          v328 = 0;
          while (1)
          {
            v329 = vadd_s32(qword_100027F90[v328], __PAIR64__(v322, v323));
            if (v329.i32[0] + v329.i32[1] * v400 == v195[(v315 + ii + 1) % v210])
            {
              break;
            }

            if (++v328 == 8)
            {
              LODWORD(v328) = -1;
              break;
            }
          }
        }

        memcpy(v317, __srcc, 8 * v210);
        v330 = 0;
        LODWORD(v419) = v210;
        v331 = v210 + 2;
        v332 = 2;
        v333 = vdup_n_s32(0x3F2AAAABu);
        v334 = v210;
        do
        {
          v335 = v330 + 1;
          if ((v318[v330] & 1) == 0)
          {
            v336 = v335 == v210 ? 0 : v330 + 1;
            if (v318[v336] == 1)
            {
              if (v210 < 3)
              {
LABEL_456:
                v339 = -1;
              }

              else
              {
                v337 = v332;
                v338 = v210 - 2;
                v339 = v331;
                while (v318[v337 % v210] == 1)
                {
                  ++v339;
                  ++v337;
                  if (!--v338)
                  {
                    goto LABEL_456;
                  }
                }
              }

              v340 = v330 + v210;
              v341 = v339 - (v330 + v210);
              if (v341 >= 2)
              {
                v342 = 0;
                v343 = __srcc[(v340 - 1) % v210];
                v344 = __srcc[(v339 + 1) % v210];
                v345 = __srcc[v340 % v210];
                v346 = __srcc[v339 % v210];
                v347 = vmul_f32(vadd_f32(v345, v346), 0x3F0000003F000000);
                v348 = vmla_f32(v343, v333, vsub_f32(v345, v343));
                v349 = vmla_f32(v344, v333, vsub_f32(v346, v344));
                v350 = vsub_f32(v345, v348);
                v351 = vsub_f32(v347, v345);
                v352 = vsub_f32(v346, v349);
                v353 = vsub_f32(v347, v346);
                v354 = v341 / 2;
                v355 = v354;
                v356 = v334;
                do
                {
                  v357 = v342 / v355;
                  v358 = 1.0 - sqrtf(1.0 - v357);
                  v359 = sqrtf(v357);
                  v317[v356 % v210] = vmla_n_f32(vmla_n_f32(v348, v350, v359), v351, v358);
                  v317[v339 % v210] = vmla_n_f32(vmla_n_f32(v349, v352, v359), v353, v358);
                  ++v342;
                  --v339;
                  ++v356;
                  --v354;
                }

                while (v354);
              }
            }
          }

          ++v331;
          ++v332;
          ++v334;
          v330 = v335;
        }

        while (v335 != v210);
      }

      sub_100007FE8(&v418, v416);
      sub_100007FE8(v416, v414);
      sub_100007FE8(v414, &v411);
      v360 = v412;
      v361 = objc_alloc_init(NSMutableArray);
      v362 = v411;
      if (v360 >= 1)
      {
        v363 = 0;
        v364 = 8 * v360;
        do
        {
          v409 = HIDWORD(*&v362[v363]);
          v365 = [NSNumber numberWithFloat:?];
          [v361 addObject:v365];

          HIDWORD(v366) = v409;
          LODWORD(v366) = v409;
          v367 = [NSNumber numberWithFloat:v366];
          [v361 addObject:v367];

          v363 += 8;
        }

        while (v364 != v363);
      }

      free(v362);
      free(v414[0]);
      free(v416[0]);
      free(v318);
      free(v317);
      free(__srcc);
      v181 = v361;
    }
  }

  free(ptr);
  free(v178);
  free(v372);
  free(v410);

  return v181;
}

void sub_100005DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  free(v59);
  free(a43);
  free(a27);
  free(v58);
  free(a15);
  free(a47);
  _Unwind_Resume(a1);
}

void NTKKaleidoscopeAnalyzeDominance(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  __b = v8;
  v9 = v1;
  v10 = [v9 width];
  v11 = [v9 height];
  v12 = v10 / v7;
  if (v10 / v7 <= 1)
  {
    v12 = 1;
  }

  if (v12 >= 16)
  {
    v13 = 16;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 / v5;
  if (v11 / v5 <= 1)
  {
    v14 = 1;
  }

  if (v14 >= 16)
  {
    v14 = 16;
  }

  v117 = v14;
  v105 = v9;
  v15 = v13 * v7;
  v16 = (v117 * v5);
  if ([v105 width] != v13 * v7 || (v17 = v105, objc_msgSend(v105, "height") != v16))
  {
    v17 = [v105 scaleToWidth:(v13 * v7) height:v16];
  }

  v18 = [v17 contents];
  v104 = v7;
  v121 = 256;
  if (v5 * v7 >= 1)
  {
    memset_pattern16(__b, &unk_100027F40, 16 * (v5 * v7));
  }

  v110 = v5 - v3;
  if ((v5 - v3) > v3)
  {
    v114 = v7 - v3;
    v112 = v3 * v13 + v3 * v13 * v7 * v117;
    v108 = v7 * v117 * v13;
    v106 = v3;
    v111 = v3;
    v113 = v13;
    v109 = v3;
    do
    {
      if (v114 > v3)
      {
        v19 = v106;
        v20 = v112;
        do
        {
          v116 = v19;
          v21 = 0;
          LODWORD(v19) = 0;
          v115 = v20;
          do
          {
            v19 = v19;
            v22 = v19 + 1;
            v23 = v13;
            v24 = v20;
            do
            {
              v25 = v22;
              v120[v19++] = v18[v24++];
              ++v22;
              --v23;
            }

            while (v23);
            ++v21;
            v20 += v15;
          }

          while (v21 != v117);
          v125 = 512;
          bzero(v124, 0x2000uLL);
          if (v19 - 1 >= 0)
          {
            v26 = v25;
            v27 = v120;
            do
            {
              v28 = *v27++;
              v29.i64[0] = 0x3F0000003F000000;
              v29.i64[1] = 0x3F0000003F000000;
              v30 = vmlaq_f32(v29, xmmword_100027F10, v28);
              *v30.f32 = vshl_u32(vcvt_s32_f32(*v30.f32), 0x300000006);
              v124[v30.i32[1] | v30.f32[2] | v30.i32[0]] = vaddq_f32(v28, v124[v30.i32[1] | v30.f32[2] | v30.i32[0]]);
              --v26;
            }

            while (v26);
          }

          v31 = 0;
          v123 = 9;
          while (1)
          {
            v32 = 0;
            v33 = 1.0;
            v34 = -1;
            v35 = (v124 | 0xC);
            do
            {
              v36 = *v35;
              v35 += 4;
              v37 = v36;
              if (v33 <= v37)
              {
                v33 = v37;
                v34 = v32;
              }

              ++v32;
            }

            while (v32 != 512);
            if ((v34 & 0x80000000) != 0)
            {
              break;
            }

            v38 = (v34 >> 3) & 7;
            v39 = v34 & 7;
            if (((v34 >> 6) & 6) != 0)
            {
              v40 = (v34 >> 6) & 7;
            }

            else
            {
              v40 = 1;
            }

            v41 = v40 - 1;
            if (((v34 >> 3) & 6) != 0)
            {
              v42 = (v34 >> 3) & 7;
            }

            else
            {
              v42 = 1;
            }

            if ((v34 & 6) != 0)
            {
              v43 = v34 & 7;
            }

            else
            {
              v43 = 1;
            }

            if (((v34 >> 6) & 7) >= 6)
            {
              v44 = 6;
            }

            else
            {
              v44 = (v34 >> 6) & 7;
            }

            v45 = v44 + 1;
            v46 = 0uLL;
            if (v41 <= v45)
            {
              v47 = v42 - 1;
              v48 = v43 - 1;
              if (v39 >= 6)
              {
                v49 = 6;
              }

              else
              {
                v49 = v39;
              }

              if (v38 >= 6)
              {
                v38 = 6;
              }

              v50 = v38 + 1;
              v51 = v49 - v43 + 3;
              do
              {
                if (v47 <= v50)
                {
                  v52 = v47;
                  do
                  {
                    if (v48 <= v49 + 1)
                    {
                      v53 = v51;
                      v54 = v48;
                      do
                      {
                        v55 = &v124[(v41 << 6) | (8 * v52) | v54];
                        v46 = vaddq_f32(v46, *v55);
                        v55->i64[0] = 0;
                        v55->i64[1] = 0;
                        ++v54;
                        --v53;
                      }

                      while (v53);
                    }

                    _ZF = v52++ == v50;
                  }

                  while (!_ZF);
                }

                _ZF = v41++ == v45;
              }

              while (!_ZF);
            }

            v122[v31++] = v46;
            if (v31 == 9)
            {
              v57 = 9;
              goto LABEL_64;
            }
          }

          if (!v31)
          {
            goto LABEL_77;
          }

          v57 = v31;
LABEL_64:
          v58 = v122;
          v59 = v57;
          do
          {
            v118 = *v58;
            v119 = vdivq_f32(*v58, vdupq_laneq_s32(*v58, 3));
            _CLKUIRGB2LAB();
            _S1 = _V0.S[1];
            __asm { FMLA            S2, S1, V0.S[1] }

            v66.i32[1] = sqrtf(_S2);
            _D0 = vmulq_f32(v66, xmmword_100027F20).u64[0];
            _S1 = 1077936127;
            v69 = (*&_D0 * 3.0) + 0.1;
            if (*&_D0 >= 0.3)
            {
              v69 = 1.0;
            }

            __asm { FMLA            S4, S1, V0.S[1] }

            if (*(&_D0 + 1) >= 0.3)
            {
              v71 = 1.0;
            }

            else
            {
              v71 = _S4;
            }

            v72 = v119;
            v72.i32[3] = vmuls_lane_f32(v71 * (v71 * (v69 * v69)), v118, 3);
            *v58++ = v72;
            --v59;
          }

          while (v59);
          v13 = v113;
          if (v57 >= 2)
          {
            v73 = 0;
            for (i = 1; i != v57; ++i)
            {
              v75 = v73;
              do
              {
                v76 = v122[v75];
                v77 = v122[v75 + 1];
                if ((vmovn_s32(vcgtq_f32(v77, v76)).i8[6] & 1) == 0)
                {
                  break;
                }

                v122[v75 + 1] = v76;
                v122[v75] = v77;
                v78 = v75-- + 1;
              }

              while (v78 > 1);
              ++v73;
            }
          }

LABEL_77:
          _CLKUIRGB2LAB();
          _CLKUILAB2RGB();
          HIDWORD(v79) = 1.0;
          *&__b[16 * v111 * v7 + 16 * v116] = v79;
          v19 = v116 + 1;
          v20 = v115 + v13;
        }

        while (v114 != v116 + 1);
      }

      v112 += v108;
      ++v111;
      v3 = v109;
    }

    while (v110 != v111);
  }

  v80 = v3 - 2;
  if (v3 >= 2)
  {
    v81 = v3;
    v82 = (v5 - v3) * v7;
    v83 = 16 * v82 + 16 * v3;
    v84 = v7 * v80;
    v85 = &__b[16 * v82 - 16 + 16 * v7 + 16 * v3];
    v86 = 16 * v7;
    v87 = v86 - 16;
    v88 = &__b[v83 - 16];
    v89 = &__b[16 * (v3 - 2) * v7 - 16 + 16 * v3];
    v90 = &__b[16 * v84 + 16 * v3];
    v91 = &__b[16 * v84];
    v92 = v86 ^ 0xFFFFFFFFFFFFFFF0;
    v93 = &__b[16 * (v3 - 1) * v7 - 16 + 16 * v3];
    v94 = v80 - 1;
    v95 = v90 - 16;
    v96 = v7 - v3;
    do
    {
      v97 = v81 - 1;
      if (v81 - 1 <= v104 - v81)
      {
        v99 = 0;
        v98 = v81 - 2;
        do
        {
          *(v89 + 16 * v99) = *(v93 + 16 * v99);
          *(v85 + 16 * v99) = *(v88 + 16 * v99);
          ++v99;
        }

        while (v81 + v99 - 2 < v104 - v81);
      }

      else
      {
        v98 = v81 - 2;
      }

      if (v98 <= v5 - v97)
      {
        v100 = &v91[16 * v96];
        v101 = v95;
        v102 = v94;
        do
        {
          *(v101 - 1) = *v101;
          *(v100 + 1) = *v100;
          ++v102;
          v101 = (v101 + v86);
          v100 += v86;
        }

        while (v102 < v5 - v97);
      }

      v85 += v87;
      v88 += v87;
      v89 += v92;
      v93 += v92;
      --v94;
      v95 += v92;
      v91 -= 16 * v104;
      ++v96;
    }

    while (v81-- > 2);
  }
}

id NTKPlusImage()
{
  v0 = +[CLKRenderingContext sharedRenderingContext];
  v1 = [v0 device];
  sub_1000066FC(v1, v1);

  v2 = qword_10003C6F8;

  return v2;
}

uint64_t sub_1000066FC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_10003C704);
  if (qword_10003C708)
  {
    v3 = qword_10003C708 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_10003C710))
  {
    v5 = byte_10003C700;
  }

  else
  {
    qword_10003C708 = v2;
    qword_10003C710 = [v2 version];
    sub_1000067B4(qword_10003C710, v2);
    v5 = 1;
    byte_10003C700 = 1;
  }

  os_unfair_lock_unlock(&stru_10003C704);

  return v5;
}

void sub_1000067B4(uint64_t a1, void *a2)
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
  v8 = qword_10003C6F8;
  qword_10003C6F8 = v7;
}

void sub_1000068C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_100007190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
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

void sub_1000074F4(_Unwind_Exception *a1)
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

void sub_100007688(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id NTKDefaultMonochromeColorMatrix(uint64_t a1)
{
  if (qword_10003C718 != -1)
  {
    sub_100024554();
  }

  v2 = qword_10003C720;

  return v2;
}

void sub_100007700(id a1)
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
  v2 = qword_10003C720;
  qword_10003C720 = v1;
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
    v38 = xmmword_100027F30;
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

float sub_100007F68(float a1, float a2, float a3)
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

float32x2_t *sub_100007FE8@<X0>(float32x2_t *result@<X0>, uint64_t a2@<X8>)
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
  v3 = (&unk_10003C730 + 8 * a1);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008184;
  v6[3] = &unk_100035060;
  v6[4] = a1;
  v6[5] = a2;
  if (*v3 != -1)
  {
    dispatch_once(v3, v6);
  }

  v4 = qword_10003C728[a1];

  return v4;
}

void sub_100008184(uint64_t a1)
{
  v2 = [NSString stringWithCString:*(a1 + 40) encoding:4];
  v7 = [v2 substringFromIndex:{objc_msgSend(@"NTKKaleidoscopeLoggingDomain", "length")}];

  v3 = v7;
  v4 = os_log_create("com.apple.NanoTimeKit.Kaleidoscope", [v7 cStringUsingEncoding:4]);
  v5 = *(a1 + 32);
  v6 = qword_10003C728[v5];
  qword_10003C728[v5] = v4;
}

void sub_100008CA0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = _NTKKaleidoscopeLoggingObjectForDomain(0, "NTKKaleidoscopeLoggingDomainDefault");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000245D0();
    }

    objc_end_catch();
    JUMPOUT(0x100008C4CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_100009460(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100009480(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void *sub_10000A304@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_10000A344(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10000A3A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000A3E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000A3C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000A5C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000A3E8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000AB70(&qword_10003B938, &qword_100028250);
  v10 = *(type metadata accessor for KaleidoscopePosterData(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for KaleidoscopePosterData(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10000A5C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000AB70(&qword_10003B940, &qword_100028258);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t *sub_10000A6CC()
{
  v0 = type metadata accessor for KaleidoscopePosterData(0);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v2);
  v7 = &v20 - v6;
  if (qword_10003B8D8 != -1)
  {
LABEL_18:
    result = swift_once();
  }

  v9 = qword_10003D1C8;
  v8 = qword_10003D1D0;
  v10 = qword_10003D1D0 - qword_10003D1C8;
  if (__OFSUB__(qword_10003D1D0, qword_10003D1C8))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (!v10)
  {
    v11 = _swiftEmptyArrayStorage;
    v14 = _swiftEmptyArrayStorage[2];
    if (!v14)
    {
LABEL_16:

      return _swiftEmptyArrayStorage;
    }

    goto LABEL_12;
  }

  v20 = v1;
  v23 = _swiftEmptyArrayStorage;
  result = sub_10000A3A8(0, v10 & ~(v10 >> 63), 0);
  if (v8 < v9 || v10 < 0)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v11 = v23;
  v22 = sub_100024938();
  v21 = *(*(v22 - 8) + 56);
  v1 = v20;
  do
  {
    v21(v7, 1, 1, v22);
    *&v7[*(v0 + 20)] = 0;
    *&v7[*(v0 + 24)] = v9;
    v23 = v11;
    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      sub_10000A3A8((v12 > 1), v13 + 1, 1);
      v1 = v20;
      v11 = v23;
    }

    v11[2] = v13 + 1;
    sub_10000AA4C(v7, v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v13);
    if (v8 == v9)
    {
      __break(1u);
      goto LABEL_18;
    }

    ++v9;
  }

  while (v8 != v9);
  v14 = v11[2];
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_12:
  v23 = _swiftEmptyArrayStorage;
  sub_100024F98();
  v15 = v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v16 = *(v1 + 72);
  do
  {
    sub_10000AAB0(v15, v4);
    sub_10000C5F4();
    sub_10000CDE4();
    sub_100024CE8();

    v17 = objc_allocWithZone(PREditingLook);
    v18 = sub_100024C68();

    v19 = sub_100024C68();

    [v17 initWithIdentifier:v18 displayName:v19];

    sub_10000AB14(v4);
    sub_100024F78();
    sub_100024FA8();
    sub_100024FB8();
    sub_100024F88();
    v15 += v16;
    --v14;
  }

  while (v14);

  return v23;
}

uint64_t sub_10000AA4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KaleidoscopePosterData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KaleidoscopePosterData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AB14(uint64_t a1)
{
  v2 = type metadata accessor for KaleidoscopePosterData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000AB70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000ABCC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000ABEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_10000AC28(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000AC90()
{
  if (qword_10003B900 != -1)
  {
    result = swift_once();
  }

  qword_10003D1C0 = *(qword_10003D1F8 + 16);
  return result;
}

uint64_t sub_10000ACE8()
{
  if (qword_10003B8D0 != -1)
  {
    result = swift_once();
  }

  if (qword_10003D1C0 < 0)
  {
    __break(1u);
  }

  else
  {
    qword_10003D1C8 = 0;
    qword_10003D1D0 = qword_10003D1C0;
  }

  return result;
}

char *sub_10000AD9C()
{
  result = sub_10000C130(&off_100035188);
  qword_10003D1F8 = &off_100035138;
  return result;
}

unint64_t sub_10000ADE8(unint64_t result)
{
  if (qword_10003B900 == -1)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = result;
  swift_once();
  result = v2;
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (*(qword_10003D1F8 + 16) <= result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v1 = *(qword_10003D1F8 + 8 * result + 32);
  if ((v1 - 9) > 0xFFFFFFFFFFFFFFF7)
  {
    return 0x7265776F6C46;
  }

  if ((v1 - 13) > 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0x63696870617247;
  }

  if ((v1 - 17) > 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0x726F7272694DLL;
  }

  if ((v1 - 24) > 0xFFFFFFFFFFFFFFF8)
  {
    return 0x7365766157;
  }

  if ((v1 - 28) > 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0x6365737265746E49;
  }

  if ((v1 - 34) >= 0xFFFFFFFFFFFFFFFALL)
  {
    return 0x736C6577654ALL;
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_10000AF48(unint64_t a1)
{
  if (qword_10003B900 == -1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v1 = a1;
  swift_once();
  a1 = v1;
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_3:
  if (*(qword_10003D1F8 + 16) <= a1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v1 = *(qword_10003D1F8 + 8 * a1 + 32);
  if (v1 - 9 > 0xFFFFFFFFFFFFFFF7)
  {
    v2 = &off_100035188;
    v3 = 8;
    goto LABEL_24;
  }

  if (v1 - 13 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    if (qword_10003B8E0 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_13;
  }

  if (v1 - 17 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    if (qword_10003B8E8 != -1)
    {
      swift_once();
    }

    v4 = &qword_10003D1E0;
    goto LABEL_23;
  }

  if (v1 - 24 >= 0xFFFFFFFFFFFFFFF9)
  {
    if (qword_10003B8F0 != -1)
    {
      swift_once();
    }

    v4 = &qword_10003D1E8;
    goto LABEL_23;
  }

  if (v1 - 28 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    if (qword_10003B8F8 != -1)
    {
      swift_once();
    }

    v4 = &qword_10003D1F0;
    goto LABEL_23;
  }

  if (v1 - 34 < 0xFFFFFFFFFFFFFFFALL)
  {
    return 0;
  }

  v2 = &off_100035138;
  v3 = 6;
LABEL_24:
  while (1)
  {
    v5 = 0;
    v6 = v2 + 4;
    while (v6[v5] != v1)
    {
      if (v3 == ++v5)
      {
        return 0;
      }
    }

    result = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
LABEL_13:
    v4 = &qword_10003D1D8;
LABEL_23:
    v2 = *v4;
    v3 = *(*v4 + 16);
    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

id sub_10000B164(unint64_t a1)
{
  if (qword_10003B908 != -1)
  {
    swift_once();
  }

  v2 = &unk_10003D000;
  v3 = qword_10003D200;
  sub_10000B8CC(a1);
  v4 = sub_100024C68();

  v5 = sub_100024C68();
  v6 = [v3 pathForResource:v4 ofType:v5];

  v7 = &off_10003B000;
  if (v6)
  {
    v8 = sub_100024C78();
    v10 = v9;
    if (qword_10003B920 != -1)
    {
      swift_once();
    }

    v11 = sub_100024B98();
    sub_10000C2CC(v11, qword_10003D298);

    v12 = sub_100024B78();
    v13 = sub_100024E18();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v50 = v15;
      *v14 = 136315138;
      v16 = sub_100010554(v8, v10, &v50);

      *(v14 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "pathfinderPath: %s", v14, 0xCu);
      sub_10000C36C(v15);
      v7 = &off_10003B000;
    }

    else
    {
    }

    v21 = [objc_opt_self() pathfinderFromFile:v6];
    v22 = sub_100024B78();
    v23 = sub_100024E18();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "pathfinder: %@", v24, 0xCu);
      sub_10000C304(v25);
    }

    v2 = &unk_10003D000;
    if (v21)
    {
      v27 = v21;
      sub_10000B9F8(a1);
      [v27 adjustRotationStart:?];

      v28 = qword_10003B900;
      v29 = v27;
      if (v28 == -1)
      {
        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        swift_once();
        if ((a1 & 0x8000000000000000) == 0)
        {
LABEL_19:
          if (*(qword_10003D1F8 + 16) > a1)
          {
            LODWORD(v30) = 0.5;
            if ((*(qword_10003D1F8 + 8 * a1 + 32) - 17) < 0xFFFFFFFFFFFFFFFCLL)
            {
              *&v30 = 1.0;
            }

            [v29 adjustSampleRadius:v30];

            if (v7[292] == -1)
            {
              goto LABEL_23;
            }

            goto LABEL_41;
          }

LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
LABEL_23:
          sub_10000C2CC(v11, qword_10003D298);
          v31 = sub_100024B78();
          v32 = sub_100024E18();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&_mh_execute_header, v31, v32, "pathfinder is not nil", v33, 2u);
          }

          return v21;
        }
      }

      __break(1u);
      goto LABEL_40;
    }
  }

  else
  {
    if (qword_10003B920 != -1)
    {
      swift_once();
    }

    v17 = sub_100024B98();
    sub_10000C2CC(v17, qword_10003D298);
    v18 = sub_100024B78();
    v19 = sub_100024E18();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "could not load pathfinderPath", v20, 2u);
    }
  }

  sub_10000B8CC(a1);
  v34 = v2[64];
  v35 = sub_100024C68();

  v36 = [objc_opt_self() imageNamed:v35 inBundle:v34 withConfiguration:0];

  v37 = v7[292];
  if (v36)
  {
    if (v37 != -1)
    {
      swift_once();
    }

    v38 = sub_100024B98();
    sub_10000C2CC(v38, qword_10003D298);
    v39 = v36;
    v40 = sub_100024B78();
    v41 = sub_100024E18();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      *(v42 + 4) = v39;
      *v43 = v36;
      v44 = v39;
      _os_log_impl(&_mh_execute_header, v40, v41, "pathfinder is nil; making one with image: %@", v42, 0xCu);
      sub_10000C304(v43);
    }

    v21 = [objc_opt_self() pathfinderWithImage:v39];
  }

  else
  {
    if (v37 != -1)
    {
      swift_once();
    }

    v45 = sub_100024B98();
    sub_10000C2CC(v45, qword_10003D298);
    v46 = sub_100024B78();
    v47 = sub_100024E18();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "pathfinder image is nil", v48, 2u);
    }

    return 0;
  }

  return v21;
}

uint64_t sub_10000B8CC(unint64_t a1)
{
  sub_100024F28(20);

  sub_10000AB70(&qword_10003B958, &qword_100028398);
  result = swift_allocObject();
  v3 = result;
  *(result + 16) = xmmword_1000282A0;
  if (qword_10003B900 == -1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = swift_once();
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(qword_10003D1F8 + 16) > a1)
  {
    v4 = *(qword_10003D1F8 + 8 * a1 + 32);
    v3[7] = &type metadata for Int;
    v3[8] = &protocol witness table for Int;
    v3[4] = v4;
    v5._countAndFlagsBits = sub_100024C98();
    sub_100024D08(v5);

    return 0xD000000000000012;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_10000B9F8(unint64_t result)
{
  if (qword_10003B900 == -1)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  swift_once();
  result = v1;
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(qword_10003D1F8 + 16) <= result)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_10000BAA4(unint64_t a1, uint64_t a2)
{
  v8 = sub_10000B8CC(a1);
  v9._countAndFlagsBits = a2;
  v9._object = 0xE200000000000000;
  sub_100024D08(v9);
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    v5._countAndFlagsBits = 0x646170697ELL;
  }

  else
  {
    v5._countAndFlagsBits = 0x656E6F6870697ELL;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v5._object = v6;
  sub_100024D08(v5);

  return v8;
}

unint64_t sub_10000BB94(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (qword_10003B900 == -1)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  v9 = a3;
  swift_once();
  result = v8;
  a3 = v9;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (*(qword_10003D1F8 + 16) <= result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if ((*(qword_10003D1F8 + 8 * result + 32) - 34) < 0xFFFFFFFFFFFFFFFALL)
  {
    return sub_10000BAA4(result, a3);
  }

  v10 = sub_10000B8CC(result);
  v11._countAndFlagsBits = a2;
  v11._object = 0xE700000000000000;
  sub_100024D08(v11);
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    v6._countAndFlagsBits = 0x646170697ELL;
  }

  else
  {
    v6._countAndFlagsBits = 0x656E6F6870697ELL;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v6._object = v7;
  sub_100024D08(v6);

  return v10;
}

unint64_t sub_10000BCE0(unint64_t result)
{
  if (qword_10003B900 == -1)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  swift_once();
  result = v1;
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(qword_10003D1F8 + 16) <= result)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

void sub_10000BD7C(unint64_t a1)
{
  sub_100024F28(60);
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x8000000100029390;
  sub_100024D08(v2);
  v3._countAndFlagsBits = sub_1000250C8();
  sub_100024D08(v3);

  v4._countAndFlagsBits = 0x203A656C6966202CLL;
  v4._object = 0xE800000000000000;
  sub_100024D08(v4);
  if (qword_10003B900 == -1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  swift_once();
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(qword_10003D1F8 + 16) > a1)
  {
    v5._countAndFlagsBits = sub_1000250C8();
    sub_100024D08(v5);

    v6._object = 0x80000001000293B0;
    v6._countAndFlagsBits = 0xD000000000000012;
    sub_100024D08(v6);
    v7._countAndFlagsBits = sub_10000B8CC(a1);
    sub_100024D08(v7);

    v8._countAndFlagsBits = 93;
    v8._object = 0xE100000000000000;
    sub_100024D08(v8);
    return;
  }

LABEL_7:
  __break(1u);
}

Swift::Int sub_10000BF14()
{
  v1 = *v0;
  sub_100025118();
  sub_100025128(v1);
  return sub_100025138();
}

Swift::Int sub_10000BF88(uint64_t a1)
{
  v2 = *v1;
  sub_100025118();
  sub_100025128(v2);
  return sub_100025138();
}

unint64_t sub_10000BFD8()
{
  result = qword_10003B950;
  if (!qword_10003B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B950);
  }

  return result;
}

char *sub_10000C02C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000AB70(&qword_10003B960, &unk_1000283A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10000C130(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000C02C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v7 + 32], v6 + 32, 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10000C21C(uint64_t a1)
{
  if (a1 > 30)
  {
    if (a1 == 31)
    {
      return 6579538;
    }

    if (a1 != 32)
    {
      if (a1 == 33)
      {
        return 2036429383;
      }

      return 0;
    }

    return 0x656C70727550;
  }

  else
  {
    if (a1 == 28)
    {
      return 1702194242;
    }

    if (a1 != 29)
    {
      if (a1 == 30)
      {
        return 0x65676E61724FLL;
      }

      return 0;
    }

    return 0x6E65657247;
  }
}

uint64_t sub_10000C2CC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000C304(uint64_t a1)
{
  v2 = sub_10000AB70(&qword_10003B968, &unk_100028CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C36C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000C3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AB70(&qword_10003B970, qword_100028490);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000C458(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AB70(&qword_10003B970, qword_100028490);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for KaleidoscopePosterData(uint64_t a1)
{
  result = qword_10003B9D0;
  if (!qword_10003B9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000C520(uint64_t a1)
{
  sub_10000C59C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10000C59C(uint64_t a1)
{
  if (!qword_10003B9E0)
  {
    sub_100024938();
    v1 = sub_100024E98();
    if (!v2)
    {
      atomic_store(v1, &qword_10003B9E0);
    }
  }
}

void sub_10000C5F4()
{
  v1 = sub_100024CB8();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000248C8();
  __chkstk_darwin(v2);
  sub_100024908();
  swift_allocObject();
  sub_1000248F8();
  sub_10000AB70(&qword_10003BA28, &qword_1000285E8);
  *(swift_allocObject() + 16) = xmmword_1000282A0;
  sub_1000248B8();
  sub_10000E30C(&qword_10003BA30, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_10000AB70(&qword_10003BA38, &qword_1000285F0);
  sub_10000DCA8();
  sub_100024EA8();
  sub_1000248D8();
  v3 = type metadata accessor for KaleidoscopePosterData(0);
  sub_10000E30C(&qword_10003C2D0, type metadata accessor for KaleidoscopePosterData, &unk_100028500);
  v5 = sub_1000248E8();
  v7 = v6;
  sub_100024CA8();
  sub_100024C88();
  v9 = v8;
  sub_10000DD54(v5, v7);
  if (!v9)
  {
    v4 = *(v0 + *(v3 + 24));
    sub_10000ADE8(v4);
    v10._countAndFlagsBits = 45;
    v10._object = 0xE100000000000000;
    sub_100024D08(v10);
    v11._countAndFlagsBits = sub_1000250C8();
    sub_100024D08(v11);

    v12._countAndFlagsBits = 45;
    v12._object = 0xE100000000000000;
    sub_100024D08(v12);
    if (qword_10003B900 == -1)
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      swift_once();
      if ((v4 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (v4 < *(qword_10003D1F8 + 16))
        {
          v13._countAndFlagsBits = sub_1000250C8();
          sub_100024D08(v13);

          return;
        }

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }
}

uint64_t sub_10000C994(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1684632949;
  v5 = 0x8000000100029370;
  if (v2 != 1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x8000000100029370;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x746E6169726176;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 1684632949;
  if (*a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xD000000000000016;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746E6169726176;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000250D8();
  }

  return v11 & 1;
}

Swift::Int sub_10000CA80()
{
  sub_100025118();
  sub_100024CF8();

  return sub_100025138();
}

uint64_t sub_10000CB20(uint64_t a1)
{
  sub_100024CF8();
}

Swift::Int sub_10000CBAC(uint64_t a1)
{
  sub_100025118();
  sub_100024CF8();

  return sub_100025138();
}

unint64_t sub_10000CC48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000E5CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10000CC78(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684632949;
  if (v2 != 1)
  {
    v5 = 0xD000000000000016;
    v4 = 0x8000000100029370;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E6169726176;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_10000CCD4()
{
  v1 = 1684632949;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E6169726176;
  }
}

unint64_t sub_10000CD2C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000E5CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000CD6C(uint64_t a1)
{
  v2 = sub_10000E178();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000CDA8(uint64_t a1)
{
  v2 = sub_10000E178();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10000CDE4()
{
  sub_100024F28(29);

  v1 = *(v0 + *(type metadata accessor for KaleidoscopePosterData(0) + 24));
  sub_10000ADE8(v1);
  v2 = sub_100024CD8();
  v4 = v3;

  v10._countAndFlagsBits = v2;
  v10._object = v4;
  sub_100024D08(v10);

  v11._countAndFlagsBits = 95;
  v11._object = 0xE100000000000000;
  sub_100024D08(v11);
  if (qword_10003B900 == -1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  swift_once();
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v1 >= *(qword_10003D1F8 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  v5 = *(qword_10003D1F8 + 8 * v1 + 32);
  if ((v5 - 34) > 0xFFFFFFFFFFFFFFF9)
  {
    sub_10000C21C(v5);
  }

  else
  {
    v6 = sub_10000AF48(v1);
    sub_10000E6A4(v6);
  }

  v7 = sub_100024CD8();
  v9 = v8;

  v12._countAndFlagsBits = v7;
  v12._object = v9;
  sub_100024D08(v12);
}

id sub_10000CF50(uint64_t a1, unint64_t a2)
{
  if (qword_10003B920 != -1)
  {
    swift_once();
  }

  v4 = sub_100024B98();
  sub_10000C2CC(v4, qword_10003D298);

  v5 = sub_100024B78();
  v6 = sub_100024DE8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100010554(a1, a2, v38);
    _os_log_impl(&_mh_execute_header, v5, v6, "provideAtlasBacking for: %s", v7, 0xCu);
    sub_10000C36C(v8);
  }

  if (qword_10003B908 != -1)
  {
    swift_once();
  }

  v9 = qword_10003D200;
  v10 = sub_100024C68();
  v11 = sub_100024C68();
  v12 = [v9 pathForResource:v10 ofType:v11];

  if (v12)
  {
    v13 = sub_100024C78();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = sub_100024B78();
  v17 = sub_100024DE8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = a1;
    v20 = swift_slowAlloc();
    v38[1] = v15;
    v39 = v20;
    *v18 = 136315138;
    v38[0] = v13;

    sub_10000AB70(&qword_10003BA80, &qword_100028610);
    v21 = sub_100024CC8();
    v23 = sub_100010554(v21, v22, &v39);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "artPath: %s", v18, 0xCu);
    sub_10000C36C(v20);
    a1 = v19;
  }

  if (v15)
  {

    v24 = sub_100024B78();
    v25 = sub_100024DE8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v38[0] = swift_slowAlloc();
      *v26 = 136315394;
      *(v26 + 4) = sub_100010554(a1, a2, v38);
      *(v26 + 12) = 2080;

      v27 = sub_100010554(v13, v15, v38);

      *(v26 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v24, v25, "using artwork %s at %s", v26, 0x16u);
      swift_arrayDestroy();
    }

    v28 = sub_100024C68();

    v29 = &selRef_atlasBackingWithArt_uuid_;
  }

  else
  {
    v30 = sub_100024B78();
    v31 = sub_100024DE8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "no artPathname!", v32, 2u);
    }

    v33 = qword_10003D200;
    v34 = sub_100024C68();
    v28 = [objc_opt_self() imageNamed:v34 inBundle:v33 withConfiguration:0];

    v29 = &selRef_atlasBackingWithImage_uuid_;
  }

  v35 = sub_100024C68();
  v36 = [objc_opt_self() *v29];

  return v36;
}

uint64_t sub_10000D4B0(void *a1)
{
  v3 = sub_10000AB70(&qword_10003BA60, &qword_100028600);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000E134(a1, a1[3]);
  sub_10000E178();
  sub_100025158();
  type metadata accessor for KaleidoscopePosterData(0);
  v8[15] = 0;
  sub_1000250B8();
  if (!v1)
  {
    v8[14] = 1;
    sub_100024938();
    sub_10000E30C(&qword_10003BA68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1000250A8();
    v8[13] = 2;
    sub_1000250B8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10000D698@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_10000AB70(&qword_10003B970, qword_100028490);
  __chkstk_darwin(v4 - 8);
  v22 = &v18 - v5;
  v23 = sub_10000AB70(&qword_10003BA48, &qword_1000285F8);
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v18 - v6;
  v8 = type metadata accessor for KaleidoscopePosterData(0);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100024938();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_10000E134(a1, a1[3]);
  sub_10000E178();
  sub_100025148();
  if (v2)
  {
    sub_10000C36C(a1);
    return sub_10000E2AC(v10, &qword_10003B970, qword_100028490);
  }

  else
  {
    v19 = a1;
    v13 = v21;
    v12 = v22;
    v26 = 0;
    *&v10[*(v8 + 24)] = sub_100025098();
    v25 = 1;
    sub_10000E30C(&qword_10003BA58, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_100025088();
    sub_10000E1CC(v12, v10);
    v24 = 2;
    v14 = v23;
    v15 = sub_100025098();
    v16 = *(v8 + 20);
    (*(v13 + 8))(v7, v14);
    *&v10[v16] = v15;
    sub_10000AAB0(v10, v20);
    sub_10000C36C(v19);
    return sub_10000AB14(v10);
  }
}

uint64_t sub_10000DA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100024938();
  result = (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v6 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = 0;
  *(a2 + v6) = 0;
  return result;
}

uint64_t sub_10000DA84()
{
  sub_10000CDE4();
  v0 = sub_100024CE8();

  return v0;
}

uint64_t sub_10000DAE0(uint64_t a1)
{
  sub_10000C5F4();
  v8 = v3;
  v9._countAndFlagsBits = 45;
  v9._object = 0xE100000000000000;
  sub_100024D08(v9);
  v4 = *(v1 + *(a1 + 24));
  if (qword_10003B8D8 != -1)
  {
    swift_once();
  }

  v5 = qword_10003D1C8;
  if (qword_10003D1C8 <= v4)
  {
    v5 = v4;
  }

  if (qword_10003D1D0 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = qword_10003D1D0;
  }

  v10._countAndFlagsBits = sub_10000B8CC(v6);
  sub_100024D08(v10);

  return v8;
}

unint64_t sub_10000DCA8()
{
  result = qword_10003BA40;
  if (!qword_10003BA40)
  {
    sub_10000DD0C(&qword_10003BA38, &qword_1000285F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003BA40);
  }

  return result;
}

uint64_t sub_10000DD0C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000DD54(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000DDA8(void *a1, uint64_t a2)
{
  v3 = [a1 traitCollection];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 userInterfaceStyle];
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    return a2;
  }

  else
  {
    return v5;
  }
}

BOOL sub_10000DE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024938();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000AB70(&qword_10003B970, qword_100028490);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10000AB70(&qword_10003BA70, &qword_100028608);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_10000E23C(a1, &v21 - v13);
  sub_10000E23C(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_10000E23C(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_10000E30C(&qword_10003BA78, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = sub_100024C58();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_10000E2AC(v14, &qword_10003B970, qword_100028490);
      if ((v17 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_10000E2AC(v14, &qword_10003BA70, &qword_100028608);
    return 0;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_10000E2AC(v14, &qword_10003B970, qword_100028490);
LABEL_8:
  v19 = type metadata accessor for KaleidoscopePosterData(0);
  if (*(a1 + *(v19 + 20)) == *(a2 + *(v19 + 20)))
  {
    return *(a1 + *(v19 + 24)) == *(a2 + *(v19 + 24));
  }

  return 0;
}

void *sub_10000E134(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000E178()
{
  result = qword_10003BA50;
  if (!qword_10003BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003BA50);
  }

  return result;
}

uint64_t sub_10000E1CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AB70(&qword_10003B970, qword_100028490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E23C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AB70(&qword_10003B970, qword_100028490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E2AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000AB70(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000E30C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KaleidoscopePosterData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KaleidoscopePosterData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000E4C8()
{
  result = qword_10003BA88;
  if (!qword_10003BA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003BA88);
  }

  return result;
}

unint64_t sub_10000E520()
{
  result = qword_10003BA90;
  if (!qword_10003BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003BA90);
  }

  return result;
}

unint64_t sub_10000E578()
{
  result = qword_10003BA98;
  if (!qword_10003BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003BA98);
  }

  return result;
}

unint64_t sub_10000E5CC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100035368;
  v6._object = a2;
  v4 = sub_100025078(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

id sub_10000E64C()
{
  type metadata accessor for BundleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10003D200 = result;
  return result;
}

void sub_10000E6A4(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    v3 = &off_1000351E8 + 3 * v2;
    v4 = v3[4];
    if (a1 >= v4)
    {
      break;
    }

LABEL_2:
    if (++v2 == 13)
    {
      sub_10000AB70(&qword_10003BB38, "8_");
      swift_arrayDestroy();
      return;
    }
  }

  v6 = v3[5];
  v5 = v3[6];

  while (1)
  {
    v7 = __OFSUB__(a1, v4);
    a1 -= v4;
    if (v7)
    {
      break;
    }

    v8._countAndFlagsBits = v6;
    v8._object = v5;
    sub_100024D08(v8);
    if (a1 < v4)
    {

      goto LABEL_2;
    }
  }

  __break(1u);
}

void sub_10000E784(double a1)
{
  v2 = *(v1 + 96);
  if (v2 != a1)
  {
    v3 = 16;
    if (v2 >= a1)
    {
      v3 = 32;
    }

    v4 = 24;
    if (v2 >= a1)
    {
      v4 = 40;
    }

    v5 = vabdd_f64(v2, a1);
    v6 = v5 * *(v1 + v3) + *(v1 + 88);
    *(v1 + 80) = fmod(*(v1 + 80) + v5 * *(v1 + v4), 1.0);
    *(v1 + 88) = fmod(v6, 1.0);
    *(v1 + 96) = a1;
  }
}

void sub_10000E808(double a1)
{
  v2 = *(v1 + 104);
  if (v2 != a1)
  {
    v3 = 64;
    if (v2 < a1)
    {
      v3 = 48;
    }

    v4 = 72;
    if (v2 < a1)
    {
      v4 = 56;
    }

    v5 = vabdd_f64(v2, a1);
    v6 = v5 * *(v1 + v3);
    *(v1 + 80) = fmod(*(v1 + 80) + v5 * *(v1 + v4), 1.0);
    *(v1 + 88) = fmod(v6 + *(v1 + 88), 1.0);
    *(v1 + 104) = a1;
  }
}

double sub_10000E8DC()
{
  type metadata accessor for AnimationDriver();
  v0 = swift_allocObject();
  result = 1.0;
  *(v0 + 48) = 0xBFA53F7CED916873;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0x3FA53F7CED916873;
  *(v0 + 72) = 0;
  *(v0 + 16) = xmmword_1000287B0;
  *(v0 + 32) = xmmword_1000287B0;
  *(v0 + 80) = xmmword_1000287C0;
  *(v0 + 96) = xmmword_1000287A0;
  return result;
}

id sub_10000E948()
{
  if (qword_10003B920 != -1)
  {
    swift_once();
  }

  v1 = sub_100024B98();
  sub_10000C2CC(v1, qword_10003D298);
  v2 = v0;
  v3 = sub_100024B78();
  v4 = sub_100024E18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    if (v2[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused])
    {
      v7 = 0x676E6973756170;
    }

    else
    {
      v7 = 0x6E69737561706E75;
    }

    if (v2[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused])
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE900000000000067;
    }

    v9 = sub_100010554(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s the quad view", v5, 0xCu);
    sub_10000C36C(v6);
  }

  result = *&v2[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView];
  if (result)
  {
    v11 = v2[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused];

    return [result setPaused:v11];
  }

  return result;
}

id sub_10000EB7C()
{
  v1 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView;
  v2 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView];
  if (v2)
  {
    [v2 removeAllQuads];
  }

  [*&v0[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadPathfinderMapTable] removeAllObjects];
  v3 = [objc_opt_self() sharedInstance];
  [v3 purgeAllUnused];

  v4 = *&v0[v1];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v0[v1];
  }

  else
  {
    v5 = 0;
  }

  *&v0[v1] = 0;

  v7.receiver = v0;
  v7.super_class = type metadata accessor for KaleidoscopeContentView(0);
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t type metadata accessor for KaleidoscopeContentView(uint64_t a1)
{
  result = qword_10003BE18;
  if (!qword_10003BE18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000ED8C()
{
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  [v0 setBackgroundColor:v2];

  [v0 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_100024C68();
  v12 = [objc_opt_self() quadViewWithFrame:v11 identifier:{v4, v6, v8, v10}];

  v13 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView;
  v14 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView];
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView] = v12;
  v23 = v12;

  if (v23)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      v17 = sub_100024C68();
      v18 = MGGetBoolAnswer();

      LODWORD(v19) = 1024416809;
      if (!v18)
      {
        *&v19 = 1.0;
      }

      [v16 setMaxAPL:v19];
      v20 = v23;
      [v16 setOpaque:1];
      v21 = [v1 blackColor];
      [v16 setBackgroundColor:v21];

      [v0 addSubview:v16];
      sub_10000F310();
      v22 = *&v0[v13];
      if (v22)
      {
        [v22 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
      }

      [v16 setPreferredFramesPerSecond:0];
      v0[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused] = 1;
      sub_10000E948();
    }
  }
}

void sub_10000F004()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for KaleidoscopeContentView(0);
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView;
  v2 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame:?];
    sub_10000F310();
    v4 = *&v0[v1];
    if (v4)
    {
      v5 = v4;
      [v5 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
    }
  }
}

uint64_t sub_10000F0FC(uint64_t a1)
{
  result = type metadata accessor for KaleidoscopePosterData(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_10000F1F4(uint64_t a1)
{
  v3 = type metadata accessor for KaleidoscopePosterData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
  swift_beginAccess();
  sub_10000AAB0(v1 + v6, v5);
  v7 = sub_10000DE10(a1, v5);
  result = sub_10000AB14(v5);
  if (!v7)
  {
    sub_10000AAB0(a1, v5);
    swift_beginAccess();
    sub_100011544(v5, v1 + v6);
    swift_endAccess();
    sub_10000F310();
    result = *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView);
    if (result)
    {
      return [result renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
    }
  }

  return result;
}

uint64_t sub_10000F310()
{
  v1 = type metadata accessor for KaleidoscopePosterData(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v2);
  v7 = &v18 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView);
  if (v8)
  {
    v9 = v8;
    [v9 removeAllQuads];
    v10 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
    swift_beginAccess();
    sub_10000AAB0(v0 + v10, v7);
    v11 = *&v7[*(v1 + 24)];
    if (qword_10003B8D8 != -1)
    {
      swift_once();
    }

    v12 = qword_10003D1C8;
    v13 = qword_10003D1D0;
    sub_10000AB14(v7);
    if (v12 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    if (v13 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    v16 = sub_10000F4CC(v15);
    [v16 setOpaque:1];
    [v9 addQuad:v16];
    sub_10000AAB0(v0 + v10, v4);

    sub_10000F690(v17, v4);

    return sub_10000AB14(v4);
  }

  return result;
}

id sub_10000F4CC(Swift::UInt a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_100010B0C(v14, a1);
  swift_endAccess();
  v4 = [objc_opt_self() quadWithShaderType:3];
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  LODWORD(v7) = 1000593162;
  if (v6 == 1)
  {
    *&v7 = 0.0025;
  }

  [v4 setLineThickness:v7];
  v8 = sub_10000FC70(a1);
  [v4 setPrimaryLumaTexture:v8];

  v9 = sub_10000FC9C(a1);
  [v4 setPrimaryChromaTexture:v9];

  [v2 bounds];
  Width = CGRectGetWidth(v15);
  *&Width = Width;
  *&Width = *&Width / (*&v2[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_zoomMultiplier] * *&Width);
  [v4 setDialRadius:Width];
  v11 = *&v2[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadPathfinderMapTable];
  v12 = sub_10000B164(a1);
  [v11 setObject:v12 forKey:v4];

  return v4;
}

void sub_10000F690(uint64_t a1, uint64_t a2)
{
  sub_10000F1F4(a2);
  *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lastAppliedPathProgress) = *(a1 + 80);
  *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_currentDriver) = a1;

  sub_10000F8E8(*(a1 + 80));
  v4 = *(a1 + 88);

  sub_10000F70C(v4);
}

void sub_10000F70C(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView);
  if (!v2)
  {
    return;
  }

  v17 = v2;
  v4 = [v17 quads];
  sub_1000114F8();
  v5 = sub_100024D48();

  if (v5 >> 62)
  {
    v6 = sub_100025028();
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_4:
      if (v6 < 1)
      {
        __break(1u);
        return;
      }

      v7 = 0;
      v8 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadPathfinderMapTable;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = sub_100024F48();
        }

        else
        {
          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (v11)
        {
          v12 = v11;
          v13 = [*(v1 + v8) objectForKey:v11];
          if (v13)
          {
            v14 = v13;
            [v13 startRotation];
            v16 = fmod(v15 + a1, 1.0);
            *&v16 = v16;
            [v12 setRotation:v16];

            v10 = v14;
          }
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

void sub_10000F8E8(double a1)
{
  v33 = type metadata accessor for KaleidoscopePosterData(0);
  __chkstk_darwin(v33);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView);
  if (v5)
  {
    v32 = v4;
    v6 = v5;
    v7 = [v6 quads];
    sub_1000114F8();
    v8 = sub_100024D48();

    if (v8 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100025028())
    {
      if (i < 1)
      {
        __break(1u);
        return;
      }

      v29 = v6;
      v34 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadPathfinderMapTable;
      v10 = v8 & 0xC000000000000001;
      v31 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
      swift_beginAccess();
      v11 = 0;
      v30 = i;
      while (1)
      {
        if (v10)
        {
          v15 = sub_100024F48();
        }

        else
        {
          v15 = *(v8 + 8 * v11 + 32);
        }

        v14 = v15;
        objc_opt_self();
        v16 = swift_dynamicCastObjCClass();
        if (!v16)
        {
          goto LABEL_7;
        }

        v17 = v16;
        v18 = [*(v1 + v34) objectForKey:v16];
        if (!v18)
        {
          goto LABEL_7;
        }

        v19 = v18;
        v6 = v8;
        v20 = v1;
        v21 = v1 + v31;
        v22 = v32;
        sub_10000AAB0(v21, v32);
        v23 = v22;
        v24 = *(v22 + *(v33 + 24));
        if (qword_10003B8D8 != -1)
        {
          swift_once();
          v23 = v32;
        }

        v8 = qword_10003D1C8;
        v1 = qword_10003D1D0;
        sub_10000AB14(v23);
        v25 = v8 <= v24 ? v24 : v8;
        v26 = v1 >= v25 ? v25 : v1;
        if (qword_10003B900 == -1)
        {
          if ((v26 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          swift_once();
          if ((v26 & 0x8000000000000000) != 0)
          {
LABEL_27:
            __break(1u);
LABEL_28:

            return;
          }
        }

        if (v26 >= *(qword_10003D1F8 + 16))
        {
          break;
        }

        v27 = *(qword_10003D1F8 + 8 * v26 + 32) - 1;
        v28 = 0.0;
        if (v27 <= 0x20)
        {
          v28 = dbl_100028978[v27];
        }

        v12 = fmod(v28 + a1, 1.0);
        *&v12 = v12;
        [v19 pointForTime:v12];
        v13 = v35;
        [v17 setSampleRadius:v36];
        [v17 setSampleCenter:v13];

        v14 = v19;
        v1 = v20;
        v8 = v6;
        i = v30;
LABEL_7:
        ++v11;

        if (i == v11)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_31:
      ;
    }
  }
}

id sub_10000FCC8(unint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, uint64_t (*)(void)))
{
  if (*(v3 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance) > 1uLL)
  {
    result = a3(a1, a2);
  }

  else
  {
    result = a2();
  }

  if (qword_10003B900 == -1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = result;
  swift_once();
  result = v10;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (*(qword_10003D1F8 + 16) > a1)
  {
    v6.i64[0] = -4;
    v7.i64[0] = *(qword_10003D1F8 + 8 * a1 + 32) - 13;
    *&v11 = vbslq_s8(vdupq_lane_s64(vcgtq_u64(v6, v7).i64[0], 0), xmmword_100028880, xmmword_100028870).u64[0];
    v8 = sub_100024C68();

    v9 = [objc_opt_self() textureWithProviderDelegate:v3 uuid:v8 rect:v11];

    return v9;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_10000FED8(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for KaleidoscopePosterData(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v39 - v10;
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lumaBacking;
  if (*(v2 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lumaBacking))
  {
    v39 = v8;
    v15 = a2;
    v16 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
    swift_beginAccess();
    sub_10000AAB0(v2 + v16, v13);
    v17 = *&v13[*(v5 + 24)];
    if (qword_10003B8D8 != -1)
    {
      swift_once();
    }

    v19 = qword_10003D1C8;
    v18 = qword_10003D1D0;
    sub_10000AB14(v13);
    if (v19 <= v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = v19;
    }

    if (v18 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v18;
    }

    if (sub_10000BA94(v21) == a1 && v22 == v15)
    {
    }

    else
    {
      a2 = v15;
      v24 = sub_1000250D8();

      v8 = v39;
      if ((v24 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v36 = *(v2 + v14);
    goto LABEL_34;
  }

LABEL_15:
  v25 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_chromaBacking;
  if (*(v2 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_chromaBacking))
  {
    v26 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
    swift_beginAccess();
    sub_10000AAB0(v2 + v26, v11);
    v27 = *&v11[*(v5 + 24)];
    if (qword_10003B8D8 != -1)
    {
      swift_once();
    }

    v28 = qword_10003D1C8;
    v29 = qword_10003D1D0;
    sub_10000AB14(v11);
    if (v28 <= v27)
    {
      v30 = v27;
    }

    else
    {
      v30 = v28;
    }

    if (v29 >= v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = v29;
    }

    if (sub_10000BA9C(v31) == a1 && v32 == a2)
    {
    }

    else
    {
      v34 = sub_1000250D8();

      if ((v34 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v36 = *(v2 + v25);
LABEL_34:
    v37 = v36;
    return v36;
  }

LABEL_29:
  v35 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
  swift_beginAccess();
  sub_10000AAB0(v2 + v35, v8);
  v36 = sub_10000CF50(a1, a2);
  sub_10000AB14(v8);
  return v36;
}

uint64_t sub_100010250(uint64_t a1, uint64_t a2, float a3)
{
  v7 = type metadata accessor for KaleidoscopePosterData(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&dword_10003D208;
  dword_10003D208 = LODWORD(a3);
  v11 = 0.0;
  if ((a1 - 2) <= 2)
  {
    v11 = dbl_100028A80[a1 - 2];
  }

  if (a2 == 2)
  {
    if (v11 >= 3.14159265)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (a2 == 4)
  {
    goto LABEL_14;
  }

  if (a2 != 3)
  {
    if (v11 >= 0.0)
    {
      goto LABEL_14;
    }

LABEL_10:
    if (a1 == 2)
    {
      v12 = 1.0;
      v13 = 1.0;
      if (a2 != 1)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v13 = 1.0;
    v12 = 1.0;
    if (a1 != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (v11 < 1.57079633)
  {
    v12 = 1.0;
    v13 = 1.0;
    if (a1 != 4)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_14:
  v12 = -1.0;
  v13 = 1.0;
  if (a1 <= 2)
  {
    if (a1 != 1)
    {
      if (a1 != 2 || a2 != 1)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_23:
    if (a2 != 2)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (a1 == 3)
  {
    if (a2 != 4)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (a1 == 4 && a2 == 3)
  {
LABEL_24:
    v13 = 2.0;
  }

LABEL_25:
  v14 = (a3 - v10);
  *(v3 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused) = 0;
  sub_10000E948();
  *(*(v3 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_currentDriver) + 88) = v13 * (v14 * 0.0415 * v12) * 5.0 + *(*(v3 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_currentDriver) + 88);
  v15 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
  swift_beginAccess();
  sub_10000AAB0(v3 + v15, v9);

  sub_10000F690(v16, v9);

  return sub_10000AB14(v9);
}

uint64_t sub_100010484(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000104F8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100010554(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100010554(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100010620(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001149C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000C36C(v11);
  return v7;
}

unint64_t sub_100010620(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001072C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100024F68();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_10001072C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100010778(a1, a2);
  sub_1000108A8(&off_100035340);
  return v3;
}

void *sub_100010778(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100010994(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100024F68();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100024D18();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100010994(v10, 0);
        result = sub_100024F18();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000108A8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100010A08(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100010994(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000AB70(&qword_10003BEE8, &qword_100028960);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100010A08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000AB70(&qword_10003BEE8, &qword_100028960);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100010AFC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100010B0C(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  sub_100025118();
  sub_100025128(a2);
  v6 = sub_100025138();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100010E54(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100010C04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000AB70(&qword_10003BEF8, &unk_100028968);
  result = sub_100024F08();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_100025118();
      sub_100025128(v17);
      result = sub_100025138();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::UInt sub_100010E54(Swift::UInt result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100010C04(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100010FA0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000110E0(v5 + 1);
  }

  v8 = *v3;
  sub_100025118();
  sub_100025128(v4);
  result = sub_100025138();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1000250E8();
  __break(1u);
  return result;
}

void *sub_100010FA0()
{
  v1 = v0;
  sub_10000AB70(&qword_10003BEF8, &unk_100028968);
  v2 = *v0;
  v3 = sub_100024EF8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000110E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000AB70(&qword_10003BEF8, &unk_100028968);
  result = sub_100024F08();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_100025118();
      sub_100025128(v16);
      result = sub_100025138();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void sub_100011300(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView) = 0;
  v2 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadPathfinderMapTable;
  *(v1 + v2) = [objc_allocWithZone(NSMapTable) init];
  *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_loadedAssets) = &_swiftEmptySetSingleton;
  v3 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterResourceProviderKey;
  *(v1 + v3) = [objc_allocWithZone(CLKUIResourceProviderKey) init];
  *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lastAppliedPathProgress) = 0;
  *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_zoomMultiplier) = 1063675494;
  v4 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_currentDriver;
  sub_10000E8DC();
  *(v1 + v4) = v5;
  *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance) = 0;
  *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lumaBacking) = 0;
  *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_chromaBacking) = 0;
  sub_100025018();
  __break(1u);
}

uint64_t sub_100011424()
{
  dword_10003D208 = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_100020F50();
    [*(v1 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_renderer) noteContentSignificantlyChanged];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001149C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000114F8()
{
  result = qword_10003BEF0;
  if (!qword_10003BEF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003BEF0);
  }

  return result;
}

uint64_t sub_100011544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KaleidoscopePosterData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000115D0(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - v9;
  if (*&v4[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_appearanceStyle] == a1 && *&v4[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView])
  {
    return;
  }

  *&v4[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_appearanceStyle] = a1;
  [v4 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_100012310(&v4[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_posterData], v10);
  v19 = type metadata accessor for KaleidoscopePosterData(0);
  if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v54 = a3;
  v55 = a1;
  v56 = a2;
  v20 = *&v4[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_animationDriver];
  if (!v20)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v53 = type metadata accessor for KaleidoscopeContentView(0);
  v21 = objc_allocWithZone(v53);
  *&v21[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v21[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView] = 0;
  v22 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadPathfinderMapTable;
  v23 = objc_allocWithZone(NSMapTable);

  *&v21[v22] = [v23 init];
  *&v21[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_loadedAssets] = &_swiftEmptySetSingleton;
  v24 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterResourceProviderKey;
  *&v21[v24] = [objc_allocWithZone(CLKUIResourceProviderKey) init];
  v25 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lastAppliedPathProgress;
  *&v21[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lastAppliedPathProgress] = 0;
  v26 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_zoomMultiplier;
  *&v21[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_zoomMultiplier] = 1063675494;
  v27 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_currentDriver;
  sub_10000E8DC();
  *&v21[v27] = v28;
  v29 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance;
  *&v21[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance] = 0;
  v30 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lumaBacking;
  *&v21[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lumaBacking] = 0;
  v31 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_chromaBacking;
  v32 = v56;
  *&v21[v30] = v56;
  v33 = v54;
  *&v21[v31] = v54;
  *&v21[v27] = v20;
  v34 = v33;

  v35 = v32;

  v21[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused] = 1;
  sub_10000AAB0(v10, &v21[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData]);
  *&v21[v25] = *(v20 + 80);
  *&v21[v29] = v55;
  v36 = [objc_opt_self() currentDevice];
  v37 = [v36 userInterfaceIdiom];

  v38 = 0.9;
  if (!v37)
  {
    v38 = 1.125;
  }

  *&v21[v26] = v38;
  v63.receiver = v21;
  v63.super_class = v53;
  v39 = objc_msgSendSuper2(&v63, "initWithFrame:", v12, v14, v16, v18);
  sub_10000ED8C();

  sub_10000AB14(v10);
  [v4 insertSubview:v39 atIndex:0];
  v40 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView;
  v41 = *&v4[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView];
  if (v41)
  {
    v42 = objc_opt_self();
    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    v61 = sub_100012410;
    v62 = v43;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_100011B4C;
    v60 = &unk_100035590;
    v44 = _Block_copy(&aBlock);
    v45 = v41;

    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    v61 = sub_10001243C;
    v62 = v46;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_100011B90;
    v60 = &unk_1000355E0;
    v47 = _Block_copy(&aBlock);
    v48 = v45;

    [v42 animateWithDuration:0x20000 delay:v44 options:v47 animations:0.25 completion:0.0];

    _Block_release(v47);
    _Block_release(v44);
    v41 = *&v4[v40];
  }

  *&v4[v40] = v39;
  v49 = v39;

  sub_100012380();
  sub_100024B08();
  v50 = *&v4[v40];
  if (v50)
  {
    v51 = *(v50 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView);
    if (v51)
    {
      v52 = v51;
      [v52 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
    }
  }
}

double sub_100011B4C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

double sub_100011B90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_100011BE4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for KaleidoscopePosterData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView;
  v8 = *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
    swift_beginAccess();
    sub_10000AAB0(v8 + v9, v6);
    v10 = v8;
    sub_10000F690(a1, v6);

    sub_10000AB14(v6);
    v11 = *(v2 + v7);
    if (v11)
    {
      v12 = v11;
      sub_10000F310();

      v13 = *(v2 + v7);
      if (v13)
      {
        v14 = *(v13 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView);
        if (v14)
        {
          [v14 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
        }
      }
    }
  }
}

void sub_100011D08(float a1)
{
  v2 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView;
  v3 = *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView);
  if (v3)
  {
    v4 = v1;
    *&v3[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_zoomMultiplier] = a1;
    v5 = v3;
    sub_10000F310();

    v6 = *(v4 + v2);
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView);
      if (v7)
      {

        [v7 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
      }
    }
  }
}

id sub_100011E04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KaleidoscopeEditorContentView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for KaleidoscopeEditorContentView(uint64_t a1)
{
  result = qword_10003BF98;
  if (!qword_10003BF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100011F1C(uint64_t a1)
{
  sub_100011FEC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100011FEC(uint64_t a1)
{
  if (!qword_10003C240)
  {
    type metadata accessor for KaleidoscopePosterData(255);
    v1 = sub_100024E98();
    if (!v2)
    {
      atomic_store(v1, &qword_10003C240);
    }
  }
}

void sub_100012044()
{
  v1 = v0;
  v2 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_100012310(v1 + OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_posterData, &v7 - v3);
  v5 = type metadata accessor for KaleidoscopePosterData(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = *&v4[*(v5 + 24)];
    sub_10000AB14(v4);
    v8 = v6;
    v11._countAndFlagsBits = sub_1000250C8();
    sub_100024D08(v11);

    v12._countAndFlagsBits = 45;
    v12._object = 0xE100000000000000;
    sub_100024D08(v12);
    if (*(v1 + OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_animationDriver))
    {
      sub_100024D88(3);
      sub_100024D98();
      v13._countAndFlagsBits = 45;
      v13._object = 0xE100000000000000;
      sub_100024D08(v13);
      sub_100024D88(3);
      sub_100024D98();
      v14._countAndFlagsBits = 45;
      v14._object = 0xE100000000000000;
      sub_100024D08(v14);
      v8 = *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_appearanceStyle);
      type metadata accessor for UIUserInterfaceStyle(0);
      sub_100024FC8();
      sub_100024C68();

      return;
    }
  }

  __break(1u);
}

uint64_t sub_100012260()
{
  sub_100012044();
  v1 = v0;
  v2 = [v0 description];
  v3 = sub_100024C78();
  v5 = v4;

  v7._countAndFlagsBits = v3;
  v7._object = v5;
  sub_100024D08(v7);

  v8._countAndFlagsBits = 1735290926;
  v8._object = 0xE400000000000000;
  sub_100024D08(v8);

  return 0x6C6C696B73746163;
}

uint64_t sub_100012310(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100012380()
{
  result = qword_10003C2A0;
  if (!qword_10003C2A0)
  {
    type metadata accessor for KaleidoscopeContentView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C2A0);
  }

  return result;
}

uint64_t sub_1000123D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012424(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10001244C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_snapshotImageView;
  *(v1 + v2) = [objc_allocWithZone(UIImageView) init];
  *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView) = 0;
  *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_shouldShowSnapshot) = 1;
  v3 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_snapshotManager;
  sub_100024A68();
  swift_allocObject();
  *(v1 + v3) = sub_100024A58();
  v4 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_rotationAnimator;
  sub_100024B28();
  swift_allocObject();
  *(v1 + v4) = sub_100024B18();
  sub_100025018();
  __break(1u);
}

uint64_t sub_100012544(uint64_t a1)
{
  v2 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1000125B8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18KaleidoscopePoster21KaleidoscopeEmptyView_emptyPosterLabel;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for KaleidoscopeEmptyView();
  v10 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemBrownColor];
  [v12 setBackgroundColor:v13];

  v14 = OBJC_IVAR____TtC18KaleidoscopePoster21KaleidoscopeEmptyView_emptyPosterLabel;
  v15 = *&v12[OBJC_IVAR____TtC18KaleidoscopePoster21KaleidoscopeEmptyView_emptyPosterLabel];
  v16 = sub_100024C68();
  [v15 setText:v16];

  [v12 addSubview:*&v12[v14]];
  return v12;
}

id sub_100012848(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for KaleidoscopeEmptyView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10001291C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100024B98();
  sub_100012E54(v5, a2);
  sub_10000C2CC(v5, a2);
  return sub_100024B88();
}

uint64_t sub_100012994@<X0>(uint64_t *a1@<X8>)
{
  sub_100024BD8();
  swift_allocObject();
  sub_100024BE8();
  sub_100024BA8();
  swift_allocObject();

  sub_100024BB8();
  sub_10000AB70(&qword_10003BFF8, &unk_100028C20);
  sub_100024958();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100028B90;
  sub_100012E0C(&qword_10003C000, &type metadata accessor for PRRenderingConfiguration, &protocol conformance descriptor for PRRenderingConfiguration);

  sub_100024948();
  sub_100012E0C(&qword_10003C008, &type metadata accessor for PREditingConfiguration, &protocol conformance descriptor for PREditingConfiguration);

  sub_100024948();

  *a1 = v2;
  return result;
}

id sub_100012BF0(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

double sub_100012C30()
{
  sub_10000AB70(&qword_10003BFE8, qword_100028BA0);
  swift_allocObject();
  sub_100024BC8();
  sub_100012EEC(&qword_10003BFF0, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_100024988();

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100012D70();
  sub_100012EEC(&qword_10003BFE0, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_100024968();
  return 0;
}

unint64_t sub_100012D70()
{
  result = qword_10003BFD8;
  if (!qword_10003BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003BFD8);
  }

  return result;
}

uint64_t sub_100012E0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_100012E54(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100012EEC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000DD0C(&qword_10003BFE8, qword_100028BA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100012F3C()
{
  v1 = v0;
  v2 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  __chkstk_darwin(v2 - 8);
  v4 = &v38 - v3;
  v5 = type metadata accessor for KaleidoscopePosterData(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v52 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 48);
  v9 = v8 >> 62;
  if (v8 >> 62)
  {
    goto LABEL_32;
  }

  for (result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); result >= 6; result = sub_100025028())
  {
    v51 = v8 & 0xC000000000000001;
    if ((v8 & 0xC000000000000001) != 0)
    {
      sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);

      sub_100024F38(0);
      sub_100024F38(1);
      sub_100024F38(2);
      sub_100024F38(3);
      sub_100024F38(4);
      sub_100024F38(5);
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    else
    {

      if (!v9)
      {
LABEL_5:
        v11 = v8 & 0xFFFFFFFFFFFFFF8;
        v42 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
        v43 = 0;
        v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v41 = 13;
        goto LABEL_8;
      }
    }

    v11 = sub_100025038();
    v42 = v13;
    v43 = v14;
    v41 = v15;
    v12 = sub_100025028();
LABEL_8:
    v16 = _swiftEmptyArrayStorage;
    if (!v12)
    {
LABEL_27:
      sub_10000AB70(&qword_10003C150, &qword_100028CB8);
      inited = swift_initStackObject();
      *(inited + 16) = 0;
      if (v9)
      {
        sub_100025028();
      }

      v36 = sub_1000147A8(0, &qword_10003C158, OS_dispatch_queue_ptr);
      __chkstk_darwin(v36);
      *(&v38 - 8) = v1;
      *(&v38 - 7) = v16;
      *(&v38 - 6) = inited;
      *(&v38 - 5) = v11;
      v37 = v43;
      *(&v38 - 4) = v42;
      *(&v38 - 3) = v37;
      *(&v38 - 2) = v41;
      sub_100024E38();

      return swift_unknownObjectRelease();
    }

    v53 = _swiftEmptyArrayStorage;
    result = sub_10000A3A8(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      goto LABEL_35;
    }

    v38 = v11;
    v39 = v9;
    v40 = v1;
    v16 = v53;
    v17 = sub_10000AB70(&unk_10003C280, &qword_100028CB0);
    v18 = 0;
    v46 = v8 & 0xFFFFFFFFFFFFFF8;
    v48 = (v6 + 48);
    v49 = v17;
    *&v19 = 138412290;
    v44 = v19;
    v50 = v12;
    v45 = v5;
    v47 = v6;
    while (1)
    {
      v1 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v51)
      {
        v20 = sub_100024F48();
      }

      else
      {
        if (v18 >= *(v46 + 16))
        {
          goto LABEL_31;
        }

        v20 = *(v8 + 8 * v18 + 32);
      }

      v21 = v20;
      sub_100024A88();
      if ((*v48)(v4, 1, v5) == 1)
      {
        sub_10000E2AC(v4, &qword_10003C380, qword_100028B40);
        if (qword_10003B910 != -1)
        {
          swift_once();
        }

        v22 = sub_100024B98();
        sub_10000C2CC(v22, qword_10003D268);
        v23 = v21;
        v24 = sub_100024B78();
        v25 = sub_100024E08();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = v4;
          v28 = v8;
          v29 = swift_slowAlloc();
          *v26 = v44;
          *(v26 + 4) = v23;
          *v29 = v23;
          v30 = v23;
          _os_log_impl(&_mh_execute_header, v24, v25, "Unable to load Kaleidoscope poster data for look %@. Falling back to first look.", v26, 0xCu);
          sub_10000E2AC(v29, &qword_10003B968, &unk_100028CA0);
          v8 = v28;
          v4 = v27;
          v5 = v45;
        }

        v31 = sub_100024938();
        v32 = v52;
        (*(*(v31 - 8) + 56))(v52, 1, 1, v31);

        *(v32 + *(v5 + 20)) = 0;
        *(v32 + *(v5 + 24)) = 1;
        v6 = v47;
      }

      else
      {
        sub_10000AA4C(v4, v52);
      }

      v53 = v16;
      v34 = v16[2];
      v33 = v16[3];
      v9 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        sub_10000A3A8((v33 > 1), v34 + 1, 1);
        v16 = v53;
      }

      v16[2] = v9;
      sub_10000AA4C(v52, v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v34);
      ++v18;
      if (v1 == v50)
      {
        v9 = v39;
        v1 = v40;
        v11 = v38;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_100025028();
    if (result < 0)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void sub_100013570(unint64_t a1, uint64_t a2, uint64_t a3, os_unfair_lock_s *a4, uint64_t a5, void *a6, uint64_t a7, unint64_t a8)
{
  v15 = type metadata accessor for KaleidoscopePosterData(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 48);
  v74 = a6;
  if ((v19 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v20 = *(v19 + 8 * a1 + 32);
        goto LABEL_5;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = sub_100024F48();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  a6 = v20;
  if (*(a3 + 16) > a1)
  {
    v72 = a7;
    v73 = a8;
    sub_10000AAB0(a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * a1, v18);
    v15 = *&v18[*(v15 + 24)];
    if (qword_10003B8D8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  swift_once();
LABEL_7:
  v21 = qword_10003D1C8;
  if (qword_10003D1C8 <= v15)
  {
    v21 = v15;
  }

  if (qword_10003D1D0 >= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = qword_10003D1D0;
  }

  v23 = sub_10000BA94(v22);
  v25 = sub_10000CF50(v23, v24);

  v26 = sub_10000BA9C(v22);
  v28 = sub_10000CF50(v26, v27);

  v30 = __chkstk_darwin(v29);
  v69 = a2;
  v68[-4] = a2;
  v68[-3] = a6;
  v68[-2] = v25;
  v68[-1] = v28;
  __chkstk_darwin(v30);
  v68[-2] = sub_100014804;
  v68[-1] = v31;
  os_unfair_lock_lock(a4 + 4);
  sub_100014824();
  v71 = 0;
  os_unfair_lock_unlock(a4 + 4);
  if (qword_10003B910 != -1)
  {
    swift_once();
  }

  v32 = sub_100024B98();
  v33 = sub_10000C2CC(v32, qword_10003D268);
  v34 = v28;
  v35 = a6;
  v36 = v25;
  v68[1] = v33;
  v37 = sub_100024B78();
  v38 = sub_100024DE8();

  v76 = v34;
  v75 = v36;

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v70 = a4;
    *v39 = 138412802;
    v41 = v75;
    v42 = v76;
    *(v39 + 4) = v75;
    *(v39 + 12) = 2112;
    *(v39 + 14) = v42;
    *v40 = v25;
    v40[1] = v28;
    *(v39 + 22) = 2112;
    *(v39 + 24) = v35;
    v40[2] = v35;
    v43 = v41;
    v44 = v42;
    v45 = v35;
    _os_log_impl(&_mh_execute_header, v37, v38, "Loading luma %@ and chroma %@ for look %@", v39, 0x20u);
    sub_10000AB70(&qword_10003B968, &unk_100028CA0);
    swift_arrayDestroy();
    a4 = v70;
  }

  v77 = v35;
  __chkstk_darwin(v46);
  v68[-2] = &v77;
  v47 = v71;
  sub_10001B898(sub_10001486C, &v68[-4], v74, v72, v73);
  if (v48)
  {
    v74 = v47;
    v49 = sub_10000BB64(v22);
    v51 = sub_10000CF50(v49, v50);

    v52 = sub_10000BB7C(v22);
    v54 = sub_10000CF50(v52, v53);

    v55 = v54;
    v56 = v35;
    v57 = v51;
    v58 = sub_100024B78();
    v59 = sub_100024DE8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v70 = a4;
      *v60 = 138412802;
      *(v60 + 4) = v57;
      *(v60 + 12) = 2112;
      *(v60 + 14) = v55;
      *v61 = v51;
      v61[1] = v54;
      *(v60 + 22) = 2112;
      *(v60 + 24) = v56;
      v61[2] = v56;
      v62 = v56;
      v63 = v57;
      v64 = v55;
      _os_log_impl(&_mh_execute_header, v58, v59, "Loading dark luma %@ and dark chroma %@ for look %@", v60, 0x20u);
      sub_10000AB70(&qword_10003B968, &unk_100028CA0);
      swift_arrayDestroy();
      a4 = v70;
    }

    v66 = __chkstk_darwin(v65);
    v68[-4] = v69;
    v68[-3] = v56;
    v68[-2] = v51;
    v68[-1] = v54;
    __chkstk_darwin(v66);
    v68[-2] = sub_10001484C;
    v68[-1] = v67;
    os_unfair_lock_lock(a4 + 4);
    sub_100014888();
    os_unfair_lock_unlock(a4 + 4);

    sub_10000AB14(v18);
  }

  else
  {
    sub_10000AB14(v18);
  }
}

uint64_t sub_100013BB4(uint64_t a1, void *a2, void *a3, void *a4)
{
  swift_beginAccess();
  if (a3)
  {
    v8 = *(a1 + 16);
    if ((v8 & 0xC000000000000001) != 0)
    {
      if (v8 < 0)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      v10 = a3;
      result = sub_100024FE8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      *(a1 + 16) = sub_1000194D8(v9, result + 1);
    }

    else
    {
      v10 = a3;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(a1 + 16);
    sub_10001A764(v10, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + 16) = v17;
  }

  else
  {
  }

  swift_endAccess();
  swift_beginAccess();
  if (!a4)
  {

    return swift_endAccess();
  }

  v13 = *(a1 + 24);
  if ((v13 & 0xC000000000000001) == 0)
  {
    v15 = a4;
    goto LABEL_20;
  }

  if (v13 < 0)
  {
    v14 = *(a1 + 24);
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = a4;
  result = sub_100024FE8();
  if (!__OFADD__(result, 1))
  {
    *(a1 + 24) = sub_1000194D8(v14, result + 1);
LABEL_20:
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(a1 + 24);
    sub_10001A764(v15, a2, v16);
    *(a1 + 24) = v18;
    return swift_endAccess();
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100013D68(uint64_t a1, void *a2, void *a3, void *a4)
{
  swift_beginAccess();
  if (a3)
  {
    v8 = *(a1 + 32);
    if ((v8 & 0xC000000000000001) != 0)
    {
      if (v8 < 0)
      {
        v9 = *(a1 + 32);
      }

      else
      {
        v9 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      v10 = a3;
      result = sub_100024FE8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      *(a1 + 32) = sub_1000194D8(v9, result + 1);
    }

    else
    {
      v10 = a3;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(a1 + 32);
    sub_10001A764(v10, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + 32) = v17;
  }

  else
  {
  }

  swift_endAccess();
  swift_beginAccess();
  if (!a4)
  {

    return swift_endAccess();
  }

  v13 = *(a1 + 40);
  if ((v13 & 0xC000000000000001) == 0)
  {
    v15 = a4;
    goto LABEL_20;
  }

  if (v13 < 0)
  {
    v14 = *(a1 + 40);
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = a4;
  result = sub_100024FE8();
  if (!__OFADD__(result, 1))
  {
    *(a1 + 40) = sub_1000194D8(v14, result + 1);
LABEL_20:
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(a1 + 40);
    sub_10001A764(v15, a2, v16);
    *(a1 + 40) = v18;
    return swift_endAccess();
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_100013F1C(void *a1, uint64_t a2)
{
  v6 = v2[6];
  v7 = v6 >> 62;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 6)
    {
      goto LABEL_3;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = sub_100025028();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  if (sub_100025028() < 6)
  {
    goto LABEL_25;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);

    sub_100024F38(0);
    sub_100024F38(1);
    sub_100024F38(2);
    sub_100024F38(3);
    sub_100024F38(4);
    sub_100024F38(5);
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_8:

    v8 = sub_100025038();
    v3 = v8;
    if (a2 != 2)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  v3 = v6 & 0xFFFFFFFFFFFFFF8;
  if (a2 != 2)
  {
    goto LABEL_11;
  }

LABEL_9:
  v33 = a1;
  __chkstk_darwin(v8);
  v31[2] = &v33;
  sub_10001B898(sub_10001486C, v31, v10, v9, v11);
  if (v12)
  {
    v13 = v2 + 4;
    goto LABEL_12;
  }

LABEL_11:
  v13 = v2 + 2;
LABEL_12:
  swift_beginAccess();
  v14 = *v13;

  v6 = sub_100014A44(a1, v14);

  if (qword_10003B910 != -1)
  {
LABEL_26:
    swift_once();
  }

  v15 = sub_100024B98();
  sub_10000C2CC(v15, qword_10003D268);
  v16 = v6;
  v17 = a1;
  v18 = sub_100024B78();
  v19 = sub_100024DE8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31[4] = v3;
    v23 = v22;
    v32 = v22;
    *v20 = 138412802;
    *(v20 + 4) = v16;
    *v21 = v6;
    *(v20 + 12) = 2080;
    v24 = a2 == 1;
    if (a2 == 1)
    {
      v25 = 0x746867696CLL;
    }

    else
    {
      v25 = 1802658148;
    }

    if (v24)
    {
      v26 = 0xE500000000000000;
    }

    else
    {
      v26 = 0xE400000000000000;
    }

    v27 = v16;
    v28 = sub_100010554(v25, v26, &v32);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2112;
    *(v20 + 24) = v17;
    v21[1] = v17;
    v29 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "Retrieved backing luma %@ for appearance %s for look %@", v20, 0x20u);
    sub_10000AB70(&qword_10003B968, &unk_100028CA0);
    swift_arrayDestroy();

    sub_10000C36C(v23);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  return v6;
}

unint64_t sub_100014314(void *a1, uint64_t a2)
{
  v6 = v2[6];
  v7 = v6 >> 62;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 6)
    {
      goto LABEL_3;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = sub_100025028();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  if (sub_100025028() < 6)
  {
    goto LABEL_25;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);

    sub_100024F38(0);
    sub_100024F38(1);
    sub_100024F38(2);
    sub_100024F38(3);
    sub_100024F38(4);
    sub_100024F38(5);
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_8:

    v8 = sub_100025038();
    v3 = v8;
    if (a2 != 2)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  v3 = v6 & 0xFFFFFFFFFFFFFF8;
  if (a2 != 2)
  {
    goto LABEL_11;
  }

LABEL_9:
  v33 = a1;
  __chkstk_darwin(v8);
  v31[2] = &v33;
  sub_10001B898(sub_100014788, v31, v10, v9, v11);
  if (v12)
  {
    v13 = v2 + 5;
    goto LABEL_12;
  }

LABEL_11:
  v13 = v2 + 3;
LABEL_12:
  swift_beginAccess();
  v14 = *v13;

  v6 = sub_100014A44(a1, v14);

  if (qword_10003B910 != -1)
  {
LABEL_26:
    swift_once();
  }

  v15 = sub_100024B98();
  sub_10000C2CC(v15, qword_10003D268);
  v16 = v6;
  v17 = a1;
  v18 = sub_100024B78();
  v19 = sub_100024DE8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31[4] = v3;
    v23 = v22;
    v32 = v22;
    *v20 = 138412802;
    *(v20 + 4) = v16;
    *v21 = v6;
    *(v20 + 12) = 2080;
    v24 = a2 == 1;
    if (a2 == 1)
    {
      v25 = 0x746867696CLL;
    }

    else
    {
      v25 = 1802658148;
    }

    if (v24)
    {
      v26 = 0xE500000000000000;
    }

    else
    {
      v26 = 0xE400000000000000;
    }

    v27 = v16;
    v28 = sub_100010554(v25, v26, &v32);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2112;
    *(v20 + 24) = v17;
    v21[1] = v17;
    v29 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "Retrieved backing chroma %@ for appearance %s for look %@", v20, 0x20u);
    sub_10000AB70(&qword_10003B968, &unk_100028CA0);
    swift_arrayDestroy();

    sub_10000C36C(v23);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_10001470C()
{

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_1000147A8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1000148A0(uint64_t a1, void *a2)
{
  v5 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for KaleidoscopePosterData(0);
  __chkstk_darwin(v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10000E2AC(a1, &qword_10003C380, qword_100028B40);
    sub_100019384(a2, v7);

    sub_10000E2AC(v7, &qword_10003C380, qword_100028B40);
  }

  else
  {
    sub_10000AA4C(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_10001A778(v10, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v14;
  }
}

void *sub_100014A44(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_100024FF8();

    if (v4)
    {
      sub_1000147A8(0, &qword_10003C2D8, CLKUIAtlasBacking_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_10001E6A0(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void *sub_100014B08(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_100024FF8();

    if (v4)
    {
      type metadata accessor for KaleidoscopeEditorContentView(0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_10001E6A0(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_100014BBC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_100024FF8();

    if (v3)
    {
      type metadata accessor for AnimationDriver();
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_10001E6A0(a1);
    if (v5)
    {
    }
  }

  return 0;
}

uint64_t sub_100014CD0()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_posterData;
  v2 = type metadata accessor for KaleidoscopePosterData(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentView] = 0;
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentViewForLook] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_animationDriverForLook] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_posterDataForLook] = &_swiftEmptyDictionarySingleton;
  v3 = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_kaleidoscopeViewReuseCache] = _swiftEmptyArrayStorage;
  v4 = &qword_10003C000;
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_jewelLookNames] = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_artfileManager;
  type metadata accessor for KaleidoscopeArtFileManager();
  v6 = swift_allocObject();
  v6[2] = &_swiftEmptyDictionarySingleton;
  v6[3] = &_swiftEmptyDictionarySingleton;
  v6[4] = &_swiftEmptyDictionarySingleton;
  v6[5] = &_swiftEmptyDictionarySingleton;
  v6[6] = sub_10000A6CC();
  *&v0[v5] = v6;
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_editorContentViewsForEditingLooks] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_lastOrientation] = 0;
  v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_shouldShowAppearanceMenuButton] = 1;
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_currentlySelectedAppearanceStyle] = 0;
  v35.receiver = v0;
  v35.super_class = type metadata accessor for KaleidoscopePosterEditor(0);
  v7 = objc_msgSendSuper2(&v35, "init");
  v8 = qword_10003B910;
  v9 = v7;
  if (v8 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v10 = sub_100024B98();
    sub_10000C2CC(v10, qword_10003D268);
    v11 = sub_100024B78();
    v12 = sub_100024DD8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "PosterEditor created", v13, 2u);
    }

    sub_100012F3C();

    v14 = sub_10000A6CC();
    v15 = v14;
    v16 = v14 >> 62;
    if (v14 >> 62)
    {
      result = sub_100025028();
      if (result < 0)
      {
        goto LABEL_32;
      }

      result = sub_100025028();
      if (result < 6)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }
    }

    else
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result < 6)
      {
        goto LABEL_29;
      }
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);

      sub_100024F38(0);
      sub_100024F38(1);
      sub_100024F38(2);
      sub_100024F38(3);
      sub_100024F38(4);
      sub_100024F38(5);
      if (!v16)
      {
        goto LABEL_8;
      }
    }

    else
    {

      if (!v16)
      {
LABEL_8:
        v18 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
        v19 = 6;
        goto LABEL_11;
      }
    }

    sub_100025038();
    v18 = v20;
    v16 = v21;
    v19 = v22 >> 1;
LABEL_11:
    swift_unknownObjectRetain();

    v23 = v19 - v16;
    if (__OFSUB__(v19, v16))
    {
      goto LABEL_30;
    }

    if (!v23)
    {
      break;
    }

    sub_10000A3C8(0, v23 & ~(v23 >> 63), 0);
    v24 = v3;
    result = swift_unknownObjectRelease();
    if (v23 < 0)
    {
      goto LABEL_31;
    }

    v34 = v9;
    if (v16 <= v19)
    {
      v25 = v19;
    }

    else
    {
      v25 = v16;
    }

    v4 = (v25 - v16);
    v9 = (v18 + 8 * v16);
    while (v4)
    {
      v26 = *v9;
      v27 = [v26 displayName];
      v28 = sub_100024C78();
      v30 = v29;

      v32 = v24[2];
      v31 = v24[3];
      v3 = (v32 + 1);
      if (v32 >= v31 >> 1)
      {
        sub_10000A3C8((v31 > 1), v32 + 1, 1);
      }

      v24[2] = v3;
      v33 = &v24[2 * v32];
      v33[4] = v28;
      v33[5] = v30;
      v4 = (v4 - 1);
      ++v9;
      if (!--v23)
      {
        swift_unknownObjectRelease();
        v4 = &qword_10003C000;
        v9 = v34;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  swift_unknownObjectRelease_n();
  v24 = _swiftEmptyArrayStorage;
LABEL_24:
  *(v9 + v4[52]) = v24;

  return v9;
}

void sub_10001525C(void *a1, void *a2, void *a3)
{
  v194 = a1;
  v5 = sub_10000AB70(&qword_10003B970, qword_100028490);
  __chkstk_darwin(v5 - 8);
  v188 = &v180[-v6];
  v189 = sub_100024938();
  v198 = *(v189 - 1);
  v7 = __chkstk_darwin(v189);
  v185 = &v180[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v193 = &v180[-v9];
  v10 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v11 = __chkstk_darwin(v10 - 8);
  v187 = &v180[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v180[-v13];
  v15 = type metadata accessor for KaleidoscopePosterData(0);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v190 = &v180[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v197 = &v180[-v20];
  v21 = __chkstk_darwin(v19);
  v184 = &v180[-v22];
  v23 = __chkstk_darwin(v21);
  v25 = &v180[-v24];
  __chkstk_darwin(v23);
  v199 = &v180[-v26];
  v27 = sub_1000249A8();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v180[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v28 + 104))(v30, enum case for WatchFacesWallpaperSupportFeatureFlags.catskill(_:), v27);
  v31 = sub_100024998();
  (*(v28 + 8))(v30, v27);
  if ((v31 & 1) == 0)
  {
    type metadata accessor for KaleidoscopeEmptyView();
    v36 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v37 = [a2 backgroundView];
    [v37 bounds];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    [v36 setFrame:{v39, v41, v43, v45}];
    v46 = [a2 backgroundView];
    [v46 addSubview:v36];

    return;
  }

  v191 = a2;
  sub_10000AB70(&unk_10003C280, &qword_100028CB0);
  sub_100024A88();
  v192 = v16;
  v32 = *(v16 + 48);
  if (v32(v14, 1, v15) == 1)
  {
    v33 = v199;
    sub_100024A98();
    v34 = v32(v14, 1, v15);
    v35 = v193;
    if (v34 != 1)
    {
      sub_10000E2AC(v14, &qword_10003C380, qword_100028B40);
    }
  }

  else
  {
    v33 = v199;
    sub_10000AA4C(v14, v199);
    v35 = v193;
  }

  v196 = v15;
  if (qword_10003B910 != -1)
  {
    swift_once();
  }

  v47 = sub_100024B98();
  v48 = sub_10000C2CC(v47, qword_10003D268);
  sub_10000AAB0(v33, v25);
  v49 = a3;
  v183 = v48;
  v50 = sub_100024B78();
  LOBYTE(v51) = sub_100024DE8();

  v52 = os_log_type_enabled(v50, v51);
  v186 = v49;
  if (!v52)
  {

    sub_10000AB14(v25);
    v62 = v198;
    goto LABEL_18;
  }

  v53 = swift_slowAlloc();
  v201 = swift_slowAlloc();
  *v53 = 136315394;
  v54 = [v49 identifier];
  v55 = sub_100024C78();
  v57 = v56;

  v58 = sub_100010554(v55, v57, &v201);

  *(v53 + 4) = v58;
  *(v53 + 12) = 2080;
  sub_10000C5F4();
  v202 = v59;
  v203 = v60;
  v205._countAndFlagsBits = 45;
  v205._object = 0xE100000000000000;
  sub_100024D08(v205);
  v61 = *(v25 + *(v196 + 24));
  v62 = v198;
  if (qword_10003B8D8 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v63 = qword_10003D1C8;
    if (qword_10003D1C8 <= v61)
    {
      v63 = v61;
    }

    v64 = qword_10003D1D0 >= v63 ? v63 : qword_10003D1D0;
    v206._countAndFlagsBits = sub_10000B8CC(v64);
    sub_100024D08(v206);

    v65 = v202;
    v66 = v203;
    sub_10000AB14(v25);
    v67 = sub_100010554(v65, v66, &v201);

    *(v53 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v50, v51, "populateViewsForLook: %s; resolved data: %s", v53, 0x16u);
    swift_arrayDestroy();

    v33 = v199;
    v49 = v186;
LABEL_18:
    sub_10000E8DC();
    v198 = v68;
    v69 = v188;
    sub_10001D704(v33, v188, &qword_10003B970, qword_100028490);
    v70 = v189;
    v71 = (*(v62 + 6))(v69, 1, v189);
    v25 = v195;
    if (v71 == 1)
    {
      sub_10000E2AC(v69, &qword_10003B970, qword_100028490);
    }

    else
    {
      (*(v62 + 4))(v35, v69, v70);
      v72 = v35;
      v73 = v62;
      v74 = objc_allocWithZone(NSUserDefaults);
      v75 = sub_100024C68();
      v76 = [v74 initWithSuiteName:v75];

      v188 = v76;
      if (v76)
      {
        v77 = sub_10001DCC4(&qword_10003C2A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v202 = sub_1000250C8();
        v203 = v78;
        v207._countAndFlagsBits = 0x736572676F72702DLL;
        v207._object = 0xE900000000000073;
        sub_100024D08(v207);
        v79 = sub_100024C68();

        v80 = v188;
        [v188 doubleForKey:v79];
        v82 = v81;

        v182 = v77;
        v202 = sub_1000250C8();
        v203 = v83;
        v208._countAndFlagsBits = 0x6F697461746F722DLL;
        v208._object = 0xE90000000000006ELL;
        sub_100024D08(v208);
        v84 = sub_100024C68();

        [v80 doubleForKey:v84];
        v86 = v85;

        v87 = v198;
        *(v198 + 10) = v82;
        *(v87 + 88) = v86;
        v88 = v185;
        (*(v73 + 2))(v185, v72, v70);
        v89 = v33;
        v90 = v184;
        sub_10000AAB0(v89, v184);
        v91 = sub_100024B78();
        v92 = sub_100024DD8();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = v70;
          v94 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          v202 = v183;
          *v94 = 136315650;
          v181 = v92;
          v95 = sub_1000250C8();
          v97 = v96;
          v98 = *(v73 + 1);
          v98(v88, v93);
          v99 = sub_100010554(v95, v97, &v202);

          *(v94 + 4) = v99;
          *(v94 + 12) = 2080;
          sub_10000CDE4();
          v100 = sub_100024CE8();
          v102 = v101;

          sub_10000AB14(v90);
          v103 = sub_100010554(v100, v102, &v202);

          *(v94 + 14) = v103;
          *(v94 + 22) = 2048;
          *(v94 + 24) = v82;
          _os_log_impl(&_mh_execute_header, v91, v181, "Poster %s which is look %s loaded path progress of %f in the editor", v94, 0x20u);
          swift_arrayDestroy();

          v98(v193, v93);
          v49 = v186;
        }

        else
        {

          sub_10000AB14(v90);
          v104 = *(v73 + 1);
          v104(v88, v70);
          v104(v193, v70);
        }

        v33 = v199;
      }

      else
      {
        (*(v62 + 1))(v72, v70);
      }
    }

    v105 = v194;
    v106 = [v194 environment];
    swift_getObjectType();
    v107 = *(v25 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_currentlySelectedAppearanceStyle);
    v108 = swift_unknownObjectRetain();
    v109 = sub_10000DDA8(v108, v107);
    swift_unknownObjectRelease_n();
    v110 = sub_100013F1C(v49, v109);
    v111 = sub_100014314(v49, v109);
    sub_1000147A8(0, &qword_10003C298, NSObject_ptr);
    v112 = [v105 currentLook];
    LODWORD(v189) = sub_100024E78();

    v113 = [v191 backgroundView];
    [v113 bounds];
    v115 = v114;
    v117 = v116;
    v119 = v118;
    v121 = v120;

    v122 = v197;
    sub_10000AAB0(v33, v197);
    v123 = type metadata accessor for KaleidoscopeEditorContentView(0);
    v124 = objc_allocWithZone(v123);
    v125 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_snapshotImageView;
    v126 = objc_allocWithZone(UIImageView);
    v183 = v111;
    v194 = v111;
    v127 = v198;

    v184 = v110;
    v193 = v110;
    *&v124[v125] = [v126 init];
    *&v124[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView] = 0;
    v128 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_shouldShowSnapshot;
    v124[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_shouldShowSnapshot] = 1;
    v129 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_snapshotManager;
    sub_100024A68();
    swift_allocObject();
    *&v124[v129] = sub_100024A58();
    v130 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_rotationAnimator;
    sub_100024B28();
    swift_allocObject();
    *&v124[v130] = sub_100024B18();
    v131 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_posterData;
    sub_10000AAB0(v122, &v124[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_posterData]);
    v132 = v192 + 56;
    v188 = *(v192 + 56);
    (v188)(&v124[v131], 0, 1, v196);
    v185 = v109;
    *&v124[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_appearanceStyle] = v109;
    *&v124[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_animationDriver] = v127;
    v124[v128] = 0;
    v204.receiver = v124;
    v204.super_class = v123;
    swift_retain_n();
    v133 = objc_msgSendSuper2(&v204, "initWithFrame:", v115, v117, v119, v121);
    v134 = objc_opt_self();
    v51 = v133;
    v135 = [v134 grayColor];
    [v51 setBackgroundColor:v135];

    if (v189)
    {
      sub_10000AAB0(v197, v190);
      v189 = type metadata accessor for KaleidoscopeContentView(0);
      v136 = objc_allocWithZone(v189);
      *&v136[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v136[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView] = 0;
      v192 = v132;
      v137 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadPathfinderMapTable;
      v138 = objc_allocWithZone(NSMapTable);
      v139 = v193;
      v140 = v194;
      *&v136[v137] = [v138 init];
      *&v136[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_loadedAssets] = &_swiftEmptySetSingleton;
      v141 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterResourceProviderKey;
      *&v136[v141] = [objc_allocWithZone(CLKUIResourceProviderKey) init];
      v142 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lastAppliedPathProgress;
      *&v136[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lastAppliedPathProgress] = 0;
      v143 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_zoomMultiplier;
      *&v136[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_zoomMultiplier] = 1063675494;
      v144 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_currentDriver;
      sub_10000E8DC();
      *&v136[v144] = v145;
      v146 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance;
      *&v136[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance] = 0;
      v147 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lumaBacking;
      *&v136[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lumaBacking] = 0;
      v148 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_chromaBacking;
      *&v136[v147] = v184;
      *&v136[v148] = v183;
      v149 = v198;
      *&v136[v144] = v198;

      v150 = v139;
      v151 = v140;

      v136[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused] = 1;
      v152 = v190;
      sub_10000AAB0(v190, &v136[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData]);
      *&v136[v142] = *(v149 + 80);
      *&v136[v146] = v185;
      v153 = [objc_opt_self() currentDevice];
      v154 = [v153 userInterfaceIdiom];

      v155 = 0.9;
      if (!v154)
      {
        v155 = 1.125;
      }

      *&v136[v143] = v155;
      v25 = v195;
      v200.receiver = v136;
      v200.super_class = v189;
      v156 = objc_msgSendSuper2(&v200, "initWithFrame:", v115, v117, v119, v121);
      sub_10000ED8C();

      sub_10000AB14(v152);
      v157 = *&v51[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView];
      *&v51[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView] = v156;
      v158 = v156;

      sub_10001DCC4(&qword_10003C2A0, type metadata accessor for KaleidoscopeContentView, &unk_100028930);
      v159 = v158;

      sub_100024B08();
    }

    if (*&v51[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView])
    {
      [v51 addSubview:?];
      v160 = v193;

      v35 = v194;
      sub_10000AB14(v197);
    }

    else
    {
      sub_10000AB14(v197);

      v160 = v193;
      v35 = v194;
    }

    v53 = v196;
    v161 = v199;
    v50 = v186;
    v162 = [v191 backgroundView];
    [v162 addSubview:v51];

    v62 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentViewForLook;
    swift_beginAccess();
    v163 = *&v62[v25];
    if ((v163 & 0xC000000000000001) != 0)
    {
      if (v163 < 0)
      {
        v61 = *&v62[v25];
      }

      else
      {
        v61 = v163 & 0xFFFFFFFFFFFFFF8;
      }

      v164 = v51;
      v165 = sub_100024FE8();
      if (__OFADD__(v165, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      *&v62[v25] = sub_100019968(v61, v165 + 1);
    }

    else
    {
      v166 = v51;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v201 = *&v62[v25];
    sub_10001AA58(v51, v50, isUniquelyReferenced_nonNull_native, &qword_10003C2C0, &qword_100028DC0);
    *&v62[v25] = v201;
    swift_endAccess();
    v62 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_animationDriverForLook;
    swift_beginAccess();
    v168 = *&v62[v25];
    if ((v168 & 0xC000000000000001) != 0)
    {
      if (v168 < 0)
      {
        v61 = *&v62[v25];
      }

      else
      {
        v61 = v168 & 0xFFFFFFFFFFFFFF8;
      }

      v169 = sub_100024FE8();
      if (__OFADD__(v169, 1))
      {
        goto LABEL_55;
      }

      *&v62[v25] = sub_100019734(v61, v169 + 1);
    }

    v170 = swift_isUniquelyReferenced_nonNull_native();
    v201 = *&v62[v25];
    sub_10001A8DC(v198, v50, v170);
    *&v62[v25] = v201;
    swift_endAccess();
    v171 = *(v25 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentView);
    *(v25 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentView) = v51;
    v62 = v51;

    v51 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_editorContentViewsForEditingLooks;
    swift_beginAccess();
    v172 = *&v51[v25];
    if ((v172 & 0xC000000000000001) == 0)
    {
      break;
    }

    if (v172 < 0)
    {
      v61 = *&v51[v25];
    }

    else
    {
      v61 = v172 & 0xFFFFFFFFFFFFFF8;
    }

    v173 = sub_100024FE8();
    if (!__OFADD__(v173, 1))
    {
      v174 = v161;
      v175 = v53;
      v176 = v160;
      *&v51[v25] = sub_100019968(v61, v173 + 1);
      goto LABEL_53;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
  }

  v174 = v161;
  v175 = v53;
  v176 = v160;
LABEL_53:
  v177 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *&v51[v25];
  sub_10001AA58(v62, v50, v177, &qword_10003C2C0, &qword_100028DC0);
  *&v51[v25] = v201;
  swift_endAccess();
  v178 = v187;
  sub_10000AAB0(v174, v187);
  v179 = v188;
  (v188)(v178, 0, 1, v175);
  swift_beginAccess();
  sub_1000148A0(v178, v50);
  swift_endAccess();
  sub_10000AAB0(v174, v178);
  (v179)(v178, 0, 1, v175);
  sub_1000170AC(v178);

  sub_10000E2AC(v178, &qword_10003C380, qword_100028B40);
  sub_10000AB14(v174);
}