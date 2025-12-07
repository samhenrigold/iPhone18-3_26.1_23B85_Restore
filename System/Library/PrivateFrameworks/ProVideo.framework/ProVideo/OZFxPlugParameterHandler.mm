@interface OZFxPlugParameterHandler
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertToFigTime:(SEL)time meOffset:(double)offset motionEffect:(double)effect;
- ($43B88956A48E07FA4329DDDD387A1517)figDurationToFxDuration:(id *)duration withConversionData:(void *)data;
- ($43B88956A48E07FA4329DDDD387A1517)figTimeToFxTime:(id *)time withConversionData:(void *)data;
- (BOOL)_floatParameter:(int)parameter hasValidMin:(double)min max:(double)max sliderMin:(double)sliderMin sliderMax:(double)sliderMax defaultValue:(double)value paramFlags:(unsigned int)flags;
- (BOOL)_getAngle:(double *)angle fromParm:(unsigned int)parm atTime:(id)time;
- (BOOL)_getBoolValue:(BOOL *)value fromParm:(unsigned int)parm atTime:(id)time;
- (BOOL)_getCustomParameterValue:(id *)value fromParm:(unsigned int)parm atTime:(id)time;
- (BOOL)_getFloatValue:(double *)value fromParm:(unsigned int)parm atTime:(id)time;
- (BOOL)_getGradientSamples:(void *)samples numSamples:(unint64_t)numSamples depth:(unint64_t)depth fromParm:(unsigned int)parm atTime:(id)time;
- (BOOL)_getHistogramBlackIn:(double *)in BlackOut:(double *)out WhiteIn:(double *)whiteIn WhiteOut:(double *)whiteOut Gamma:(double *)gamma forChannel:(unint64_t)channel fromParm:(unsigned int)parm atTime:(id)self0;
- (BOOL)_getIntValue:(int *)value fromParm:(unsigned int)parm atTime:(id)time;
- (BOOL)_getPathID:(void *)d fromParm:(unsigned int)parm atTime:(id)time;
- (BOOL)_getRedValue:(double *)value greenValue:(double *)greenValue blueValue:(double *)blueValue alphaValue:(double *)alphaValue fromParm:(unsigned int)parm atTime:(id)time;
- (BOOL)_getRedValue:(double *)value greenValue:(double *)greenValue blueValue:(double *)blueValue fromParm:(unsigned int)parm atTime:(id)time;
- (BOOL)_getXValue:(double *)value YValue:(double *)yValue fromParm:(unsigned int)parm atTime:(id)time;
- (BOOL)_intParameter:(int)parameter hasValidMin:(int)min max:(int)max sliderMin:(int)sliderMin sliderMax:(int)sliderMax defaultValue:(int)value paramFlags:(unsigned int)flags;
- (BOOL)_setBoolValue:(BOOL)value toParm:(unsigned int)parm atTime:(id)time;
- (BOOL)_setCustomParameterValue:(id)value toParm:(unsigned int)parm atTime:(id)time;
- (BOOL)_setFloatValue:(double)value toParm:(unsigned int)parm atTime:(id)time;
- (BOOL)_setHistogramBlackIn:(double)in BlackOut:(double)out WhiteIn:(double)whiteIn WhiteOut:(double)whiteOut Gamma:(double)gamma forChannel:(unint64_t)channel fromParm:(unsigned int)parm atTime:(id)self0;
- (BOOL)_setIntValue:(int)value toParm:(unsigned int)parm atTime:(id)time;
- (BOOL)_setPathID:(void *)d toParm:(unsigned int)parm atTime:(id)time;
- (BOOL)_setRedValue:(double)value greenValue:(double)greenValue blueValue:(double)blueValue alphaValue:(double)alphaValue toParm:(unsigned int)parm atTime:(id)time;
- (BOOL)_setRedValue:(double)value greenValue:(double)greenValue blueValue:(double)blueValue toParm:(unsigned int)parm atTime:(id)time;
- (BOOL)_setXValue:(double)value YValue:(double)yValue toParm:(unsigned int)parm atTime:(id)time;
- (BOOL)_setupRenderer;
- (BOOL)add2DScaleWithName:(id)name parmId:(unsigned int)id defaultX:(double)x defaultY:(double)y parmFlags:(unsigned int)flags;
- (BOOL)add2DVectorWithName:(id)name parmId:(unsigned int)id defaultX:(double)x defaultY:(double)y parmFlags:(unsigned int)flags;
- (BOOL)addAngleSliderWithName:(id)name parmId:(unsigned int)id defaultValue:(double)value parameterMin:(double)min parameterMax:(double)max parmFlags:(unsigned int)flags;
- (BOOL)addColorParameterWithName:(id)name parmId:(unsigned int)id defaultRed:(double)red defaultGreen:(double)green defaultBlue:(double)blue defaultAlpha:(double)alpha parmFlags:(unsigned int)flags;
- (BOOL)addColorParameterWithName:(id)name parmId:(unsigned int)id defaultRed:(double)red defaultGreen:(double)green defaultBlue:(double)blue parmFlags:(unsigned int)flags;
- (BOOL)addCustomParameterWithName:(id)name parmId:(unsigned int)id defaultValue:(id)value parmFlags:(unsigned int)flags;
- (BOOL)addFloatSliderWithName:(id)name parmId:(unsigned int)id defaultValue:(double)value parameterMin:(double)min parameterMax:(double)max sliderMin:(double)sliderMin sliderMax:(double)sliderMax delta:(double)self0 parmFlags:(unsigned int)self1;
- (BOOL)addGradientPositionedWithName:(id)name parmId:(unsigned int)id parmFlags:(unsigned int)flags;
- (BOOL)addGradientWithName:(id)name parmId:(unsigned int)id parmFlags:(unsigned int)flags;
- (BOOL)addHistogramWithName:(id)name parmId:(unsigned int)id parmFlags:(unsigned int)flags;
- (BOOL)addImageReferenceWithName:(id)name parmId:(unsigned int)id parmFlags:(unsigned int)flags;
- (BOOL)addIntSliderWithName:(id)name parmId:(unsigned int)id defaultValue:(int)value parameterMin:(int)min parameterMax:(int)max sliderMin:(int)sliderMin sliderMax:(int)sliderMax delta:(int)self0 parmFlags:(unsigned int)self1;
- (BOOL)addLevelsWithName:(id)name parmId:(unsigned int)id hideGamma:(BOOL)gamma parmFlags:(unsigned int)flags;
- (BOOL)addPercentSliderWithName:(id)name parmId:(unsigned int)id defaultValue:(double)value parameterMin:(double)min parameterMax:(double)max sliderMin:(double)sliderMin sliderMax:(double)sliderMax delta:(double)self0 parmFlags:(unsigned int)self1;
- (BOOL)addPointParameterWithName:(id)name parmId:(unsigned int)id defaultX:(double)x defaultY:(double)y parmFlags:(unsigned int)flags;
- (BOOL)addPopupMenuWithNameAndTags:(id)tags parmId:(unsigned int)id defaultValue:(unsigned int)value menuEntries:(id)entries tags:(const int *)a7 tagCount:(int)count parmFlags:(unsigned int)flags;
- (BOOL)addStringParameterWithName:(id)name parmId:(unsigned int)id defaultValue:(id)value parmFlags:(unsigned int)flags;
- (BOOL)addToggleButtonWithName:(id)name parmId:(unsigned int)id defaultValue:(BOOL)value parmFlags:(unsigned int)flags;
- (BOOL)containsParameterWithID:(unsigned int)d;
- (BOOL)endParameterSubGroup;
- (BOOL)endUndoGroup;
- (BOOL)finalizeImage:(id)image withSceneNode:(void *)node pixelBounds:(PCRect<int>)bounds agent:(void *)agent andRenderParams:(const void *)params atTime:(id)time;
- (BOOL)folderWasModified:(void *)modified inDocument:(void *)document parameterID:(unsigned int)d modifiedParamID:(void *)iD supportsParametersChanged:(BOOL)changed paramsChangedArray:(id)array target:(id)target;
- (BOOL)getAnalysisTexture:(id *)texture requestInfo:(id *)info fromParm:(unsigned int)parm atFxTime:(id)time;
- (BOOL)getBitmap:(id *)bitmap layerOffsetX:(double *)x layerOffsetY:(double *)y requestInfo:(id *)info fromParm:(unsigned int)parm atTime:(double)time;
- (BOOL)getCustomParameterValue:(id *)value fromParm:(unsigned int)parm;
- (BOOL)getGradientStartEnd:(double *)end startY:(double *)y endX:(double *)x endY:(double *)endY type:(int *)type fromParm:(unsigned int)parm atTime:(id)time;
- (BOOL)getHeliumImage:(id *)image layerOffsetX:(double *)x layerOffsetY:(double *)y requestInfo:(id *)info fromParm:(unsigned int)parm atTime:(id)time;
- (BOOL)getLevelsBlack:(double *)black White:(double *)white Gamma:(double *)gamma fromParm:(unsigned int)parm atTime:(id)time;
- (BOOL)getParameterFlags:(unsigned int *)flags fromParm:(unsigned int)parm;
- (BOOL)getStringParameterValue:(id *)value fromParm:(unsigned int)parm;
- (BOOL)getTexture:(id *)texture layerOffsetX:(double *)x layerOffsetY:(double *)y requestInfo:(id *)info fromParm:(unsigned int)parm atTime:(double)time;
- (BOOL)hasValidParameterID:(int)d checkMix:(BOOL)mix checkSpecialCheckboxIDs:(BOOL)ds;
- (BOOL)parameter:(int)parameter hasValidFlags:(unsigned int)flags;
- (BOOL)retrieveImage:(id *)image layerOffsetX:(double *)x layerOffsetY:(double *)y requestInfo:(id *)info fromParm:(unsigned int)parm atTime:(id)time retriever:(SEL)retriever ARGB:(BOOL)self0 imageType:(unint64_t)self1 forAnalysis:(BOOL)self2;
- (BOOL)safeToSetParameters;
- (BOOL)setCustomParameterDefaultValue:(id)value parmId:(unsigned int)id;
- (BOOL)setCustomParameterValue:(id)value toParm:(unsigned int)parm;
- (BOOL)setGradientFlags:(BOOL)flags toParam:(unsigned int)param;
- (BOOL)setGradientHiddenWithOSC:(BOOL)c toParam:(unsigned int)param;
- (BOOL)setGradientStartEnd:(double)end startY:(double)y endX:(double)x endY:(double)endY toParm:(unsigned int)parm atTime:(id)time;
- (BOOL)setLevelsBlack:(double)black White:(double)white Gamma:(double)gamma forParm:(unsigned int)parm atTime:(id)time;
- (BOOL)setParameterFlags:(unsigned int)flags toParm:(unsigned int)parm;
- (BOOL)setStringParameterValue:(id)value toParm:(unsigned int)parm;
- (BOOL)shouldFlipPoints;
- (BOOL)startParameterSubGroup:(id)group parmId:(unsigned int)id parmFlags:(unsigned int)flags;
- (BOOL)startUndoGroup:(id)group;
- (BOOL)suppressUpdates;
- (BOOL)useAbsolutePoints;
- (BOOL)useInputPoints;
- (BOOL)usesRationalTime;
- (OZChannelBase)channelForParameterID:(unsigned int)d;
- (OZChannelBase)channelWithID:(int)d;
- (OZChannelBase)parameterAtIndex:(unsigned int)index;
- (OZChannelBool)absolutePointsChannel;
- (OZChannelBool)flipChannel;
- (OZChannelBool)inputPointsChannel;
- (OZChannelBool)publishOSCChannel;
- (OZChannelPercent)mixChannel;
- (OZFxPlugColorTransformInfo)getColorTransformInfo;
- (OZFxPlugParameterHandler)initWithBaseChannel:(void *)channel andCopy:(id)copy Skip:(int)skip andPluginLock:(shared_ptr<OZFxPlugSharedLock>)lock;
- (OZFxPlugParameterHandler)initWithBaseChannel:(void *)channel andCopy:(id)copy andPluginLock:(shared_ptr<OZFxPlugSharedLock>)lock;
- (OZFxPlugParameterHandler)initWithBaseChannel:(void *)channel andPluginLock:(shared_ptr<OZFxPlugSharedLock>)lock;
- (OZRenderState)getTempContextRenderState;
- (PCNSRef<FFMotionEffect)motionEffectRef;
- (PCPtr<LiImageSource>)makeSourceFromSceneNode:(void *)node withRenderParams:(void *)params;
- (PCRect<double>)getBoundsFromSceneNode:(void *)node withRenderParams:(void *)params;
- (double)getPixelAspectRatioFromSceneNode:(void *)node;
- (double)mixAmountAtTime:(id)time;
- (id).cxx_construct;
- (id)decodeLegacyData:(id)data forParameterID:(unsigned int)d;
- (id)displayName;
- (id)motionEffectForLockedSharedBase:(void *)base;
- (id)transactionForParameterID:(unsigned int)d atTime:(id *)time transactionID:(unint64_t)iD pluginSessionID:(unint64_t)sessionID;
- (unsigned)fxParameterFlagsForChannel:(OZChannelBase *)channel;
- (unsigned)paramIDForImageWellWithSceneNode:(unsigned int)node;
- (unsigned)parameterCount;
- (vector<unsigned)imageParamIDs;
- (void)_updateUI:(id)i;
- (void)_updateUIForParm:(int)parm;
- (void)abortAndWait;
- (void)addExistingChannel:(OZChannelBase *)channel;
- (void)addExistingGroup:(void *)group;
- (void)addFlipCheckbox:(unsigned int)checkbox withChannel:(OZChannelBool *)channel;
- (void)addInputPointsCheckbox:(unsigned int)checkbox withChannel:(OZChannelBool *)channel;
- (void)addMixSlider:(unsigned int)slider withChannel:(OZChannelPercent *)channel;
- (void)addPublishOSCCheckbox:(unsigned int)checkbox;
- (void)callParameterChanged:(id)changed forParameterID:(unsigned int)d modifiedParameterIDs:(void *)ds changedParameters:(id)parameters supportsParametersChanged:(BOOL)parametersChanged;
- (void)clearImageList;
- (void)copyFolderRecursiveFrom:(void *)from To:(void *)to Skip:(int)skip;
- (void)copyValueGettersFrom:(id)from;
- (void)dealloc;
- (void)dumpAllChannels;
- (void)dumpChannelFolder:(void *)folder depth:(int)depth;
- (void)getColorInFxPlugColorSpace:(void *)space red:(float *)red green:(float *)green blue:(float *)blue alpha:(float *)alpha;
- (void)getFieldMode:(int *)mode fromFootage:(void *)footage;
- (void)getLayerOffsetX:(double *)x andOffsetY:(double *)y fromSceneNode:(void *)node withRenderParams:(const void *)params;
- (void)getPointChannel:(OZChannel *)channel nearestPoint:(PCVector2<double>)point atTime:(id *)time;
- (void)getScene;
- (void)getSceneNode;
- (void)markForDynamicParameterUsage;
- (void)movePublishOSCChannelToEnd;
- (void)onVTBUserInteractionEventNotification:(id)notification;
- (void)preGetCMTime:(id *)time forChannel:(OZChannelBase *)channel atFxTime:(id)fxTime;
- (void)reAddHiddenParameters;
- (void)removeHiddenParameters;
- (void)removeParameter:(unsigned int)parameter;
- (void)restoreParameterFlagsForChannel:(OZChannelBase *)channel;
- (void)saveParameterFlags;
- (void)sendNotifications:(id)notifications;
- (void)sendUpdateEvent;
- (void)setAgent:(void *)agent toScaleTo:(const void *)to;
- (void)setColorFromFxPlugColorSpace:(void *)space red:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setParameterFlags:(unsigned int)flags forChannel:(OZChannelBase *)channel;
- (void)setRenderParams:(const void *)params withLithiumInput:(void *)input withLithiumAgent:(void *)agent;
- (void)setupImageParamIDs:(void *)ds;
- (void)updateChannelMap;
- (void)updateInspector;
- (void)updateInspectorAndDeleteChannel:(id)channel;
- (void)updateKeyframeEditor;
@end

@implementation OZFxPlugParameterHandler

- (void)dumpAllChannels
{
  {
    PCMutex::PCMutex(&[OZFxPlugParameterHandler dumpAllChannels]::printLock);
    __cxa_atexit(PCMutex::~PCMutex, &[OZFxPlugParameterHandler dumpAllChannels]::printLock, &dword_25F8F0000);
  }

  PCMutex::lock(&[OZFxPlugParameterHandler dumpAllChannels]::printLock);
  LOBYTE(v3) = 1;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "\n----\n", 6);
  [(OZFxPlugParameterHandler *)self dumpChannelFolder:self->_baseChannel depth:0, &[OZFxPlugParameterHandler dumpAllChannels]::printLock, v3];
  PCMutex::unlock(&[OZFxPlugParameterHandler dumpAllChannels]::printLock);
}

- (void)dumpChannelFolder:(void *)folder depth:(int)depth
{
  if (depth >= 1)
  {
    v7 = MEMORY[0x277D82678];
    depthCopy = depth;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\t", 1);
      --depthCopy;
    }

    while (depthCopy);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Folder ", 7);
  CStr = PCString::createCStr(folder + 4);
  if (CStr)
  {
    v11 = CStr;
    v12 = strlen(CStr);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
    free(v11);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ":\n", 2);
  v13 = *(folder + 14);
  v15 = *v13;
  v14 = v13[1];
  if (*v13 != v14)
  {
    v16 = MEMORY[0x277D82678];
    do
    {
      v17 = *v15;
      if ((BYTE1((*v15)[7].var0) & 0x10) != 0)
      {
      }

      else
      {
        v18 = depth + 1;
        if ((depth & 0x80000000) == 0)
        {
          do
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\t", 1);
            --v18;
          }

          while (v18);
          v17 = *v15;
        }

        v19 = PCString::createCStr(v17 + 4);
        if (v19)
        {
          v20 = v19;
          v21 = strlen(v19);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v20, v21);
          free(v20);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
      }

      ++v15;
    }

    while (v15 != v14);
  }
}

- (OZFxPlugParameterHandler)initWithBaseChannel:(void *)channel andPluginLock:(shared_ptr<OZFxPlugSharedLock>)lock
{
  v6.receiver = self;
  v6.super_class = OZFxPlugParameterHandler;
  channelCopy = channel;
  v4 = [(OZFxPlugParameterHandler *)&v6 init];
  if (v4)
  {
    v4->_viewControllerGroup = 0;
    operator new();
  }

  return 0;
}

- (OZFxPlugParameterHandler)initWithBaseChannel:(void *)channel andCopy:(id)copy andPluginLock:(shared_ptr<OZFxPlugSharedLock>)lock
{
  v7.receiver = self;
  v7.super_class = OZFxPlugParameterHandler;
  channelCopy = channel;
  v5 = [(OZFxPlugParameterHandler *)&v7 init];
  if (v5)
  {
    v5->_viewControllerGroup = 0;
    operator new();
  }

  return 0;
}

