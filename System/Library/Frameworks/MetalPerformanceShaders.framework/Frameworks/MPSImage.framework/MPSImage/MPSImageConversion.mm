@interface MPSImageConversion
- (MPSImageConversion)initWithCoder:(id)coder device:(id)device;
- (MPSImageConversion)initWithDevice:(id)device;
- (MPSImageConversion)initWithDevice:(id)device srcAlpha:(MPSAlphaType)srcAlpha destAlpha:(MPSAlphaType)destAlpha backgroundColor:(CGFloat *)backgroundColor conversionInfo:(CGColorConversionInfoRef)conversionInfo;
- (MPSImageConversion)initWithDevice:(id)device transform:(id)transform;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageConversion

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v81.receiver = self;
  v81.super_class = MPSImageConversion;
  v4 = [(MPSUnaryImageKernel *)&v81 debugDescription];
  p_convertInfo = &self->convertInfo;
  nStages = self->convertInfo.nStages;
  sourceAlpha = self->sourceAlpha;
  if (sourceAlpha > 2)
  {
    v8 = "<unknown alpha type>";
  }

  else
  {
    v8 = off_278AF6908[sourceAlpha];
  }

  v78 = v8;
  v79 = v4;
  destinationAlpha = self->destinationAlpha;
  if (destinationAlpha > 2)
  {
    v10 = "<unknown alpha type>";
  }

  else
  {
    v10 = off_278AF6908[destinationAlpha];
  }

  v77 = v10;
  v11 = p_convertInfo->bgColor[0];
  v12 = self->convertInfo.bgColor[1];
  v13 = self->convertInfo.bgColor[2];
  v14 = self->convertInfo.bgColor[3];
  nCHOut = self->convertInfo.nCHOut;
  nCHIn = self->convertInfo.nCHIn;
  stagesClampFlags = self->convertInfo.stagesClampFlags;
  v17 = objc_alloc_init(MEMORY[0x277CCACA8]);
  v18 = v17;
  if ((nStages & 0x80000000) != 0)
  {
    v22 = v17;
  }

  else
  {
    v19 = nStages;
    do
    {
      v20 = objc_alloc(MEMORY[0x277CCACA8]);
      v22 = objc_msgSend_initWithFormat_(v20, v21, @"%d%@", (stagesClampFlags >> v19) & 1, v18);

      v23 = v19-- + 1;
      v18 = v22;
    }

    while (v23 > 1);
  }

  v24 = v22;
  v26 = objc_msgSend_initWithFormat_(v3, v25, @"%@\n\tConversion Stages:  %d \n\tsourceAlpha:        %s \n\tdestinationAlpha:   %s \n\tBackground Color:   { %g, %g, %g, %g } \n\tInput channels:     %d \n\tOutput channels:    %d\n\tStage clamp flags:  %@\n\tStages:\n\t{\n", v79, nStages, v78, v77, *&v11, *&v12, *&v13, *&v14, nCHIn, nCHOut, v24);
  v28 = v26;
  if (self->convertInfo.nStages >= 1)
  {
    v29 = 0;
    v30 = 0;
    p_convertInfoPtrs = &self->convertInfoPtrs;
    v32 = 0x277CCA000uLL;
    while (1)
    {
      v38 = 0;
      stages = p_convertInfoPtrs->stages;
      v45 = (p_convertInfoPtrs->stages + v29);
      v46 = *(v45 + 2);
      if (v46 > 3)
      {
        if ((v46 - 4) >= 3)
        {
          goto LABEL_16;
        }

        v51 = &p_convertInfoPtrs->data[*v45];
        v52 = &p_convertInfoPtrs->fData[*v51];
        v53 = objc_alloc(*(v32 + 3240));
        v37 = objc_msgSend_initWithFormat_(v53, v54, @"\t\tStage index:      %d\n\t\tLuminance Scale stage:\n\t\tOptions:          %u\n\t\tgain =               %.6f\n\t\tgamma =              %.6f\n\t\tcoefficients =    (%.6f %.6f %.6f %.6f)", v30, v51[5], *v52, v52[1], v52[2], v52[3], v52[4], v52[5], v70, v71, v72, v73, v74, v75);
        goto LABEL_15;
      }

      if (v46 == 1)
      {
        break;
      }

      if (v46 == 2)
      {
        v55 = &p_convertInfoPtrs->data[*v45];
        v56 = objc_alloc(*(v32 + 3240));
        v37 = objc_msgSend_initWithFormat_(v56, v57, @"\t\tStage index:      %d\n\t\tLUT stage:\n\t\tOptions:          %u\n\t\tNum Inputs:       %d\n\t\tNum Outputs:      %d\n\t\tNum Gridpoints:   %d\n\t\tLUT Texture idx:  %d", v30, v55[5], v55[1], v55[2], v55[3], v55[4], v68, v69, v70, v71, v72, v73, v74, v75);
        goto LABEL_15;
      }

      if (v46 == 3)
      {
        v47 = *(stages + v29 + 12);
        v80 = stages + v29;
        if (v47 < 1)
        {
          v50 = 0;
          v49 = 0;
LABEL_31:
          v58 = 0;
        }

        else
        {
          data = p_convertInfoPtrs->data;
          v49 = &data[*v45];
          if (v47 == 1)
          {
            v50 = 0;
            goto LABEL_31;
          }

          v58 = &data[*(stages + v29 + 2)];
          if (v47 < 3)
          {
            v50 = 0;
          }

          else
          {
            v50 = &data[*(stages + v29 + 4)];
            if (v47 != 3)
            {
              v59 = &data[*(stages + v29 + 6)];
              goto LABEL_33;
            }
          }
        }

        v59 = 0;
LABEL_33:
        v60 = sub_239962AB8(v49, p_convertInfoPtrs->fData, 0);
        v61 = sub_239962AB8(v58, p_convertInfoPtrs->fData, 1);
        v62 = sub_239962AB8(v50, p_convertInfoPtrs->fData, 2);
        v63 = sub_239962AB8(v59, p_convertInfoPtrs->fData, 3);
        v64 = objc_alloc(MEMORY[0x277CCACA8]);
        v38 = objc_msgSend_initWithFormat_(v64, v65, @"\t\tStage index:      %d\n\t\tTRC stage:\n\t\tNum channels:     %d\n\t\t{\n%@%@%@%@\n\t\t}", v30, *(v80 + 3), v60, v61, v62, v63);

        v32 = 0x277CCA000;
      }

LABEL_16:
      v39 = p_convertInfo->nStages - 1;
      v40 = objc_alloc(*(v32 + 3240));
      if (v30 >= v39)
      {
        v42 = objc_msgSend_initWithFormat_(v40, v41, @"%@%@\n\t}", v28, v38);
      }

      else
      {
        v42 = objc_msgSend_initWithFormat_(v40, v41, @"%@%@,\n", v28, v38);
      }

      v43 = v42;

      ++v30;
      v29 += 16;
      v28 = v43;
      if (v30 >= p_convertInfo->nStages)
      {
        goto LABEL_39;
      }
    }

    v33 = &p_convertInfoPtrs->data[*v45];
    v34 = &p_convertInfoPtrs->fData[*v33];
    v35 = objc_alloc(*(v32 + 3240));
    v37 = objc_msgSend_initWithFormat_(v35, v36, @"\t\tStage index:      %d\n\t\tMatrix stage:\n\t\tOptions:          %u\n\t\t                 (%.6f %.6f %.6f %.6f)\n\t\tMatrix =         (%.6f %.6f %.6f %.6f)\n\t\t                 (%.6f %.6f %.6f %.6f)", v30, v33[1], *v34, v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10], v34[11]);
