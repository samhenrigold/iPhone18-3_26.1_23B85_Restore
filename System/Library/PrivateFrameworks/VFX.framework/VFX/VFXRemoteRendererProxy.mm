@interface VFXRemoteRendererProxy
- (VFXRemoteRendererProxy)init;
- (void)dealloc;
- (void)destroyBufferWithRemoteID:(id)d;
- (void)destroyTextureWithRemoteID:(id)d;
- (void)newBuffer:(id)buffer remoteID:(id)d;
- (void)newFrame:(id)frame index:(int64_t)index;
@end

@implementation VFXRemoteRendererProxy

- (VFXRemoteRendererProxy)init
{
  v8.receiver = self;
  v8.super_class = VFXRemoteRendererProxy;
  v4 = [(VFXRemoteRendererProxy *)&v8 init];
  if (v4)
  {
    v4->_decoder = objc_msgSend_remoteDecoder(VFXRenderer, v2, v3);
    v5 = objc_alloc_init(VFXRenderOptions);
    v4->_renderOptions = v5;
    objc_msgSend_setWaitUntilCompleted_(v5, v6, 1);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXRemoteRendererProxy;
  [(VFXRemoteRendererProxy *)&v3 dealloc];
}

- (void)newFrame:(id)frame index:(int64_t)index
{
  lastFrame = self->_lastFrame;
  if (lastFrame != frame)
  {

    self->_lastFrame = frame;
  }
}

- (void)newBuffer:(id)buffer remoteID:(id)d
{
  region = 0;
  v6 = xpc_shmem_map(buffer, &region);
  v9 = objc_msgSend_device(self->_decoder, v7, v8);
  v11 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v9, v10, region, v6, 0, &unk_1F24EC248);
  v12 = MEMORY[0x1E696AEC0];
  v15 = objc_msgSend_unsignedIntegerValue(d, v13, v14);
  v17 = objc_msgSend_stringWithFormat_(v12, v16, @"shared_%lx", v15);
  objc_msgSend_setLabel_(v11, v18, v17);
  v21 = objc_msgSend_resourceConsumer(self->_decoder, v19, v20);
  v24 = objc_msgSend_unsignedIntegerValue(d, v22, v23);
  objc_msgSend_remoteRegisterBuffer_remoteID_(v21, v25, v11, v24);
}

- (void)destroyBufferWithRemoteID:(id)d
{
  v4 = objc_msgSend_resourceConsumer(self->_decoder, a2, d);
  v7 = objc_msgSend_unsignedIntegerValue(d, v5, v6);

  MEMORY[0x1EEE66B58](v4, sel_remoteUnregisterBuffer_, v7);
}

- (void)destroyTextureWithRemoteID:(id)d
{
  v4 = objc_msgSend_resourceConsumer(self->_decoder, a2, d);
  v7 = objc_msgSend_unsignedIntegerValue(d, v5, v6);

  MEMORY[0x1EEE66B58](v4, sel_remoteUnregisterTexture_, v7);
}

@end