- (OZFxPlugParameterHandler)initWithBaseChannel:(void *)channel andCopy:(id)copy Skip:(int)skip andPluginLock:(shared_ptr<OZFxPlugSharedLock>)lock
{
  v8.receiver = self;
  v8.super_class = OZFxPlugParameterHandler;
  channelCopy = channel;
  v6 = [(OZFxPlugParameterHandler *)&v8 init];
  if (v6)
  {
    v6->_viewControllerGroup = 0;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  channelMap = self->_channelMap;
  v4 = channelMap + 1;
  v5 = *channelMap;
  if (*channelMap != channelMap + 1)
  {
    while (1)
    {
      v6 = v5[5];
      if (!v6)
      {
        goto LABEL_5;
      }

      v7 = *v6;
      {
        break;
      }

LABEL_6:
      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
      if (v9 == v4)
      {
        channelMap = self->_channelMap;
        v5 = *channelMap;
        goto LABEL_13;
      }
    }

    (*(v7 + 8))(v6);
LABEL_5:
    v5[5] = 0;
    goto LABEL_6;
  }

LABEL_13:
  if (v5 != v4)
  {
    do
    {
      v11 = v5[5];
      if (v11)
      {
        (*(*v11 + 8))(v11);
        v5[5] = 0;
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v10 = *v13 == v5;
          v5 = v13;
        }

        while (!v10);
      }

      v5 = v13;
    }

    while (v13 != v4);
    channelMap = self->_channelMap;
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(channelMap, channelMap[1]);
  *channelMap = channelMap + 1;
  channelMap[2] = 0;
  channelMap[1] = 0;
  flagMap = self->_flagMap;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(flagMap, *(flagMap + 1));
  *flagMap = flagMap + 8;
  *(flagMap + 2) = 0;
  *(flagMap + 1) = 0;
  folderStack = self->_folderStack;
  if (folderStack)
  {
    v17 = std::deque<unsigned long>::~deque[abi:ne200100](folderStack);
    MEMORY[0x2666E9F00](v17, 0x1080C40BE8D5F09);
  }

  self->_folderStack = 0;
  v18 = self->_channelMap;
  if (v18)
  {
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(self->_channelMap, v18[1]);
    MEMORY[0x2666E9F00](v18, 0x1020C4062D53EE8);
  }

  self->_channelMap = 0;
  renderer = self->_renderer;
  if (renderer)
  {
    OZChannelBase::setRangeName(renderer, v15);
    MEMORY[0x2666E9F00]();
  }

  self->_renderer = 0;
  v20 = self->_flagMap;
  if (v20)
  {
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(self->_flagMap, v20[1]);
    MEMORY[0x2666E9F00](v20, 0x1020C4062D53EE8);
  }

  self->_flagMap = 0;
  v21.receiver = self;
  v21.super_class = OZFxPlugParameterHandler;
  [(OZFxPlugParameterHandler *)&v21 dealloc];
}

- (void)copyFolderRecursiveFrom:(void *)from To:(void *)to Skip:(int)skip
{
  if (from)
  {
    if (to)
    {
      v6 = *(from + 14);
      if (v6)
      {
        v7 = *v6;
        v8 = *(*(from + 14) + 8);
        for (i = (skip <= 0 ? v7 : v7 + 8 * (skip - 1) + 8); i != v8; ++i)
        {
          v11 = (*(**i + 248))(*i, a2);
          OZChannelFolder::push_back(to, v11);
          channelMap = self->_channelMap;
          LODWORD(v31) = *(*i + 6);
          v35[0] = &v31;
          std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(channelMap, &v31, &std::piecewise_construct, v35)[5] = v11;
          if (v11)
          {
            if (v36)
            {
              getScene = [(OZFxPlugParameterHandler *)self getScene];
              cntrl = self->_fxPlugLock.__cntrl_;
              ptr = self->_fxPlugLock.__ptr_;
              v34 = cntrl;
              if (cntrl)
              {
                atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
              }

              OZFxPlugLockSentinel::OZFxPlugLockSentinel(v35, &ptr);
              if (v34)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v34);
              }

              v15 = *v35[0];
              v31 = 0;
              v32 = 0;
              LODWORD(v31) = *(v36 + 6);
              HIDWORD(v31) = (*(*v15 + 40))(v15);
              v32 = getScene;
              v16 = [MEMORY[0x277CBEA90] dataWithBytes:&v31 length:16];
              OZChannelBlindData::setInterpolateContext(v36, v16);
              std::vector<TXTabStop *>::push_back[abi:ne200100](&self->_customParameterList, &v36);
              *(v36 + 384) = v17[384];
              OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v35);
            }

            if (v18)
            {
              v19 = v18;
              v20 = self->_fxPlugLock.__cntrl_;
              v29 = self->_fxPlugLock.__ptr_;
              v30 = v20;
              if (v20)
              {
                atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
              }

              OZFxPlugLockSentinel::OZFxPlugLockSentinel(v35, &v29);
              if (v30)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v30);
              }

              v21 = *v35[0];
              PCString::PCString(&v28, &v19->var20);
              v22.var0 = &v28;
              OZChannelButton::setCallbackSelectorAsString(v19, v22, *(v21 + 24));
              PCString::~PCString(&v28);
              OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v35);
            }
          }

          else
          {
            v36 = 0;
          }

          v23 = *i;
          if (*i)
          {
            if (v24)
            {
              if (!v25 && !v26)
              {
                if (v11)
                {
                }

                else
                {
                  v27 = 0;
                }

                [(OZFxPlugParameterHandler *)self copyFolderRecursiveFrom:v24 To:v27];
              }
            }
          }
        }
      }
    }
  }
}

- (void)copyValueGettersFrom:(id)from
{
  v3 = *(from + 4);
  v4 = from + 40;
  if (v3 != from + 40)
  {
    do
    {
      v11 = v3 + 32;
      v6 = std::__tree<std::__value_type<unsigned int,ParameterTransactionHelpers>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ParameterTransactionHelpers>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ParameterTransactionHelpers>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&self->_paramCreationMap, v3 + 8, &std::piecewise_construct, &v11);
      v7 = *(v3 + 40);
      v6[7] = *(v3 + 7);
      *(v6 + 5) = v7;
      v8 = *(v3 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v3 + 2);
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != v4);
  }
}

- (void)clearImageList
{
  ImageList = OZFxPlugRenderContextManager::getImageList(&self->_threadContextManager);

  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::clear[abi:ne200100](ImageList);
}

- (void)getScene
{
  v2 = atomic_load(&self->_pluginRemoved);
  if (v2)
  {
    return 0;
  }

  baseChannel = self->_baseChannel;
  if (!baseChannel)
  {
    return 0;
  }

  ObjectManipulator = OZChannelBase::getObjectManipulator(baseChannel);
  if (!ObjectManipulator)
  {
    return 0;
  }

  v5 = *(*ObjectManipulator + 264);

  return v5();
}

- (void)getSceneNode
{
  baseChannel = self->_baseChannel;
  if (!baseChannel)
  {
    return 0;
  }

  ObjectManipulator = OZChannelBase::getObjectManipulator(baseChannel);
  if (!ObjectManipulator)
  {
    return 0;
  }

  v4 = *(*ObjectManipulator + 232);

  return v4();
}

- (id)motionEffectForLockedSharedBase:(void *)base
{
  if (base && (v3 = atomic_load(&self->_pluginRemoved), (v3 & 1) == 0))
  {
    return TXParagraphStyleFolder_Factory::createInstance(base, a2);
  }

  else
  {
    return 0;
  }
}

- (PCNSRef<FFMotionEffect)motionEffectRef
{
  v4 = v2;
  *v2 = 0;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v9 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v10, &ptr);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*v10[0])
  {
    PCMakeNSRefAndRetain<EAGLContext *>([(OZFxPlugParameterHandler *)self motionEffectForLockedSharedBase:?], &v7);
    ProCore_Impl::PCNSRefImpl::operator=(v4, &v7);
    ProCore_Impl::PCNSRefImpl::release(&v7);
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v10);
  return v6;
}

- (void)sendUpdateEvent
{
  getScene = [(OZFxPlugParameterHandler *)self getScene];
  if (getScene)
  {
    v3 = getScene[198];

    OZDocument::postNotification(v3, 2);
  }
}

- (void)callParameterChanged:(id)changed forParameterID:(unsigned int)d modifiedParameterIDs:(void *)ds changedParameters:(id)parameters supportsParametersChanged:(BOOL)parametersChanged
{
  parametersChangedCopy = parametersChanged;
  v10 = *&d;
  dCopy = d;
  v13 = *ds;
  v14 = *(ds + 1);
  if (*ds != v14)
  {
    while (*v13 != d)
    {
      if (++v13 == v14)
      {
        goto LABEL_6;
      }
    }
  }

  if (v13 == v14)
  {
LABEL_6:
    v15 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    if (([v15 isEqualToString:@"com.apple.FinalCut"] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"com.apple.iMovieApp"))
    {
      cntrl = self->_fxPlugLock.__cntrl_;
      ptr = self->_fxPlugLock.__ptr_;
      v18 = cntrl;
      if (cntrl)
      {
        atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
      }

      OZFxPlugLockSentinel::OZFxPlugLockSentinel(&v19, &ptr);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      OZFxPlugRenderContextManager::pushContext([*(*v19 + 40) contextManager], 1);
    }

    if (parametersChangedCopy)
    {
      [parameters addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", v10)}];
    }

    else
    {
      [changed parameterChanged:v10];
    }

    std::vector<int>::push_back[abi:ne200100](ds, &dCopy);
  }
}

- (BOOL)folderWasModified:(void *)modified inDocument:(void *)document parameterID:(unsigned int)d modifiedParamID:(void *)iD supportsParametersChanged:(BOOL)changed paramsChangedArray:(id)array target:(id)target
{
  dCopy = d;
  v9 = *(modified + 14);
  v10 = *v9;
  if (*v9 == *(v9 + 8))
  {
    LOBYTE(v16) = 0;
    return v16 & 1;
  }

  changedCopy = changed;
  v16 = 0;
  while (1)
  {
    v17 = *v10;
    v18 = *(document + 21);
    if (v18)
    {
      break;
    }

LABEL_6:
    if (v17)
    {
    }

    else
    {
      v19 = 0;
    }

    if (folderIsParameterType(v19))
    {
      v16 |= [(OZFxPlugParameterHandler *)self folderWasModified:v19 inDocument:document parameterID:dCopy modifiedParamID:iD supportsParametersChanged:changedCopy paramsChangedArray:array target:target];
    }

    if (++v10 == *(v9 + 8))
    {
      return v16 & 1;
    }
  }

  if (!OZNotificationManager::wasChannelModified(v18, v17))
  {
    v17 = *v10;
    goto LABEL_6;
  }

  v20 = *iD;
  v21 = *(iD + 1);
  if (*iD != v21)
  {
    while (*v20 != dCopy)
    {
      if (++v20 == v21)
      {
        goto LABEL_19;
      }
    }
  }

  if (v20 == v21)
  {
LABEL_19:
    if (changedCopy)
    {
      [array addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", dCopy)}];
    }

    else
    {
      [target parameterChanged:dCopy];
    }

    std::vector<int>::push_back[abi:ne200100](iD, &dCopy);
  }

  LOBYTE(v16) = 1;
  return v16 & 1;
}

- (void)sendNotifications:(id)notifications
{
  if (!self->_sendingNotifications)
  {
    self->_sendingNotifications = 1;
    getScene = [(OZFxPlugParameterHandler *)self getScene];
    if (getScene)
    {
      v6 = getScene[198];
      if (v6)
      {
        if (objc_opt_respondsToSelector())
        {
          channelMap = self->_channelMap;
          *(v6 + 101) = 1;
          __p = 0;
          v22 = 0;
          v23 = 0;
          array = [MEMORY[0x277CBEB18] array];
          cntrl = self->_fxPlugLock.__cntrl_;
          ptr = self->_fxPlugLock.__ptr_;
          v19 = cntrl;
          if (cntrl)
          {
            atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
          }

          OZFxPlugLockSentinel::OZFxPlugLockSentinel(v20, &ptr);
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          if (!*v20[0])
          {
            v11 = 0;
LABEL_13:
            self->_sendingNotifications = 0;
            *(v6 + 101) = 0;
            OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v20);
            if (v11)
            {
              operator delete(v11);
            }

            return;
          }

          v10 = atomic_load(&self->_pluginRemoved);
          if (v10)
          {
            v11 = __p;
            goto LABEL_13;
          }

          OZFxPlugSharedBase::restartPluginXPCIfNecessary(*v20[0]);
          OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v20);
          v12 = *self->_channelMap;
          if (v12 != channelMap + 8)
          {
            do
            {
              v13 = *(v12 + 5);
              v14 = *(v6 + 168);
              if (v14 && OZNotificationManager::wasChannelModified(v14, *(v12 + 5)))
              {
                [(OZFxPlugParameterHandler *)self callParameterChanged:notifications forParameterID:*(v12 + 8) modifiedParameterIDs:&__p changedParameters:array supportsParametersChanged:0];
              }

              else
              {
                if (v13)
                {
                }

                if (folderIsParameterType(v13))
                {
                  [(OZFxPlugParameterHandler *)self folderWasModified:v13 inDocument:v6 parameterID:*(v12 + 8) modifiedParamID:&__p supportsParametersChanged:0 paramsChangedArray:array target:notifications, ptr];
                }
              }

              v15 = *(v12 + 1);
              if (v15)
              {
                do
                {
                  v16 = v15;
                  v15 = *v15;
                }

                while (v15);
              }

              else
              {
                do
                {
                  v16 = *(v12 + 2);
                  v17 = *v16 == v12;
                  v12 = v16;
                }

                while (!v17);
              }

              v12 = v16;
            }

            while (v16 != channelMap + 8);
          }

          *(v6 + 101) = 0;
          if (__p)
          {
            v22 = __p;
            operator delete(__p);
          }
        }
      }
    }

    self->_sendingNotifications = 0;
  }
}

- (void)updateChannelMap
{
  channelMap = self->_channelMap;
  v4 = (channelMap + 1);
  for (i = *channelMap; i != (channelMap + 1); v4 = (channelMap + 1))
  {
    v6 = i[5];
    v7 = *(v6 + 24);
    v19 = v7;
    v8 = channelMap[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = v4;
    do
    {
      v10 = *(v8 + 8);
      v11 = v10 >= v7;
      v12 = v10 < v7;
      if (v11)
      {
        v9 = v8;
      }

      v8 = v8[v12];
    }

    while (v8);
    if (v9 != v4 && v7 >= *(v9 + 8))
    {
      v17 = i[1];
      if (v17)
      {
        do
        {
          i = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = i;
          i = i[2];
        }

        while (*i != v18);
      }
    }

    else
    {
LABEL_10:
      v13 = i[1];
      v14 = i;
      if (v13)
      {
        do
        {
          v15 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v15 = v14[2];
          v16 = *v15 == v14;
          v14 = v15;
        }

        while (!v16);
      }

      v20 = &v19;
      std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(channelMap, &v19, &std::piecewise_construct, &v20)[5] = v6;
      std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(self->_channelMap, i);
      operator delete(i);
      channelMap = self->_channelMap;
      i = v15;
    }
  }
}

- (vector<unsigned)imageParamIDs
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  begin = self[1].__begin_;
  v5 = *begin;
  if (*begin != begin + 2)
  {
    selfCopy = self;
    do
    {
      self = *(v5 + 5);
      if (self)
      {
        if (self)
        {
          self = OZChanSceneNodeRef::getNode(self);
          if (self)
          {
            std::vector<int>::push_back[abi:ne200100](&retstr->__begin_, v5 + 8);
          }
        }
      }

      v7 = *(v5 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v5 + 2);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != selfCopy[1].__begin_ + 2);
  }

  return self;
}

- (unsigned)paramIDForImageWellWithSceneNode:(unsigned int)node
{
  if (self)
  {
    objc_msgSend_imageParamIDs(self, a2);
    v5 = __p;
    v6 = v15;
    if (__p == v15)
    {
LABEL_8:
      v11 = 0;
    }

    else
    {
      while (1)
      {
        v13 = *v5;
        channelMap = self->_channelMap;
        v17 = &v13;
        v8 = std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(channelMap, &v13, &std::piecewise_construct, &v17)[5];
        if (v8)
        {
          if (v9)
          {
            Node = OZChanSceneNodeRef::getNode(v9);
            if (Node)
            {
              if (Node[20] == node)
              {
                break;
              }
            }
          }
        }

        if (++v5 == v6)
        {
          goto LABEL_8;
        }
      }

      v11 = v13;
    }

    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = 0;
    __p = 0;
    v15 = 0;
    v16 = 0;
  }

  return v11;
}

- (BOOL)containsParameterWithID:(unsigned int)d
{
  channelMap = self->_channelMap;
  v6 = channelMap[1];
  v4 = (channelMap + 1);
  v5 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 8);
    v9 = v8 >= d;
    v10 = v8 < d;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * v10];
  }

  while (v5);
  if (v7 == v4 || *(v7 + 8) > d)
  {
LABEL_9:
    v7 = v4;
  }

  return v7 != v4;
}

- (void)saveParameterFlags
{
  channelMap = self->_channelMap;
  v3 = *channelMap;
  if (*channelMap != channelMap + 1)
  {
    do
    {
      v5 = v3[5];
      v11 = *(v5 + 24);
      v6 = *(v5 + 56);
      flagMap = self->_flagMap;
      v12 = &v11;
      std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(flagMap, &v11, &std::piecewise_construct, &v12)[5] = v6;
      v8 = v3[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v3[2];
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != self->_channelMap + 1);
  }
}

- (void)restoreParameterFlagsForChannel:(OZChannelBase *)channel
{
  channelMap = self->_channelMap;
  v6 = channelMap[1];
  v4 = (channelMap + 1);
  v5 = v6;
  if (v6)
  {
    var3 = channel->var3;
    v8 = v4;
    do
    {
      v9 = *(v5 + 8);
      v10 = v9 >= var3;
      v11 = v9 < var3;
      if (v10)
      {
        v8 = v5;
      }

      v5 = *&v5[8 * v11];
    }

    while (v5);
    if (v8 != v4 && var3 >= *(v8 + 8) && *(v8 + 5) == channel)
    {
      flagMap = self->_flagMap;
      v15 = flagMap[1];
      v13 = (flagMap + 1);
      v14 = v15;
      if (v15)
      {
        v16 = v13;
        do
        {
          v17 = *(v14 + 8);
          v10 = v17 >= var3;
          v18 = v17 < var3;
          if (v10)
          {
            v16 = v14;
          }

          v14 = *&v14[8 * v18];
        }

        while (v14);
        if (v16 != v13 && var3 >= *(v16 + 8))
        {
          OZChannelBase::setFlags(channel, channel->var7 & 0xFFFFFFFFFFBEFFC3 | *(v16 + 5) & 0x41003CLL);
        }
      }
    }
  }
}

- (OZChannelBase)channelWithID:(int)d
{
  channelMap = self->_channelMap;
  v6 = channelMap[1];
  v4 = (channelMap + 1);
  v5 = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 8);
    v9 = v8 >= d;
    v10 = v8 < d;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * v10];
  }

  while (v5);
  if (v7 != v4 && *(v7 + 8) <= d)
  {
    return *(v7 + 5);
  }

  else
  {
    return 0;
  }
}

- (unsigned)parameterCount
{
  channelMap = self->_channelMap;
  result = *(channelMap + 4);
  v4 = channelMap + 8;
  v5 = *channelMap;
  if (v4 != v5)
  {
    do
    {
      v6 = *v4;
      v7 = *v4;
      v8 = v4;
      if (*v4)
      {
        do
        {
          v9 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v9 = v8[2];
          v10 = *v9 == v8;
          v8 = v9;
        }

        while (v10);
      }

      v11 = *(v9[5] + 24) >> 4 > 0x270u;
      if (v6)
      {
        do
        {
          v12 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v12 = v4[2];
          v10 = *v12 == v4;
          v4 = v12;
        }

        while (v10);
      }

      result -= v11;
      v4 = v12;
    }

    while (v12 != v5);
  }

  return result;
}

- (OZChannelBase)parameterAtIndex:(unsigned int)index
{
  v3 = 0;
  v4 = *self->_channelMap;
  while (v3 != index)
  {
    v5 = v4[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v4[2];
        v7 = *v6 == v4;
        v4 = v6;
      }

      while (!v7);
    }

    ++v3;
    v4 = v6;
    if (v3 > index)
    {
      return 0;
    }
  }

  return v4[5];
}

- (void)removeParameter:(unsigned int)parameter
{
    ;
  }

  memset(__p, 0, sizeof(__p));
  std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(__p, 1uLL);
}

- (void)updateInspectorAndDeleteChannel:(id)channel
{
  v6 = 0;
  [channel getValue:&v6];
  if (v6)
  {
    (*(*v6 + 8))(v6);
    v6 = 0;
  }

  getScene = [(OZFxPlugParameterHandler *)self getScene];
  if (getScene)
  {
    v5 = getScene[198];
    if (v5)
    {
      OZDocument::postNotification(v5, 134742016);
    }
  }
}

- (void)updateInspector
{
  getScene = [(OZFxPlugParameterHandler *)self getScene];
  if (getScene)
  {
    v3 = getScene[198];
    if (v3)
    {

      OZDocument::postNotification(v3, 134742016);
    }
  }
}

- (void)updateKeyframeEditor
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __48__OZFxPlugParameterHandler_updateKeyframeEditor__block_invoke;
  block[3] = &unk_279AA8060;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__OZFxPlugParameterHandler_updateKeyframeEditor__block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_motionEffectRef(v3, a2);
    if (v6)
    {
      goto LABEL_8;
    }

    v3 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  v4 = [v3 getScene];
  if (v4)
  {
    v5 = *(v4 + 1584);
    if (v5)
    {
      OZDocument::postNotification(v5, 137216);
    }
  }

LABEL_8:
  ProCore_Impl::PCNSRefImpl::release(&v6);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertToFigTime:(SEL)time meOffset:(double)offset motionEffect:(double)effect
{
  v8 = offset + effect;
  getScene = [(OZFxPlugParameterHandler *)self getScene];

  return FramesToFigTime(getScene, a6, retstr, v8);
}

- ($43B88956A48E07FA4329DDDD387A1517)figTimeToFxTime:(id *)time withConversionData:(void *)data
{
  timeCopy = 0;
  if (self)
  {
    objc_msgSend_motionEffectRef(self, a2, time, data);
  }

  else
  {
    v14 = 0;
  }

  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v12 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v13, &ptr);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*v13[0] && (v7 = atomic_load(&self->_pluginRemoved), (v7 & 1) == 0))
  {
    v9 = (*(**v13[0] + 160))(*v13[0]);
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v13);
    if (v9)
    {
      timeCopy = time;
    }

    else
    {
      [(OZFxPlugParameterHandler *)self convertFromFigTime:time meOffset:v14 motionEffect:0.0, ptr];
      timeCopy = v10;
    }
  }

  else
  {
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v13);
  }

  ProCore_Impl::PCNSRefImpl::release(&v14);
  return timeCopy;
}

