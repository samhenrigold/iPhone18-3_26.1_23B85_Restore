@interface NTKCrosswindQuad
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)_colorCompositionForDate:(id)date;
- (NTKCrosswindQuad)initWithScreenScale:(double)scale calendar:(id)calendar;
- (NTKCrosswindQuadDelegate)delegate;
- (id)_createRenderPipelineWithPixelFormat:(unint64_t)format aodSupported:(BOOL)supported;
- (id)_createVertexBuffer;
- (id)_handContentColorAtIndex:(unint64_t)index colors:(id *)colors;
- (void)_prepareUniformsForRendering:(id *)rendering withResult:(id *)result;
- (void)renderForDisplayWithEncoder:(id)encoder;
- (void)setAnimatingOverrideDate:(BOOL)date;
- (void)setBaseLayerBackgroundColor:(id)color baseLayerForegroundColor:(id)foregroundColor;
- (void)setFromColor:(id)color midColor:(id)midColor toColor:(id)toColor forGradientIndex:(unint64_t)index;
- (void)setOutermostFromColor:(id)color midColor:(id)midColor toColor:(id)toColor forGradientIndex:(unint64_t)index;
- (void)setOverrideDate:(id)date overrideComposition:(id)composition duration:(double)duration;
- (void)setTritiumOverrideDate:(id)date hourRadians:(double)radians minuteRadians:(double)minuteRadians secondRadians:(double)secondRadians;
- (void)setTritiumProgress:(double)progress;
- (void)setupForQuadView:(id)view;
@end

@implementation NTKCrosswindQuad

- (NTKCrosswindQuad)initWithScreenScale:(double)scale calendar:(id)calendar
{
  calendarCopy = calendar;
  v22.receiver = self;
  v22.super_class = NTKCrosswindQuad;
  v8 = [(NTKCrosswindQuad *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_calendar, calendar);
    v9->_screenScale = scale;
    v10 = +[CLKUIMetalResourceManager sharedDevice];
    device = v9->_device;
    v9->_device = v10;

    v12 = v9->_device;
    v14 = sub_454C(v13);
    v15 = [(MTLDevice *)v12 newDefaultLibraryWithBundle:v14 error:0];
    library = v9->_library;
    v9->_library = v15;

    v17 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    overrideDateMediaTimingFunction = v9->_overrideDateMediaTimingFunction;
    v9->_overrideDateMediaTimingFunction = v17;

    v19 = [[NTKCrosswindColorSequencer alloc] initWithCalendar:calendarCopy gradientCount:4];
    colorSequencer = v9->_colorSequencer;
    v9->_colorSequencer = v19;
  }

  return v9;
}

- (void)setTritiumProgress:(double)progress
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_tritiumProgress = progress;
    self->_renderedTritiumProgressNeedsUpdate = 1;
  }
}

- (void)setBaseLayerBackgroundColor:(id)color baseLayerForegroundColor:(id)foregroundColor
{
  foregroundColorCopy = foregroundColor;
  CLKUIConvertToRGBfFromUIColor();
  *&self->_baseLayerBackgroundColor[5] = v6;
  CLKUIConvertToRGBfFromUIColor();
  v8 = v7;

  *&self->_baseLayerForegroundColor[5] = v8;
}

- (void)setFromColor:(id)color midColor:(id)midColor toColor:(id)toColor forGradientIndex:(unint64_t)index
{
  toColorCopy = toColor;
  midColorCopy = midColor;
  CLKUIConvertToRGBfFromUIColor();
  v17 = v11;
  CLKUIConvertToRGBfFromUIColor();
  v16 = v12;

  CLKUIConvertToRGBfFromUIColor();
  v13 = &self->_anon_e0[48 * index];
  *v13 = v17;
  *(v13 + 1) = v16;
  *(v13 + 2) = v14;
  self->_renderedGradientsNeedUpdate = 1;
  v15 = self->_handDotColors[index];
  self->_handDotColors[index] = toColorCopy;

  self->_renderedHandContentColorsNeedUpdate = 1;
}

- (void)setOutermostFromColor:(id)color midColor:(id)midColor toColor:(id)toColor forGradientIndex:(unint64_t)index
{
  toColorCopy = toColor;
  midColorCopy = midColor;
  CLKUIConvertToRGBfFromUIColor();
  v17 = v11;
  CLKUIConvertToRGBfFromUIColor();
  v16 = v12;

  CLKUIConvertToRGBfFromUIColor();
  v15 = v13;

  v14 = &self->_anon_1a0[48 * index];
  *v14 = v17;
  *(v14 + 1) = v16;
  *(v14 + 2) = v15;
}