LABEL_15:
    v38 = v37;
    goto LABEL_16;
  }

  v43 = v26;
  v32 = 0x277CCA000uLL;
LABEL_39:
  v66 = objc_msgSend_stringWithString_(*(v32 + 3240), v27, v43);

  return v66;
}

- (MPSImageConversion)initWithDevice:(id)device
{
  v13.receiver = self;
  v13.super_class = MPSImageConversion;
  v4 = [(MPSUnaryImageKernel *)&v13 initWithDevice:?];
  v5 = v4;
  if (v4)
  {
    v4->super._checkFlags = 3;
    v4->transform = 0;
    v4->sourceAlpha = 1;
    v4->destinationAlpha = 1;
    __asm { FMOV            V1.4S, #1.0 }

    *v4->srcDecode = 0u;
    *&v4->srcDecode[16] = _Q1;
    *v4->destDecode = 0u;
    *&v4->destDecode[16] = _Q1;
    v4->super._encode = sub_23995A480;
    v4->super._encodeData = v4;
    sub_23995D1B4(v4, 0);
    sub_23995D4C4(v5, device, v11);
  }

  return v5;
}

- (MPSImageConversion)initWithCoder:(id)coder device:(id)device
{
  v71.receiver = self;
  v71.super_class = MPSImageConversion;
  v6 = [MPSUnaryImageKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (!v6)
  {
    return v6;
  }

  MPSDevice = MPSDevice::GetMPSDevice();
  if (!MPSDevice)
  {
    return 0;
  }

  *(v6 + 42) = 3;
  *(v6 + 26) = 0;
  *(v6 + 18) = 0u;
  *(v6 + 19) = 0u;
  *(v6 + 20) = 0u;
  *(v6 + 21) = 0u;
  v9 = MEMORY[0x277CD7358];
  *(v6 + 44) = 0;
  if (*&v6[*v9 + 2] << 16 != 0x10000)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v35 = objc_opt_class();
      NSStringFromClass(v35);
      MTLReportFailure();
    }

    goto LABEL_27;
  }

  v68 = MPSDevice;
  *(v6 + 22) = sub_23995A480;
  *(v6 + 24) = v6;
  *(v6 + 60) = objc_msgSend_decodeInt64ForKey_(coder, v8, @"kMPSImageConversion.sourceAlpha");
  *(v6 + 61) = objc_msgSend_decodeInt64ForKey_(coder, v10, @"kMPSImageConversion.destinationAlpha");
  v70 = 0;
  v69 = 0;
  v11 = sub_23995E98C(coder, @"kMPSImageConversion.srcDecode", &v70, &v69);
  v12 = v69;
  if (v69 != 1 || v70 < 8)
  {
    v36 = v11;

    if ((v12 & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v67 = objc_opt_class();
      NSStringFromClass(v67);
      MTLReportFailure();
    }

    if (v36)
    {
      free(v36);
    }

    return 0;
  }

  v13 = *(v6 + 14);
  v14 = *(v6 + 15);
  LODWORD(v13) = *v11;
  *(v6 + 56) = *v11;
  DWORD1(v13) = v11[1];
  *(v6 + 14) = v13;
  DWORD2(v13) = v11[2];
  *(v6 + 14) = v13;
  HIDWORD(v13) = v11[3];
  *(v6 + 14) = v13;
  LODWORD(v14) = v11[4];
  *(v6 + 60) = v14;
  DWORD1(v14) = v11[5];
  *(v6 + 15) = v14;
  DWORD2(v14) = v11[6];
  *(v6 + 15) = v14;
  HIDWORD(v14) = v11[7];
  *(v6 + 15) = v14;
  free(v11);
  v15 = sub_23995E98C(coder, @"kMPSImageConversion.destDecode", &v70, &v69);
  v16 = v69;
  if (v69 != 1 || v70 <= 7)
  {

    if ((v16 & 1) != 0 || !MTLReportFailureTypeEnabled())
    {
      return 0;
    }

    goto LABEL_61;
  }

  v17 = *(v6 + 16);
  v18 = *(v6 + 17);
  LODWORD(v17) = *v15;
  *(v6 + 64) = *v15;
  DWORD1(v17) = v15[1];
  *(v6 + 16) = v17;
  DWORD2(v17) = v15[2];
  *(v6 + 16) = v17;
  HIDWORD(v17) = v15[3];
  *(v6 + 16) = v17;
  LODWORD(v18) = v15[4];
  *(v6 + 68) = v18;
  DWORD1(v18) = v15[5];
  *(v6 + 17) = v18;
  DWORD2(v18) = v15[6];
  *(v6 + 17) = v18;
  HIDWORD(v18) = v15[7];
  *(v6 + 17) = v18;
  free(v15);
  v19 = sub_23995E98C(coder, @"kMPSImageConversion.info", &v70, &v69);
  v20 = v69;
  if (v69 != 1 || v70 <= 0x11)
  {

    if ((v20 & 1) != 0 || !MTLReportFailureTypeEnabled())
    {
      return 0;
    }

    goto LABEL_61;
  }

  *(v6 + 18) = *v19;
  v21 = v19[1];
  v22 = v19[2];
  v23 = v19[3];
  *(v6 + 44) = *(v19 + 8);
  *(v6 + 20) = v22;
  *(v6 + 21) = v23;
  *(v6 + 19) = v21;
  free(v19);
  v24 = (v6 + 360);
  *(v6 + 360) = 0u;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 51) = 0;
  *(v6 + 46) = sub_23995E98C(coder, @"kMPSImageConversion.iData", &v70, &v69);
  if (!v69)
  {

    if (!MTLReportFailureTypeEnabled())
    {
      return 0;
    }

LABEL_61:
    v65 = objc_opt_class();
    NSStringFromClass(v65);
    MTLReportFailure();
    return 0;
  }

  if (v70 < *(v6 + 76))
  {
LABEL_27:

    return 0;
  }

  *(v6 + 47) = sub_23995E98C(coder, @"kMPSImageConversion.fData", &v70, &v69);
  if (!v69)
  {

    if (!MTLReportFailureTypeEnabled())
    {
      return 0;
    }

    goto LABEL_61;
  }

  if (v70 < *(v6 + 77))
  {
    goto LABEL_27;
  }

  *(v6 + 51) = sub_23995EACC(coder, device, @"kMPSImageConversion.devFloatData", &v70, &v69);
  if ((v69 & 1) == 0)
  {

    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_61;
    }

    return 0;
  }

  *v24 = malloc_type_malloc(16 * *(v6 + 78), 0x1000040451B5BE8uLL);
  if (*(v6 + 78) >= 1)
  {
    v25 = 0;
    v26 = 0;
    while (1)
    {
      v27 = *v24;
      v73 = 0;
      v28 = objc_alloc(MEMORY[0x277CCACA8]);
      v30 = objc_msgSend_initWithFormat_(v28, v29, @"%@.%d", @"kMPSImageConversion.stages", v26);
      v31 = sub_23995E98C(coder, v30, &v72, &v73);
      v32 = v73;
      if (v73 == 1 && v31 != 0)
      {
        v34 = &v27[v25];
        *v34 = vmovn_s32(*v31);
        v34[1].i32[1] = v31[1].i32[0];
        v34[1].i32[0] = v31[1].i32[1];
      }

      free(v31);

      if ((v32 & 1) == 0)
      {
        break;
      }

      ++v26;
      v25 += 16;
      if (v26 >= *(v6 + 78))
      {
        goto LABEL_44;
      }
    }

    if (!MTLReportFailureTypeEnabled())
    {
      return 0;
    }

    goto LABEL_61;
  }

  v32 = 1;