- ($43B88956A48E07FA4329DDDD387A1517)figDurationToFxDuration:(id *)duration withConversionData:(void *)data
{
  v5.var0 = COERCE_DOUBLE([(OZFxPlugParameterHandler *)self figTimeToFxTime:duration withConversionData:data]);
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v10 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v11, &ptr);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (*v11[0])
  {
    v7 = atomic_load(&self->_pluginRemoved);
    if ((v7 & 1) == 0)
    {
      v5.var0 = TXTextLayout::getLineShift(*v11[0]) + v5.var0;
    }
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v11);
  return v5.var1;
}

- (BOOL)usesRationalTime
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v8 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v9, &ptr);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*v9[0] && (v4 = atomic_load(&self->_pluginRemoved), (v4 & 1) == 0))
  {
    v5 = (*(**v9[0] + 160))(*v9[0]);
  }

  else
  {
    v5 = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v9);
  return v5;
}

- (void)markForDynamicParameterUsage
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v6 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v7, &ptr);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*v7[0])
  {
    v4 = atomic_load(&self->_pluginRemoved);
    if ((v4 & 1) == 0)
    {
      (*(**v7[0] + 200))(*v7[0], 1);
    }
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v7);
}

- (void)addExistingChannel:(OZChannelBase *)channel
{
  folderStack = self->_folderStack;
  v6 = folderStack[5] + folderStack[4] - 1;
  v7 = *(*(folderStack[1] + ((v6 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v6 & 0x1FF));
  OZChannelBase::registerParent(channel, v7);
  OZChannelFolder::push_back(v7, channel);
  channelMap = self->_channelMap;
  var3 = channel->var3;
  p_var3 = &var3;
  std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(channelMap, &var3, &std::piecewise_construct, &p_var3)[5] = channel;
  [(OZFxPlugParameterHandler *)self addParamMappingForParameterChannel:channel];
}

- (void)addExistingGroup:(void *)group
{
  groupCopy = group;
  [(OZFxPlugParameterHandler *)self addExistingChannel:?];
  std::deque<OZChannelFolder *>::push_back(self->_folderStack, &groupCopy);
}

- (id)displayName
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v8 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v9, &ptr);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*v9[0] && (v4 = atomic_load(&self->_pluginRemoved), (v4 & 1) == 0))
  {
    displayName = [*(*v9[0] + 16) displayName];
  }

  else
  {
    displayName = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v9);
  return displayName;
}

- (void)addMixSlider:(unsigned int)slider withChannel:(OZChannelPercent *)channel
{
  sliderCopy = slider;
  OZChannelBase::resetFlag(channel, 16, 0);
  OZChannelBase::setFlag(channel, 0x100000000, 0);
  channelMap = self->_channelMap;
  v8 = &sliderCopy;
  std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(channelMap, &sliderCopy, &std::piecewise_construct, &v8)[5] = channel;
}

- (OZChannelPercent)mixChannel
{
  channelMap = self->_channelMap;
  v5 = channelMap[1];
  v3 = (channelMap + 1);
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 8);
    v8 = v7 >= 0x2711;
    v9 = v7 < 0x2711;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != v3 && *(v6 + 8) <= 0x2711u && (v10 = *(v6 + 5)) != 0)
  {
  }

  else
  {
    return 0;
  }
}

- (double)mixAmountAtTime:(id)time
{
  v7 = 1.0;
  mixChannel = [(OZFxPlugParameterHandler *)self mixChannel];
  if (!mixChannel)
  {
    return 1.0;
  }

  [(OZFxPlugParameterHandler *)self _getFloatValue:&v7 fromParm:mixChannel->var3 atTime:time.var1];
  return v7;
}

- (void)addFlipCheckbox:(unsigned int)checkbox withChannel:(OZChannelBool *)channel
{
  checkboxCopy = checkbox;
  OZChannelBase::setFlag(channel, 4259872, 0);
  OZChannelBase::resetFlag(channel, 16, 0);
  OZChannelBase::setFlag(channel, 0x100000000, 0);
  channelMap = self->_channelMap;
  v8 = &checkboxCopy;
  std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(channelMap, &checkboxCopy, &std::piecewise_construct, &v8)[5] = channel;
}

- (OZChannelBool)flipChannel
{
  channelMap = self->_channelMap;
  v5 = channelMap[1];
  v3 = (channelMap + 1);
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 8);
    v8 = v7 >= 0x2712;
    v9 = v7 < 0x2712;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != v3 && *(v6 + 8) <= 0x2712u && (v10 = *(v6 + 5)) != 0)
  {
  }

  else
  {
    return 0;
  }
}

- (BOOL)shouldFlipPoints
{
  flipChannel = [(OZFxPlugParameterHandler *)self flipChannel];
  if (flipChannel)
  {
    LOBYTE(flipChannel) = OZChannel::getValueAsInt(flipChannel, MEMORY[0x277CC08F0], 0.0) == 1;
  }

  return flipChannel;
}

- (void)addInputPointsCheckbox:(unsigned int)checkbox withChannel:(OZChannelBool *)channel
{
  checkboxCopy = checkbox;
  OZChannelBase::setFlag(channel, 4259872, 0);
  OZChannelBase::resetFlag(channel, 16, 0);
  OZChannelBase::setFlag(channel, 0x100000000, 0);
  channelMap = self->_channelMap;
  v8 = &checkboxCopy;
  std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(channelMap, &checkboxCopy, &std::piecewise_construct, &v8)[5] = channel;
}

- (BOOL)useInputPoints
{
  inputPointsChannel = [(OZFxPlugParameterHandler *)self inputPointsChannel];
  if (inputPointsChannel)
  {
    LOBYTE(inputPointsChannel) = OZChannel::getValueAsInt(inputPointsChannel, MEMORY[0x277CC08F0], 0.0) == 1;
  }

  return inputPointsChannel;
}

- (OZChannelBool)inputPointsChannel
{
  channelMap = self->_channelMap;
  v5 = channelMap[1];
  v3 = (channelMap + 1);
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 8);
    v8 = v7 >= 0x2713;
    v9 = v7 < 0x2713;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != v3 && *(v6 + 8) >> 2 <= 0x9C4u && (v10 = *(v6 + 5)) != 0)
  {
  }

  else
  {
    return 0;
  }
}

- (BOOL)useAbsolutePoints
{
  absolutePointsChannel = [(OZFxPlugParameterHandler *)self absolutePointsChannel];
  if (absolutePointsChannel)
  {
    LOBYTE(absolutePointsChannel) = OZChannel::getValueAsInt(absolutePointsChannel, MEMORY[0x277CC08F0], 0.0) == 1;
  }

  return absolutePointsChannel;
}

- (OZChannelBool)absolutePointsChannel
{
  channelMap = self->_channelMap;
  v5 = channelMap[1];
  v3 = (channelMap + 1);
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 8) >> 2 < 0x9C5u)
    {
      v7 = 1;
    }

    else
    {
      v6 = v4;
      v7 = 0;
    }

    v4 = *&v4[8 * v7];
  }

  while (v4);
  if (v6 != v3 && *(v6 + 8) <= 0x2714u && (v8 = *(v6 + 5)) != 0)
  {
  }

  else
  {
    return 0;
  }
}

- (void)addPublishOSCCheckbox:(unsigned int)checkbox
{
  if (![(OZFxPlugParameterHandler *)self publishOSCChannel])
  {
    operator new();
  }
}

- (OZChannelBool)publishOSCChannel
{
  channelMap = self->_channelMap;
  v5 = channelMap[1];
  v3 = (channelMap + 1);
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 8);
    v8 = v7 >= 0x2715;
    v9 = v7 < 0x2715;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != v3 && *(v6 + 8) <= 0x2715u && (v10 = *(v6 + 5)) != 0)
  {
  }

  else
  {
    return 0;
  }
}

- (void)removeHiddenParameters
{
  folderStack = self->_folderStack;
  v4 = folderStack[5] + folderStack[4] - 1;
  v5 = *(*(folderStack[1] + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF));
  OZChannelFolder::removeDescendant(v5, [(OZFxPlugParameterHandler *)self mixChannel]);
  OZChannelFolder::removeDescendant(v5, [(OZFxPlugParameterHandler *)self flipChannel]);
  OZChannelFolder::removeDescendant(v5, [(OZFxPlugParameterHandler *)self inputPointsChannel]);
  absolutePointsChannel = [(OZFxPlugParameterHandler *)self absolutePointsChannel];
  if (absolutePointsChannel)
  {
    OZChannelFolder::removeDescendant(v5, absolutePointsChannel);
  }

  publishOSCChannel = [(OZFxPlugParameterHandler *)self publishOSCChannel];
  if (publishOSCChannel)
  {

    OZChannelFolder::removeDescendant(v5, publishOSCChannel);
  }
}

- (void)reAddHiddenParameters
{
  folderStack = self->_folderStack;
  v4 = folderStack[5] + folderStack[4] - 1;
  v5 = *(*(folderStack[1] + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF));
  OZChannelFolder::push_back(v5, [(OZFxPlugParameterHandler *)self mixChannel]);
  OZChannelFolder::push_back(v5, [(OZFxPlugParameterHandler *)self flipChannel]);
  OZChannelFolder::push_back(v5, [(OZFxPlugParameterHandler *)self inputPointsChannel]);
  absolutePointsChannel = [(OZFxPlugParameterHandler *)self absolutePointsChannel];
  if (absolutePointsChannel)
  {
    OZChannelFolder::push_back(v5, absolutePointsChannel);
  }

  publishOSCChannel = [(OZFxPlugParameterHandler *)self publishOSCChannel];
  if (publishOSCChannel)
  {
    OZChannelFolder::push_back(v5, publishOSCChannel);
  }

  [(OZFxPlugParameterHandler *)self updateInspector];
}

- (void)movePublishOSCChannelToEnd
{
  publishOSCChannel = [(OZFxPlugParameterHandler *)self publishOSCChannel];
  if (publishOSCChannel)
  {
    v4 = publishOSCChannel;
    folderStack = self->_folderStack;
    v6 = folderStack[5] + folderStack[4] - 1;
    v7 = *(*(folderStack[1] + ((v6 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v6 & 0x1FF));
    OZChannelFolder::removeDescendant(v7, publishOSCChannel);
    OZChannelFolder::push_back(v7, v4);

    [(OZFxPlugParameterHandler *)self updateInspector];
  }
}

- (void)setParameterFlags:(unsigned int)flags forChannel:(OZChannelBase *)channel
{
  if (flags)
  {
    (*(channel->var0 + 63))(channel, 0, 0);
    if ((flags & 2) == 0)
    {
LABEL_3:
      if ((flags & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((flags & 2) == 0)
  {
    goto LABEL_3;
  }

  OZChannelBase::setFlag(channel, 4259872, 0);
  if ((flags & 4) == 0)
  {
LABEL_4:
    if ((flags & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  OZChannelBase::setFlag(channel, 4, 0);
  if ((flags & 0x10) == 0)
  {
LABEL_5:
    if ((flags & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  OZChannelBase::setFlag(channel, 8, 0);
  OZChannelBase::resetFlag(channel, 0x100000000, 0);
  if ((flags & 0x20) == 0)
  {
LABEL_6:
    if ((flags & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  OZChannelBase::resetFlag(channel, 16, 0);
  if ((flags & 0x200) == 0)
  {
LABEL_7:
    if ((flags & 0x20000) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    OZChannelBase::setFlag(channel, 0x400000, 0);
    if ((flags & 0x40) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_15:
  OZChannelBase::setFlag(channel, 0x10000, 0);
  if ((flags & 0x20000) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((flags & 0x40) == 0)
  {
    return;
  }

LABEL_17:

  OZChannelBase::setFlag(channel, 0x1000000000, 0);
}

- (BOOL)addFloatSliderWithName:(id)name parmId:(unsigned int)id defaultValue:(double)value parameterMin:(double)min parameterMax:(double)max sliderMin:(double)sliderMin sliderMax:(double)sliderMax delta:(double)self0 parmFlags:(unsigned int)self1
{
  LODWORD(v12) = id;
  if ([(OZFxPlugParameterHandler *)self _floatParameter:*&id hasValidMin:*&flags max:min sliderMin:max sliderMax:sliderMin defaultValue:sliderMax paramFlags:value, v12])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addPercentSliderWithName:(id)name parmId:(unsigned int)id defaultValue:(double)value parameterMin:(double)min parameterMax:(double)max sliderMin:(double)sliderMin sliderMax:(double)sliderMax delta:(double)self0 parmFlags:(unsigned int)self1
{
  LODWORD(v12) = id;
  if ([(OZFxPlugParameterHandler *)self _floatParameter:*&id hasValidMin:*&flags max:min sliderMin:max sliderMax:sliderMin defaultValue:sliderMax paramFlags:value, v12])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addIntSliderWithName:(id)name parmId:(unsigned int)id defaultValue:(int)value parameterMin:(int)min parameterMax:(int)max sliderMin:(int)sliderMin sliderMax:(int)sliderMax delta:(int)self0 parmFlags:(unsigned int)self1
{
  LODWORD(v13) = flags;
  v11 = [(OZFxPlugParameterHandler *)self _intParameter:*&id hasValidMin:*&min max:*&max sliderMin:*&sliderMin sliderMax:sliderMax defaultValue:*&value paramFlags:v13];
  if (v11)
  {
    operator new();
  }

  return v11;
}

- (BOOL)addToggleButtonWithName:(id)name parmId:(unsigned int)id defaultValue:(BOOL)value parmFlags:(unsigned int)flags
{
  v6 = *&flags;
  v7 = *&id;
  LODWORD(v12) = id;
  v9 = [(OZFxPlugParameterHandler *)self hasValidParameterID:*&id checkMix:1 checkSpecialCheckboxIDs:0, v12];
  v10 = v9 & [(OZFxPlugParameterHandler *)self parameter:v7 hasValidFlags:v6];
  if (v10)
  {
    operator new();
  }

  return v10;
}

- (BOOL)addAngleSliderWithName:(id)name parmId:(unsigned int)id defaultValue:(double)value parameterMin:(double)min parameterMax:(double)max parmFlags:(unsigned int)flags
{
  LODWORD(v9) = id;
  if ([(OZFxPlugParameterHandler *)self _floatParameter:*&id hasValidMin:*&flags max:min sliderMin:max sliderMax:min defaultValue:max paramFlags:value * 3.14159265 / 180.0, v9])
  {
    operator new();
  }

  return 0;
}

- (OZFxPlugColorTransformInfo)getColorTransformInfo
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v20 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v21, &ptr);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v6 = *v21[0];
  if (*v21[0] && (v7 = atomic_load(&self->_pluginRemoved), (v7 & 1) == 0) && (*(*v6 + 24))(*v21[0]))
  {
    OZFxRenderContextAgentSentry::OZFxRenderContextAgentSentry(v18, &self->_threadContextManager);
    Agent = OZFxRenderContextAgentSentry::getAgent(v18, v6);
    v11 = Agent;
    if (Agent)
    {
      RequestedColorDescription = LiAgent::getRequestedColorDescription(Agent);
      v13 = *RequestedColorDescription;
      retstr->var0._pcColorDesc._colorSpaceRef._obj = *RequestedColorDescription;
      if (v13)
      {
        PCCFRefTraits<CGColorSpace *>::retain(v13);
      }

      v14 = *(RequestedColorDescription + 8);
      retstr->var0._pcColorDesc._toneMapMethod._gain = *(RequestedColorDescription + 16);
      *&retstr->var0._pcColorDesc._dynamicRange = v14;
      retstr->var0._isPremultiplied = *(RequestedColorDescription + 24);
      OZFxPlugSharedBase::getPluginColorDescription(&retstr->var1, v6, v11);
    }

    else
    {
      *&retstr->var1._pcColorDesc._colorSpaceRef._obj = 0u;
      *&retstr->var1._pcColorDesc._toneMapMethod._gain = 0u;
      *&retstr->var0._pcColorDesc._colorSpaceRef._obj = 0u;
      *&retstr->var0._pcColorDesc._toneMapMethod._gain = 0u;
      v15 = PCGetNCLCColorSpace(kPCNCLC_Rec709Linear);
      FxColorDescription::FxColorDescription(retstr, v15, 0, &kPCNoToneMapMethod, 1);
      v16 = PCGetNCLCColorSpace(kPCNCLC_Rec709Linear);
      FxColorDescription::FxColorDescription(&retstr->var1, v16, 0, &kPCNoToneMapMethod, 1);
    }

    OZFxRenderContextAgentSentry::~OZFxRenderContextAgentSentry(v18);
  }

  else
  {
    *&retstr->var1._pcColorDesc._colorSpaceRef._obj = 0u;
    *&retstr->var1._pcColorDesc._toneMapMethod._gain = 0u;
    *&retstr->var0._pcColorDesc._colorSpaceRef._obj = 0u;
    *&retstr->var0._pcColorDesc._toneMapMethod._gain = 0u;
    v8 = PCGetNCLCColorSpace(kPCNCLC_Rec709Linear);
    FxColorDescription::FxColorDescription(retstr, v8, 0, &kPCNoToneMapMethod, 1);
    v9 = PCGetNCLCColorSpace(kPCNCLC_Rec709Linear);
    FxColorDescription::FxColorDescription(&retstr->var1, v9, 0, &kPCNoToneMapMethod, 1);
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v21);
  return result;
}

- (void)getColorInFxPlugColorSpace:(void *)space red:(float *)red green:(float *)green blue:(float *)blue alpha:(float *)alpha
{
  if (self)
  {
    objc_msgSend_getColorTransformInfo(self, a2);
  }

  else
  {
    memset(&v23, 0, sizeof(v23));
    memset(&v22, 0, sizeof(v22));
  }

  CGColorSpace = FxColorDescription::getCGColorSpace(&v23);
  DynamicRange = FxColorDescription::getDynamicRange(&v23);
  if (FxColorDescription::isDynamicRangeManaged(&v22))
  {
    ToneMapMethod = FxColorDescription::getToneMapMethod(&v22);
  }

  else
  {
    ToneMapMethod = &kPCNoToneMapMethod;
  }

  v21 = *ToneMapMethod;
  if (FxColorDescription::isHDR(&v22) && FxColorDescription::isSDR(&v23))
  {
    v15 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear);
    v20 = 0;
    v19 = 0;
    PCColor::getRGBA(space, &v19, &v19 + 1, &v20, alpha, v15, 1, &v21);
    v16 = FxColorDescription::getToneMapMethod(&v23);
    PCColorUtil::transform(v18, v16, &v19, v15, 1, CGColorSpace, DynamicRange);
    v17 = v18[1];
    *red = v18[0];
    *green = v17;
    *blue = v18[2];
  }

  else
  {
    PCColor::getRGBA(space, red, green, blue, alpha, CGColorSpace, DynamicRange, &v21);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v23._pcColorDesc._colorSpaceRef._obj);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v22._pcColorDesc._colorSpaceRef._obj);
}

- (void)setColorFromFxPlugColorSpace:(void *)space red:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
{
  if (self)
  {
    objc_msgSend_getColorTransformInfo(self, a2);
  }

  else
  {
    memset(&v22, 0, sizeof(v22));
    memset(&v21, 0, sizeof(v21));
  }

  CGColorSpace = FxColorDescription::getCGColorSpace(&v22);
  DynamicRange = FxColorDescription::getDynamicRange(&v22);
  if (FxColorDescription::isDynamicRangeManaged(&v21))
  {
    ToneMapMethod = FxColorDescription::getToneMapMethod(&v21);
  }

  else
  {
    ToneMapMethod = &kPCNoToneMapMethod;
  }

  v20 = *ToneMapMethod;
  if (FxColorDescription::isHDR(&v21) && FxColorDescription::isSDR(&v22))
  {
    v15 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear);
    v18 = __PAIR64__(LODWORD(green), LODWORD(red));
    blueCopy = blue;
    v16 = FxColorDescription::getToneMapMethod(&v22);
    PCColorUtil::transform(&v17, v16, &v18, CGColorSpace, DynamicRange, v15, 1);
    PCColor::setRGBA(space, v15, 1, &v20, red, green, blue, alpha);
  }

  else
  {
    PCColor::setRGBA(space, CGColorSpace, DynamicRange, &v20, red, green, blue, alpha);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v22._pcColorDesc._colorSpaceRef._obj);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v21._pcColorDesc._colorSpaceRef._obj);
}

- (BOOL)addColorParameterWithName:(id)name parmId:(unsigned int)id defaultRed:(double)red defaultGreen:(double)green defaultBlue:(double)blue parmFlags:(unsigned int)flags
{
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&id checkMix:1 checkSpecialCheckboxIDs:1])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addColorParameterWithName:(id)name parmId:(unsigned int)id defaultRed:(double)red defaultGreen:(double)green defaultBlue:(double)blue defaultAlpha:(double)alpha parmFlags:(unsigned int)flags
{
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&id checkMix:1 checkSpecialCheckboxIDs:1])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addPointParameterWithName:(id)name parmId:(unsigned int)id defaultX:(double)x defaultY:(double)y parmFlags:(unsigned int)flags
{
  LODWORD(v8) = id;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&id checkMix:1 checkSpecialCheckboxIDs:1, v8])
  {
    operator new();
  }

  return 0;
}

- (BOOL)add2DVectorWithName:(id)name parmId:(unsigned int)id defaultX:(double)x defaultY:(double)y parmFlags:(unsigned int)flags
{
  LODWORD(v8) = id;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&id checkMix:1 checkSpecialCheckboxIDs:1, v8])
  {
    operator new();
  }

  return 0;
}

- (BOOL)add2DScaleWithName:(id)name parmId:(unsigned int)id defaultX:(double)x defaultY:(double)y parmFlags:(unsigned int)flags
{
  LODWORD(v8) = id;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&id checkMix:1 checkSpecialCheckboxIDs:1, v8])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addPopupMenuWithNameAndTags:(id)tags parmId:(unsigned int)id defaultValue:(unsigned int)value menuEntries:(id)entries tags:(const int *)a7 tagCount:(int)count parmFlags:(unsigned int)flags
{
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&id checkMix:1 checkSpecialCheckboxIDs:1])
  {
    [entries componentsJoinedByString:@"|"];
    operator new();
  }

  return 0;
}

- (BOOL)addImageReferenceWithName:(id)name parmId:(unsigned int)id parmFlags:(unsigned int)flags
{
  LODWORD(v6) = id;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&id checkMix:1 checkSpecialCheckboxIDs:1, v6])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addCustomParameterWithName:(id)name parmId:(unsigned int)id defaultValue:(id)value parmFlags:(unsigned int)flags
{
  idCopy = id;
  v23[2] = 0;
  v8 = [(OZFxPlugParameterHandler *)self hasValidParameterID:*&id checkMix:1 checkSpecialCheckboxIDs:1];
  if (v8)
  {
    cntrl = self->_fxPlugLock.__cntrl_;
    ptr = self->_fxPlugLock.__ptr_;
    v22 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    OZFxPlugLockSentinel::OZFxPlugLockSentinel(v23, &ptr);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    v10 = *v23[0];
    if (!*v23[0])
    {
      goto LABEL_8;
    }

    v11 = atomic_load(&self->_pluginRemoved);
    if (v11)
    {
      goto LABEL_8;
    }

    v12 = idCopy;
    v13 = idCopy == 8888 && [(OZFxPlugParameterHandler *)self isColorCorrection];
    v14 = *(v10 + 216);
    OZFxPlugSharedBase::isXPCBasedPlugin(v10);
    if (!((value == 0) | v14 & 1))
    {
      v15 = *(v10 + 24);
      if ((v15 == 0) | [v15 useLegacyCoding] & 1)
      {
        if (!v15)
        {
LABEL_8:
          OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v23);
          LOBYTE(v8) = 0;
          return v8;
        }
      }

      else
      {
        v16 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
        [v16 encodeObject:value forKey:@"Custom Data"];
        [v16 encodedData];
      }
    }

    if (v13)
    {
      if (atomic_load_explicit(&[OZFxPlugParameterHandler addCustomParameterWithName:parmId:defaultValue:parmFlags:]::once, memory_order_acquire) != -1)
      {
        v18.var0 = &v20;
        v25.var0 = &v18;
        std::__call_once(&-[OZFxPlugParameterHandler addCustomParameterWithName:parmId:defaultValue:parmFlags:]::once, &v25, std::__call_once_proxy[abi:ne200100]<std::tuple<-[OZFxPlugParameterHandler addCustomParameterWithName:parmId:defaultValue:parmFlags:]::$_1 &&>>);
      }

      operator new();
    }

    v18.var0 = v12;
    getScene = [(OZFxPlugParameterHandler *)self getScene];
    [MEMORY[0x277CBEA90] dataWithBytes:&v18 length:16];
    operator new();
  }

  return v8;
}

- (BOOL)setCustomParameterDefaultValue:(id)value parmId:(unsigned int)id
{
  v4 = *&id;
  safeToSetParameters = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (safeToSetParameters)
  {
    channelMap = self->_channelMap;
    v11 = channelMap[1];
    v9 = (channelMap + 1);
    v10 = v11;
    if (!v11)
    {
      goto LABEL_17;
    }

    v12 = v9;
    do
    {
      v13 = *(v10 + 8);
      v14 = v13 >= v4;
      v15 = v13 < v4;
      if (v14)
      {
        v12 = v10;
      }

      v10 = *&v10[8 * v15];
    }

    while (v10);
    if (v12 == v9 || *(v12 + 8) > v4)
    {
      goto LABEL_17;
    }

    v16 = *(v12 + 5);
    cntrl = self->_fxPlugLock.__cntrl_;
    ptr = self->_fxPlugLock.__ptr_;
    v24 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    OZFxPlugLockSentinel::OZFxPlugLockSentinel(v25, &ptr);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    v18 = *v25[0];
    if (!*v25[0] || (v19 = atomic_load(&self->_pluginRemoved), (v19 & 1) != 0))
    {
LABEL_16:
      OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v25);
LABEL_17:
      LOBYTE(safeToSetParameters) = 0;
      return safeToSetParameters;
    }

    if (value && (*(v18 + 216) & 1) == 0)
    {
      v20 = *(v18 + 24);
      if (!v20)
      {
        goto LABEL_16;
      }

      if (([v20 useLegacyCoding] & 1) == 0)
      {
        v21 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
        [v21 encodeObject:value forKey:@"Custom Data"];
        value = [v21 encodedData];
      }
    }

    OZChannelBlindData::setDefaultValue(v16, value);
    [(OZFxPlugParameterHandler *)self _updateUIForParm:v4];
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v25);
    LOBYTE(safeToSetParameters) = 1;
  }

  return safeToSetParameters;
}

- (BOOL)startParameterSubGroup:(id)group parmId:(unsigned int)id parmFlags:(unsigned int)flags
{
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&id checkMix:1 checkSpecialCheckboxIDs:1])
  {
    operator new();
  }

  return 0;
}