- (void)setOverrideDate:(id)date overrideComposition:(id)composition duration:(double)duration
{
  var1 = composition.var1;
  var0 = composition.var0;
  dateCopy = date;
  if ((NTKEqualObjects() & 1) == 0)
  {
    if (duration > 0.0 && !self->_hasEverPreparedForRendering)
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      v58 = 0u;
      [(NTKCrosswindQuad *)self _prepareUniformsForRendering:&v58 withResult:0];
    }

    v11 = +[NTKDate faceDate];
    v12 = v11;
    overrideDate = self->_overrideDate;
    if (!overrideDate)
    {
      overrideDate = v11;
    }

    v14 = overrideDate;
    if (dateCopy)
    {
      v15 = dateCopy;
    }

    else
    {
      v15 = [v12 dateByAddingTimeInterval:duration];
    }

    v16 = v15;
    objc_storeStrong(&self->_overrideDate, date);
    self->_overrideComposition.innerSecondGradientIndex = var0;
    self->_overrideComposition.outerSecondGradientIndex = var1;
    v17 = CACurrentMediaTime();
    self->_startOverrideTime = v17;
    self->_endOverrideTime = v17 + duration;
    v56 = 0.0;
    v57 = 0.0;
    v55 = 0.0;
    NTKHourMinuteSecondAnglesForTime();
    *self->_startOverrideAngles = NTKCrosswindHourMinuteSecondAnglesToPolarAngles(0.0, 0.0, 0.0);
    NTKHourMinuteSecondAnglesForTime();
    endOverrideAngles = self->_endOverrideAngles;
    *self->_endOverrideAngles = NTKCrosswindHourMinuteSecondAnglesToPolarAngles(v57, v56, v55);
    *self->_fullTurnAngleCrossings = 0;
    if (duration > 0.0)
    {
      v90 = *self->_renderedGradientIndiciesForHandContentColors;
      v20 = *self->_renderedInnerSectorsConfiguration.gradientIndicies;
      v91 = self->_renderedGradientIndiciesForHandContentColors[2];
      v92 = v20;
      v93 = self->_renderedInnerSectorsConfiguration.gradientIndicies[2];
      v42 = *self->_renderedOuterSectorsConfiguration.gradientIndicies;
      v21 = NTKCrosswindPolarFullTurnAngleCrossingAlongShortestPathBetweenAngles(v19);
      v22 = v21;
      v23 = NTKCrosswindPolarFullTurnAngleCrossingAlongShortestPathBetweenAngles(v21);
      v24 = v23 + v22;
      v27.n128_u32[0] = NTKCrosswindPolarFullTurnAngleCrossingAlongShortestPathBetweenAngles(v23) + v24;
      v27.n128_u32[1] = v24;
      v41 = v27.n128_u64[0];
      *&v61 = 0;
      v27.n128_u32[3] = 0;
      v59 = 0u;
      v60 = 0u;
      v58 = 0u;
      v54 = 0;
      memset(v53, 0, sizeof(v53));
      v52 = 0u;
      v25 = *endOverrideAngles;
      LODWORD(v26) = HIDWORD(*endOverrideAngles);
      v27.n128_u64[0] = *&self->_endOverrideAngles[8];
      v44 = *endOverrideAngles;
      if (COERCE_FLOAT(*endOverrideAngles) >= v26)
      {
        v29 = 2;
        if (v26 >= v27.n128_f32[0])
        {
          v30 = 0;
          v28 = 1;
        }

        else
        {
          v28 = 0;
          if (v25.n128_f32[0] >= v27.n128_f32[0])
          {
            v30 = 1;
          }

          else
          {
            v30 = 2;
          }

          if (v25.n128_f32[0] < v27.n128_f32[0])
          {
            v29 = 1;
          }

          else
          {
            v29 = 2;
          }
        }
      }

      else
      {
        v28 = 2;
        if (v25.n128_f32[0] >= v27.n128_f32[0])
        {
          v30 = 0;
          v29 = 1;
        }

        else
        {
          v29 = 0;
          if (v26 >= v27.n128_f32[0])
          {
            v30 = 1;
          }

          else
          {
            v30 = 2;
          }

          if (v26 < v27.n128_f32[0])
          {
            v28 = 1;
          }

          else
          {
            v28 = 2;
          }
        }
      }

      v27.n128_u64[0] = __PAIR64__(v28, v29);
      v27.n128_u32[2] = v30;
      v43 = v27;
      v31 = [(NTKCrosswindQuad *)self _colorCompositionForDate:v16];
      v33 = v32;
      v50 = 0;
      v49 = 0;
      v51 = 0;
      v46 = -1;
      v47 = v31;
      v48 = 0;
      NTKCrosswindBuildSectorsConfiguration(&v58, &v46, &v51, v44, v43);
      v50 = 0;
      v49 = 0;
      v45 = 0;
      v46 = -1;
      v47 = v33;
      v48 = 1;
      NTKCrosswindBuildSectorsConfiguration(&v52, &v46, &v45, v44, v43);
      v43.n128_u64[0] = __PAIR64__(v45, v51);
      AngleIndiciesFromSectorsConfiguration = NTKCrosswindGetAngleIndiciesFromSectorsConfiguration(&v58, v44);
      v40 = LODWORD(AngleIndiciesFromSectorsConfiguration);
      v35 = NTKCrosswindGetAngleIndiciesFromSectorsConfiguration(&v52, v44);
      v36 = *(&v58 + v40 + 4);
      v37 = *(v53 + SHIDWORD(v35));
      v39 = *(v53 + v38);
      *self->_transitionContext.transitionInnerGradientIndicies = v92;
      self->_transitionContext.transitionInnerGradientIndicies[2] = v93;
      *self->_transitionContext.transitionOuterGradientIndicies = v42;
      *self->_anon_344 = 0;
      *&self->_anon_344[4] = v41;
      *&self->_anon_344[12] = v90;
      *&self->_anon_344[28] = v91;
      *&self->_anon_344[36] = v36;
      *&self->_anon_344[44] = v37;
      *&self->_anon_344[52] = v39;
      *&self->_anon_344[60] = v31;
      *&self->_anon_344[68] = v33;
      *&self->_anon_344[76] = v43.n128_u64[0];
    }

    else
    {
      *self->_transitionContext.transitionInnerGradientIndicies = 0u;
      *&self->_transitionContext.transitionOuterGradientIndicies[1] = 0u;
      *&self->_anon_344[12] = 0u;
      *&self->_anon_344[28] = 0u;
      *&self->_anon_344[44] = 0u;
      *&self->_anon_344[60] = 0u;
      *&self->_anon_344[76] = 0;
    }
  }
}