LABEL_44:
  v69 = v32;
  *(v6 + 49) = 0;
  *(v6 + 50) = 0;
  *(v6 + 48) = 0;
  v37 = *(v6 + 80);
  if (v37 >= 1)
  {
    v38 = malloc_type_malloc(8 * v37, 0x80040B8603338uLL);
    *(v6 + 48) = v38;
    if (!v38)
    {

      if ((v32 & 1) != 0 || !MTLReportFailureTypeEnabled())
      {
        return 0;
      }

      goto LABEL_61;
    }

    if (*(v6 + 80) >= 1)
    {
      v39 = 0;
      while (1)
      {
        v40 = objc_alloc(MEMORY[0x277CCACA8]);
        v42 = objc_msgSend_initWithFormat_(v40, v41, @"%@%d", @"kMPSImageConversion.texLuts", v39);
        *(*(v6 + 48) + 8 * v39) = sub_23995EB78(coder, device, v42, &v69);

        if ((v69 & 1) == 0)
        {
          break;
        }

        if (++v39 >= *(v6 + 80) || !*(v6 + 48))
        {
          v32 = 1;
          goto LABEL_52;
        }
      }

      if (!MTLReportFailureTypeEnabled())
      {
        return 0;
      }

      goto LABEL_61;
    }
  }

