@interface CIRedEyeCorrection
- (id)outputImage;
- (void)setDefaults;
@end

@implementation CIRedEyeCorrection

- (void)setDefaults
{
  self->inputCameraModel = 0;
  v3 = self->inputCorrectionInfo;
  self->inputCorrectionInfo = 0;
}

- (id)outputImage
{
  v70 = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (!inputImage)
  {
    return 0;
  }

  inputCorrectionInfo = self->inputCorrectionInfo;
  if (inputCorrectionInfo)
  {
    v5 = [(NSDictionary *)inputCorrectionInfo copy];
    v6 = [v5 objectForKeyedSubscript:@"convexHull"];
    if (v6)
    {
      v7 = 3;
      goto LABEL_7;
    }

    if ([v5 objectForKeyedSubscript:@"pointX"])
    {
      v7 = 1;
LABEL_7:
      inputCameraModel = self->inputCameraModel;
      if (inputCameraModel)
      {
        v9 = [(NSString *)inputCameraModel copy];
      }

      else
      {
        v9 = @"undefined";
      }

      [(CIImage *)self->inputImage extent];
      v13 = v12;
      v15 = v14;
      v16 = v10;
      v17 = v11;
      v18 = off_1E75C0B58;
      if (v6)
      {
        v18 = off_1E75C0B60;
      }

      [(__objc2_class *)*v18 supportRectangleWithRepair:v5 imageSize:v10, v11];
      x = v72.origin.x;
      y = v72.origin.y;
      width = v72.size.width;
      height = v72.size.height;
      if (CGRectIsNull(v72))
      {
        v23 = 0;
        v24 = 0;
        v25 = 0x7FFFFFFF;
LABEL_14:
        if (v25 != 0x7FFFFFFF || v23)
        {
          v26 = 0x7FFFFFFF;
        }

        else
        {
          v26 = 0x7FFFFFFF;
          if (!v24)
          {
            goto LABEL_45;
          }
        }

LABEL_30:
        v27 = v26;
        v28 = v25;
        v29 = v23;
        v30 = v24;
        if (v23)
        {
LABEL_31:
          if (v24)
          {
            v52 = v5;
            v53 = v24;
            v54 = v25;
            v55 = v23;
            v51 = v26;
            v56 = v9;
            v57 = v7;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            allValues = [v5 allValues];
            v33 = [allValues countByEnumeratingWithState:&v65 objects:v69 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = 0;
              v36 = *v66;
              do
              {
                for (i = 0; i != v34; ++i)
                {
                  if (*v66 != v36)
                  {
                    objc_enumerationMutation(allValues);
                  }

                  v38 = *(*(&v65 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v38 doubleValue];
                    v40 = v39 * 1000.0;
                    if (-2654435761 * v40 >= 0)
                    {
                      v41 = -(1640531535 * v40);
                    }

                    else
                    {
                      v41 = -1640531535 * v40;
                    }

                    v35 ^= v41;
                  }
                }

                v34 = [allValues countByEnumeratingWithState:&v65 objects:v69 count:16];
              }

              while (v34);
            }

            else
            {
              v35 = 0;
            }

            v44 = self->inputImage;
            v45 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
            if (v6)
            {
              v46 = [(CIImage *)v44 imageByColorMatchingWorkingSpaceToColorSpace:v45];
            }

            else
            {
              v46 = [(CIImage *)v44 imageByApplyingFilter:@"CILinearToSRGBToneCurve" withInputParameters:MEMORY[0x1E695E0F8]];
            }

            v47 = [[(CIImage *)v46 imageByCroppingToRect:v27 _imageByRenderingToIntermediate:v28];
            v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CIRedEyeCorrections %lu", v35];
            v64[0] = MEMORY[0x1E69E9820];
            v64[1] = 3221225472;
            v64[2] = __33__CIRedEyeCorrection_outputImage__block_invoke;
            v64[3] = &__block_descriptor_64_e70__CGRect__CGPoint_dd__CGSize_dd__40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
            *&v64[4] = v27;
            *&v64[5] = v28;
            *&v64[6] = v29;
            *&v64[7] = v30;
            v58[0] = MEMORY[0x1E69E9820];
            v58[1] = 3221225472;
            v58[2] = __33__CIRedEyeCorrection_outputImage__block_invoke_2;
            v58[3] = &unk_1E75C3A50;
            v63 = v57;
            v58[6] = v13;
            v58[7] = v15;
            *&v58[8] = v16;
            *&v58[9] = v17;
            v59 = v51;
            v60 = v54;
            v61 = v55;
            v62 = v53;
            v58[4] = v52;
            v58[5] = v56;
            v49 = [v47 imageWithExtent:v48 processorDescription:v35 argumentDigest:266 inputFormat:2056 outputFormat:0 options:v64 roiCallback:v27 processor:v28, v29, v30, v58];
            if (v6)
            {
              v50 = [v49 imageByColorMatchingColorSpaceToWorkingSpace:v45];
            }

            else
            {
              v50 = [v49 imageByApplyingFilter:@"CISRGBToneCurveToLinear" withInputParameters:MEMORY[0x1E695E0F8]];
            }

            v31 = v50;
            CGColorSpaceRelease(v45);
            return v31;
          }
        }

LABEL_45:
        inputImage = self->inputImage;
        goto LABEL_46;
      }

      v73.origin.x = x;
      v73.origin.y = y;
      v73.size.width = width;
      v73.size.height = height;
      v26 = -2147483647;
      if (CGRectIsInfinite(v73))
      {
        v23 = 0xFFFFFFFFLL;
        v25 = -2147483647;
        v24 = 0xFFFFFFFFLL;
      }

      else
      {
        v74.origin.x = x;
        v74.origin.y = y;
        v74.size.width = width;
        v74.size.height = height;
        v75 = CGRectInset(v74, 0.000001, 0.000001);
        v76 = CGRectIntegral(v75);
        v25 = v76.origin.y;
        v23 = v76.size.width;
        v24 = v76.size.height;
        if (v76.origin.x != -2147483647)
        {
          v26 = v76.origin.x;
          if (v76.origin.x != 0x7FFFFFFF)
          {
            goto LABEL_30;
          }

          goto LABEL_14;
        }
      }

      if (v25 == -2147483647 && v23 == 0xFFFFFFFF && v24 == 0xFFFFFFFF)
      {
        v27 = *MEMORY[0x1E695F040];
        v28 = *(MEMORY[0x1E695F040] + 8);
        v29 = *(MEMORY[0x1E695F040] + 16);
        v30 = *(MEMORY[0x1E695F040] + 24);
        v23 = 0xFFFFFFFFLL;
        v25 = -2147483647;
        v24 = 0xFFFFFFFFLL;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    puts("red-eye repair dictionary is of unknown type");
    return 0;
  }

LABEL_46:
  v42 = inputImage;

  return v42;
}

void __33__CIRedEyeCorrection_outputImage__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v102 = *MEMORY[0x1E69E9840];
  v6 = [a3 contextID];
  v8 = ci_signpost_log_render(v6, v7);
  if (((v6 << 32) - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v8))
    {
      v10 = *(a1 + 104);
      *buf = 67109120;
      v98 = v10;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6 << 32, "CIRedEyeCorrection_processor", "version %d", buf, 8u);
    }
  }

  TimerBase::TimerBase(buf, v6, 0, "CIRedEyeCorrection_processor", 0x21u);
  if ((CI::format_is_ycc([a3 format]) & 1) == 0)
  {
    AllocSize = IOSurfaceGetAllocSize([a3 surface]);
    bzero([a3 baseAddress], AllocSize);
    v14 = *(a1 + 48);
    v13 = *(a1 + 56);
    v16 = *(a1 + 64);
    v15 = *(a1 + 72);
    v17 = *(a1 + 80);
    v91 = *(a1 + 84);
    v18 = *(a1 + 88);
    v19 = *(a1 + 96);
    v93 = *(a1 + 32);
    v84 = *(a1 + 40);
    [a2 region];
    x = v103.origin.x;
    y = v103.origin.y;
    width = v103.size.width;
    height = v103.size.height;
    if (CGRectIsNull(v103))
    {
      LODWORD(v24) = 0;
      v25 = 0x7FFFFFFF;
      v26 = 0x7FFFFFFFLL;
    }

    else
    {
      v104.origin.x = x;
      v104.origin.y = y;
      v104.size.width = width;
      v104.size.height = height;
      if (CGRectIsInfinite(v104))
      {
        v87 = -2147483647;
        v25 = -2147483647;
        LODWORD(v24) = -1;
        goto LABEL_11;
      }

      v105.origin.x = x;
      v105.origin.y = y;
      v105.size.width = width;
      v105.size.height = height;
      v106 = CGRectInset(v105, 0.000001, 0.000001);
      v107 = CGRectIntegral(v106);
      v25 = v107.origin.y;
      v24 = v107.size.height;
      v26 = v107.origin.x;
    }

    v87 = v26;
LABEL_11:
    v27 = [a2 format];
    v28 = [a2 baseAddress];
    v29 = [a2 bytesPerRow];
    v94 = v17;
    [a3 region];
    v30 = v108.origin.x;
    v31 = v108.origin.y;
    v32 = v108.size.width;
    v33 = v108.size.height;
    if (CGRectIsNull(v108))
    {
      v85 = 0;
      v90 = 0;
      v34 = 0x7FFFFFFF;
      v86 = 0x7FFFFFFF;
    }

    else
    {
      v109.origin.x = v30;
      v109.origin.y = v31;
      v109.size.width = v32;
      v109.size.height = v33;
      if (!CGRectIsInfinite(v109))
      {
        v110.origin.x = v30;
        v110.origin.y = v31;
        v110.size.width = v32;
        v110.size.height = v33;
        v111 = CGRectInset(v110, 0.000001, 0.000001);
        v112 = CGRectIntegral(v111);
        v88 = v112.origin.x;
        v86 = v112.origin.y;
        v90 = v112.size.width;
        v85 = v112.size.height;
        goto LABEL_17;
      }

      v86 = -2147483647;
      v85 = 0xFFFFFFFFLL;
      v90 = 0xFFFFFFFFLL;
      v34 = -2147483647;
    }

    v88 = v34;
LABEL_17:
    v83 = [a3 format];
    v82 = [a3 baseAddress];
    v92 = [a3 bytesPerRow];
    v35 = [v93 objectForKeyedSubscript:@"convexHull"];
    if (!v35 && ![v93 objectForKeyedSubscript:@"pointX"])
    {
      puts("red-eye repair dictionary is of unknown type");
      goto LABEL_94;
    }

    if (v27 == 2056)
    {
      v36 = 4 * v18;
      v81 = v17;
      src.data = (v28 + v29 * (v25 + v24 - (v91 + v19)) + 8 * (v17 - v87));
      src.height = v19;
      src.width = 4 * v18;
      src.rowBytes = v29;
      v37 = v19 * 4 * v18;
      v89 = [MEMORY[0x1E695DF88] dataWithLength:v37];
      v38 = [v89 mutableBytes];
      dest.data = v38;
      dest.height = v19;
      dest.width = 4 * v18;
      dest.rowBytes = 4 * v18;
      v39 = vImageConvert_Planar16FtoPlanar8(&src, &dest, 0);
      if (v39)
      {
        NSLog(&cfstr_VimageconvertP.isa, v39);
        goto LABEL_94;
      }
    }

    else
    {
      if (v27 != 266)
      {
        NSLog(&cfstr_UnknownInputPi.isa, v27);
        goto LABEL_94;
      }

      v81 = v17;
      v36 = 4 * v18;
      v37 = v19 * 4 * v18;
      v89 = [MEMORY[0x1E695DF88] dataWithLength:v37];
      v40 = [v89 mutableBytes];
      v38 = v40;
      if (v18 && v19)
      {
        v41 = (v28 + v29 * (v25 + v24 - (v91 + v19)) + 4 * (v94 - v87));
        v42 = v19;
        v43 = v40;
        do
        {
          memcpy(v43, v41, 4 * v18);
          v41 += v29;
          v43 += v36;
          --v42;
        }

        while (v42);
      }

      if (!v35)
      {
        src.data = v38;
        src.height = v19;
        src.width = v18;
        src.rowBytes = 4 * v18;
        LODWORD(dest.data) = 50331906;
        vImagePermuteChannels_ARGB8888(&src, &src, &dest, 0);
      }
    }

    v44 = [MEMORY[0x1E695DF88] dataWithLength:v37];
    v45 = [v44 mutableBytes];
    if (v18 && v19)
    {
      v46 = v45;
      v47 = 0;
      v48 = v19;
      do
      {
        memcpy((v46 + v47), &v38[v47], 4 * v18);
        v47 += v36;
        --v48;
      }

      while (v48);
    }

    if (v35)
    {
      v99[0] = @"imageExtent";
      src.data = [MEMORY[0x1E696AD98] numberWithDouble:v14];
      src.height = [MEMORY[0x1E696AD98] numberWithDouble:v13];
      src.width = [MEMORY[0x1E696AD98] numberWithDouble:v16];
      src.rowBytes = [MEMORY[0x1E696AD98] numberWithDouble:v15];
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&src count:4];
      v99[1] = @"cameraModel";
      v100[0] = v49;
      v100[1] = v84;
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:2];
      v51 = [CIRedEyeRepair3 alloc];
      if (v94 == -2147483647)
      {
        if (v91 == -2147483647 && v18 == 0xFFFFFFFF && v19 == 0xFFFFFFFF)
        {
          v52 = MEMORY[0x1E695F040];
          goto LABEL_50;
        }
      }

      else if (v94 == 0x7FFFFFFF && v91 == 0x7FFFFFFF && !(v19 | v18))
      {
        v52 = MEMORY[0x1E695F050];
LABEL_50:
        v55 = *v52;
        v56 = v52[1];
        v57 = v52[2];
        v58 = v52[3];
LABEL_52:
        v59 = [(CIRedEyeRepair3 *)v51 initWithExternalBuffer:v38 subRectangle:v36 rowBytes:v50 options:v55, v56, v57, v58];
        goto LABEL_60;
      }

      v55 = v94;
      v56 = v91;
      v57 = v18;
      v58 = v19;
      goto LABEL_52;
    }

    v53 = [CIRedEyeRepair alloc];
    if (v94 == -2147483647)
    {
      if (v91 == -2147483647 && v18 == 0xFFFFFFFF && v19 == 0xFFFFFFFF)
      {
        v54 = MEMORY[0x1E695F040];
        goto LABEL_57;
      }
    }

    else if (v94 == 0x7FFFFFFF && v91 == 0x7FFFFFFF && !(v19 | v18))
    {
      v54 = MEMORY[0x1E695F050];
LABEL_57:
      v60 = *v54;
      v61 = v54[1];
      v62 = v54[2];
      v63 = v54[3];
LABEL_59:
      v59 = [(CIRedEyeRepair *)v53 initWithExternalBuffer:v38 subRectangle:v36 fullSize:v84 rowBytes:v60 cameraModel:v61, v62, v63, v16, v15];
LABEL_60:
      v64 = v59;
      [(CIRedEyeRepair3 *)v59 executeRepair:v93];
      [(CIRedEyeRepair3 *)v64 repairExternalBuffer];

      v65 = [v44 bytes];
      v66 = [v89 mutableBytes];
      if (v19)
      {
        for (i = 0; i != v19; ++i)
        {
          if (v18)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*(v65 + 4 * j) == *(v66 + 4 * j))
              {
                *(v66 + 4 * j) = 0;
              }
            }
          }

          v65 += v36;
          v66 += v36;
        }
      }

      v69 = 0x7FFFFFFF;
      if (v94 == 0x7FFFFFFF && v91 == 0x7FFFFFFF && !(v19 | v18) || v88 == 0x7FFFFFFF && v86 == 0x7FFFFFFF && !v90 && !v85)
      {
        goto LABEL_75;
      }

      if (v94 == -2147483647 && v91 == -2147483647 && v18 == 0xFFFFFFFF && v19 == 0xFFFFFFFF)
      {
        v70 = v85;
        v69 = v86;
        v71 = v88;
      }

      else if (v88 == -2147483647 && v86 == -2147483647 && v90 == 0xFFFFFFFF && v85 == 0xFFFFFFFF)
      {
        v70 = v19;
        v90 = v18;
        v69 = v91;
        v71 = v94;
      }

      else
      {
        if (v94 <= v88)
        {
          v71 = v88;
        }

        else
        {
          v71 = v94;
        }

        v76 = v94 + v18;
        if (v94 + v18 >= v88 + v90)
        {
          v76 = v88 + v90;
        }

        v77 = __OFSUB__(v76, v71);
        v78 = v76 - v71;
        if (v78 < 0 != v77)
        {
LABEL_75:
          v70 = 0;
          v90 = 0;
LABEL_76:
          v71 = 0x7FFFFFFF;
          goto LABEL_77;
        }

        if (v91 <= v86)
        {
          v69 = v86;
        }

        else
        {
          v69 = v91;
        }

        v79 = v91 + v19;
        if (v91 + v19 >= v86 + v85)
        {
          v79 = v86 + v85;
        }

        v77 = __OFSUB__(v79, v69);
        v80 = v79 - v69;
        if (v80 < 0 != v77)
        {
          v70 = 0;
          v90 = 0;
          v69 = 0x7FFFFFFF;
          goto LABEL_76;
        }

        v90 = v78;
        v70 = v80;
      }