- (void)setTritiumOverrideDate:(id)date hourRadians:(double)radians minuteRadians:(double)minuteRadians secondRadians:(double)secondRadians
{
  dateCopy = date;
  if (dateCopy)
  {
    v12 = NTKCrosswindHourMinuteSecondAnglesToPolarAngles(radians, minuteRadians, secondRadians);
    *self->_startOverrideAngles = v12;
    *self->_endOverrideAngles = v12;
    if ((NTKEqualObjects() & 1) == 0)
    {
      objc_storeStrong(&self->_tritiumOverrideDate, date);
      v13 = CACurrentMediaTime();
      self->_startOverrideTime = v13;
      self->_endOverrideTime = v13;
      v14 = [(NTKCrosswindColorSequencing *)self->_colorSequencer colorCompositionForDate:dateCopy];
      v16 = v15;
      v41 = 0;
      v42 = 0;
      v40 = 0;
      NTKHourMinuteSecondAnglesForTime();
      v17 = NTKCrosswindHourMinuteSecondAnglesToPolarAngles(0.0, 0.0, 0.0);
      if (v17.n128_f32[0] >= v17.n128_f32[1])
      {
        v20 = 2;
        if (v17.n128_f32[1] >= v17.n128_f32[2])
        {
          v21 = 0;
          v19 = 1;
        }

        else
        {
          v19 = 0;
          if (v17.n128_f32[0] >= v17.n128_f32[2])
          {
            v21 = 1;
          }

          else
          {
            v21 = 2;
          }

          if (v17.n128_f32[0] < v17.n128_f32[2])
          {
            v20 = 1;
          }

          else
          {
            v20 = 2;
          }
        }
      }

      else
      {
        v19 = 2;
        if (v17.n128_f32[0] >= v17.n128_f32[2])
        {
          v21 = 0;
          v20 = 1;
        }

        else
        {
          v20 = 0;
          if (v17.n128_f32[1] >= v17.n128_f32[2])
          {
            v21 = 1;
          }

          else
          {
            v21 = 2;
          }

          if (v17.n128_f32[1] < v17.n128_f32[2])
          {
            v19 = 1;
          }

          else
          {
            v19 = 2;
          }
        }
      }

      v18.n128_u64[0] = __PAIR64__(v19, v20);
      v18.n128_u32[2] = v21;
      v27 = v18;
      v23 = v21;
      v39 = 0;
      memset(v38, 0, sizeof(v38));
      v37 = 0u;
      v36 = 0;
      memset(v35, 0, sizeof(v35));
      v34 = 0u;
      v33 = 0;
      v32 = 0;
      v29 = -1;
      v30 = v14;
      v31 = 256;
      v28 = v17;
      NTKCrosswindBuildSectorsConfiguration(&v37, &v29, 0, v17, v18);
      v33 = 0;
      v32 = 0;
      v29 = -1;
      v30 = v16;
      v31 = 257;
      NTKCrosswindBuildSectorsConfiguration(&v34, &v29, 0, v28, v27);
      AngleIndiciesFromSectorsConfiguration = NTKCrosswindGetAngleIndiciesFromSectorsConfiguration(&v37, v28);
      v27.n128_u32[0] = LODWORD(AngleIndiciesFromSectorsConfiguration);
      v25 = NTKCrosswindGetAngleIndiciesFromSectorsConfiguration(&v34, v28);
      v26 = *(v35 + SHIDWORD(v25));
      self->_tritiumOverrideContext.gradientIndiciesForHandContentColors[0] = *(v38 + v27.n128_i32[0]);
      self->_tritiumOverrideContext.gradientIndiciesForHandContentColors[1] = v26;
      self->_tritiumOverrideContext.composition.innerSecondGradientIndex = v14;
      self->_tritiumOverrideContext.composition.outerSecondGradientIndex = v16;
      self->_tritiumOverrideContext.secondAngleIndexForRelativeAngleOrdering = v23;
    }
  }

  else
  {
    tritiumOverrideDate = self->_tritiumOverrideDate;
    self->_tritiumOverrideDate = 0;

    *self->_tritiumOverrideContext.gradientIndiciesForHandContentColors = 0u;
    self->_tritiumOverrideContext.composition = 0u;
    self->_tritiumOverrideContext.secondAngleIndexForRelativeAngleOrdering = 0;
  }
}