- (BOOL)endParameterSubGroup
{
  folderStack = self->_folderStack;
  --folderStack[5];
  std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](folderStack, 1);
  return 1;
}

- (BOOL)addLevelsWithName:(id)name parmId:(unsigned int)id hideGamma:(BOOL)gamma parmFlags:(unsigned int)flags
{
  LODWORD(v7) = id;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&id checkMix:1 checkSpecialCheckboxIDs:1, v7])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addHistogramWithName:(id)name parmId:(unsigned int)id parmFlags:(unsigned int)flags
{
  LODWORD(v6) = id;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&id checkMix:1 checkSpecialCheckboxIDs:1, v6])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addGradientWithName:(id)name parmId:(unsigned int)id parmFlags:(unsigned int)flags
{
  LODWORD(v6) = id;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&id checkMix:1 checkSpecialCheckboxIDs:1, v6])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addGradientPositionedWithName:(id)name parmId:(unsigned int)id parmFlags:(unsigned int)flags
{
  LODWORD(v6) = id;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&id checkMix:1 checkSpecialCheckboxIDs:1, v6])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addStringParameterWithName:(id)name parmId:(unsigned int)id defaultValue:(id)value parmFlags:(unsigned int)flags
{
  idCopy = id;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&id checkMix:1 checkSpecialCheckboxIDs:1])
  {
    PCURL::PCURL(&v10, name);
    PCURL::PCURL(&v9, value);
    operator new();
  }

  return 0;
}

- (void)preGetCMTime:(id *)time forChannel:(OZChannelBase *)channel atFxTime:(id)fxTime
{
  if (self)
  {
    objc_msgSend_fxTimeToFigTime_withConversionData_(self, a2, fxTime.var1, 0);
  }

  else
  {
    v10 = 0uLL;
    v11 = 0;
  }

  *&time->var0 = v10;
  v8 = v11;
  time->var3 = v11;
  v10 = *&time->var0;
  v11 = v8;
  return [(OZFxPlugParameterHandler *)self beginTimingOperation:&v10 forChannel:channel];
}

- (OZChannelBase)channelForParameterID:(unsigned int)d
{
  channelMap = self->_channelMap;
  v6 = channelMap[1];
  v4 = (channelMap + 1);
  v5 = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 8);
    v9 = v8 >= d;
    v10 = v8 < d;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * v10];
  }

  while (v5);
  if (v7 != v4 && *(v7 + 8) <= d)
  {
    return *(v7 + 5);
  }

  else
  {
    return 0;
  }
}

- (BOOL)_getFloatValue:(double *)value fromParm:(unsigned int)parm atTime:(id)time
{
  v7 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&parm];
  if (v7)
  {
    if (self)
    {
      objc_msgSend_motionEffectRef(self);
      objc_msgSend_fxTimeToFigTime_withConversionData_(self);
    }

    else
    {
      v13 = 0;
      memset(&v11, 0, sizeof(v11));
    }

    v12 = v11;
    v8 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v11 forChannel:v7];
    OZChannel::getValueAsDouble(v7, &v12, 0.0);
    *value = v9;
    [(OZFxPlugParameterHandler *)self endTimingOperation:v8];
    ProCore_Impl::PCNSRefImpl::release(&v13);
  }

  return v7 != 0;
}

- (BOOL)_getIntValue:(int *)value fromParm:(unsigned int)parm atTime:(id)time
{
  v7 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&parm];
  if (v7)
  {
    if (self)
    {
      objc_msgSend_motionEffectRef(self);
      objc_msgSend_fxTimeToFigTime_withConversionData_(self);
    }

    else
    {
      v12 = 0;
      memset(&v10, 0, sizeof(v10));
    }

    v11 = v10;
    v8 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v10 forChannel:v7];
    *value = OZChannel::getValueAsInt(v7, &v11, 0.0);
    [(OZFxPlugParameterHandler *)self endTimingOperation:v8];
    ProCore_Impl::PCNSRefImpl::release(&v12);
  }

  return v7 != 0;
}

- (BOOL)_getBoolValue:(BOOL *)value fromParm:(unsigned int)parm atTime:(id)time
{
  v7 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&parm];
  if (v7)
  {
    if (self)
    {
      objc_msgSend_motionEffectRef(self);
      objc_msgSend_fxTimeToFigTime_withConversionData_(self);
    }

    else
    {
      v12 = 0;
      memset(&v10, 0, sizeof(v10));
    }

    v11 = v10;
    v8 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v10 forChannel:v7];
    *value = OZChannel::getValueAsInt(v7, &v11, 0.0) != 0;
    [(OZFxPlugParameterHandler *)self endTimingOperation:v8];
    ProCore_Impl::PCNSRefImpl::release(&v12);
  }

  return v7 != 0;
}

- (BOOL)_getRedValue:(double *)value greenValue:(double *)greenValue blueValue:(double *)blueValue fromParm:(unsigned int)parm atTime:(id)time
{
  v11 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&parm];
  if (v11)
  {
    if (self)
    {
      objc_msgSend_motionEffectRef(self);
      objc_msgSend_fxTimeToFigTime_withConversionData_(self);
    }

    else
    {
      v20 = 0;
      memset(&v17, 0, 24);
    }

    v18 = *&v17.var0.var0;
    v19 = v17.var0.var1[1];
    v12 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v17 forChannel:v11];
    PCColor::PCColor(&v17);
    (*(v11->var0 + 104))(v11, &v18, &v17);
    v15 = 0;
    v16 = 0;
    if (OZChannelColorNoAlpha::isColor(v11))
    {
      [(OZFxPlugParameterHandler *)self getColorInFxPlugColorSpace:&v17 red:&v16 + 4 green:&v16 blue:&v15 + 4 alpha:&v15];
    }

    else
    {
      CGColorSpace = PCColor::getCGColorSpace(&v17);
      PCColor::getRGBA(&v17, &v16 + 1, &v16, &v15 + 1, &v15, CGColorSpace);
    }

    *value = *(&v16 + 1);
    *greenValue = *&v16;
    *blueValue = *(&v15 + 1);
    [(OZFxPlugParameterHandler *)self endTimingOperation:v12, v15];
    PCCFRef<CGColorSpace *>::~PCCFRef(&v17.var1._obj);
    ProCore_Impl::PCNSRefImpl::release(&v20);
  }

  return v11 != 0;
}

- (BOOL)_getRedValue:(double *)value greenValue:(double *)greenValue blueValue:(double *)blueValue alphaValue:(double *)alphaValue fromParm:(unsigned int)parm atTime:(id)time
{
  v13 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&parm];
  if (v13)
  {
    if (self)
    {
      objc_msgSend_motionEffectRef(self);
      objc_msgSend_fxTimeToFigTime_withConversionData_(self);
    }

    else
    {
      v22 = 0;
      memset(&v19, 0, 24);
    }

    v20 = *&v19.var0.var0;
    v21 = v19.var0.var1[1];
    v14 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v19 forChannel:v13];
    PCColor::PCColor(&v19);
    (*(v13->var0 + 104))(v13, &v20, &v19);
    v17 = 0;
    v18 = 0;
    if (OZChannelColorNoAlpha::isColor(v13))
    {
      [(OZFxPlugParameterHandler *)self getColorInFxPlugColorSpace:&v19 red:&v18 + 4 green:&v18 blue:&v17 + 4 alpha:&v17];
    }

    else
    {
      CGColorSpace = PCColor::getCGColorSpace(&v19);
      PCColor::getRGBA(&v19, &v18 + 1, &v18, &v17 + 1, &v17, CGColorSpace);
    }

    *value = *(&v18 + 1);
    *greenValue = *&v18;
    *blueValue = *(&v17 + 1);
    *alphaValue = *&v17;
    [(OZFxPlugParameterHandler *)self endTimingOperation:v14, v17, v18];
    PCCFRef<CGColorSpace *>::~PCCFRef(&v19.var1._obj);
    ProCore_Impl::PCNSRefImpl::release(&v22);
  }

  return v13 != 0;
}

- (BOOL)_getXValue:(double *)value YValue:(double *)yValue fromParm:(unsigned int)parm atTime:(id)time
{
  v9 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&parm];
  if (v9)
  {
    v10 = v9;
    if (self)
    {
      objc_msgSend_motionEffectRef(self);
      v35 = **&MEMORY[0x277CC0898];
      objc_msgSend_fxTimeToFigTime_withConversionData_(self);
    }

    else
    {
      v36 = 0;
      memset(v34, 0, 24);
    }

    v35 = v34[0];
    v12 = [(OZFxPlugParameterHandler *)self beginTimingOperation:v34 forChannel:v10];
    if (value)
    {
      OZChannel::getValueAsDouble(&v10[1].var3, &v35, 0.0);
      *value = v13;
    }

    if (yValue)
    {
      OZChannel::getValueAsDouble(&v10[2].var8, &v35, 0.0);
      *yValue = v14;
    }

    if ([(OZFxPlugParameterHandler *)self shouldFlipPoints])
    {
      *yValue = 1.0 - *yValue;
    }

    if ([(OZFxPlugParameterHandler *)self useAbsolutePoints])
    {
      OZRenderParams::OZRenderParams(v34);
      cntrl = self->_fxPlugLock.__cntrl_;
      ptr = self->_fxPlugLock.__ptr_;
      v32 = cntrl;
      if (cntrl)
      {
        atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
      }

      OZFxPlugLockSentinel::OZFxPlugLockSentinel(v33, &ptr);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      v16 = *v33[0];
      if (!*v33[0] || (v17 = atomic_load(&self->_pluginRemoved), (v17 & 1) != 0))
      {
        [(OZFxPlugParameterHandler *)self endTimingOperation:v12];
LABEL_20:
        OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v33);
        OZRenderParams::~OZRenderParams(v34);
        v11 = 0;
LABEL_27:
        ProCore_Impl::PCNSRefImpl::release(&v36);
        return v11;
      }

      v28 = 0;
      v29 = 0;
      __asm { FMOV            V0.2D, #-1.0 }

      v30 = _Q0;
      if (v18)
      {
        v25 = (*v18 + 1488);
        v19 = v18;
      }

      else
      {
        if (!v19)
        {
          [(OZFxPlugParameterHandler *)self endTimingOperation:v12, v28, v29];
          goto LABEL_20;
        }

        v25 = (*v19 + 16);
      }

      (*v25)(v19, &v28, v34);
      v26 = *(&v30 + 1);
      *value = *value / *&v30 + 0.5;
      *yValue = *yValue / v26 + 0.5;
      OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v33);
      OZRenderParams::~OZRenderParams(v34);
    }

    [(OZFxPlugParameterHandler *)self endTimingOperation:v12, v28, v29];
    v11 = 1;
    goto LABEL_27;
  }

  return 0;
}

- (BOOL)_getAngle:(double *)angle fromParm:(unsigned int)parm atTime:(id)time
{
  v7 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&parm];
  if (v7)
  {
    if (self)
    {
      objc_msgSend_motionEffectRef(self);
      objc_msgSend_fxTimeToFigTime_withConversionData_(self);
    }

    else
    {
      v13 = 0;
      memset(&v11, 0, sizeof(v11));
    }

    v12 = v11;
    v8 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v11 forChannel:v7];
    OZChannel::getValueAsDouble(v7, &v12, 0.0);
    *angle = v9 * 57.2957795;
    [(OZFxPlugParameterHandler *)self endTimingOperation:v8];
    ProCore_Impl::PCNSRefImpl::release(&v13);
  }

  return v7 != 0;
}

- (BOOL)retrieveImage:(id *)image layerOffsetX:(double *)x layerOffsetY:(double *)y requestInfo:(id *)info fromParm:(unsigned int)parm atTime:(id)time retriever:(SEL)retriever ARGB:(BOOL)self0 imageType:(unint64_t)self1 forAnalysis:(BOOL)self2
{
  if (self->_appTerminating)
  {
    return 0;
  }

  *image = 0;
  if (![(OZFxPlugParameterHandler *)self _setupRenderer])
  {
    return 0;
  }

  channelMap = self->_channelMap;
  v18 = channelMap[1];
  v16 = (channelMap + 1);
  v17 = v18;
  if (v18)
  {
    v19 = v16;
    do
    {
      v20 = *(v17 + 8);
      v21 = v20 >= parm;
      v22 = v20 < parm;
      if (v21)
      {
        v19 = v17;
      }

      v17 = *&v17[8 * v22];
    }

    while (v17);
    if (v19 != v16 && *(v19 + 8) <= parm)
    {
      v24 = *(v19 + 5);
      getScene = [(OZFxPlugParameterHandler *)self getScene];
      if (self)
      {
        objc_msgSend_motionEffectRef(self);
        memset(&v42, 0, sizeof(v42));
        objc_msgSend_fxTimeToFigTime_withConversionData_(self);
      }

      else
      {
        v43 = 0;
        memset(&v42, 0, sizeof(v42));
      }

      v38[0] = v42;
      v26 = [(OZFxPlugParameterHandler *)self beginTimingOperation:v38 forChannel:v24];
      ValueAsUint = OZChannel::getValueAsUint(v24, &v42, 0.0);
      if (getScene)
      {
        Node = OZScene::getNode(getScene, ValueAsUint);
        v29 = Node;
        if (Node)
        {
          if (v31)
          {
            if (v32)
            {
              OZImageElement::isDropZone(v32);
            }

            goto LABEL_21;
          }

          if (v30)
          {
LABEL_21:
            cntrl = self->_fxPlugLock.__cntrl_;
            ptr = self->_fxPlugLock.__ptr_;
            v40 = cntrl;
            if (cntrl)
            {
              atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
            }

            OZFxPlugLockSentinel::OZFxPlugLockSentinel(v41, &ptr);
            if (v40)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v40);
            }

            if (*v41[0])
            {
              RenderParams = OZFxPlugRenderContextManager::getRenderParams(&self->_threadContextManager, *v41[0]);
              OZRenderParams::OZRenderParams(v38, RenderParams);
              OZFxPlugSharedBase::setupRenderParamsForRetrievingImage(v38, info, v29, &v42, self->_renderer, v35);
            }

            [(OZFxPlugParameterHandler *)self endTimingOperation:v26];
            OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v41);
            v36 = 0;
            v23 = 1;
LABEL_28:
            ProCore_Impl::PCNSRefImpl::release(&v43);
            if (v36)
            {
              return v23;
            }

            return 0;
          }
        }
      }

      v23 = 1;
      [(OZFxPlugParameterHandler *)self endTimingOperation:v26];
      v36 = 1;
      goto LABEL_28;
    }
  }

  return 1;
}

- (BOOL)getBitmap:(id *)bitmap layerOffsetX:(double *)x layerOffsetY:(double *)y requestInfo:(id *)info fromParm:(unsigned int)parm atTime:(double)time
{
  v8 = *&info->var2;
  v12[0] = *&info->var0.var0;
  v12[1] = v8;
  v12[2] = *&info->var4;
  LOBYTE(v11) = 0;
  LOBYTE(v10) = 1;
  return [(OZFxPlugParameterHandler *)self retrieveImage:bitmap layerOffsetX:x layerOffsetY:y requestInfo:v12 fromParm:*&parm atTime:*&time retriever:sel_textureRetriever_ ARGB:v10 imageType:1 forAnalysis:v11];
}

