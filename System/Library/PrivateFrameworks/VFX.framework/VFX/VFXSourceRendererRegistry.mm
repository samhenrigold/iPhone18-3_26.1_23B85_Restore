@interface VFXSourceRendererRegistry
+ (id)sharedRegistry;
- (VFXSourceRendererRegistry)init;
- (id)sourceRendererForEngineContext:(__CFXEngineContext *)context source:(id)source textureSource:(id)textureSource targetTexture:(id)texture;
- (void)dealloc;
- (void)removeSourceRenderersForSource:(id)source;
- (void)rendererDidChange:(id)change;
@end

@implementation VFXSourceRendererRegistry

- (VFXSourceRendererRegistry)init
{
  v4.receiver = self;
  v4.super_class = VFXSourceRendererRegistry;
  v2 = [(VFXSourceRendererRegistry *)&v4 init];
  if (v2)
  {
    v2->_registry = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  }

  return v2;
}

- (void)dealloc
{
  registry = self->_registry;
  if (registry)
  {
    CFRelease(registry);
  }

  v4.receiver = self;
  v4.super_class = VFXSourceRendererRegistry;
  [(VFXSourceRendererRegistry *)&v4 dealloc];
}

+ (id)sharedRegistry
{
  if (qword_1EB64FB28 != -1)
  {
    sub_1AFDF3D64();
  }

  return qword_1EB64FB20;
}

- (void)rendererDidChange:(id)change
{
  if (pthread_main_np())
  {
    v6 = objc_msgSend_layer(change, v4, v5);
    v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);

    objc_msgSend_postNotificationName_object_(v9, v10, @"VFXLayerTreeDidChange", v6);
  }

  else
  {
    objc_msgSend_begin(MEMORY[0x1E6979518], v4, v5);
    objc_msgSend_activateBackground_(MEMORY[0x1E6979518], v11, 1);
    v14 = objc_msgSend_layer(change, v12, v13);
    v17 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v15, v16);
    objc_msgSend_postNotificationName_object_(v17, v18, @"VFXLayerTreeDidChange", v14);
    v21 = MEMORY[0x1E6979518];

    objc_msgSend_commit(v21, v19, v20);
  }
}

- (id)sourceRendererForEngineContext:(__CFXEngineContext *)context source:(id)source textureSource:(id)textureSource targetTexture:(id)texture
{
  v38[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&unk_1EB644850);
  Value = CFDictionaryGetValue(self->_registry, source);
  if (Value)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_14:
    Value = 0;
    goto LABEL_15;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v16 = objc_msgSend_valueForKey_(source, v11, @"VFXIsBackingViewAsMaterialPropertyTag");
    if (!objc_msgSend_BOOLValue(v16, v17, v18))
    {
      goto LABEL_9;
    }

    v37 = @"kCARendererFlags";
    v38[0] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v19, 3);
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, v38, &v37, 1);
    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_8:
    v21 = objc_msgSend_mutableCopy(v13, v14, v15);
    goto LABEL_10;
  }

  v13 = objc_msgSend_rendererOptions(source, v11, v12);
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_9:
  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
LABEL_10:
  v23 = v21;
  if (!texture)
  {

    goto LABEL_14;
  }

  v24 = sub_1AF164458(v21, v22);
  objc_msgSend_setObject_forKeyedSubscript_(v23, v25, v24, *MEMORY[0x1E6979F08]);
  v27 = sub_1AF12E2AC(context, v26);
  v30 = objc_msgSend_commandQueue(v27, v28, v29);
  objc_msgSend_setObject_forKeyedSubscript_(v23, v31, v30, *MEMORY[0x1E6979F10]);
  objc_msgSend_setObject_forKeyedSubscript_(v23, v32, MEMORY[0x1E695E118], *MEMORY[0x1E6979F00]);
  Value = objc_msgSend_rendererWithMTLTexture_options_(MEMORY[0x1E6979428], v33, texture, v23);
  objc_msgSend_setDelegate_(Value, v34, self);

  if (Value)
  {
    CFDictionarySetValue(self->_registry, source, Value);
  }

LABEL_15:
  v35 = Value;
  os_unfair_lock_unlock(&unk_1EB644850);
  return Value;
}

- (void)removeSourceRenderersForSource:(id)source
{
  os_unfair_lock_lock(&unk_1EB644850);
  CFDictionaryRemoveValue(self->_registry, source);

  os_unfair_lock_unlock(&unk_1EB644850);
}

@end