- (void)setupForQuadView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  screenScale = self->_screenScale;
  self->_renderSize.width = v6 * screenScale;
  self->_renderSize.height = v7 * screenScale;
  colorPixelFormat = [viewCopy colorPixelFormat];

  v9 = [(NTKCrosswindQuad *)self _createRenderPipelineWithPixelFormat:colorPixelFormat aodSupported:0];
  renderPipelineState = self->_renderPipelineState;
  self->_renderPipelineState = v9;

  v11 = [(NTKCrosswindQuad *)self _createRenderPipelineWithPixelFormat:colorPixelFormat aodSupported:1];
  renderPipelineStateAodTransition = self->_renderPipelineStateAodTransition;
  self->_renderPipelineStateAodTransition = v11;

  self->_vertexBuffer = [(NTKCrosswindQuad *)self _createVertexBuffer];

  _objc_release_x1();
}

- (void)renderForDisplayWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  [encoderCopy setLabel:@"Crosswind Render Encoder"];
  v9[0] = 0;
  v9[1] = 0;
  renderSize = self->_renderSize;
  v11 = xmmword_A950;
  [encoderCopy setViewport:v9];
  v5 = &OBJC_IVAR___NTKCrosswindQuad__renderPipelineState;
  if (self->_tritiumProgress > 0.0)
  {
    v5 = &OBJC_IVAR___NTKCrosswindQuad__renderPipelineStateAodTransition;
  }

  [encoderCopy setRenderPipelineState:*&self->CLKUIQuad_opaque[*v5]];
  [encoderCopy setCullMode:0];
  bzero(v9, 0x2C0uLL);
  v8 = 0;
  [(NTKCrosswindQuad *)self _prepareUniformsForRendering:v9 withResult:&v8];
  v6 = [(MTLDevice *)self->_device newBufferWithBytes:v9 length:704 options:1];
  [encoderCopy setVertexBuffer:self->_vertexBuffer offset:0 atIndex:0];
  [encoderCopy setVertexBuffer:v6 offset:0 atIndex:1];
  [encoderCopy setFragmentBuffer:v6 offset:0 atIndex:0];
  if (v8 == 1)
  {
    delegate = [(NTKCrosswindQuad *)self delegate];
    [delegate crosswindQuadWillUpdateForegroundColors:self];
  }

  [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
  [(NTKCrosswindQuad *)self setAnimatingOverrideDate:HIBYTE(v8)];
}

- (void)setAnimatingOverrideDate:(BOOL)date
{
  if (self->_animatingOverrideDate != date)
  {
    self->_animatingOverrideDate = date;
    delegate = [(NTKCrosswindQuad *)self delegate];
    [delegate crosswindQuadDidUpdateAnimatingOverrideDate:self];
  }
}

- (id)_createRenderPipelineWithPixelFormat:(unint64_t)format aodSupported:(BOOL)supported
{
  if (!self->_binaryArchive)
  {
    v6 = sub_454C(self);
    v7 = [CLKUIMetalBinaryArchive archiveWithName:@"crosswind" bundle:v6 device:self->_device];
    binaryArchive = self->_binaryArchive;
    self->_binaryArchive = v7;
  }

  v9 = objc_opt_new();
  supportedCopy = supported;
  [v9 setConstantValue:&supportedCopy type:53 atIndex:0];
  v10 = self->_library;
  v11 = [(MTLLibrary *)v10 newFunctionWithName:@"crosswindVertexShader"];
  v12 = +[MTLFunctionDescriptor functionDescriptor];
  [v12 setName:@"crosswindQuadtoneConicFragmentShader"];
  v23 = v9;
  [v12 setConstantValues:v9];
  v13 = [(CLKUIMetalBinaryArchive *)self->_binaryArchive newFunctionInLibrary:v10 withDescriptor:v12];
  if (!v13)
  {
    v14 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_7768();
    }
  }

  v15 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v15 setVertexFunction:v11];
  [v15 setFragmentFunction:v13];
  [v15 setLabel:@"Crosswind Render Pipeline"];
  colorAttachments = [v15 colorAttachments];
  [colorAttachments objectAtIndexedSubscript:0];
  v18 = v17 = v11;

  [v18 setPixelFormat:format];
  [v18 setBlendingEnabled:1];
  [v18 setRgbBlendOperation:0];
  [v18 setAlphaBlendOperation:0];
  [v18 setSourceRGBBlendFactor:4];
  [v18 setSourceAlphaBlendFactor:4];
  [v18 setDestinationRGBBlendFactor:5];
  [v18 setDestinationAlphaBlendFactor:5];
  v19 = [(CLKUIMetalBinaryArchive *)self->_binaryArchive newRenderPipelineStateForDevice:self->_device withDescriptor:v15];
  if (!v19)
  {
    v20 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_77F4();
    }
  }

  return v19;
}