- (BOOL)getTexture:(id *)texture layerOffsetX:(double *)x layerOffsetY:(double *)y requestInfo:(id *)info fromParm:(unsigned int)parm atTime:(double)time
{
  v8 = *&info->var2;
  v12[0] = *&info->var0.var0;
  v12[1] = v8;
  v12[2] = *&info->var4;
  LOBYTE(v11) = 0;
  LOBYTE(v10) = 1;
  return [(OZFxPlugParameterHandler *)self retrieveImage:texture layerOffsetX:x layerOffsetY:y requestInfo:v12 fromParm:*&parm atTime:*&time retriever:sel_textureRetriever_ ARGB:v10 imageType:2 forAnalysis:v11];
}

- (BOOL)getAnalysisTexture:(id *)texture requestInfo:(id *)info fromParm:(unsigned int)parm atFxTime:(id)time
{
  v6 = *&info->var2;
  v10[0] = *&info->var0.var0;
  v10[1] = v6;
  v10[2] = *&info->var4;
  LOBYTE(v9) = 1;
  LOBYTE(v8) = 1;
  return [(OZFxPlugParameterHandler *)self retrieveImage:texture layerOffsetX:0 layerOffsetY:0 requestInfo:v10 fromParm:*&parm atTime:time.var1 retriever:sel_textureRetriever_ ARGB:v8 imageType:2 forAnalysis:v9];
}

- (void)setAgent:(void *)agent toScaleTo:(const void *)to
{
  v5 = *(to + 1);
  v6 = *to;
  v7 = 0u;
  v8 = 0u;
  v9 = v5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0x3FF0000000000000;
  v13 = 0u;
  v14 = 0u;
  v15 = 0x3FF0000000000000;
  LiRenderingTechnology::setEnableMetalRendering(agent, 0);
  LiAgent::setImageSpace(agent, 0);
  LiAgent::setPixelTransform(agent, &v6);
}

- (BOOL)getHeliumImage:(id *)image layerOffsetX:(double *)x layerOffsetY:(double *)y requestInfo:(id *)info fromParm:(unsigned int)parm atTime:(id)time
{
  *image = 0;
  if ([(OZFxPlugParameterHandler *)self _setupRenderer]&& !self->_appTerminating)
  {
    UseLiEdgeTextureNodeCache = getUseLiEdgeTextureNodeCache();
    setUseLiEdgeTextureNodeCache(0);
    channelMap = self->_channelMap;
    v16 = channelMap[1];
    v14 = (channelMap + 1);
    v15 = v16;
    if (!v16)
    {
      goto LABEL_12;
    }

    v17 = v14;
    do
    {
      v18 = *(v15 + 8);
      v19 = v18 >= parm;
      v20 = v18 < parm;
      if (v19)
      {
        v17 = v15;
      }

      v15 = *&v15[8 * v20];
    }

    while (v15);
    if (v17 == v14 || *(v17 + 8) > parm)
    {
LABEL_12:
      v11 = 1;
LABEL_13:
      setUseLiEdgeTextureNodeCache(UseLiEdgeTextureNodeCache);
      return v11;
    }

    v22 = *(v17 + 5);
    getScene = [(OZFxPlugParameterHandler *)self getScene];
    if (self)
    {
      objc_msgSend_motionEffectRef(self);
      memset(&v39, 0, sizeof(v39));
      objc_msgSend_fxTimeToFigTime_withConversionData_(self);
    }

    else
    {
      v40 = 0;
      memset(&v39, 0, sizeof(v39));
    }

    v35[0] = v39;
    v24 = [(OZFxPlugParameterHandler *)self beginTimingOperation:v35 forChannel:v22];
    ValueAsUint = OZChannel::getValueAsUint(v22, &v39, 0.0);
    if (getScene)
    {
      Node = OZScene::getNode(getScene, ValueAsUint);
      v27 = Node;
      if (Node)
      {
        if (v29)
        {
          if (v30)
          {
            OZImageElement::isDropZone(v30);
          }

          goto LABEL_24;
        }

        if (v28)
        {
LABEL_24:
          cntrl = self->_fxPlugLock.__cntrl_;
          ptr = self->_fxPlugLock.__ptr_;
          v37 = cntrl;
          if (cntrl)
          {
            atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
          }

          OZFxPlugLockSentinel::OZFxPlugLockSentinel(v38, &ptr);
          if (v37)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v37);
          }

          if (*v38[0])
          {
            RenderParams = OZFxPlugRenderContextManager::getRenderParams(&self->_threadContextManager, *v38[0]);
            OZRenderParams::OZRenderParams(v35, RenderParams);
            OZFxPlugSharedBase::setupRenderParamsForRetrievingImage(v35, info, v27, &v39, self->_renderer, v33);
          }

          [(OZFxPlugParameterHandler *)self endTimingOperation:v24];
          OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v38);
          v34 = 0;
          v11 = 1;
          goto LABEL_31;
        }
      }
    }

    v11 = 1;
    [(OZFxPlugParameterHandler *)self endTimingOperation:v24];
    v34 = 1;
LABEL_31:
    ProCore_Impl::PCNSRefImpl::release(&v40);
    if ((v34 & 1) == 0)
    {
      v11 = 0;
    }

    goto LABEL_13;
  }

  return 0;
}

- (BOOL)getCustomParameterValue:(id *)value fromParm:(unsigned int)parm
{
  v6 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&parm];
  if (v6)
  {
    if (self)
    {
      objc_msgSend_motionEffectRef(self);
    }

    else
    {
      v8 = 0;
    }

    *value = OZChannelBlindData::getPluginDataPtr(v6, MEMORY[0x277CC08F0]);
    ProCore_Impl::PCNSRefImpl::release(&v8);
  }

  return v6 != 0;
}

- (BOOL)_getCustomParameterValue:(id *)value fromParm:(unsigned int)parm atTime:(id)time
{
  v5 = *&parm;
  v8 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&parm];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (self)
  {
    objc_msgSend_motionEffectRef(self);
  }

  else
  {
    v26 = 0;
  }

  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v24 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v25, &ptr);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v12 = *v25[0];
  if (*v25[0] && (v13 = atomic_load(&self->_pluginRemoved), (v13 & 1) == 0))
  {
    v22 = **&MEMORY[0x277CC0898];
    objc_msgSend_fxTimeToFigTime_withConversionData_(self);
    v22 = v21;
    v14 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v21 forChannel:v9];
    PluginDataPtr = OZChannelBlindData::getPluginDataPtr(v9, &v22);
    *value = PluginDataPtr;
    v10 = 1;
    if ((*(v12 + 216) & 1) == 0 && PluginDataPtr)
    {
      v16 = *(v12 + 24);
      if (v16)
      {
        if (([v16 useLegacyCoding] & 1) == 0)
        {
          v21.value = 0;
          v17 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:*value error:&v21];
          if (!v17)
          {
            v18 = MEMORY[0x277CBEAD8];
            localizedFailureReason = [v21.value localizedFailureReason];
            [v18 raise:*MEMORY[0x277CBE728] format:{@"%@", localizedFailureReason}];
          }

          *value = [v17 decodeObjectOfClass:objc_msgSend(*(v12 + 24) forKey:{"classForCustomParameterID:", v5), @"Custom Data"}];
          v10 = 1;
        }
      }

      else
      {
        v10 = 0;
        *value = 0;
      }
    }

    [(OZFxPlugParameterHandler *)self endTimingOperation:v14];
  }

  else
  {
    v10 = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v25);
  ProCore_Impl::PCNSRefImpl::release(&v26);
  return v10;
}

- (id)decodeLegacyData:(id)data forParameterID:(unsigned int)d
{
  v4 = *&d;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v13 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v14, &ptr);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (*v14[0] && (v8 = atomic_load(&self->_pluginRemoved), (v8 & 1) == 0) && (v9 = *(*v14[0] + 24), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v10 = [v9 decodeLegacyData:data forParameterID:{v4, ptr}];
  }

  else
  {
    v10 = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v14);
  return v10;
}

- (BOOL)_getHistogramBlackIn:(double *)in BlackOut:(double *)out WhiteIn:(double *)whiteIn WhiteOut:(double *)whiteOut Gamma:(double *)gamma forChannel:(unint64_t)channel fromParm:(unsigned int)parm atTime:(id)self0
{
  channelCopy = channel;
  v17 = [(OZFxPlugParameterHandler *)self channelForParameterID:parm];
  if (v17)
  {
    if (self)
    {
      objc_msgSend_motionEffectRef(self);
      objc_msgSend_fxTimeToFigTime_withConversionData_(self);
    }

    else
    {
      v22 = 0;
      memset(&v20, 0, sizeof(v20));
    }

    v21 = v20;
    v18 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v20 forChannel:v17];
    *in = OZChannelHistogram::getBlackInValue(v17, channelCopy, &v21, 0.0);
    *out = OZChannelHistogram::getBlackOutValue(v17, channelCopy, &v21, 0.0);
    *whiteIn = OZChannelHistogram::getWhiteInValue(v17, channelCopy, &v21, 0.0);
    *whiteOut = OZChannelHistogram::getWhiteOutValue(v17, channelCopy, &v21, 0.0);
    *gamma = OZChannelHistogram::getGammaValue(v17, channelCopy, &v21, 0.0);
    [(OZFxPlugParameterHandler *)self endTimingOperation:v18];
    ProCore_Impl::PCNSRefImpl::release(&v22);
  }

  return v17 != 0;
}

- (BOOL)getLevelsBlack:(double *)black White:(double *)white Gamma:(double *)gamma fromParm:(unsigned int)parm atTime:(id)time
{
  v11 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&parm];
  if (v11)
  {
    if (self)
    {
      objc_msgSend_motionEffectRef(self);
      objc_msgSend_fxTimeToFigTime_withConversionData_(self);
    }

    else
    {
      v19 = 0;
      memset(&v17, 0, sizeof(v17));
    }

    v18 = v17;
    v12 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v17 forChannel:v11];
    OZChannelLevels::getBlackValue(v11, &v18, 0.0);
    *black = v13;
    OZChannelLevels::getWhiteValue(v11, &v18, 0.0);
    *white = v14;
    OZChannelLevels::getGammaValue(v11, &v18, 0.0);
    *gamma = v15;
    [(OZFxPlugParameterHandler *)self endTimingOperation:v12];
    ProCore_Impl::PCNSRefImpl::release(&v19);
  }

  return v11 != 0;
}

- (BOOL)_getGradientSamples:(void *)samples numSamples:(unint64_t)numSamples depth:(unint64_t)depth fromParm:(unsigned int)parm atTime:(id)time
{
  selfCopy = self;
  LOBYTE(self) = 0;
  if (depth <= 0x20)
  {
    depthCopy = depth;
    if (((1 << depth) & 0x100010116) != 0)
    {
      self = [(OZFxPlugParameterHandler *)selfCopy channelForParameterID:*&parm];
      if (self)
      {
        selfCopy2 = self;
        if (selfCopy)
        {
          objc_msgSend_motionEffectRef(selfCopy);
          pcColorDesc = **&MEMORY[0x277CC0898];
          objc_msgSend_fxTimeToFigTime_withConversionData_(selfCopy);
        }

        else
        {
          v54 = 0;
          memset(&v51, 0, 24);
        }

        pcColorDesc = v51._pcColorDesc;
        v36 = [(OZFxPlugParameterHandler *)selfCopy beginTimingOperation:&v51 forChannel:selfCopy2];
        if (selfCopy)
        {
          objc_msgSend_getColorTransformInfo(selfCopy);
        }

        else
        {
          memset(&v52, 0, sizeof(v52));
          memset(&v51, 0, sizeof(v51));
        }

        CGColorSpace = FxColorDescription::getCGColorSpace(&v52);
        DynamicRange = FxColorDescription::getDynamicRange(&v52);
        if (FxColorDescription::isDynamicRangeManaged(&v51))
        {
          ToneMapMethod = FxColorDescription::getToneMapMethod(&v51);
        }

        else
        {
          ToneMapMethod = &kPCNoToneMapMethod;
        }

        v50 = *ToneMapMethod;
        v15 = FxColorDescription::isHDR(&v51) && FxColorDescription::isSDR(&v52);
        std::vector<float>::vector[abi:ne200100](&v48, 4 * numSamples);
        if (v15)
        {
          v16 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear);
          std::vector<float>::vector[abi:ne200100](__p, 4 * numSamples);
          OZChannelGradient::getGradient(selfCopy2, &pcColorDesc, v16, __p[0], numSamples, 1, &v50);
          numSamplesCopy = numSamples;
          v43 = __p[0];
          v44 = 4;
          v45 = v16;
          v46 = 0x100000001;
          numSamplesCopy2 = numSamples;
          v38 = v48;
          v39 = 4;
          v40 = CGColorSpace;
          LODWORD(v41) = 1;
          HIDWORD(v41) = DynamicRange;
          v17 = FxColorDescription::getToneMapMethod(&v52);
          PCColorUtil::transformColorWithDynamicRange(&numSamplesCopy, &numSamplesCopy2, v17);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        else
        {
          OZChannelGradient::getGradient(selfCopy2, &pcColorDesc, CGColorSpace, v48, numSamples, DynamicRange, &v50);
        }

        if (((1 << depthCopy) & 0x102) != 0)
        {
          v28 = v48;
          if (v49 != v48)
          {
            v29 = (v49 - v48) >> 2;
            do
            {
              v30 = *v28++;
              v31 = v30;
              if (v30 <= 1.0)
              {
                v32 = v31;
              }

              else
              {
                v32 = 1.0;
              }

              v33 = v32 * 255.0;
              if (v31 >= 0.0)
              {
                v34 = v33;
              }

              else
              {
                v34 = 0.0;
              }

              *samples = vcvtmd_s64_f64(v34 + 0.5 + 0.0000001);
              samples = samples + 1;
              --v29;
            }

            while (v29);
          }
        }

        else if (((1 << depthCopy) & 0x10004) != 0)
        {
          v21 = v48;
          if (v49 != v48)
          {
            v22 = (v49 - v48) >> 2;
            do
            {
              v23 = *v21++;
              v24 = v23;
              if (v23 <= 1.0)
              {
                v25 = v24;
              }

              else
              {
                v25 = 1.0;
              }

              v26 = v25 * 65536.0;
              if (v24 >= 0.0)
              {
                v27 = v26;
              }

              else
              {
                v27 = 0.0;
              }

              *samples = vcvtmd_s64_f64(v27 + 0.5 + 0.0000001);
              samples = samples + 2;
              --v22;
            }

            while (v22);
          }
        }

        else if (((1 << depthCopy) & 0x100000010) != 0)
        {
          v18 = v48;
          if (v49 != v48)
          {
            v19 = (v49 - v48) >> 2;
            do
            {
              v20 = *v18++;
              *samples = v20;
              samples = samples + 4;
              --v19;
            }

            while (v19);
          }
        }

        [(OZFxPlugParameterHandler *)selfCopy endTimingOperation:v36, v36, numSamplesCopy2, v38, v39, v40, v41, numSamplesCopy, v43, v44, v45, v46];
        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        PCCFRef<CGColorSpace *>::~PCCFRef(&v52._pcColorDesc._colorSpaceRef._obj);
        PCCFRef<CGColorSpace *>::~PCCFRef(&v51._pcColorDesc._colorSpaceRef._obj);
        ProCore_Impl::PCNSRefImpl::release(&v54);
        LOBYTE(self) = 1;
      }
    }
  }

  return self;
}

- (BOOL)getGradientStartEnd:(double *)end startY:(double *)y endX:(double *)x endY:(double *)endY type:(int *)type fromParm:(unsigned int)parm atTime:(id)time
{
  v15 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&parm];
  if (v15)
  {
    if (self)
    {
      objc_msgSend_motionEffectRef(self);
      objc_msgSend_fxTimeToFigTime_withConversionData_(self);
    }

    else
    {
      v20 = 0;
      memset(&v18, 0, sizeof(v18));
    }

    v19 = v18;
    v16 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v18 forChannel:v15];
    *type = OZChannel::getValueAsInt(&v15[7].var2, &v19, 0.0);
    OZChannelPosition::getPosition(&v15[9].var6, &v19, end, y, 0.0);
    OZChannelPosition::getPosition(&v15[15].var10, &v19, x, endY, 0.0);
    [(OZFxPlugParameterHandler *)self endTimingOperation:v16];
    ProCore_Impl::PCNSRefImpl::release(&v20);
  }

  return v15 != 0;
}

- (BOOL)getParameterFlags:(unsigned int *)flags fromParm:(unsigned int)parm
{
  if (!flags)
  {
    return 0;
  }

  *flags = 0;
  channelMap = self->_channelMap;
  v9 = channelMap[1];
  v7 = (channelMap + 1);
  v8 = v9;
  if (!v9)
  {
    return 0;
  }

  v11 = v7;
  do
  {
    v12 = *(v8 + 8);
    v13 = v12 >= parm;
    v14 = v12 < parm;
    if (v13)
    {
      v11 = v8;
    }

    v8 = *&v8[8 * v14];
  }

  while (v8);
  if (v11 == v7 || *(v11 + 8) > parm)
  {
    return 0;
  }

  v16 = *(v11 + 5);
  if (!v16)
  {
    v17 = 0;
    if (self)
    {
      goto LABEL_14;
    }

LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  if (!self)
  {
    goto LABEL_16;
  }

LABEL_14:
  objc_msgSend_motionEffectRef(self);
LABEL_17:
  if (((*(*v16 + 512))(v16) & 1) == 0)
  {
    *flags |= 1u;
  }

  if ((~*(v16 + 56) & 0x410020) == 0)
  {
    *flags |= 2u;
  }

  if (OZChannelBase::testFlag(v16, 4))
  {
    *flags |= 4u;
  }

  if (OZChannelBase::testFlag(v16, 8))
  {
    *flags |= 0x10u;
  }

  if (OZChannelBase::testFlag(v16, 0x10000) && (~*(v16 + 56) & 0x410020) != 0)
  {
    *flags |= 0x200u;
  }

  if (!OZChannelBase::testFlag(v16, 16))
  {
    *flags |= 0x20u;
  }

  if (v17 && OZChannelFolder::testFoldFlag(v17, 4))
  {
    *flags |= 8u;
  }

  begin = self->_fullWidthCustomParams.__begin_;
  end = self->_fullWidthCustomParams.__end_;
  if (begin != end)
  {
    while (*begin != parm)
    {
      if (++begin == end)
      {
        goto LABEL_39;
      }
    }
  }

  if (begin != end)
  {
    *flags |= 0x800u;
  }

LABEL_39:
  ProCore_Impl::PCNSRefImpl::release(&v20);
  return 1;
}

- (BOOL)getStringParameterValue:(id *)value fromParm:(unsigned int)parm
{
  v6 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&parm];
  if (v6)
  {
    if (self)
    {
      objc_msgSend_motionEffectRef(self);
    }

    else
    {
      v9 = 0;
    }

    (*(v6->var0 + 106))(&v8, v6);
    *value = [MEMORY[0x277CCACA8] stringWithString:PCString::ns_str(&v8)];
    PCString::~PCString(&v8);
    ProCore_Impl::PCNSRefImpl::release(&v9);
  }

  return v6 != 0;
}

- (BOOL)_getPathID:(void *)d fromParm:(unsigned int)parm atTime:(id)time
{
  v7 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&parm];
  if (v7)
  {
    if (self)
    {
      objc_msgSend_motionEffectRef(self);
    }

    else
    {
      v9 = 0;
    }

    *d = OZChanSceneNodeRef::getNode(v7);
    ProCore_Impl::PCNSRefImpl::release(&v9);
  }

  return v7 != 0;
}

- (void)abortAndWait
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    getScene = [(OZFxPlugParameterHandler *)self getScene];
    if (getScene)
    {
      v4 = getScene[188];
      if (v4)
      {

        OZChannelBase::setRangeName(v4, 1);
      }
    }
  }
}

- (BOOL)suppressUpdates
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = self->_suppressChannelChangesStack.c.__size_ + self->_suppressChannelChangesStack.c.__start_ - 1;
    return (*(self->_suppressChannelChangesStack.c.__map_.__begin_ + ((v3 >> 9) & 0x7FFFFFFFFFFFF8)))[v3 & 0xFFF];
  }

  else
  {
    return 0;
  }
}

- (BOOL)safeToSetParameters
{
  if ([MEMORY[0x277CCACC8] isMainThread] && !-[OZFxPlugParameterHandler isRendering](self, "isRendering"))
  {
    return 1;
  }

  if (!self->_showedParameterSettingWarning)
  {
    cntrl = self->_fxPlugLock.__cntrl_;
    ptr = self->_fxPlugLock.__ptr_;
    v8 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    OZFxPlugLockSentinel::OZFxPlugLockSentinel(v9, &ptr);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (*v9[0])
    {
      OZFxPlugSharedBase::getDisplayName(&v6, *v9[0]);
      v4 = PCString::ns_str(&v6);
      PCString::~PCString(&v6);
    }

    else
    {
      v4 = @"Unknown";
    }

    NSLog(&cfstr_ErrorInPlugin.isa, v4, @"Setting parameter values from a non-main thread is not allowed.\nPlease do not attempt to set parameter values from within -renderOutput, or\nanother method that may be called on a non-main thread.\nSetting parameters should typically be done in response to -parameterChanged, or\nin response to interactions with a custom UI or onscreen control.\nFor more information, consult the FxPlug documentation");
    self->_showedParameterSettingWarning = 1;
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v9);
  }

  return 0;
}