LABEL_52:
  v43 = malloc_type_malloc(0x20uLL, 0x80040B8603338uLL);
  *(v6 + 50) = v43;
  if (!v43)
  {

    if ((v32 & 1) != 0 || !MTLReportFailureTypeEnabled())
    {
      return 0;
    }

    goto LABEL_61;
  }

  v44 = objc_alloc_init(MEMORY[0x277CD7058]);
  objc_msgSend_setPixelFormat_(v44, v45, 110);
  objc_msgSend_setWidth_(v44, v46, 1);
  objc_msgSend_setHeight_(v44, v47, 1);
  objc_msgSend_setDepth_(v44, v48, 1);
  objc_msgSend_setUsage_(v44, v49, 1);
  v50 = (*(*v68 + 24))(v68);
  objc_msgSend_setStorageMode_(v44, v51, v50);
  objc_msgSend_setTextureType_(v44, v52, 0);
  **(v6 + 50) = objc_msgSend_newTextureWithDescriptor_(device, v53, v44);
  objc_msgSend_setTextureType_(v44, v54, 2);
  *(*(v6 + 50) + 8) = objc_msgSend_newTextureWithDescriptor_(device, v55, v44);
  objc_msgSend_setTextureType_(v44, v56, 7);
  *(*(v6 + 50) + 16) = objc_msgSend_newTextureWithDescriptor_(device, v57, v44);
  *(*(v6 + 50) + 24) = objc_msgSend_newTextureWithDescriptor_(device, v58, v44);

  v59 = *(v6 + 82);
  if (v59 >= 1)
  {
    v60 = malloc_type_malloc(8 * v59, 0x80040B8603338uLL);
    *(v6 + 49) = v60;
    if (!v60)
    {

      if ((v32 & 1) != 0 || !MTLReportFailureTypeEnabled())
      {
        return 0;
      }

      goto LABEL_61;
    }

    if (*(v6 + 82) >= 1)
    {
      v61 = 0;
      while (1)
      {
        v62 = objc_alloc(MEMORY[0x277CCACA8]);
        v64 = objc_msgSend_initWithFormat_(v62, v63, @"%@%d", @"kMPSImageConversion.trcLuts", v61);
        v72 = 0;
        *(*(v6 + 49) + 8 * v61) = sub_23995EACC(coder, device, v64, &v72, &v69);

        if ((v69 & 1) == 0)
        {
          break;
        }

        if (++v61 >= *(v6 + 82))
        {
          return v6;
        }
      }

      if (!MTLReportFailureTypeEnabled())
      {
        return 0;
      }

      goto LABEL_61;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v125 = *MEMORY[0x277D85DE8];
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v121.receiver = self;
  v121.super_class = MPSImageConversion;
  [(MPSUnaryImageKernel *)&v121 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->sourceAlpha, @"kMPSImageConversion.sourceAlpha");
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->destinationAlpha, @"kMPSImageConversion.destinationAlpha");
  v123 = *self->srcDecode;
  v124 = v123;
  sub_23995F540(coder, &v123, @"kMPSImageConversion.srcDecode", 8);
  v123 = *self->destDecode;
  v124 = v123;
  sub_23995F540(coder, &v123, @"kMPSImageConversion.destDecode", 8);
  p_convertInfo = &self->convertInfo;
  sub_23995F540(coder, &self->convertInfo, @"kMPSImageConversion.info", 18);
  p_convertInfoPtrs = &self->convertInfoPtrs;
  sub_23995F540(coder, self->convertInfoPtrs.data, @"kMPSImageConversion.iData", self->convertInfo.nData);
  v9 = self->convertInfo.nFData + 8 * self->convertInfo.nStages;
  coderCopy = coder;
  sub_23995F540(coder, self->convertInfoPtrs.fData, @"kMPSImageConversion.fData", v9 + 8);
  var2 = self->convertInfoPtrs.var2;
  if (var2)
  {
    v13 = objc_msgSend_contents(var2, v10, v11);
  }

  else
  {
    v13 = 0;
  }

  sub_23995F540(coder, v13, @"kMPSImageConversion.devFloatData", v9 + 8);
  if (self->convertInfo.nStages >= 1)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      stages = p_convertInfoPtrs->stages;
      v17 = malloc_type_malloc(0x18uLL, 0x100004052888210uLL);
      if (v17)
      {
        v18 = v17;
        v19 = (stages + v14);
        v20 = objc_alloc(MEMORY[0x277CCACA8]);
        v22 = objc_msgSend_initWithFormat_(v20, v21, @"%@.%d", @"kMPSImageConversion.stages", v15);
        *v18 = vmovl_u16(*v19);
        *(v18 + 4) = v19[1].i32[1];
        *(v18 + 5) = v19[1].i32[0];
        sub_23995F540(coderCopy, v18, v22, 6);
        free(v18);
      }

      ++v15;
      v14 += 16;
    }

    while (v15 < self->convertInfo.nStages);
  }

  if (self->convertInfo.nLuts >= 1)
  {
    v23 = 0;
    v113 = &self->convertInfo;
    v119 = &self->convertInfoPtrs;
    do
    {
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v28 = objc_msgSend_initWithFormat_(v24, v25, @"%@%d", @"kMPSImageConversion.texLuts", v23);
      texLUTs = p_convertInfoPtrs->texLUTs;
      v30 = texLUTs[v23];
      if (v30)
      {
        v31 = objc_msgSend_width(texLUTs[v23], v26, v27);
        v34 = objc_msgSend_height(v30, v32, v33);
        v37 = 16 * v31 * v34 * objc_msgSend_depth(v30, v35, v36);
        v38 = malloc_type_malloc(v37, 0x100004052888210uLL);
        if (v38)
        {
          v41 = v38;
          v118 = v37;
          v42 = objc_msgSend_width(v30, v39, v40);
          v45 = objc_msgSend_height(v30, v43, v44);
          v48 = objc_msgSend_depth(v30, v46, v47);
          v51 = 16 * objc_msgSend_width(v30, v49, v50);
          v54 = objc_msgSend_width(v30, v52, v53);
          v57 = objc_msgSend_height(v30, v55, v56);
          memset(v122, 0, 24);
          v122[3] = v42;
          v122[4] = v45;
          v122[5] = v48;
          objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v30, v58, v41, v51, 16 * v54 * v57, v122, 0, 0);
          v59 = objc_alloc(MEMORY[0x277CCACA8]);
          v116 = objc_msgSend_initWithFormat_(v59, v60, @"%@%@", v28, @".width");
          v61 = objc_alloc(MEMORY[0x277CCACA8]);
          v115 = objc_msgSend_initWithFormat_(v61, v62, @"%@%@", v28, @".heigth");
          v63 = objc_alloc(MEMORY[0x277CCACA8]);
          v65 = objc_msgSend_initWithFormat_(v63, v64, @"%@%@", v28, @".depth");
          v66 = objc_alloc(MEMORY[0x277CCACA8]);
          v68 = v41;
          v69 = objc_msgSend_initWithFormat_(v66, v67, @"%@%@", v28, @".pixelFormat");
          v70 = objc_alloc(MEMORY[0x277CCACA8]);
          v114 = objc_msgSend_initWithFormat_(v70, v71, @"%@%@", v28, @".textureType");
          v72 = objc_alloc(MEMORY[0x277CCACA8]);
          v117 = objc_msgSend_initWithFormat_(v72, v73, @"%@%@", v28, @".data");
          objc_msgSend_encodeBool_forKey_(coderCopy, v74, 1, v28);
          v77 = objc_msgSend_width(v30, v75, v76);
          objc_msgSend_encodeInt64_forKey_(coderCopy, v78, v77, v116);
          v81 = objc_msgSend_height(v30, v79, v80);
          objc_msgSend_encodeInt64_forKey_(coderCopy, v82, v81, v115);
          v85 = objc_msgSend_depth(v30, v83, v84);
          objc_msgSend_encodeInt64_forKey_(coderCopy, v86, v85, v65);
          v89 = objc_msgSend_pixelFormat(v30, v87, v88);
          objc_msgSend_encodeInt64_forKey_(coderCopy, v90, v89, v69);
          v93 = objc_msgSend_textureType(v30, v91, v92);
          objc_msgSend_encodeInt64_forKey_(coderCopy, v94, v93, v114);
          objc_msgSend_width(v30, v95, v96);
          objc_msgSend_height(v30, v97, v98);
          objc_msgSend_depth(v30, v99, v100);
          MPSCopyToFromNetworkByteOrder32();
          objc_msgSend_encodeBytes_length_forKey_(coderCopy, v101, v68, v118, v117);
          free(v68);

          p_convertInfo = v113;
        }
      }

      else
      {
        objc_msgSend_encodeBool_forKey_(coderCopy, v26, 0, v28);
      }

      ++v23;
      p_convertInfoPtrs = v119;
    }

    while (v23 < p_convertInfo->nLuts);
  }

  if (p_convertInfo->nTRCs >= 1)
  {
    v102 = 0;
    do
    {
      v104 = objc_alloc(MEMORY[0x277CCACA8]);
      v106 = objc_msgSend_initWithFormat_(v104, v105, @"%@%d", @"kMPSImageConversion.trcLuts", v102);
      v107 = p_convertInfoPtrs->var0[v102];
      v112 = objc_msgSend_length(v107, v108, v109);
      if (v107)
      {
        v103 = objc_msgSend_contents(v107, v110, v111);
      }

      else
      {
        v103 = 0;
      }

      sub_23995F540(coderCopy, v103, v106, (v112 >> 2));

      ++v102;
    }

    while (v102 < p_convertInfo->nTRCs);
  }
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v65.receiver = self;
  v65.super_class = MPSImageConversion;
  v7 = [MPSUnaryImageKernel copyWithZone:sel_copyWithZone_device_ device:?];
  v9 = v7;
  if (!v7)
  {
    return v9;
  }

  v7[22] = sub_23995A480;
  v7[24] = v7;
  v7[60] = self->sourceAlpha;
  v7[61] = self->destinationAlpha;
  *(v7 + 14) = *self->srcDecode;
  *(v7 + 15) = *&self->srcDecode[16];
  *(v7 + 16) = *self->destDecode;
  *(v7 + 17) = *&self->destDecode[16];
  v7[26] = 0;
  transform = self->transform;
  if (transform)
  {
    v11 = objc_msgSend_copyWithZone_device_(transform, v8, zone, device);
    *(v9 + 26) = v11;
    if (!v11)
    {
      goto LABEL_58;
    }
  }

  v12 = v9 + 360;
  *(v9 + 46) = 0;
  v13 = v9 + 368;
  *(v9 + 47) = 0;
  *(v9 + 45) = 0;
  *(v9 + 78) = self->convertInfo.nStages;
  *(v9 + 42) = *&self->convertInfo.nCHIn;
  *(v9 + 72) = LODWORD(self->convertInfo.bgColor[0]);
  *(v9 + 73) = LODWORD(self->convertInfo.bgColor[1]);
  *(v9 + 74) = LODWORD(self->convertInfo.bgColor[2]);
  *(v9 + 75) = LODWORD(self->convertInfo.bgColor[3]);
  *(v9 + 48) = 0;
  v14 = v9 + 384;
  *(v9 + 49) = 0;
  *(v9 + 50) = 0;
  *(v9 + 86) = self->convertInfo.containsATableTRC;
  *(v9 + 316) = *&self->convertInfo.nMatrices;
  *(v9 + 83) = self->convertInfo.nLuminanceScales;
  *(v9 + 348) = *&self->convertInfo.stagesClampFlags;
  *(v9 + 89) = self->convertInfo.stageTypesFC;
  *(v9 + 48) = 0;
  p_convertInfoPtrs = &self->convertInfoPtrs;
  if (self->convertInfoPtrs.data)
  {
    nData = self->convertInfo.nData;
    if (nData)
    {
      v17 = malloc_type_malloc(4 * nData, 0x100004052888210uLL);
      *v13 = v17;
      *(v9 + 76) = nData;
      memcpy(v17, self->convertInfoPtrs.data, 4 * nData);
      if (!*v13)
      {
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }
    }
  }

  if (p_convertInfoPtrs->stages)
  {
    v18 = malloc_type_malloc(16 * self->convertInfo.nStages, 0x1000040451B5BE8uLL);
    *v12 = v18;
    memcpy(v18, p_convertInfoPtrs->stages, 16 * self->convertInfo.nStages);
    if (!*v12)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }
  }

  if (self->convertInfoPtrs.fData)
  {
    nFData = self->convertInfo.nFData;
    if (nFData)
    {
      v20 = 32 * self->convertInfo.nStages + 4 * nFData;
      v21 = malloc_type_malloc(v20 + 32, 0x100004052888210uLL);
      *(v9 + 47) = v21;
      *(v9 + 77) = self->convertInfo.nFData;
      memcpy(v21, self->convertInfoPtrs.fData, v20 + 32);
      if (!*(v9 + 47))
      {
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }
    }
  }

  v22 = *MEMORY[0x277CD7350];
  v23 = *(*&v9[v22] + 16);
  if (!self->convertInfoPtrs.texLUTs)
  {
    goto LABEL_25;
  }

  nLuts = self->convertInfo.nLuts;
  if (nLuts < 1)
  {
    goto LABEL_25;
  }

  v25 = malloc_type_malloc(8 * nLuts, 0x80040B8603338uLL);
  *v14 = v25;
  if (!v25)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_58;
    }