- (id)_createVertexBuffer
{
  v4[0] = xmmword_A968;
  v4[1] = unk_A978;
  v2 = [(MTLDevice *)self->_device newBufferWithBytes:v4 length:32 options:1];

  return v2;
}

- (id)_handContentColorAtIndex:(unint64_t)index colors:(id *)colors
{
  if (self->_renderedTransitionProgress > 0.0)
  {
    v7 = colors[*&self->_anon_344[8 * index + 12]];
    v8 = CLKUIInterpolateBetweenColors();
LABEL_3:

    goto LABEL_8;
  }

  v8 = colors[self->_renderedGradientIndiciesForHandContentColors[index]];
  if (self->_tritiumProgress > 0.0 && index <= 1 && self->_tritiumOverrideDate)
  {
    v7 = colors[self->_tritiumOverrideContext.gradientIndiciesForHandContentColors[index]];
    v9 = CLKUIInterpolateBetweenColors();

    v8 = v9;
    goto LABEL_3;
  }

LABEL_8:

  return v8;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)_colorCompositionForDate:(id)date
{
  dateCopy = date;
  if (self->_overrideDate != dateCopy || (innerSecondGradientIndex = self->_overrideComposition.innerSecondGradientIndex, outerSecondGradientIndex = self->_overrideComposition.outerSecondGradientIndex, NTKCrosswindColorCompositionEqualToComposition(innerSecondGradientIndex, outerSecondGradientIndex, -1, -1)))
  {
    innerSecondGradientIndex = [(NTKCrosswindColorSequencing *)self->_colorSequencer colorCompositionForDate:dateCopy];
    outerSecondGradientIndex = v7;
  }

  v8 = innerSecondGradientIndex;
  v9 = outerSecondGradientIndex;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (void)_prepareUniformsForRendering:(id *)rendering withResult:(id *)result
{
  self->_hasEverPreparedForRendering = 1;
  __asm { FMOV            V1.2D, #0.5 }

  *&rendering->var0 = vcvt_f32_f64(vmulq_f64(self->_renderSize, _Q1));
  screenScale = self->_screenScale;
  *&rendering->var2 = vcvt_f32_f64(vmulq_n_f64(*&self->_innerCircleRadius, screenScale));
  *&screenScale = screenScale * self->_outerCircleRadius;
  rendering->var5.var1[0] = *&screenScale;
  *&rendering->var5.var2[1] = *&self->_baseLayerBackgroundColor[5];
  *&rendering->var6.var1[1] = *&self->_baseLayerForegroundColor[5];
  v13 = *&self->_anon_e0[160];
  v12 = *&self->_anon_e0[176];
  v14 = *&self->_anon_e0[144];
  *&rendering[1].var6.var0 = *&self->_anon_e0[128];
  *rendering[1].var6.var2 = v14;
  *&rendering[1].var8.var0 = v13;
  *rendering[1].var8.var2 = v12;
  v16 = *&self->_anon_e0[96];
  v15 = *&self->_anon_e0[112];
  v17 = *&self->_anon_e0[80];
  *&rendering->var10 = *&self->_anon_e0[64];
  *rendering->var12 = v17;
  *&rendering[1].var2 = v16;
  *&rendering[1].var5.var1[2] = v15;
  v19 = *&self->_anon_e0[32];
  v18 = *&self->_anon_e0[48];
  v20 = *&self->_anon_e0[16];
  *&rendering->var6.var2[2] = *self->_anon_e0;
  *&rendering->var8.var1[1] = v20;
  *&rendering->var8.var2[2] = v19;
  *&rendering->var9.var1[2] = v18;
  v21 = *&self->_anon_1a0[48];
  v23 = *self->_anon_1a0;
  v22 = *&self->_anon_1a0[16];
  *&rendering[1].var11[1] = *&self->_anon_1a0[32];
  *&rendering[2].var0 = v21;
  *rendering[1].var9.var1 = v23;
  *&rendering[1].var9.var2[1] = v22;
  v24 = *&self->_anon_1a0[112];
  v26 = *&self->_anon_1a0[64];
  v25 = *&self->_anon_1a0[80];
  *&rendering[2].var6.var1[1] = *&self->_anon_1a0[96];
  *&rendering[2].var6.var2[2] = v24;
  *rendering[2].var5.var1 = v26;
  *&rendering[2].var5.var2[1] = v25;
  v27 = *&self->_anon_1a0[176];
  v29 = *&self->_anon_1a0[128];
  v28 = *&self->_anon_1a0[144];
  *&rendering[2].var9.var1[2] = *&self->_anon_1a0[160];
  *&rendering[2].var10 = v27;
  *&rendering[2].var8.var1[1] = v29;
  *&rendering[2].var8.var2[2] = v28;
  renderedGradientsNeedUpdate = self->_renderedGradientsNeedUpdate;
  self->_renderedGradientsNeedUpdate = 0;
  renderedHandContentColorsNeedUpdate = self->_renderedHandContentColorsNeedUpdate;
  self->_renderedHandContentColorsNeedUpdate = 0;
  overrideDate = [(NTKCrosswindQuad *)self overrideDate];
  v31 = overrideDate;
  if (overrideDate)
  {
    v32 = overrideDate;
  }

  else
  {
    v32 = +[NTKDate faceDate];
  }

  v33 = v32;

  v34 = CACurrentMediaTime();
  tritiumOverrideDate = self->_tritiumOverrideDate;
  endOverrideTime = self->_endOverrideTime;
  v120 = v33;
  if (v34 >= endOverrideTime && *&self->_overrideDate == 0)
  {
    NTKHourMinuteSecondAnglesForTime();
    v43 = NTKCrosswindHourMinuteSecondAnglesToPolarAngles(0.0, 0.0, 0.0);
    v126 = v43.n128_f32[1];
    v127 = v43.n128_f32[0];
    v125 = v43.n128_f32[2];
LABEL_18:
    v59 = [(NTKCrosswindQuad *)self _colorCompositionForDate:v33];
    v61 = v60;
    v62 = 0;
    goto LABEL_24;
  }

  startOverrideTime = self->_startOverrideTime;
  v38 = endOverrideTime - startOverrideTime;
  if (v38 <= 0.0)
  {
    v42 = 0;
    v40 = 1.0;
  }

  else
  {
    v39 = (v34 - startOverrideTime) / v38;
    v40 = 1.0;
    if (v39 >= 1.0)
    {
      v42 = 0;
    }

    else
    {
      *&v39 = v39;
      [(CAMediaTimingFunction *)self->_overrideDateMediaTimingFunction _solveForInput:v39];
      v40 = v41;
      v42 = 1;
    }
  }

  CLKInterpolateShortestPathBetweenAnglesUnclipped();
  CLKWrapRadians();
  v127 = v44;
  CLKInterpolateShortestPathBetweenAnglesUnclipped();
  CLKWrapRadians();
  v126 = v45;
  CLKInterpolateShortestPathBetweenAnglesUnclipped();
  v46 = CLKWrapRadians();
  v125 = v47;
  if (!v42)
  {
    goto LABEL_18;
  }

  v48 = NTKCrosswindPolarFullTurnAngleCrossingBetweenAngles(v46);
  v49 = v48;
  v50 = NTKCrosswindPolarFullTurnAngleCrossingBetweenAngles(v48);
  v51 = v50;
  v52.i32[0] = NTKCrosswindPolarFullTurnAngleCrossingBetweenAngles(v50) + v50 + v49;
  v52.i32[1] = v51 + v49;
  *self->_fullTurnAngleCrossings = vadd_s32(*self->_fullTurnAngleCrossings, v52);
  var1 = rendering[4].var8.var1;
  v54 = *self->_transitionContext.transitionInnerGradientIndicies;
  LODWORD(rendering[4].var8.var1[2]) = self->_transitionContext.transitionInnerGradientIndicies[2];
  *rendering[4].var8.var1 = v54;
  *rendering[4].var8.var2 = *self->_transitionContext.transitionOuterGradientIndicies;
  v55 = *self->_fullTurnAngleCrossings;
  if (v55)
  {
    v56 = 0;
    v57 = v55;
    do
    {
      *(&v128 + NTKCrosswindOffsetIndexWrapped(v56, v57, 3)) = *(var1 + v56);
      ++v56;
    }

    while (v56 != 3);
    *var1 = v128;
    rendering[4].var8.var1[2] = *(&v128 + 2);
    v58 = *&self->_fullTurnAngleCrossings[4];
    if (!v58)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v58 = HIDWORD(*self->_fullTurnAngleCrossings);
  if (HIDWORD(v55))
  {
LABEL_20:
    v63 = 0;
    var2 = rendering[4].var8.var2;
    v65 = v58;
    do
    {
      *(&v128 + NTKCrosswindOffsetIndexWrapped(v63, v65, 2)) = var2[v63];
      ++v63;
    }

    while (v63 != 2);
    *var2 = v128;
  }

LABEL_23:
  *&v66 = 1.0 - v40;
  rendering[4].var8.var0 = v66;
  v59 = *&self->_anon_344[60];
  v61 = *&self->_anon_344[68];
  v62 = 1;
LABEL_24:
  innerSecondGradientIndex = self->_renderedColorComposition.innerSecondGradientIndex;
  outerSecondGradientIndex = self->_renderedColorComposition.outerSecondGradientIndex;
  self->_renderedColorComposition.innerSecondGradientIndex = v59;
  self->_renderedColorComposition.outerSecondGradientIndex = v61;
  v118 = NTKCrosswindColorCompositionEqualToComposition(v59, v61, innerSecondGradientIndex, outerSecondGradientIndex);
  v69.n128_f32[0] = v127;
  v70 = v126;
  v71.n128_f32[0] = v125;
  v72 = v69;
  v72.n128_f32[1] = v70;
  if (v69.n128_f32[0] >= v70)
  {
    v76 = 2;
    if (v70 >= v71.n128_f32[0])
    {
      v75 = 0;
      v73 = 1;
    }

    else
    {
      v73 = 0;
      if (v69.n128_f32[0] >= v71.n128_f32[0])
      {
        v75 = 1;
      }

      else
      {
        v75 = 2;
      }

      if (v69.n128_f32[0] < v71.n128_f32[0])
      {
        v76 = 1;
      }

      else
      {
        v76 = 2;
      }
    }
  }

  else
  {
    if (v70 < v71.n128_f32[0])
    {
      v73 = 1;
    }

    else
    {
      v73 = 2;
    }

    if (v70 >= v71.n128_f32[0])
    {
      v74 = 1;
    }

    else
    {
      v74 = 2;
    }

    if (v69.n128_f32[0] < v71.n128_f32[0])
    {
      v75 = v74;
    }

    else
    {
      v73 = 2;
      v75 = 0;
    }

    v76 = v69.n128_f32[0] >= v71.n128_f32[0];
  }

  v72.n128_f32[2] = v125;
  v71.n128_u64[0] = __PAIR64__(v73, v76);
  v71.n128_u32[2] = v75;
  v122 = v71;
  v112 = v126;
  v114 = v127;
  if (v62)
  {
    v77 = *&self->_anon_344[76];
    v78 = v77;
    v79 = HIDWORD(v77);
  }

  else
  {
    v78 = -1;
    v79 = -1;
  }

  v129 = 0;
  *&v128 = v78;
  *(&v128 + 1) = v59;
  v124 = v72;
  NTKCrosswindBuildSectorsConfiguration(rendering[2].var12, &v128, 0, v72, v122);
  v129 = 1;
  *&v128 = v79;
  *(&v128 + 1) = v61;
  NTKCrosswindBuildSectorsConfiguration(&rendering[3].var6.var1[1], &v128, 0, v124, v122);
  if (v62)
  {
    sub_60AC(&rendering[3].var2, rendering[2].var12[0], (*self->_fullTurnAngleCrossings - *&self->_anon_344[4]));
    sub_60AC(&rendering[3].var6.var2[2], LODWORD(rendering[3].var6.var1[1]), *&self->_fullTurnAngleCrossings[4] - *&self->_anon_344[8]);
  }

  tritiumProgress = self->_tritiumProgress;
  if (tritiumProgress > 0.0)
  {
    v81 = v124;
    if (tritiumOverrideDate)
    {
      v59 = self->_tritiumOverrideContext.composition.innerSecondGradientIndex;
      v61 = self->_tritiumOverrideContext.composition.outerSecondGradientIndex;
      secondAngleIndexForRelativeAngleOrdering = self->_tritiumOverrideContext.secondAngleIndexForRelativeAngleOrdering;
      LODWORD(v128) = 0;
      if (v114 >= v112)
      {
        v83 = v126;
      }

      else
      {
        v83 = v127;
      }

      if (v114 >= v112)
      {
        v84 = v127;
      }

      else
      {
        v84 = v126;
      }

      *(&v128 + 4) = __PAIR64__(LODWORD(v84), LODWORD(v83));
      HIDWORD(v128) = 1086918619;
      v85 = (*(&v128 + secondAngleIndexForRelativeAngleOrdering) + *(&v128 + secondAngleIndexForRelativeAngleOrdering + 1)) * 0.5;
      v86.n128_u32[3] = v124.n128_u32[3];
      v81.n128_u64[0] = v124.n128_u64[0];
      v81.n128_f32[2] = v85;
      v81.n128_u32[3] = v124.n128_u32[3];
      if (v114 >= v112)
      {
        if (v85 <= v114)
        {
          v90 = 1;
        }

        else
        {
          v90 = 2;
        }

        if (v85 > v114)
        {
          v92 = 1;
        }

        else
        {
          v92 = 2;
        }

        v89 = v85 <= v112;
        if (v85 > v112)
        {
          v91 = v92;
        }

        else
        {
          v90 = 0;
          v91 = 2;
        }
      }

      else
      {
        if (v85 > v112)
        {
          v87 = 1;
        }

        else
        {
          v87 = 2;
        }

        if (v85 <= v112)
        {
          v88 = 1;
        }

        else
        {
          v88 = 2;
        }

        if (v85 > v114)
        {
          v89 = v87;
        }

        else
        {
          v89 = 2;
        }

        if (v85 > v114)
        {
          v90 = v88;
        }

        else
        {
          v90 = 0;
        }

        v91 = v85 <= v114;
      }

      v86.n128_u64[0] = __PAIR64__(v89, v91);
      v86.n128_u32[2] = v90;
      v122 = v86;
    }

    v115 = v81;
    v129 = 256;
    *&v128 = -1;
    *(&v128 + 1) = v59;
    NTKCrosswindBuildSectorsConfiguration(&rendering[3].var9.var1[2], &v128, 0, v81, v122);
    v129 = 257;
    *&v128 = -1;
    *(&v128 + 1) = v61;
    NTKCrosswindBuildSectorsConfiguration(rendering[4].var5.var1, &v128, 0, v115, v122);
  }

  v93 = v62;
  v116 = tritiumOverrideDate;
  renderedTritiumProgressNeedsUpdate = self->_renderedTritiumProgressNeedsUpdate;
  self->_renderedTritiumProgressNeedsUpdate = 0;
  v94 = tritiumProgress;
  rendering[3].var9.var1[0] = v94;
  AngleIndiciesFromSectorsConfiguration = NTKCrosswindGetAngleIndiciesFromSectorsConfiguration(rendering[2].var12, v124);
  v123 = LODWORD(AngleIndiciesFromSectorsConfiguration);
  v96 = NTKCrosswindGetAngleIndiciesFromSectorsConfiguration(&rendering[3].var6.var1[1], v124);
  v97 = *(&rendering[3].var2 + v123);
  v98 = rendering[3].var6.var2[SHIDWORD(v96) + 2];
  *&v128 = v97;
  *(&v128 + 1) = v98;
  v100 = rendering[3].var6.var2[v99 + 2];
  v101 = self->_renderedGradientIndiciesForHandContentColors[0];
  v102 = self->_renderedGradientIndiciesForHandContentColors[1];
  v103 = self->_renderedGradientIndiciesForHandContentColors[2];
  self->_renderedGradientIndiciesForHandContentColors[2] = v100;
  *self->_renderedGradientIndiciesForHandContentColors = v128;
  *self->_renderedAngles = v124;
  v105 = *&rendering[3].var2;
  v104 = *&rendering[3].var5.var1[2];
  v106 = *rendering[2].var12;
  *&self->_anon_28c[20] = *&rendering[3].var6.var0;
  *self->_renderedInnerSectorsConfiguration.gradientIndicies = v105;
  *&self->_anon_28c[4] = v104;
  *&self->_renderedInnerSectorsConfiguration.angleCount = v106;
  v108 = *&rendering[3].var6.var2[2];
  v107 = *&rendering[3].var8.var1[1];
  v109 = *&rendering[3].var6.var1[1];
  *&self->_anon_2c4[20] = *&rendering[3].var8.var2[2];
  *self->_renderedOuterSectorsConfiguration.gradientIndicies = v108;
  *&self->_anon_2c4[4] = v107;
  *&self->_renderedOuterSectorsConfiguration.angleCount = v109;
  v129 = v100;
  LODWORD(self->_renderedTransitionProgress) = rendering[4].var8.var0;
  v110 = CLKFloatEqualsFloat();
  NTKCrosswindDeduplicateAnglesInSectorsConfiguration(rendering[2].var12);
  NTKCrosswindDeduplicateAnglesInSectorsConfiguration(&rendering[3].var6.var1[1]);
  if (tritiumProgress > 0.0)
  {
    NTKCrosswindDeduplicateAnglesInSectorsConfiguration(&rendering[3].var9.var1[2]);
    NTKCrosswindDeduplicateAnglesInSectorsConfiguration(rendering[4].var5.var1);
  }

  if (result)
  {
    v111 = 1;
    if (!renderedGradientsNeedUpdate && v118 && !renderedHandContentColorsNeedUpdate && !(v101 ^ v97 | v102 ^ v98 | v103 ^ v100))
    {
      v111 = v110 ^ 1 | (v116 != 0 && renderedTritiumProgressNeedsUpdate);
    }

    result->var0 = v111;
    result->var1 = v93;
  }
}

- (NTKCrosswindQuadDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end