LABEL_77:
      if (v83 == 2056)
      {
        dest.height = v70;
        dest.width = 4 * v90;
        dest.data = ([v89 mutableBytes] + (v91 + v19 - (v69 + v70)) * v36 + 4 * (v71 - v81));
        dest.rowBytes = v36;
        v95.data = (v82 + (v86 + v85 - (v69 + v70)) * v92 + 8 * (v71 - v88));
        v95.height = v70;
        v95.width = 4 * v90;
        v95.rowBytes = v92;
        v72 = vImageConvert_Planar8toPlanar16F(&dest, &v95, 0);
        if (v72)
        {
          NSLog(&cfstr_VimageconvertP_0.isa, v72);
        }
      }

      else if (v83 == 266)
      {
        if (!v35)
        {
          dest.data = v38;
          dest.height = v19;
          dest.width = v18;
          dest.rowBytes = v36;
          LODWORD(v95.data) = 50331906;
          vImagePermuteChannels_ARGB8888(&dest, &dest, &v95, 0);
        }

        if (v70 && v90)
        {
          v73 = v69 + v70;
          v74 = (v82 + (v86 + v85 - (v69 + v70)) * v92 + 4 * (v71 - v88));
          v75 = &v38[4 * (v71 - v81) + (v91 + v19 - v73) * v36];
          do
          {
            memcpy(v74, v75, 4 * v90);
            v75 += v36;
            v74 += v92;
            --v70;
          }

          while (v70);
        }
      }

      else
      {
        NSLog(&cfstr_UnknownOutputP.isa, v83);
      }

      goto LABEL_94;
    }

    v60 = v94;
    v61 = v91;
    v62 = v18;
    v63 = v19;
    goto LABEL_59;
  }

LABEL_94:
  _ZZZ33__CIRedEyeCorrection_outputImage_EUb_EN13SignpostTimerD1Ev(buf, v11);
}

@end