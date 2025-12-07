@interface VFXTriggerManager
- (BOOL)isPresentation;
- (VFXTriggerManager)initWithCoder:(id)coder;
- (id)copy;
- (void)_updateActiveTriggerTypesWithMoveNeeded:(BOOL)needed;
- (void)dealloc;
- (void)enableTriggerTypes:(id)types;
- (void)physicsWorld:(id)world didBeginContact:(id)contact;
- (void)physicsWorld:(id)world didEndContact:(id)contact;
- (void)physicsWorld:(id)world didUpdateContact:(id)contact;
- (void)setHandTrackingEnabled:(BOOL)enabled;
- (void)setWorld:(id)world;
- (void)triggerTouch:(id)touch event:(id)event fromView:(id)view;
@end

@implementation VFXTriggerManager

- (VFXTriggerManager)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = VFXTriggerManager;
  v5 = [(VFXTriggerManager *)&v8 init];
  if (v5 && objc_msgSend_containsValueForKey_(coder, v4, @"isHandTrackingEnabled"))
  {
    v5->_isHandTrackingEnabled = objc_msgSend_decodeBoolForKey_(coder, v6, @"isHandTrackingEnabled");
  }

  return v5;
}

- (void)dealloc
{
  objc_msgSend_enableTriggerTypes_(self, a2, 0);
  v3.receiver = self;
  v3.super_class = VFXTriggerManager;
  [(VFXTriggerManager *)&v3 dealloc];
}

- (BOOL)isPresentation
{
  Weak = objc_loadWeak(&self->_world);

  return objc_msgSend_isPresentationObject(Weak, v3, v4);
}

- (void)triggerTouch:(id)touch event:(id)event fromView:(id)view
{
  v7 = objc_msgSend_phase(event, a2, touch);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      if ((*&self->_enabledTypes & 2) == 0)
      {
        return;
      }
    }

    else if (v7 != 4 || (*&self->_enabledTypes & 0x10) == 0)
    {
      return;
    }
  }

  else if ((v7 - 1) >= 2)
  {
    if (v7 || (*&self->_enabledTypes & 1) == 0)
    {
      return;
    }
  }

  else if ((*&self->_enabledTypes & 4) == 0)
  {
    return;
  }

  objc_loadWeak(&self->_world);

  MEMORY[0x1EEE66B58](_TtC3VFX8VFXScene, sel_appendWithTrigger_touchEvent_view_inWorld_, touch);
}

- (void)physicsWorld:(id)world didBeginContact:(id)contact
{
  objc_loadWeak(&self->_world);

  MEMORY[0x1EEE66B58](_TtC3VFX8VFXScene, sel_appendWithTrigger_contact_inWorld_, @"VFXTriggerTypeCollisionBegan");
}

- (void)physicsWorld:(id)world didUpdateContact:(id)contact
{
  objc_loadWeak(&self->_world);

  MEMORY[0x1EEE66B58](_TtC3VFX8VFXScene, sel_appendWithTrigger_contact_inWorld_, @"VFXTriggerTypeCollisionUpdate");
}

- (void)physicsWorld:(id)world didEndContact:(id)contact
{
  objc_loadWeak(&self->_world);

  MEMORY[0x1EEE66B58](_TtC3VFX8VFXScene, sel_appendWithTrigger_contact_inWorld_, @"VFXTriggerTypeCollisionEnded");
}

- (id)copy
{
  result = objc_alloc_init(VFXTriggerManager);
  *(result + 4) = self->_enabledTypes;
  *(result + 33) = self->_isHandTrackingEnabled;
  *(result + 32) = self->_isHandTrackingScriptPresent;
  return result;
}

- (void)setWorld:(id)world
{
  objc_storeWeak(&self->_world, world);
  if (world)
  {
    objc_msgSend_registerWithTriggerManager_inWorld_(_TtC3VFX8VFXScene, v5, self, world);
    v8 = objc_msgSend_physicsWorld(world, v6, v7);
    if (!objc_msgSend_contactDelegate(v8, v9, v10))
    {
      v13 = objc_msgSend_physicsWorld(world, v11, v12);

      MEMORY[0x1EEE66B58](v13, sel_setContactDelegate_, self);
    }
  }
}

- (void)_updateActiveTriggerTypesWithMoveNeeded:(BOOL)needed
{
  neededCopy = needed;
  if ((*&self->_enabledTypes & 0x400) != 0)
  {
    if (self->_handTrackerActive)
    {
      goto LABEL_7;
    }

    v8 = objc_msgSend_world(self, a2, needed);
    objc_msgSend_start_(_TtC3VFX14VFXHandTracker, v9, v8);
    v7 = 1;
  }

  else
  {
    if (!self->_handTrackerActive)
    {
      goto LABEL_7;
    }

    v5 = objc_msgSend_world(self, a2, needed);
    objc_msgSend_stop_(_TtC3VFX14VFXHandTracker, v6, v5);
    v7 = 0;
  }

  self->_handTrackerActive = v7;
LABEL_7:
  if ((*&self->_enabledTypes & 0x800) != 0)
  {
    if (!self->_gazeTrackerActive)
    {
      self->_gazeTrackerActive = 1;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1AF3371F8;
      block[3] = &unk_1E7A7A770;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else if (self->_gazeTrackerActive)
  {
    Weak = objc_loadWeak(&self->_world);
    objc_msgSend_stop_(_TtC3VFX14VFXGazeTracker, v11, Weak);
    self->_gazeTrackerActive = 0;
  }

  motionTracker = self->_motionTracker;
  if ((*&self->_enabledTypes & 0x1000) != 0)
  {
    if (!motionTracker)
    {
      v13 = [_TtC3VFX16VFXMotionTracker alloc];
      v14 = objc_loadWeak(&self->_world);
      self->_motionTracker = objc_msgSend_initWithWorld_(v13, v15, v14);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_1AF337240;
      v18[3] = &unk_1E7A7A770;
      v18[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], v18);
    }
  }

  else if (motionTracker)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1AF33724C;
    v17[3] = &unk_1E7A7A770;
    v17[4] = motionTracker;
    dispatch_async(MEMORY[0x1E69E96A0], v17);
    self->_motionTracker = 0;
  }

  if (((((*&self->_enabledTypes & 8) == 0) ^ neededCopy) & 1) == 0)
  {
    if (objc_loadWeak(&self->_world))
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_1AF337288;
      v16[3] = &unk_1E7A7A770;
      v16[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], v16);
    }
  }
}

