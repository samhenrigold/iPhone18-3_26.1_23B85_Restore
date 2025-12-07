@interface VFXAVPlayerSource
- (VFXAVPlayerSource)init;
- (id)metalTextureWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)connectToProxy:(__CFXImageProxy *)proxy;
- (void)dealloc;
- (void)registerPlayerIfNeeded:(id)needed;
- (void)setPlayer:(id)player;
- (void)unregisterPlayer:(id)player;
@end

@implementation VFXAVPlayerSource

- (VFXAVPlayerSource)init
{
  v3.receiver = self;
  v3.super_class = VFXAVPlayerSource;
  return [(VFXAVPlayerSource *)&v3 init];
}

- (void)registerPlayerIfNeeded:(id)needed
{
  v19[5] = *MEMORY[0x1E69E9840];
  if (!self->_data.videoOutput)
  {
    v5 = *MEMORY[0x1E6965DB8];
    v6 = *MEMORY[0x1E6965FD0];
    v7 = *MEMORY[0x1E6965F50];
    v8 = *MEMORY[0x1E6965F98];
    v18[0] = *MEMORY[0x1E6965D88];
    v18[1] = v8;
    v19[0] = v5;
    v19[1] = v6;
    v9 = *MEMORY[0x1E6966100];
    v18[2] = *MEMORY[0x1E6965F30];
    v18[3] = v9;
    v19[2] = v7;
    v19[3] = MEMORY[0x1E695E118];
    v18[4] = *MEMORY[0x1E6966130];
    v19[4] = &unk_1F25D4690;
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v19, v18, 5);
    v11 = objc_alloc(MEMORY[0x1E69880D8]);
    v13 = objc_msgSend_initWithPixelBufferAttributes_(v11, v12, v10);
    self->_data.videoOutput = v13;
    v16 = objc_msgSend_currentItem(needed, v14, v15);
    objc_msgSend_addOutput_(v16, v17, v13);
  }
}

- (void)unregisterPlayer:(id)player
{
  v4 = objc_msgSend_currentItem(player, a2, player);
  videoOutput = self->_data.videoOutput;

  MEMORY[0x1EEE66B58](v4, sel_removeOutput_, videoOutput);
}

- (void)dealloc
{
  objc_msgSend_unregisterPlayer_(self, a2, self->_player);

  sub_1AF28BE50(&self->_data);
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
    self->_textureCache = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXAVPlayerSource;
  [(VFXTextureSource *)&v4 dealloc];
}

- (void)setPlayer:(id)player
{
  player = self->_player;
  if (player != player)
  {
    objc_msgSend_unregisterPlayer_(self, a2, player);

    self->_player = player;
  }
}

- (void)connectToProxy:(__CFXImageProxy *)proxy
{
  sub_1AF27679C(proxy, self, 1);
  v4[0] = xmmword_1F24EBDF8;
  v4[1] = *&off_1F24EBE08;
  sub_1AF276824(proxy, v4);
}

- (id)metalTextureWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status
{
  v30[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1AF12E2AC(context, a2);
  objc_msgSend_registerPlayerIfNeeded_(self, v10, self->_player);
  videoOutput = self->_data.videoOutput;
  v27 = 0uLL;
  v28 = 0;
  v14 = sub_1AF1302C4(context);
  if (videoOutput)
  {
    objc_msgSend_itemTimeForHostTime_(videoOutput, v12, v13, v14);
  }

  else
  {
    v27 = 0uLL;
    v28 = 0;
  }

  v25 = v27;
  v26 = v28;
  hasNewPixelBufferForItemTime = objc_msgSend_hasNewPixelBufferForItemTime_(videoOutput, v12, &v25);
  if (hasNewPixelBufferForItemTime)
  {
    v25 = v27;
    v26 = v28;
    hasNewPixelBufferForItemTime = objc_msgSend_copyPixelBufferForItemTime_itemTimeForDisplay_(videoOutput, v16, &v25, 0);
    if (hasNewPixelBufferForItemTime)
    {
      v18 = hasNewPixelBufferForItemTime;
      sub_1AF28BE04(&self->_data, v16, v17);
      self->_data.var0 = v18;
      self->_width = CVPixelBufferGetWidth(v18);
      hasNewPixelBufferForItemTime = CVPixelBufferGetHeight(v18);
      self->_height = hasNewPixelBufferForItemTime;
    }
  }

  if (self->_data.var0)
  {
    result = self->_data.mtlTextureForRenderer;
    if (result)
    {
      *status = 256;
    }

    else
    {
      textureCache = self->_textureCache;
      if (!textureCache)
      {
        v22 = objc_msgSend_device(v9, v16, 0);
        v29 = *MEMORY[0x1E6966010];
        v30[0] = &unk_1F25D43D8;
        v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, v30, &v29, 1);
        CVMetalTextureCacheCreate(0, 0, v22, v24, &self->_textureCache);
        textureCache = self->_textureCache;
      }

      sub_1AF28BEAC(&self->_data, v9, textureCache);
      *status = 257;
      return self->_data.mtlTextureForRenderer;
    }
  }

  else
  {
    v20 = sub_1AF0D5194(hasNewPixelBufferForItemTime, v16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF3A08();
    }

    return 0;
  }

  return result;
}

@end