- (BOOL)_setFloatValue:(double)value toParm:(unsigned int)parm atTime:(id)time
{
  v5 = *&parm;
  safeToSetParameters = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (safeToSetParameters)
  {
    channelMap = self->_channelMap;
    v12 = channelMap[1];
    v10 = (channelMap + 1);
    v11 = v12;
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = v10;
    do
    {
      v14 = *(v11 + 8);
      v15 = v14 >= v5;
      v16 = v14 < v5;
      if (v15)
      {
        v13 = v11;
      }

      v11 = *&v11[8 * v16];
    }

    while (v11);
    if (v13 != v10 && *(v13 + 8) <= v5)
    {
      v17 = *(v13 + 5);
      getScene = [(OZFxPlugParameterHandler *)self getScene];
      if (getScene && (*(getScene[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v17, 8))
      {
        PCSharedCount::PCSharedCount(v23);
        (*(v17->var0 + 43))(v17, v23);
        PCString::~PCString(v23);
      }

      [(OZFxPlugParameterHandler *)self preChannelChange:v17 flagsOnly:0];
      if (self)
      {
        objc_msgSend_motionEffectRef(self);
        v23[0].var0 = 0;
        v23[1].var0 = 0;
        v24 = 0;
        objc_msgSend_fxTimeToFigTime_withConversionData_(self);
      }

      else
      {
        v24 = 0;
        v25 = 0;
        v23[0].var0 = 0;
        v23[1].var0 = 0;
      }

      v21 = *&v23[0].var0;
      v22 = v24;
      v19 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v21 forChannel:v17];
      (*(v17->var0 + 89))(v17, v23, [(OZFxPlugParameterHandler *)self isRendering], value);
      [(OZFxPlugParameterHandler *)self endTimingOperation:v19];
      [(OZFxPlugParameterHandler *)self postChannelChange:v17 flagsOnly:0];
      if (self->_startActionCalled)
      {
        ++self->_numWriteActions;
      }

      [(OZFxPlugParameterHandler *)self _updateUIForParm:v5];
      ProCore_Impl::PCNSRefImpl::release(&v25);
      LOBYTE(safeToSetParameters) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(safeToSetParameters) = 0;
    }
  }

  return safeToSetParameters;
}

- (BOOL)_setIntValue:(int)value toParm:(unsigned int)parm atTime:(id)time
{
  v5 = *&parm;
  safeToSetParameters = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (safeToSetParameters)
  {
    channelMap = self->_channelMap;
    v12 = channelMap[1];
    v10 = (channelMap + 1);
    v11 = v12;
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = v10;
    do
    {
      v14 = *(v11 + 8);
      v15 = v14 >= v5;
      v16 = v14 < v5;
      if (v15)
      {
        v13 = v11;
      }

      v11 = *&v11[8 * v16];
    }

    while (v11);
    if (v13 != v10 && *(v13 + 8) <= v5)
    {
      v17 = *(v13 + 5);
      getScene = [(OZFxPlugParameterHandler *)self getScene];
      if (getScene && (*(getScene[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v17, 8))
      {
        PCSharedCount::PCSharedCount(v23);
        (*(v17->var0 + 43))(v17, v23);
        PCString::~PCString(v23);
      }

      [(OZFxPlugParameterHandler *)self preChannelChange:v17 flagsOnly:0];
      if (self)
      {
        objc_msgSend_motionEffectRef(self);
        v23[0].var0 = 0;
        v23[1].var0 = 0;
        v24 = 0;
        objc_msgSend_fxTimeToFigTime_withConversionData_(self);
      }

      else
      {
        v24 = 0;
        v25 = 0;
        v23[0].var0 = 0;
        v23[1].var0 = 0;
      }

      v21 = *&v23[0].var0;
      v22 = v24;
      v19 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v21 forChannel:v17];
      (*(v17->var0 + 89))(v17, v23, [(OZFxPlugParameterHandler *)self isRendering], value);
      [(OZFxPlugParameterHandler *)self endTimingOperation:v19];
      [(OZFxPlugParameterHandler *)self postChannelChange:v17 flagsOnly:0];
      if (self->_startActionCalled)
      {
        ++self->_numWriteActions;
      }

      [(OZFxPlugParameterHandler *)self _updateUIForParm:v5];
      ProCore_Impl::PCNSRefImpl::release(&v25);
      LOBYTE(safeToSetParameters) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(safeToSetParameters) = 0;
    }
  }

  return safeToSetParameters;
}

- (BOOL)_setBoolValue:(BOOL)value toParm:(unsigned int)parm atTime:(id)time
{
  v5 = *&parm;
  valueCopy = value;
  safeToSetParameters = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (safeToSetParameters)
  {
    channelMap = self->_channelMap;
    v12 = channelMap[1];
    v10 = (channelMap + 1);
    v11 = v12;
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = v10;
    do
    {
      v14 = *(v11 + 8);
      v15 = v14 >= v5;
      v16 = v14 < v5;
      if (v15)
      {
        v13 = v11;
      }

      v11 = *&v11[8 * v16];
    }

    while (v11);
    if (v13 != v10 && *(v13 + 8) <= v5)
    {
      v17 = *(v13 + 5);
      getScene = [(OZFxPlugParameterHandler *)self getScene];
      if (getScene && (*(getScene[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v17, 8))
      {
        PCSharedCount::PCSharedCount(v23);
        (*(v17->var0 + 43))(v17, v23);
        PCString::~PCString(v23);
      }

      [(OZFxPlugParameterHandler *)self preChannelChange:v17 flagsOnly:0];
      if (self)
      {
        objc_msgSend_motionEffectRef(self);
        v23[0].var0 = 0;
        v23[1].var0 = 0;
        v24 = 0;
        objc_msgSend_fxTimeToFigTime_withConversionData_(self);
      }

      else
      {
        v24 = 0;
        v25 = 0;
        v23[0].var0 = 0;
        v23[1].var0 = 0;
      }

      v21 = *&v23[0].var0;
      v22 = v24;
      v19 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v21 forChannel:v17];
      (*(v17->var0 + 89))(v17, v23, [(OZFxPlugParameterHandler *)self isRendering], valueCopy);
      [(OZFxPlugParameterHandler *)self endTimingOperation:v19];
      [(OZFxPlugParameterHandler *)self postChannelChange:v17 flagsOnly:0];
      if (self->_startActionCalled)
      {
        ++self->_numWriteActions;
      }

      [(OZFxPlugParameterHandler *)self _updateUIForParm:v5];
      ProCore_Impl::PCNSRefImpl::release(&v25);
      LOBYTE(safeToSetParameters) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(safeToSetParameters) = 0;
    }
  }

  return safeToSetParameters;
}

- (BOOL)_setRedValue:(double)value greenValue:(double)greenValue blueValue:(double)blueValue toParm:(unsigned int)parm atTime:(id)time
{
  v7 = *&parm;
  safeToSetParameters = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (safeToSetParameters)
  {
    channelMap = self->_channelMap;
    v16 = channelMap[1];
    v14 = (channelMap + 1);
    v15 = v16;
    if (!v16)
    {
      goto LABEL_10;
    }

    v17 = v14;
    do
    {
      v18 = *(v15 + 8);
      v19 = v18 >= v7;
      v20 = v18 < v7;
      if (v19)
      {
        v17 = v15;
      }

      v15 = *&v15[8 * v20];
    }

    while (v15);
    if (v17 != v14 && *(v17 + 8) <= v7)
    {
      v21 = *(v17 + 5);
      getScene = [(OZFxPlugParameterHandler *)self getScene];
      if (getScene && (*(getScene[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v21, 8))
      {
        PCSharedCount::PCSharedCount(&v31);
        (*(v21->var0 + 43))(v21, &v31);
        PCString::~PCString(&v31);
      }

      if (self)
      {
        objc_msgSend_motionEffectRef(self);
        v32 = 0uLL;
        v33 = 0;
        objc_msgSend_fxTimeToFigTime_withConversionData_(self);
      }

      else
      {
        v34 = 0;
        v32 = 0uLL;
        v33 = 0;
      }

      PCColor::PCColor(&v31);
      *&v23 = value;
      *&v24 = greenValue;
      *&v25 = blueValue;
      LODWORD(v26) = 1.0;
      [(OZFxPlugParameterHandler *)self setColorFromFxPlugColorSpace:&v31 red:v23 green:v24 blue:v25 alpha:v26];
      v29 = v32;
      v30 = v33;
      v27 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v29 forChannel:v21];
      [(OZFxPlugParameterHandler *)self preChannelChange:v21 flagsOnly:0];
      (*(v21->var0 + 105))(v21, &v32, &v31, [(OZFxPlugParameterHandler *)self isRendering]);
      [(OZFxPlugParameterHandler *)self postChannelChange:v21 flagsOnly:0];
      [(OZFxPlugParameterHandler *)self endTimingOperation:v27];
      if (self->_startActionCalled)
      {
        ++self->_numWriteActions;
      }

      [(OZFxPlugParameterHandler *)self _updateUIForParm:v7];
      PCCFRef<CGColorSpace *>::~PCCFRef(&v31.var1._obj);
      ProCore_Impl::PCNSRefImpl::release(&v34);
      LOBYTE(safeToSetParameters) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(safeToSetParameters) = 0;
    }
  }

  return safeToSetParameters;
}

- (BOOL)_setRedValue:(double)value greenValue:(double)greenValue blueValue:(double)blueValue alphaValue:(double)alphaValue toParm:(unsigned int)parm atTime:(id)time
{
  v8 = *&parm;
  safeToSetParameters = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (safeToSetParameters)
  {
    channelMap = self->_channelMap;
    v18 = channelMap[1];
    v16 = (channelMap + 1);
    v17 = v18;
    if (!v18)
    {
      goto LABEL_10;
    }

    v19 = v16;
    do
    {
      v20 = *(v17 + 8);
      v21 = v20 >= v8;
      v22 = v20 < v8;
      if (v21)
      {
        v19 = v17;
      }

      v17 = *&v17[8 * v22];
    }

    while (v17);
    if (v19 != v16 && *(v19 + 8) <= v8)
    {
      v23 = *(v19 + 5);
      getScene = [(OZFxPlugParameterHandler *)self getScene];
      if (getScene && (*(getScene[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v23, 8))
      {
        PCSharedCount::PCSharedCount(&v33);
        (*(v23->var0 + 43))(v23, &v33);
        PCString::~PCString(&v33);
      }

      if (self)
      {
        objc_msgSend_motionEffectRef(self);
        v34 = 0uLL;
        v35 = 0;
        objc_msgSend_fxTimeToFigTime_withConversionData_(self);
      }

      else
      {
        v36 = 0;
        v34 = 0uLL;
        v35 = 0;
      }

      PCColor::PCColor(&v33);
      *&v25 = value;
      *&v26 = greenValue;
      *&v27 = blueValue;
      *&v28 = alphaValue;
      [(OZFxPlugParameterHandler *)self setColorFromFxPlugColorSpace:&v33 red:v25 green:v26 blue:v27 alpha:v28];
      v31 = v34;
      v32 = v35;
      v29 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v31 forChannel:v23];
      [(OZFxPlugParameterHandler *)self preChannelChange:v23 flagsOnly:0];
      (*(v23->var0 + 105))(v23, &v34, &v33, [(OZFxPlugParameterHandler *)self isRendering]);
      [(OZFxPlugParameterHandler *)self postChannelChange:v23 flagsOnly:0];
      [(OZFxPlugParameterHandler *)self endTimingOperation:v29];
      if (self->_startActionCalled)
      {
        ++self->_numWriteActions;
      }

      [(OZFxPlugParameterHandler *)self _updateUIForParm:v8];
      PCCFRef<CGColorSpace *>::~PCCFRef(&v33.var1._obj);
      ProCore_Impl::PCNSRefImpl::release(&v36);
      LOBYTE(safeToSetParameters) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(safeToSetParameters) = 0;
    }
  }

  return safeToSetParameters;
}

- (BOOL)_setXValue:(double)value YValue:(double)yValue toParm:(unsigned int)parm atTime:(id)time
{
  v6 = *&parm;
  if (![(OZFxPlugParameterHandler *)self safeToSetParameters])
  {
    goto LABEL_39;
  }

  channelMap = self->_channelMap;
  v13 = channelMap[1];
  v11 = (channelMap + 1);
  v12 = v13;
  if (!v13)
  {
    goto LABEL_39;
  }

  v14 = v11;
  do
  {
    v15 = *(v12 + 8);
    _CF = v15 >= v6;
    v17 = v15 < v6;
    if (_CF)
    {
      v14 = v12;
    }

    v12 = *&v12[8 * v17];
  }

  while (v12);
  if (v14 == v11 || *(v14 + 8) > v6)
  {
    goto LABEL_39;
  }

  v18 = *(v14 + 5);
  if (self)
  {
    objc_msgSend_motionEffectRef(self);
  }

  else
  {
    v45 = 0;
  }

  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v43 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v44, &ptr);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  v20 = *v44[0];
  if (!*v44[0] || (v21 = atomic_load(&self->_pluginRemoved), (v21 & 1) != 0))
  {
    v22 = 0;
    LOBYTE(v23) = 1;
    goto LABEL_38;
  }

  memset(&v41, 0, sizeof(v41));
  objc_msgSend_fxTimeToFigTime_withConversionData_(self);
  v37[0]._pcColorDesc = v41;
  v24 = [(OZFxPlugParameterHandler *)self beginTimingOperation:v37 forChannel:v18];
  if (v25)
  {
    v26 = v25;
    v23 = v25[3];
    if (v23)
    {
      v40[0] = 0uLL;
      __asm { FMOV            V0.2D, #-1.0 }

      v40[1] = _Q0;
      OZRenderParams::OZRenderParams(v37);
      v37[0]._pcColorDesc = v41;
      v38 = 0;
      v39 = 0;
      v31 = (*(*v26 + 296))(v26);
      WorkingColorSpace = OZScene::getWorkingColorSpace(v31);
      OZRenderParams::setWorkingColorSpace(v37, WorkingColorSpace);
      v33 = *v23;
      if (v34)
      {
        if ((*(*v34 + 2216))(v34, v37))
        {
          OZScene::getSceneBounds(v31, v40);
LABEL_28:
          OZRenderParams::~OZRenderParams(v37);
          LOBYTE(v23) = 1;
          goto LABEL_29;
        }

        v33 = *v23;
      }

      (*(v33 + 80))(v23, v40, v37);
      goto LABEL_28;
    }
  }

  else
  {
    LOBYTE(v23) = 0;
  }

LABEL_29:
  if ([(OZFxPlugParameterHandler *)self shouldFlipPoints:*&v37[0]._pcColorDesc._colorSpaceRef._obj])
  {
    yValue = 1.0 - yValue;
  }

  getScene = [(OZFxPlugParameterHandler *)self getScene];
  if (getScene && (*(getScene[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v18, 8))
  {
    PCSharedCount::PCSharedCount(v37);
    (*(v18->var0 + 43))(v18, v37);
    PCString::~PCString(v37);
  }

  [(OZFxPlugParameterHandler *)self preChannelChange:v18 flagsOnly:0];
  OZChannel2D::setValue(v18, &v41, value, yValue, [(OZFxPlugParameterHandler *)self isRendering]);
  [(OZFxPlugParameterHandler *)self postChannelChange:v18 flagsOnly:0];
  [(OZFxPlugParameterHandler *)self endTimingOperation:v24];
  if (self->_startActionCalled)
  {
    ++self->_numWriteActions;
  }

  [(OZFxPlugParameterHandler *)self _updateUIForParm:v6];
  v22 = 1;
LABEL_38:
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v44);
  ProCore_Impl::PCNSRefImpl::release(&v45);
  if ((v22 & 1) == 0)
  {
LABEL_39:
    LOBYTE(v23) = 0;
  }

  return v23;
}

- (void)onVTBUserInteractionEventNotification:(id)notification
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v23 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v24, &ptr);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (*v24[0])
  {
    v5 = *(*v24[0] + 24);
    if (objc_opt_respondsToSelector())
    {
      userInfo = [notification userInfo];
      [objc_msgSend(userInfo objectForKey:{@"X", "doubleValue"}];
      v8 = v7;
      [objc_msgSend(userInfo objectForKey:{@"Y", "doubleValue"}];
      v10 = v9;
      [objc_msgSend(userInfo objectForKey:{@"VelocityX", "doubleValue"}];
      v12 = v11;
      [objc_msgSend(userInfo objectForKey:{@"VelocityY", "doubleValue"}];
      v14 = v13;
      [objc_msgSend(userInfo objectForKey:{@"Scale", "doubleValue"}];
      v16 = v15;
      [objc_msgSend(userInfo objectForKey:{@"ScaleVelocity", "doubleValue"}];
      v18 = v17;
      [objc_msgSend(userInfo objectForKey:{@"Rotation", "doubleValue"}];
      v20 = v19;
      [objc_msgSend(userInfo objectForKey:{@"RotationVelocity", "doubleValue"}];
      [v5 handleUIEventWithPosition:v8 velocity:1.0 - v10 scale:v12 scaleVelocity:-v14 rotation:v16 rotationVelocity:{v18, v20, v21}];
    }
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v24);
}

- (BOOL)setCustomParameterValue:(id)value toParm:(unsigned int)parm
{
  v4 = *&parm;
  if (![(OZFxPlugParameterHandler *)self safeToSetParameters])
  {
    return 0;
  }

  channelMap = self->_channelMap;
  v10 = channelMap[1];
  v8 = (channelMap + 1);
  v9 = v10;
  if (!v10)
  {
    return 0;
  }

  v11 = v8;
  do
  {
    v12 = *(v9 + 8);
    v13 = v12 >= v4;
    v14 = v12 < v4;
    if (v13)
    {
      v11 = v9;
    }

    v9 = *&v9[8 * v14];
  }

  while (v9);
  if (v11 == v8 || *(v11 + 8) > v4)
  {
    return 0;
  }

  v15 = *(v11 + 5);
  getScene = [(OZFxPlugParameterHandler *)self getScene];
  if (getScene && (*(getScene[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v15, 8))
  {
    PCSharedCount::PCSharedCount(&v28);
    (*(v15->var0 + 43))(v15, &v28);
    PCString::~PCString(&v28);
  }

  [(OZFxPlugParameterHandler *)self preChannelChange:v15 flagsOnly:0];
  if (self)
  {
    objc_msgSend_motionEffectRef(self);
  }

  else
  {
    v29 = 0;
  }

  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v27 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(&v28, &ptr);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v18 = *v28.var0;
  if (!*v28.var0 || (v19 = atomic_load(&self->_pluginRemoved), (v19 & 1) != 0))
  {
    [(OZFxPlugParameterHandler *)self postChannelChange:v15 flagsOnly:0];
    v20 = 0;
    v21 = 1;
    goto LABEL_33;
  }

  if (value && (*(v18 + 216) & 1) == 0)
  {
    v22 = *(v18 + 24);
    if (!v22)
    {
      v21 = 0;
      goto LABEL_30;
    }

    if (([v22 useLegacyCoding] & 1) == 0)
    {
      v23 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      [v23 encodeObject:value forKey:@"Custom Data"];
      value = [v23 encodedData];
    }
  }

  isRendering = [(OZFxPlugParameterHandler *)self isRendering];
  v21 = 1;
  OZChannelBlindData::setPluginDataPtr(v15, MEMORY[0x277CC08F0], value, isRendering, 1, 1);
LABEL_30:
  [(OZFxPlugParameterHandler *)self postChannelChange:v15 flagsOnly:0];
  if (self->_startActionCalled)
  {
    ++self->_numWriteActions;
  }

  [(OZFxPlugParameterHandler *)self _updateUIForParm:v4];
  v20 = 1;
LABEL_33:
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v28);
  ProCore_Impl::PCNSRefImpl::release(&v29);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  return v21;
}

- (BOOL)_setCustomParameterValue:(id)value toParm:(unsigned int)parm atTime:(id)time
{
  v5 = *&parm;
  if (![(OZFxPlugParameterHandler *)self safeToSetParameters])
  {
    return 0;
  }

  channelMap = self->_channelMap;
  v11 = channelMap[1];
  v9 = (channelMap + 1);
  v10 = v11;
  if (!v11)
  {
    return 0;
  }

  v12 = v9;
  do
  {
    v13 = *(v10 + 8);
    v14 = v13 >= v5;
    v15 = v13 < v5;
    if (v14)
    {
      v12 = v10;
    }

    v10 = *&v10[8 * v15];
  }

  while (v10);
  if (v12 == v9 || *(v12 + 8) > v5)
  {
    return 0;
  }

  v16 = *(v12 + 5);
  if (self)
  {
    objc_msgSend_motionEffectRef(self);
  }

  else
  {
    v31 = 0;
  }

  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v29 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v30, &ptr);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v18 = *v30[0];
  if (!*v30[0] || (v19 = atomic_load(&self->_pluginRemoved), (v19 & 1) != 0))
  {
    v20 = 0;
    v21 = 1;
    goto LABEL_29;
  }

  memset(&v27, 0, sizeof(v27));
  objc_msgSend_fxTimeToFigTime_withConversionData_(self);
  v26 = v27;
  v22 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v26 forChannel:v16];
  [(OZFxPlugParameterHandler *)self preChannelChange:v16 flagsOnly:0];
  if (value && (*(v18 + 216) & 1) == 0)
  {
    v23 = *(v18 + 24);
    if (!v23)
    {
      v21 = 0;
      goto LABEL_26;
    }

    if (([v23 useLegacyCoding] & 1) == 0)
    {
      v24 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      [v24 encodeObject:value forKey:@"Custom Data"];
      value = [v24 encodedData];
    }
  }

  v21 = 1;
  OZChannelBlindData::setPluginDataPtr(v16, &v27, value, [(OZFxPlugParameterHandler *)self isRendering], 1, 1);
LABEL_26:
  [(OZFxPlugParameterHandler *)self _updateUIForParm:v5];
  [(OZFxPlugParameterHandler *)self postChannelChange:v16 flagsOnly:0];
  if (self->_startActionCalled)
  {
    ++self->_numWriteActions;
  }

  [(OZFxPlugParameterHandler *)self endTimingOperation:v22];
  v20 = 1;
LABEL_29:
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v30);
  ProCore_Impl::PCNSRefImpl::release(&v31);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  return v21;
}

- (BOOL)_setHistogramBlackIn:(double)in BlackOut:(double)out WhiteIn:(double)whiteIn WhiteOut:(double)whiteOut Gamma:(double)gamma forChannel:(unint64_t)channel fromParm:(unsigned int)parm atTime:(id)self0
{
  v10 = *&parm;
  safeToSetParameters = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (safeToSetParameters)
  {
    channelMap = self->_channelMap;
    v22 = channelMap[1];
    v20 = (channelMap + 1);
    v21 = v22;
    if (!v22)
    {
      goto LABEL_10;
    }

    v23 = v20;
    do
    {
      v24 = *(v21 + 8);
      v25 = v24 >= v10;
      v26 = v24 < v10;
      if (v25)
      {
        v23 = v21;
      }

      v21 = *&v21[8 * v26];
    }

    while (v21);
    if (v23 != v20 && *(v23 + 8) <= v10)
    {
      v27 = *(v23 + 5);
      getScene = [(OZFxPlugParameterHandler *)self getScene];
      if (getScene && (*(getScene[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v27, 8))
      {
        PCSharedCount::PCSharedCount(v36);
        (*(v27->var0 + 43))(v27, v36);
        PCString::~PCString(v36);
      }

      [(OZFxPlugParameterHandler *)self preChannelChange:v27 flagsOnly:0];
      if (self)
      {
        objc_msgSend_motionEffectRef(self);
        v36[0].var0 = 0;
        v36[1].var0 = 0;
        v37 = 0;
        objc_msgSend_fxTimeToFigTime_withConversionData_(self);
      }

      else
      {
        v37 = 0;
        v38 = 0;
        v36[0].var0 = 0;
        v36[1].var0 = 0;
      }

      v34 = *&v36[0].var0;
      v35 = v37;
      v29 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v34 forChannel:v27];
      if (channel - 1 >= 4)
      {
        v30 = 392;
      }

      else
      {
        v30 = 896 * channel + 392;
      }

      isRendering = [(OZFxPlugParameterHandler *)self isRendering];
      v32 = (&v27->var0 + v30);
      (*(v32[17] + 712))(v32 + 17, v36, isRendering, in);
      (*(v32[36] + 712))(v32 + 36, v36, isRendering, out);
      (*(v32[55] + 712))(v32 + 55, v36, isRendering, whiteIn);
      (*(v32[74] + 712))(v32 + 74, v36, isRendering, whiteOut);
      (*(v32[93] + 712))(v32 + 93, v36, isRendering, gamma);
      [(OZFxPlugParameterHandler *)self endTimingOperation:v29];
      [(OZFxPlugParameterHandler *)self postChannelChange:v27 flagsOnly:0];
      if (self->_startActionCalled)
      {
        ++self->_numWriteActions;
      }

      [(OZFxPlugParameterHandler *)self _updateUIForParm:v10];
      ProCore_Impl::PCNSRefImpl::release(&v38);
      LOBYTE(safeToSetParameters) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(safeToSetParameters) = 0;
    }
  }

  return safeToSetParameters;
}

- (BOOL)setLevelsBlack:(double)black White:(double)white Gamma:(double)gamma forParm:(unsigned int)parm atTime:(id)time
{
  v7 = *&parm;
  safeToSetParameters = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (safeToSetParameters)
  {
    channelMap = self->_channelMap;
    v16 = channelMap[1];
    v14 = (channelMap + 1);
    v15 = v16;
    if (!v16)
    {
      goto LABEL_10;
    }

    v17 = v14;
    do
    {
      v18 = *(v15 + 8);
      v19 = v18 >= v7;
      v20 = v18 < v7;
      if (v19)
      {
        v17 = v15;
      }

      v15 = *&v15[8 * v20];
    }

    while (v15);
    if (v17 != v14 && *(v17 + 8) <= v7)
    {
      v21 = *(v17 + 5);
      getScene = [(OZFxPlugParameterHandler *)self getScene];
      if (getScene && (*(getScene[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v21, 8))
      {
        PCSharedCount::PCSharedCount(&v26);
        (*(v21->var0 + 43))(v21, &v26);
        PCString::~PCString(&v26);
      }

      if (self)
      {
        objc_msgSend_motionEffectRef(self);
        memset(&v26, 0, sizeof(v26));
        objc_msgSend_fxTimeToFigTime_withConversionData_(self);
      }

      else
      {
        v27 = 0;
        memset(&v26, 0, sizeof(v26));
      }

      v25 = v26;
      v23 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v25 forChannel:v21];
      [(OZFxPlugParameterHandler *)self preChannelChange:v21 flagsOnly:0];
      OZChannelLevels::setBlackValue(v21, &v26, black, 0);
      OZChannelLevels::setWhiteValue(v21, &v26, white, 0);
      OZChannelLevels::setGammaValue(v21, &v26, gamma, 0);
      [(OZFxPlugParameterHandler *)self postChannelChange:v21 flagsOnly:0];
      [(OZFxPlugParameterHandler *)self endTimingOperation:v23];
      if (self->_startActionCalled)
      {
        ++self->_numWriteActions;
      }

      [(OZFxPlugParameterHandler *)self _updateUIForParm:v7];
      ProCore_Impl::PCNSRefImpl::release(&v27);
      LOBYTE(safeToSetParameters) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(safeToSetParameters) = 0;
    }
  }

  return safeToSetParameters;
}

- (BOOL)setParameterFlags:(unsigned int)flags toParm:(unsigned int)parm
{
  v4 = *&parm;
  safeToSetParameters = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (safeToSetParameters)
  {
    channelMap = self->_channelMap;
    v11 = channelMap[1];
    v9 = (channelMap + 1);
    v10 = v11;
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = v9;
    do
    {
      v13 = *(v10 + 8);
      v14 = v13 >= v4;
      v15 = v13 < v4;
      if (v14)
      {
        v12 = v10;
      }

      v10 = *&v10[8 * v15];
    }

    while (v10);
    if (v12 != v9 && *(v12 + 8) <= v4)
    {
      v16 = *(v12 + 5);
      if (v16)
      {
      }

      else
      {
        v17 = 0;
      }

      [(OZFxPlugParameterHandler *)self preChannelChange:v16 flagsOnly:1];
      if (self)
      {
        objc_msgSend_motionEffectRef(self);
      }

      else
      {
        v27 = 0;
      }

      if ((((*(v16->var0 + 64))(v16) ^ flags) & 1) == 0)
      {
        (*(v16->var0 + 63))(v16, (flags & 1) == 0, 0);
      }

      var7 = v16->var7;
      v19 = 4259872;
      if ((flags & 2) == 0)
      {
        v19 = 0;
      }

      v20 = v19 | flags & 4 | (flags >> 1) & 8;
      if ((flags & 0x20) != 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 | 0x10;
      }

      v22 = var7 ^ v21;
      if (((var7 ^ v21) & 0x410030) != 0)
      {
        v23 = 12;
      }

      else
      {
        v23 = 0;
      }

      if (v21 != (var7 & 0x41003C))
      {
        OZChannelBase::setFlag(v16, v21 | 0x100000000, 1);
        OZChannelBase::resetFlag(v16, ~v21 & 0x41003C, 1);
      }

      if ((flags & 8) != 0 && v17 && !OZChannelFolder::testFoldFlag(v17, 4))
      {
        OZChannelFolder::setFoldFlag(v17, 4);
      }

      [(OZFxPlugParameterHandler *)self postChannelChange:v16 flagsOnly:1];
      v24 = v23 & 0xFFFF7FFF | (((v22 >> 2) & 1) << 15);
      if (self->_startActionCalled)
      {
        ++self->_numWriteActions;
      }

      v25 = [OZFxPlugParameterHandlerUIUpdate updateWithParamID:v4 notificationFlags:v24];
      if ([(OZFxPlugParameterHandler *)self isRendering])
      {
        [(OZFxPlugParameterHandler *)self performSelectorOnMainThread:sel__updateUI_ withObject:v25 waitUntilDone:0];
      }

      ProCore_Impl::PCNSRefImpl::release(&v27);
      LOBYTE(safeToSetParameters) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(safeToSetParameters) = 0;
    }
  }

  return safeToSetParameters;
}

- (BOOL)setStringParameterValue:(id)value toParm:(unsigned int)parm
{
  v4 = *&parm;
  safeToSetParameters = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (safeToSetParameters)
  {
    channelMap = self->_channelMap;
    v11 = channelMap[1];
    v9 = (channelMap + 1);
    v10 = v11;
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = v9;
    do
    {
      v13 = *(v10 + 8);
      v14 = v13 >= v4;
      v15 = v13 < v4;
      if (v14)
      {
        v12 = v10;
      }

      v10 = *&v10[8 * v15];
    }

    while (v10);
    if (v12 != v9 && *(v12 + 8) <= v4)
    {
      v16 = *(v12 + 5);
      getScene = [(OZFxPlugParameterHandler *)self getScene];
      if (getScene && (*(getScene[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v16, 8))
      {
        PCSharedCount::PCSharedCount(&v20);
        (*(v16->var0 + 43))(v16, &v20);
        PCString::~PCString(&v20);
      }

      [(OZFxPlugParameterHandler *)self preChannelChange:v16 flagsOnly:0];
      if (self)
      {
        objc_msgSend_motionEffectRef(self);
      }

      else
      {
        v20.var0 = 0;
      }

      PCURL::PCURL(&v19, value);
      (*(v16->var0 + 108))(v16, &v19, [(OZFxPlugParameterHandler *)self isRendering], 0);
      PCString::~PCString(&v19);
      [(OZFxPlugParameterHandler *)self postChannelChange:v16 flagsOnly:0];
      if (self->_startActionCalled)
      {
        ++self->_numWriteActions;
      }

      [(OZFxPlugParameterHandler *)self _updateUIForParm:v4];
      ProCore_Impl::PCNSRefImpl::release(&v20.var0);
      LOBYTE(safeToSetParameters) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(safeToSetParameters) = 0;
    }
  }

  return safeToSetParameters;
}

- (BOOL)setGradientStartEnd:(double)end startY:(double)y endX:(double)x endY:(double)endY toParm:(unsigned int)parm atTime:(id)time
{
  channelMap = self->_channelMap;
  v11 = channelMap[1];
  v9 = (channelMap + 1);
  v10 = v11;
  if (!v11)
  {
    return 0;
  }

  v12 = *&parm;
  v18 = v9;
  do
  {
    v19 = *(v10 + 8);
    v20 = v19 >= parm;
    v21 = v19 < parm;
    if (v20)
    {
      v18 = v10;
    }

    v10 = *&v10[8 * v21];
  }

  while (v10);
  if (v18 == v9 || *(v18 + 8) > parm)
  {
    return 0;
  }

  v23 = *(v18 + 5);
  if (self)
  {
    objc_msgSend_motionEffectRef(self, a2);
    memset(&v26, 0, sizeof(v26));
    objc_msgSend_fxTimeToFigTime_withConversionData_(self);
  }

  else
  {
    v27 = 0;
    memset(&v26, 0, sizeof(v26));
  }

  v25 = v26;
  v24 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v25 forChannel:v23];
  [(OZFxPlugParameterHandler *)self preChannelChange:v23 + 1056 flagsOnly:0];
  OZChannelPosition::setPosition((v23 + 1056), &v26, end, y, [(OZFxPlugParameterHandler *)self isRendering]);
  [(OZFxPlugParameterHandler *)self postChannelChange:v23 + 1056 flagsOnly:0];
  [(OZFxPlugParameterHandler *)self preChannelChange:v23 + 1760 flagsOnly:0];
  OZChannelPosition::setPosition((v23 + 1760), &v26, x, endY, [(OZFxPlugParameterHandler *)self isRendering]);
  [(OZFxPlugParameterHandler *)self postChannelChange:v23 + 1760 flagsOnly:0];
  [(OZFxPlugParameterHandler *)self endTimingOperation:v24];
  [(OZFxPlugParameterHandler *)self _updateUIForParm:v12];
  ProCore_Impl::PCNSRefImpl::release(&v27);
  return 1;
}

- (BOOL)setGradientFlags:(BOOL)flags toParam:(unsigned int)param
{
  channelMap = self->_channelMap;
  v7 = channelMap[1];
  v5 = (channelMap + 1);
  v6 = v7;
  if (!v7)
  {
    return 0;
  }

  v8 = *&param;
  flagsCopy = flags;
  v11 = v5;
  do
  {
    v12 = *(v6 + 8);
    v13 = v12 >= param;
    v14 = v12 < param;
    if (v13)
    {
      v11 = v6;
    }

    v6 = *&v6[8 * v14];
  }

  while (v6);
  if (v11 == v5 || *(v11 + 8) > param)
  {
    return 0;
  }

  v16 = *(v11 + 5);
  if (self)
  {
    objc_msgSend_motionEffectRef(self, a2);
  }

  else
  {
    v17 = 0;
  }

  [(OZFxPlugParameterHandler *)self preChannelChange:v16 + 1056 flagsOnly:1];
  if (flagsCopy)
  {
    OZChannelBase::resetFlag((v16 + 1056), 0x8000, 0);
  }

  else
  {
    OZChannelBase::setFlag((v16 + 1056), 0x8000, 0);
  }

  [(OZFxPlugParameterHandler *)self postChannelChange:v16 + 1056 flagsOnly:1];
  [(OZFxPlugParameterHandler *)self preChannelChange:v16 + 1760 flagsOnly:1];
  if (flagsCopy)
  {
    OZChannelBase::resetFlag((v16 + 1760), 0x8000, 0);
  }

  else
  {
    OZChannelBase::setFlag((v16 + 1760), 0x8000, 0);
  }

  [(OZFxPlugParameterHandler *)self postChannelChange:v16 + 1760 flagsOnly:1];
  [(OZFxPlugParameterHandler *)self preChannelChange:v16 + 800 flagsOnly:1];
  if (flagsCopy)
  {
    OZChannelBase::resetFlag((v16 + 800), 0x8000, 0);
  }

  else
  {
    OZChannelBase::setFlag((v16 + 800), 0x8000, 0);
  }

  [(OZFxPlugParameterHandler *)self postChannelChange:v16 + 800 flagsOnly:1];
  [(OZFxPlugParameterHandler *)self _updateUIForParm:v8];
  ProCore_Impl::PCNSRefImpl::release(&v17);
  return 1;
}

- (BOOL)setGradientHiddenWithOSC:(BOOL)c toParam:(unsigned int)param
{
  channelMap = self->_channelMap;
  v7 = channelMap[1];
  v5 = (channelMap + 1);
  v6 = v7;
  if (!v7)
  {
    return 0;
  }

  v8 = *&param;
  cCopy = c;
  v11 = v5;
  do
  {
    v12 = *(v6 + 8);
    v13 = v12 >= param;
    v14 = v12 < param;
    if (v13)
    {
      v11 = v6;
    }

    v6 = *&v6[8 * v14];
  }

  while (v6);
  if (v11 == v5 || *(v11 + 8) > param)
  {
    return 0;
  }

  getScene = [(OZFxPlugParameterHandler *)self getScene];
  if (getScene)
  {
    v17 = getScene[198];
    if (v17)
    {
      OZDocument::postNotification(v17, 32);
    }
  }

  v18 = *(v11 + 5);
  if (self)
  {
    objc_msgSend_motionEffectRef(self);
  }

  else
  {
    v19 = 0;
  }

  [(OZFxPlugParameterHandler *)self preChannelChange:OZChannelBase::getChannelRootBase(v18) flagsOnly:1];
  if (cCopy)
  {
    OZChannelBase::setFlag(v18, 2, 0);
  }

  else
  {
    OZChannelBase::resetFlag(v18, 2, 0);
  }

  [(OZFxPlugParameterHandler *)self postChannelChange:OZChannelBase::getChannelRootBase(v18) flagsOnly:1];
  [(OZFxPlugParameterHandler *)self _updateUIForParm:v8];
  ProCore_Impl::PCNSRefImpl::release(&v19);
  return 1;
}

- (BOOL)_setPathID:(void *)d toParm:(unsigned int)parm atTime:(id)time
{
  v5 = *&parm;
  safeToSetParameters = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (safeToSetParameters)
  {
    channelMap = self->_channelMap;
    v12 = channelMap[1];
    v10 = (channelMap + 1);
    v11 = v12;
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = v10;
    do
    {
      v14 = *(v11 + 8);
      v15 = v14 >= v5;
      v16 = v14 < v5;
      if (v15)
      {
        v13 = v11;
      }

      v11 = *&v11[8 * v16];
    }

    while (v11);
    if (v13 != v10 && *(v13 + 8) <= v5)
    {
      v17 = *(v13 + 5);
      if (self)
      {
        objc_msgSend_motionEffectRef(self);
        v22 = 0uLL;
        v23 = 0;
        objc_msgSend_fxTimeToFigTime_withConversionData_(self);
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v22 = 0uLL;
      }

      v20 = v22;
      v21 = v23;
      v18 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v20 forChannel:v17];
      [(OZFxPlugParameterHandler *)self preChannelChange:v17 flagsOnly:0];
      OZChanSceneNodeRef::setNode(v17, d);
      [(OZFxPlugParameterHandler *)self postChannelChange:v17 flagsOnly:0];
      [(OZFxPlugParameterHandler *)self endTimingOperation:v18];
      [(OZFxPlugParameterHandler *)self _updateUIForParm:v5];
      ProCore_Impl::PCNSRefImpl::release(&v24);
      LOBYTE(safeToSetParameters) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(safeToSetParameters) = 0;
    }
  }

  return safeToSetParameters;
}

- (BOOL)startUndoGroup:(id)group
{
  getScene = [(OZFxPlugParameterHandler *)self getScene];
  if (getScene)
  {
    v5 = getScene[198];
    if (v5)
    {
      v7.var0 = 0;
      PCString::set(&v7, group);
      OZDocument::startCaptureModifiedChannels(v5, &v7);
      PCString::~PCString(&v7);
      LOBYTE(getScene) = 1;
    }

    else
    {
      LOBYTE(getScene) = 0;
    }
  }

  return getScene;
}

- (BOOL)endUndoGroup
{
  var2 = [(OZFxPlugParameterHandler *)self getScene];
  if (var2)
  {
    var2 = var2[14].var2;
    if (var2)
    {
      OZDocument::endCaptureModifiedChannels(var2, v3);
      LOBYTE(var2) = 1;
    }
  }

  return var2;
}

- (void)_updateUIForParm:(int)parm
{
  v4 = [OZFxPlugParameterHandlerUIUpdate updateWithParamID:*&parm notificationFlags:8];
  if ([(OZFxPlugParameterHandler *)self isRendering])
  {

    [(OZFxPlugParameterHandler *)self performSelectorOnMainThread:sel__updateUI_ withObject:v4 waitUntilDone:0];
  }

  else
  {

    [(OZFxPlugParameterHandler *)self _updateUI:v4];
  }
}

- (void)_updateUI:(id)i
{
  paramID = [i paramID];
  v6 = paramID;
  channelMap = self->_channelMap;
  v10 = channelMap[1];
  v8 = (channelMap + 1);
  v9 = v10;
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v8;
  do
  {
    v12 = *(v9 + 8);
    v13 = v12 >= paramID;
    v14 = v12 < paramID;
    if (v13)
    {
      v11 = v9;
    }

    v9 = *&v9[8 * v14];
  }

  while (v9);
  if (v11 != v8 && paramID >= *(v11 + 8))
  {
    getScene = [(OZFxPlugParameterHandler *)self getScene];
    if (getScene)
    {
      v16 = getScene[198];
      if (v16)
      {
        notificationFlags = [i notificationFlags];

        OZDocument::postNotification(v16, notificationFlags);
      }

      else
      {
        NSLog(&cfstr_UnableToFindDo.isa, v6);
      }
    }

    else
    {
      NSLog(&cfstr_UnableToFindSc_0.isa, v6);
    }
  }

  else
  {
LABEL_9:
    NSLog(&cfstr_UnableToFindPa.isa, paramID);
  }
}

- (void)setRenderParams:(const void *)params withLithiumInput:(void *)input withLithiumAgent:(void *)agent
{
  v8.var0 = *input;
  PCSharedCount::PCSharedCount(&v9, input + 1);
  OZFxPlugRenderContextManager::setThreadInfo(&self->_threadContextManager, &v8, agent, params);
  PCSharedCount::~PCSharedCount(&v9);
}

- (void)getFieldMode:(int *)mode fromFootage:(void *)footage
{
  if (footage)
  {
    v4 = **&MEMORY[0x277CC08F0];
    *mode = OZFootage::getFieldDominance(footage, &v4);
  }
}

- (BOOL)hasValidParameterID:(int)d checkMix:(BOOL)mix checkSpecialCheckboxIDs:(BOOL)ds
{
  dsCopy = ds;
  v7 = *&d;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v15 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v16, &ptr);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (!*v16[0])
  {
    goto LABEL_7;
  }

  v10 = atomic_load(&self->_pluginRemoved);
  if (v10)
  {
    goto LABEL_7;
  }

  v13 = !mix;
  v11 = 1;
  if (v7 != 10001)
  {
    v13 = 0;
  }

  if (!v13 && (v7 - 9999) <= 0xFFFFD8F1 && (*(*v16[0] + 216) & 1) != 0 && ((v7 - 10006) < 0xFFFFFFFC || dsCopy))
  {
    NSLog(&cfstr_FxplugErrorPar.isa, v7);
LABEL_7:
    v11 = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v16);
  return v11;
}

- (BOOL)parameter:(int)parameter hasValidFlags:(unsigned int)flags
{
  v4 = flags & 0xFFFDF480;
  if ((flags & 0xFFFDF480) != 0)
  {
    NSLog(&cfstr_FxplugErrorPar_0.isa, a2, parameter, *&flags);
  }

  return v4 == 0;
}

- (BOOL)_floatParameter:(int)parameter hasValidMin:(double)min max:(double)max sliderMin:(double)sliderMin sliderMax:(double)sliderMax defaultValue:(double)value paramFlags:(unsigned int)flags
{
  v9 = *&flags;
  v15 = *&parameter;
  v17 = [(OZFxPlugParameterHandler *)self hasValidParameterID:*&parameter checkMix:0 checkSpecialCheckboxIDs:1];
  if (v17)
  {
    v17 = [(OZFxPlugParameterHandler *)self parameter:v15 hasValidFlags:v9];
    if ((v9 & 0x100) != 0 || !v17)
    {
      if (!v17)
      {
        return v17;
      }
    }

    else
    {
      if (min > max)
      {
        NSLog(&cfstr_FxplugErrorPar_1.isa, v15, *&min, *&max);
LABEL_34:
        LOBYTE(v17) = 0;
        return v17;
      }

      if (min > value || value > max)
      {
        NSLog(&cfstr_FxplugErrorPar_2.isa, v15, *&value, *&min, *&max);
        goto LABEL_34;
      }

      if (sliderMin < min)
      {
        NSLog(&cfstr_FxplugErrorPar_3.isa, v15, *&sliderMin, *&min);
        goto LABEL_34;
      }

      if (sliderMin > max)
      {
        NSLog(&cfstr_FxplugErrorPar_4.isa, v15, *&sliderMin, *&max);
        goto LABEL_34;
      }

      if (sliderMax > max)
      {
        NSLog(&cfstr_FxplugErrorPar_5.isa, v15, *&sliderMax, *&max);
        goto LABEL_34;
      }

      if (sliderMax < min)
      {
        NSLog(&cfstr_FxplugErrorPar_6.isa, v15, *&sliderMax, *&min);
        goto LABEL_34;
      }
    }

    if ((*&min & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      NSLog(&cfstr_FxplugErrorPar_7.isa, v15, *&min);
      goto LABEL_34;
    }

    if ((*&max & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      NSLog(&cfstr_FxplugErrorPar_8.isa, v15, *&max);
      goto LABEL_34;
    }

    if ((*&value & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      NSLog(&cfstr_FxplugErrorPar_9.isa, v15, *&value);
      goto LABEL_34;
    }

    if ((*&sliderMin & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      NSLog(&cfstr_FxplugErrorPar_10.isa, v15, *&sliderMin);
      goto LABEL_34;
    }

    if ((*&sliderMax & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      NSLog(&cfstr_FxplugErrorPar_11.isa, v15, *&sliderMax);
      goto LABEL_34;
    }

    if (sliderMin > sliderMax)
    {
      NSLog(&cfstr_FxplugErrorPar_12.isa, v15, *&sliderMin, *&sliderMax);
      goto LABEL_34;
    }

    if (sliderMin > value || value > sliderMax)
    {
      NSLog(&cfstr_FxplugErrorPar_13.isa, v15, *&value, *&sliderMin, *&sliderMax);
      goto LABEL_34;
    }

    LOBYTE(v17) = 1;
  }

  return v17;
}

- (BOOL)_intParameter:(int)parameter hasValidMin:(int)min max:(int)max sliderMin:(int)sliderMin sliderMax:(int)sliderMax defaultValue:(int)value paramFlags:(unsigned int)flags
{
  v9 = *&value;
  v10 = *&sliderMax;
  v11 = *&sliderMin;
  v12 = *&max;
  v13 = *&min;
  v14 = *&parameter;
  v16 = [(OZFxPlugParameterHandler *)self hasValidParameterID:*&parameter checkMix:1 checkSpecialCheckboxIDs:1];
  if (v16)
  {
    v16 = [(OZFxPlugParameterHandler *)self parameter:v14 hasValidFlags:flags];
  }

  if ((flags & 0x100) != 0)
  {
    if (v11 <= v10 || !v16)
    {
      if (!v16)
      {
        return v16;
      }

      goto LABEL_17;
    }

LABEL_10:
    NSLog(&cfstr_FxplugErrorPar_20.isa, v14, v11, v10);
    goto LABEL_22;
  }

  if (v13 > v12)
  {
    NSLog(&cfstr_FxplugErrorPar_14.isa, v14, v13, v12);
LABEL_22:
    LOBYTE(v16) = 0;
    return v16;
  }

  if (v16)
  {
    if (v13 > v9 || v9 > v12)
    {
      NSLog(&cfstr_FxplugErrorPar_15.isa, v14, v9, v13, v12);
      goto LABEL_22;
    }

    if (v11 < v13)
    {
      NSLog(&cfstr_FxplugErrorPar_16.isa, v14, v11, v13);
      goto LABEL_22;
    }

    if (v11 > v12)
    {
      NSLog(&cfstr_FxplugErrorPar_17.isa, v14, v11, v12);
      goto LABEL_22;
    }

    if (v10 > v12)
    {
      NSLog(&cfstr_FxplugErrorPar_18.isa, v14, v10, v12);
      goto LABEL_22;
    }

    if (v10 < v13)
    {
      NSLog(&cfstr_FxplugErrorPar_19.isa, v14, v10, v13);
      goto LABEL_22;
    }

    if (v11 <= v10)
    {
LABEL_17:
      if (v11 > v9 || v9 > v10)
      {
        NSLog(&cfstr_FxplugErrorPar_21.isa, v14, v9, v11, v10);
        goto LABEL_22;
      }

      LOBYTE(v16) = 1;
      return v16;
    }

    goto LABEL_10;
  }

  return v16;
}

- (OZRenderState)getTempContextRenderState
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v10 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v11, &ptr);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (*v11[0] && (v6 = atomic_load(&self->_pluginRemoved), (v6 & 1) == 0))
  {
    RenderParams = OZFxPlugRenderContextManager::getRenderParams(&self->_threadContextManager, *v11[0]);
    OZRenderState::OZRenderState(retstr, RenderParams);
  }

  else
  {
    OZRenderState::OZRenderState(retstr);
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v11);
  return result;
}

- (void)getPointChannel:(OZChannel *)channel nearestPoint:(PCVector2<double>)point atTime:(id *)time
{
  v9.var1 = [(OZFxPlugParameterHandler *)self figTimeToFxTime:v5 withConversionData:0, point.var0, point.var1];
  channelMap = self->_channelMap;
  v11 = *channelMap;
  if (*channelMap == channelMap + 1)
  {
    v13 = 0;
  }

  else
  {
    var1 = v9.var1;
    v13 = 0;
    v14 = 3.40282347e38;
    do
    {
      v15 = v11[5];
      if (v15)
      {
        if (v16)
        {
          v17 = v16;
          v22 = 0.0;
          v23 = 0.0;
          [(OZFxPlugParameterHandler *)self _getXValue:&v23 YValue:&v22 fromParm:*(v11 + 8) atTime:var1];
          v18 = sqrt((v23 - *&time->var0) * (v23 - *&time->var0) + (v22 - *&time->var1) * (v22 - *&time->var1));
          if (v18 < v14)
          {
            v13 = v17;
            v14 = v18;
          }
        }
      }

      v19 = v11[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v11[2];
          v21 = *v20 == v11;
          v11 = v20;
        }

        while (!v21);
      }

      v11 = v20;
    }

    while (v20 != self->_channelMap + 1);
  }

  *channel = v13;
}

- (PCRect<double>)getBoundsFromSceneNode:(void *)node withRenderParams:(void *)params
{
  v8 = v4;
  *v4 = 0;
  *(v4 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v4 + 16) = _Q0;
  if (!node)
  {
    v15 = 0;
LABEL_6:
    (*(*v15 + 16))(v15, v8, params);
    if (!self)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!v14)
  {
    goto LABEL_6;
  }

  (*(*v14 + 1552))(v14, v8, params);
  if (!self)
  {
LABEL_4:
    v20 = 0;
    goto LABEL_9;
  }

LABEL_7:
  objc_msgSend_motionEffectRef(self);
  if (v20)
  {
    [(OZFxPlugParameterHandler *)self isImageWellMediaFlexoMediaForSceneNode:node];
  }

LABEL_9:
  ProCore_Impl::PCNSRefImpl::release(&v20);
  result.var3 = v19;
  result.var2 = v18;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (PCPtr<LiImageSource>)makeSourceFromSceneNode:(void *)node withRenderParams:(void *)params
{
  v7 = v4;
  v4->var0 = 0;
  v8 = &v4[1];
  PCSharedCount::PCSharedCount(v4 + 1);
  OZRenderGraphState::OZRenderGraphState(v15);
  if (node)
  {
  }

  Render360GroupAsEquirectSentry::Render360GroupAsEquirectSentry(v14, node, params);
  (*(*node + 176))(&v12, node, params, v15, 1);
  v7->var0 = v12;
  PCSharedCount::PCSharedCount(&v20, &v13);
  PCSharedCount::operator=(v8, &v20);
  PCSharedCount::~PCSharedCount(&v20);
  PCSharedCount::~PCSharedCount(&v13);
  Render360GroupAsEquirectSentry::~Render360GroupAsEquirectSentry(v14);
  v17 = &unk_2871F25A8;
  if (v18 < 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v18;
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::resize(&v17, 0, v9);
  if (v19)
  {
    MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
  }

  v19 = 0;
  v18 = 0;
  v10 = std::__list_imp<unsigned int>::clear(v16);
  result.var1.var0 = v11;
  result.var0 = v10;
  return result;
}

- (double)getPixelAspectRatioFromSceneNode:(void *)node
{
  if (!node)
  {
    return 1.0;
  }

  if (v4)
  {
    (*(*v4 + 1328))(v4);
    if (v5)
    {
      if (result != 1.0)
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  else
  {
    if (v5)
    {
LABEL_8:
      v8 = *(*v5 + 1792);
      v9 = v5;

LABEL_20:
      v8(v9);
      return result;
    }

    result = 1.0;
  }

  if (result == 1.0 && v6 != 0)
  {
    v8 = *(*v6 + 40);
    v9 = v6;

    goto LABEL_20;
  }

  return result;
}

- (BOOL)finalizeImage:(id)image withSceneNode:(void *)node pixelBounds:(PCRect<int>)bounds agent:(void *)agent andRenderParams:(const void *)params atTime:(id)time
{
  v8 = *&bounds.var2;
  v9 = *&bounds.var0;
  paramsCopy = params;
  v42 = *(agent + 123);
  if (node)
  {
  }

  [(OZFxPlugParameterHandler *)self getFieldMode:&v42 fromFootage:node];
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v40 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v41, &ptr);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  v13 = *v41[0];
  if (*v41[0] && (v14 = atomic_load(&self->_pluginRemoved), (v14 & 1) == 0))
  {
    v38 = v42;
    isObjectRef = OZChannelBase::isObjectRef(v13);
    [image setFieldOrder:v38];
    [image setField:isObjectRef];
    PluginNCLC = OZFxPlugSharedBase::getPluginNCLC(&v13->var0, v8);
    v37 = v17;
    *&v18 = FxConvertPCNCLCCodeToFxNCLCValue(&PluginNCLC);
    [image setNCLCValue:{v19, v18}];
    [image setColorSpace:{OZFxPlugSharedBase::getPluginColorSpace(&v13->var0, v8)}];
    OZFxPlugSharedBase::getPluginColorDescription(&v35, &v13->var0, v8);
    [image setDynamicRangeType:OZFxPlug_ConvertDynamicRangeType(&v35)];
    v20 = v9[1];
    v21.i64[0] = *v9;
    v21.i64[1] = HIDWORD(*v9);
    v22 = vcvtq_f64_s64(v21);
    v21.i64[0] = v20;
    v21.i64[1] = SHIDWORD(v20);
    v33 = v22;
    v34 = vcvtq_f64_s64(v21);
    LiAgent::getInversePixelTransform(v8, 0.0, v32);
    v15 = PCMatrix44Tmpl<double>::transformRect<double>(v32, v33.f64, &v33);
    if (v15)
    {
      [image setBounds:{*&v33, *&v34}];
      v23 = *(v8 + 20);
      v24 = v23[3];
      v26 = *v23;
      v25 = v23[1];
      v31[2] = v23[2];
      v31[3] = v24;
      v31[0] = v26;
      v31[1] = v25;
      v27 = v23[7];
      v29 = v23[4];
      v28 = v23[5];
      v31[6] = v23[6];
      v31[7] = v27;
      v31[4] = v29;
      v31[5] = v28;
      [image setPixelTransform:FxMatrixFromPCMatrix(v31)];
    }

    PCCFRef<CGColorSpace *>::~PCCFRef(&v35._pcColorDesc._colorSpaceRef._obj);
  }

  else
  {
    v15 = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v41);
  return v15;
}

- (void)getLayerOffsetX:(double *)x andOffsetY:(double *)y fromSceneNode:(void *)node withRenderParams:(const void *)params
{
  if (node)
  {
    if (v9 && (x | y) != 0)
    {
      v12 = 0.0;
      v13 = 0.0;
      v11 = *params;
      OZTransformNode::getTranslation(v9, &v13, &v12, &v11);
      if (x)
      {
        *x = v13;
      }

      if (y)
      {
        *y = v12;
      }
    }
  }
}

- (BOOL)_setupRenderer
{
  if (!self->_renderer)
  {
    operator new();
  }

  return 1;
}

- (unsigned)fxParameterFlagsForChannel:(OZChannelBase *)channel
{
  var0 = channel->var0;
  var7 = channel->var7;
  v8 = ~LODWORD(channel->var7);
  v9 = (var0[64])(channel) ^ 1;
  if ((*&v8 & 0x410020) == 0)
  {
    v9 |= 0x20202u;
  }

  v10 = v9 | var7 & 4;
  if (v6 && OZChannelFolder::testFoldFlag(v6, 4))
  {
    v10 |= 8u;
  }

  if ((var7 & 0x10) != 0)
  {
    v11 = v10 | (2 * var7) & 0x10;
  }

  else
  {
    v11 = v10 | (2 * var7) & 0x10 | 0x20;
  }

  if (v5)
  {
    v14 = 0.0;
    (*(**(v5[14] + 8) + 264))(*(v5[14] + 8), &v14);
    v12 = v14;
    if (v14 == -1.79769313e308)
    {
      v14 = 0.0;
      (*(**(v5[14] + 8) + 256))(*(v5[14] + 8), &v14, v12);
      if (v14 == 1.79769313e308)
      {
        v11 |= 0x100u;
      }
    }
  }

  return (var7 >> 5) & 0x20000 | (var7 >> 7) & 0x200 | v11;
}

- (void)setupImageParamIDs:(void *)ds
{
  channelMap = self->_channelMap;
  v4 = *channelMap;
  if (*channelMap != channelMap + 1)
  {
    do
    {
      v7 = v4[5];
      if (v7)
      {
        if (v8)
        {
          v9 = v8[6];
          v11 = *(ds + 1);
          v10 = *(ds + 2);
          if (v11 >= v10)
          {
            v13 = *ds;
            v14 = v11 - *ds;
            v15 = v14 >> 2;
            v16 = (v14 >> 2) + 1;
            if (v16 >> 62)
            {
              std::vector<double>::__throw_length_error[abi:ne200100]();
            }

            v17 = v10 - v13;
            if (v17 >> 1 > v16)
            {
              v16 = v17 >> 1;
            }

            if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v18 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v16;
            }

            if (v18)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(ds, v18);
            }

            *(4 * v15) = v9;
            v12 = 4 * v15 + 4;
            memcpy(0, v13, v14);
            v19 = *ds;
            *ds = 0;
            *(ds + 1) = v12;
            *(ds + 2) = 0;
            if (v19)
            {
              operator delete(v19);
            }
          }

          else
          {
            *v11 = v9;
            v12 = (v11 + 1);
          }

          *(ds + 1) = v12;
        }
      }

      v20 = v4[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v4[2];
          v22 = *v21 == v4;
          v4 = v21;
        }

        while (!v22);
      }

      v4 = v21;
    }

    while (v21 != self->_channelMap + 1);
  }
}

- (id)transactionForParameterID:(unsigned int)d atTime:(id *)time transactionID:(unint64_t)iD pluginSessionID:(unint64_t)sessionID
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v33 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v34, &ptr);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (!*v34[0])
  {
    goto LABEL_15;
  }

  v12 = atomic_load(&self->_pluginRemoved);
  if (v12)
  {
    goto LABEL_15;
  }

  OZFxPlugSharedBase::getPluginUUID(&v30, *v34[0]);
  v13 = PCString::ns_str(&v30);
  PCString::~PCString(&v30);
  left = self->_paramCreationMap.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_15;
  }

  p_end_node = &self->_paramCreationMap.__tree_.__end_node_;
  do
  {
    v16 = left[4].__left_;
    v17 = v16 >= d;
    v18 = v16 < d;
    if (v17)
    {
      p_end_node = left;
    }

    left = left[v18].__left_;
  }

  while (left);
  if (p_end_node != &self->_paramCreationMap.__tree_.__end_node_ && LODWORD(p_end_node[4].__left_) <= d)
  {
    channelMap = self->_channelMap;
    v24 = channelMap[1];
    v22 = (channelMap + 1);
    v23 = v24;
    if (!v24)
    {
      goto LABEL_25;
    }

    v25 = v22;
    do
    {
      v26 = *(v23 + 8);
      v17 = v26 >= d;
      v27 = v26 < d;
      if (v17)
      {
        v25 = v23;
      }

      v23 = *&v23[8 * v27];
    }

    while (v23);
    if (v25 == v22 || *(v25 + 8) > d)
    {
LABEL_25:
      v25 = v22;
    }

    v28 = *(v25 + 5);
    v29 = p_end_node[5].__left_;
    v30 = *&time->var0;
    var3 = time->var3;
    v19 = v29(v28, 0, &v30, iD, v13, sessionID);
  }

  else
  {
LABEL_15:
    v19 = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v34);
  return v19;
}

- (id).cxx_construct
{
  self->_paramCreationMap.__tree_.__size_ = 0;
  self->_paramCreationMap.__tree_.__end_node_.__left_ = 0;
  self->_paramCreationMap.__tree_.__begin_node_ = &self->_paramCreationMap.__tree_.__end_node_;
  self->_customParameterList.__end_ = 0;
  self->_customParameterList.__cap_ = 0;
  self->_customParameterList.__begin_ = 0;
  OZFxPlugRenderContextManager::OZFxPlugRenderContextManager(&self->_threadContextManager);
  *&self->_suppressChannelChangesStack.c.__map_.__end_ = 0u;
  *&self->_suppressChannelChangesStack.c.__start_ = 0u;
  *&self->_suppressChannelChangesStack.c.__map_.__first_ = 0u;
  self->_fullWidthCustomParams.__end_ = 0;
  self->_fullWidthCustomParams.__cap_ = 0;
  self->_fullWidthCustomParams.__begin_ = 0;
  self->_fxPlugLock.__ptr_ = 0;
  self->_fxPlugLock.__cntrl_ = 0;
  return self;
}

@end