LABEL_57:
    v49 = objc_opt_class();
    NSStringFromClass(v49);
    MTLReportFailure();
    goto LABEL_58;
  }

  if (self->convertInfo.nLuts >= 1)
  {
    for (i = 0; i < self->convertInfo.nLuts; ++i)
    {
      if (!self->convertInfoPtrs.texLUTs)
      {
        break;
      }

      *(*v14 + 8 * i) = 0;
      v27 = self->convertInfoPtrs.texLUTs[i];
      if (v27)
      {
        if (v23 == (*(&self->super.super.super.isa + v22))[2])
        {
          *(*v14 + 8 * i) = v27;
        }

        else
        {
          *(*v14 + 8 * i) = sub_23995FEE0(v27, v23);
          if (!*(*v14 + 8 * i))
          {
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          }
        }
      }
    }
  }

LABEL_25:
  v28 = malloc_type_malloc(0x20uLL, 0x80040B8603338uLL);
  *(v9 + 50) = v28;
  if (!v28)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if (!self->convertInfoPtrs.var1)
  {
    goto LABEL_48;
  }

  *v28 = 0;
  v29 = *self->convertInfoPtrs.var1;
  if (v29)
  {
    if (v23 == (*(&self->super.super.super.isa + v22))[2])
    {
      **(v9 + 50) = v29;
      if (!self->convertInfoPtrs.var1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      **(v9 + 50) = sub_23995FEE0(v29, v23);
      if (!**(v9 + 50))
      {
        goto LABEL_71;
      }

      if (!self->convertInfoPtrs.var1)
      {
        goto LABEL_48;
      }
    }
  }

  *(*(v9 + 50) + 8) = 0;
  v30 = *(self->convertInfoPtrs.var1 + 1);
  if (v30)
  {
    if (v23 == (*(&self->super.super.super.isa + v22))[2])
    {
      *(*(v9 + 50) + 8) = v30;
      if (!self->convertInfoPtrs.var1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      *(*(v9 + 50) + 8) = sub_23995FEE0(v30, v23);
      if (!*(*(v9 + 50) + 8))
      {
        goto LABEL_71;
      }

      if (!self->convertInfoPtrs.var1)
      {
        goto LABEL_48;
      }
    }
  }

  *(*(v9 + 50) + 16) = 0;
  v31 = *(self->convertInfoPtrs.var1 + 2);
  if (!v31)
  {
    goto LABEL_45;
  }

  if (v23 == (*(&self->super.super.super.isa + v22))[2])
  {
    *(*(v9 + 50) + 16) = v31;
    if (!self->convertInfoPtrs.var1)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  *(*(v9 + 50) + 16) = sub_23995FEE0(v31, v23);
  if (!*(*(v9 + 50) + 16))
  {
LABEL_71:
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if (!self->convertInfoPtrs.var1)
  {
LABEL_48:
    v33 = malloc_type_malloc(8 * self->convertInfo.nTRCs, 0x80040B8603338uLL);
    *(v9 + 49) = v33;
    if (v33)
    {
      goto LABEL_49;
    }

    goto LABEL_67;
  }

LABEL_45:
  *(*(v9 + 50) + 24) = 0;
  v32 = *(self->convertInfoPtrs.var1 + 3);
  if (!v32)
  {
    goto LABEL_48;
  }

  if (v23 != (*(&self->super.super.super.isa + v22))[2])
  {
    *(*(v9 + 50) + 24) = sub_23995FEE0(v32, v23);
    if (*(*(v9 + 50) + 24))
    {
      goto LABEL_48;
    }

    goto LABEL_71;
  }

  *(*(v9 + 50) + 24) = v32;
  v64 = malloc_type_malloc(8 * self->convertInfo.nTRCs, 0x80040B8603338uLL);
  *(v9 + 49) = v64;
  if (!v64)
  {
LABEL_67:
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_49:
  if (self->convertInfo.nTRCs >= 1)
  {
    for (j = 0; j < self->convertInfo.nTRCs; ++j)
    {
      *(*(v9 + 49) + 8 * j) = 0;
      v37 = self->convertInfoPtrs.var0[j];
      if (v37)
      {
        if (v23 == (*(&self->super.super.super.isa + v22))[2])
        {
          *(*(v9 + 49) + 8 * j) = v37;
        }

        else
        {
          v38 = objc_msgSend_length(v37, v34, v35);
          *(*(v9 + 49) + 8 * j) = objc_msgSend_newBufferWithLength_options_(v23, v39, v38, 0);
          v42 = objc_msgSend_contents(*(*(v9 + 49) + 8 * j), v40, v41);
          v45 = objc_msgSend_contents(self->convertInfoPtrs.var0[j], v43, v44);
          v48 = objc_msgSend_length(self->convertInfoPtrs.var0[j], v46, v47);
          memcpy(v42, v45, v48);
          if (!*(*(v9 + 49) + 8 * j))
          {
            if (MTLReportFailureTypeEnabled())
            {
              goto LABEL_57;
            }

LABEL_58:

            return 0;
          }
        }
      }
    }
  }

  *(v9 + 51) = 0;
  var2 = self->convertInfoPtrs.var2;
  if (var2)
  {
    if (v23 == (*(&self->super.super.super.isa + v22))[2])
    {
      *(v9 + 51) = var2;
      return v9;
    }

    v51 = objc_msgSend_length(var2, v34, v35);
    v53 = objc_msgSend_newBufferWithLength_options_(v23, v52, v51, 0);
    *(v9 + 51) = v53;
    v56 = objc_msgSend_contents(v53, v54, v55);
    v59 = objc_msgSend_contents(self->convertInfoPtrs.var2, v57, v58);
    v62 = objc_msgSend_length(self->convertInfoPtrs.var2, v60, v61);
    memcpy(v56, v59, v62);
    if (!*(v9 + 51))
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }
  }

  return v9;
}

- (void)dealloc
{
  p_convertInfoPtrs = &self->convertInfoPtrs;
  data = self->convertInfoPtrs.data;
  if (data)
  {
    free(data);
    self->convertInfoPtrs.data = 0;
  }

  fData = self->convertInfoPtrs.fData;
  if (fData)
  {
    free(fData);
    self->convertInfoPtrs.fData = 0;
  }

  if (p_convertInfoPtrs->stages)
  {
    free(p_convertInfoPtrs->stages);
    p_convertInfoPtrs->stages = 0;
  }

  if (self->convertInfo.nLutTextures < 1)
  {
LABEL_13:
    texLUTs = self->convertInfoPtrs.texLUTs;
    if (texLUTs)
    {
      free(texLUTs);
      self->convertInfoPtrs.texLUTs = 0;
    }
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = self->convertInfoPtrs.texLUTs;
      if (!v7)
      {
        break;
      }

      v8 = v7[v6];
      if (v8)
      {

        v7 = self->convertInfoPtrs.texLUTs;
      }

      v7[v6++] = 0;
      if (v6 >= self->convertInfo.nLutTextures)
      {
        goto LABEL_13;
      }
    }
  }

  var1 = self->convertInfoPtrs.var1;
  if (var1)
  {
    if (*var1)
    {

      var1 = self->convertInfoPtrs.var1;
    }

    *var1 = 0;
    v11 = self->convertInfoPtrs.var1;
    if (v11)
    {
      v12 = v11[1];
      if (v12)
      {

        v11 = self->convertInfoPtrs.var1;
      }

      v11[1] = 0;
      v13 = self->convertInfoPtrs.var1;
      if (v13)
      {
        v14 = v13[2];
        if (v14)
        {

          v13 = self->convertInfoPtrs.var1;
        }

        v13[2] = 0;
        v15 = self->convertInfoPtrs.var1;
        if (v15)
        {
          v16 = v15[3];
          if (v16)
          {

            v15 = self->convertInfoPtrs.var1;
          }

          v15[3] = 0;
          v17 = self->convertInfoPtrs.var1;
          if (v17)
          {
            free(v17);
            self->convertInfoPtrs.var1 = 0;
          }
        }
      }
    }
  }

  if (self->convertInfo.nTRCs < 1)
  {
LABEL_35:
    var0 = self->convertInfoPtrs.var0;
    if (var0)
    {
      free(var0);
    }
  }

  else
  {
    v18 = 0;
    while (1)
    {
      v19 = self->convertInfoPtrs.var0;
      if (!v19)
      {
        break;
      }

      v20 = v19[v18];
      if (v20)
      {

        v19 = self->convertInfoPtrs.var0;
      }

      v19[v18++] = 0;
      if (v18 >= self->convertInfo.nTRCs)
      {
        goto LABEL_35;
      }
    }
  }

  self->convertInfoPtrs.var0 = 0;
  var2 = self->convertInfoPtrs.var2;
  if (var2)
  {
  }

  self->convertInfoPtrs.var2 = 0;
  v23.receiver = self;
  v23.super_class = MPSImageConversion;
  [(MPSKernel *)&v23 dealloc];
}

- (MPSImageConversion)initWithDevice:(id)device transform:(id)transform
{
  result = objc_msgSend_initWithDevice_(self, a2, device);
  if (result)
  {
    v6 = result;
    transformCopy = transform;
    result = v6;
    v6->transform = transform;
  }

  return result;
}

- (MPSImageConversion)initWithDevice:(id)device srcAlpha:(MPSAlphaType)srcAlpha destAlpha:(MPSAlphaType)destAlpha backgroundColor:(CGFloat *)backgroundColor conversionInfo:(CGColorConversionInfoRef)conversionInfo
{
  v25.receiver = self;
  v25.super_class = MPSImageConversion;
  v12 = [(MPSUnaryImageKernel *)&v25 initWithDevice:?];
  v13 = v12;
  if (v12)
  {
    v12->super._checkFlags = 3;
    v12->super._encode = sub_23995A480;
    v12->super._encodeData = v12;
    v12->transform = 0;
    __asm { FMOV            V1.4S, #1.0 }

    *v12->srcDecode = 0u;
    *&v12->srcDecode[16] = _Q1;
    *v12->destDecode = 0u;
    *&v12->destDecode[16] = _Q1;
    v12->sourceAlpha = srcAlpha;
    v12->destinationAlpha = destAlpha;
    if (conversionInfo)
    {
      if (qword_27DF85570 != -1)
      {
        dispatch_once(&qword_27DF85570, &unk_284C6BA88);
      }

      v13->matFun = qword_27DF85538;
      v13->trcFun = qword_27DF85540;
      v13->lutFun = qword_27DF85548;
      v13->optionsFun = qword_27DF85550;
      v13->inputRangeFun = qword_27DF85558;
      v13->outputRangeFun = qword_27DF85560;
      v13->propertiesFun = qword_27DF85568;
      if (!v13->matFun || !v13->trcFun || !v13->lutFun || !v13->optionsFun)
      {
        if (MTLReportFailureTypeEnabled())
        {
LABEL_13:
          MTLReportFailure();
        }

LABEL_14:

        return 0;
      }

      v23[4] = v13;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_239960784;
      v24[3] = &unk_278AF6870;
      v24[4] = v13;
      v24[5] = backgroundColor;
      v22[4] = v13;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_239962204;
      v23[3] = &unk_278AF6898;
      v21[4] = v13;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_239962718;
      v22[3] = &unk_278AF68C0;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_239962894;
      v21[3] = &unk_278AF68C0;
      if ((off_27DF85530(conversionInfo, 0, v24, v23, v22, v21, 2, 0) & 1) == 0)
      {
        if (MTLReportFailureTypeEnabled())
        {
          goto LABEL_13;
        }

        goto LABEL_14;
      }
    }

    else
    {
      sub_23995D1B4(v12, backgroundColor);
    }

    sub_23995D4C4(v13, device, v19);
  }

  return v13;
}

@end