- (void)enableTriggerTypes:(id)types
{
  if (objc_msgSend_isPresentation(self, a2, types))
  {
    objc_sync_enter(self);
    enabledTypes = self->_enabledTypes;
    *&self->_enabledTypes = *&self->_enabledTypes & 0xFFFE | objc_msgSend_containsObject_(types, v6, @"VFXTriggerTypeTapBegan");
    if (objc_msgSend_containsObject_(types, v7, @"VFXTriggerTypeTapEnded"))
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFFFD | v9;
    if (objc_msgSend_containsObject_(types, v8, @"VFXTriggerTypeTapDragged"))
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFFFB | v11;
    if (objc_msgSend_containsObject_(types, v10, @"VFXTriggerTypeTapCancelled"))
    {
      v13 = 16;
    }

    else
    {
      v13 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFFEF | v13;
    if (objc_msgSend_containsObject_(types, v12, @"VFXTriggerTypeMouseMoved"))
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFFF7 | v15;
    if (objc_msgSend_containsObject_(types, v14, @"VFXTriggerTypeKeyDown"))
    {
      v17 = 32;
    }

    else
    {
      v17 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFFDF | v17;
    if (objc_msgSend_containsObject_(types, v16, @"VFXTriggerTypeKeyUp"))
    {
      v19 = 64;
    }

    else
    {
      v19 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFFBF | v19;
    if (objc_msgSend_containsObject_(types, v18, @"VFXTriggerTypeCollisionBegan"))
    {
      v21 = 128;
    }

    else
    {
      v21 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFF7F | v21;
    if (objc_msgSend_containsObject_(types, v20, @"VFXTriggerTypeCollisionUpdate"))
    {
      v23 = 256;
    }

    else
    {
      v23 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFEFF | v23;
    if (objc_msgSend_containsObject_(types, v22, @"VFXTriggerTypeCollisionEnded"))
    {
      v25 = 512;
    }

    else
    {
      v25 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFDFF | v25;
    v26 = objc_msgSend_containsObject_(types, v24, @"VFXTriggerTypeHandTracking");
    self->_isHandTrackingScriptPresent = v26;
    if (v26)
    {
      if (self->_isHandTrackingEnabled)
      {
        v28 = 1024;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFBFF | v28;
    if (objc_msgSend_containsObject_(types, v27, @"VFXTriggerTypeGazeTracking"))
    {
      v38 = 2048;
    }

    else
    {
      v38 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xF7FF | v38;
    if (objc_msgSend_containsObject_(types, v37, @"VFXTriggerTypeMotionTracking"))
    {
      v40 = 4096;
    }

    else
    {
      v40 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xEFFF | v40;
    if (objc_msgSend_containsObject_(types, v39, @"VFXTriggerTypeParticleCollision"))
    {
      v42 = 0x2000;
    }

    else
    {
      v42 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xDFFF | v42;
    objc_msgSend__updateActiveTriggerTypesWithMoveNeeded_(self, v41, (*&enabledTypes >> 3) & 1);

    objc_sync_exit(self);
  }

  else
  {
    Weak = objc_loadWeak(&self->_world);
    v32 = objc_msgSend_presentationWorld(Weak, v30, v31);
    v35 = objc_msgSend_triggerManager(v32, v33, v34);

    objc_msgSend_enableTriggerTypes_(v35, v36, types);
  }
}

- (void)setHandTrackingEnabled:(BOOL)enabled
{
  if (self->_isHandTrackingEnabled != enabled)
  {
    objc_sync_enter(self);
    self->_isHandTrackingEnabled = enabled;
    if (self->_isHandTrackingScriptPresent && enabled)
    {
      v5 = 1024;
    }

    else
    {
      v5 = 0;
    }

    *&self->_enabledTypes = v5 | *&self->_enabledTypes & 0xFBFF;
    Weak = objc_loadWeak(&self->_world);
    if (objc_msgSend_isPresentationObject(Weak, v7, v8))
    {
      objc_msgSend__updateActiveTriggerTypesWithMoveNeeded_(self, v9, (*&self->_enabledTypes >> 3) & 1);
    }

    else
    {
      isHandTrackingEnabled = self->_isHandTrackingEnabled;
      v11 = objc_loadWeak(&self->_world);
      v14 = objc_msgSend_presentationWorld(v11, v12, v13);
      v17 = objc_msgSend_triggerManager(v14, v15, v16);
      objc_msgSend_setIsHandTrackingEnabled_(v17, v18, isHandTrackingEnabled);
    }

    objc_sync_exit(self);
  }
}

@end