@interface AVRoutingPlaybackArbiter
+ (id)sharedRoutingPlaybackArbiter;
- (AVRoutingPlaybackArbiter)init;
- (AVRoutingPlaybackParticipant)preferredParticipantForExternalPlayback;
- (AVRoutingPlaybackParticipant)preferredParticipantForNonMixableAudioRoutes;
- (BOOL)_externalPlaybackIsActiveForParticipant:(id)participant;
- (BOOL)_externalPlaybackPriorityForParticipant:(id)participant;
- (BOOL)_nonMixablePriorityForParticipant:(id)participant;
- (id)_allTrackedParticipants;
- (void)_addTrackedParticipant:(id)participant;
- (void)_removeTrackedParticipant:(id)participant;
- (void)_setDefaultExternalPlaybackPriorityForParticipant:(id)participant;
- (void)_setDefaultNonMixableAudioPriorityForParticipant:(id)participant;
- (void)_setExternalPlaybackPriority:(BOOL)priority forParticipant:(id)participant;
- (void)_setNonMixableAudioPriority:(BOOL)priority forParticipant:(id)participant;
- (void)_setWeakRefToPreferredParticipantForExternalPlayback:(id)playback;
- (void)_setWeakRefToPreferredParticipantForNonMixableAudio:(id)audio;
- (void)_updateExternalPlaybackStatusNotificationListenerToParticipant:(id)participant;
- (void)_updatePreferredParticipantForExternalPlaybackFrom:(id)from toParticipant:(id)participant checkingAllParticipants:(id)participants;
- (void)_updatePreferredParticipantForNonMixableAudioRouteFrom:(id)from toParticipant:(id)participant checkingAllParticipants:(id)participants;
- (void)dealloc;
- (void)deregisterParticipant:(id)participant;
- (void)registerParticipant:(id)participant;
- (void)setPreferredParticipantForExternalPlayback:(id)playback;
- (void)setPreferredParticipantForNonMixableAudioRoutes:(id)routes;
@end

@implementation AVRoutingPlaybackArbiter

- (AVRoutingPlaybackArbiter)init
{
  v7.receiver = self;
  v7.super_class = AVRoutingPlaybackArbiter;
  v2 = [(AVRoutingPlaybackArbiter *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_weakReferenceToPreferredParticipantForNonMixableAudio = 0;
    v2->_weakReferenceToPreferredParticipantForExternalPlayback = 0;
    v2->_allTrackedParticipants = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3->_ivarAccessQueue = dispatch_queue_create("com.apple.avrouting.routingplaybackarbiterivars", v4);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3->_dispatchQueue = dispatch_queue_create("com.apple.avrouting.routingplaybackarbiterdispatch", v5);
  }

  return v3;
}

uint64_t __56__AVRoutingPlaybackArbiter_sharedRoutingPlaybackArbiter__block_invoke(uint64_t a1)
{
  sharedRoutingPlaybackArbiter_sRoutingPlaybackArbiter = objc_alloc_init(*(a1 + 32));
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();

  return fig_note_initialize_category_with_default_work();
}

+ (id)sharedRoutingPlaybackArbiter
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AVRoutingPlaybackArbiter_sharedRoutingPlaybackArbiter__block_invoke;
  block[3] = &unk_1E794ED28;
  block[4] = self;
  if (sharedRoutingPlaybackArbiter_sAVRoutingPlaybackArbiter_Once != -1)
  {
    dispatch_once(&sharedRoutingPlaybackArbiter_sAVRoutingPlaybackArbiter_Once, block);
  }

  return sharedRoutingPlaybackArbiter_sRoutingPlaybackArbiter;
}

void *__72__AVRoutingPlaybackArbiter_preferredParticipantForNonMixableAudioRoutes__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) referencedObject];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (AVRoutingPlaybackParticipant)preferredParticipantForNonMixableAudioRoutes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__AVRoutingPlaybackArbiter_preferredParticipantForNonMixableAudioRoutes__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__67__AVRoutingPlaybackArbiter_preferredParticipantForExternalPlayback__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) referencedObject];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (AVRoutingPlaybackParticipant)preferredParticipantForExternalPlayback
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__AVRoutingPlaybackArbiter_preferredParticipantForExternalPlayback__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)dealloc
{
  if (self->_externalPlaybackStatusChangedNotificationToken)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

    self->_externalPlaybackStatusChangedNotificationToken = 0;
  }

  ivarAccessQueue = self->_ivarAccessQueue;
  if (ivarAccessQueue)
  {
    dispatch_release(ivarAccessQueue);
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v5.receiver = self;
  v5.super_class = AVRoutingPlaybackArbiter;
  [(AVRoutingPlaybackArbiter *)&v5 dealloc];
}

- (void)_setWeakRefToPreferredParticipantForNonMixableAudio:(id)audio
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__AVRoutingPlaybackArbiter__setWeakRefToPreferredParticipantForNonMixableAudio___block_invoke;
  v4[3] = &unk_1E794E9A8;
  v4[4] = self;
  v4[5] = audio;
  dispatch_sync(ivarAccessQueue, v4);
}

AVRoutingWeakReference *__80__AVRoutingPlaybackArbiter__setWeakRefToPreferredParticipantForNonMixableAudio___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    result = [[AVRoutingWeakReference alloc] initWithReferencedObject:*(a1 + 40)];
  }

  else
  {
    result = 0;
  }

  *(*(a1 + 32) + 8) = result;
  return result;
}

- (void)_updatePreferredParticipantForNonMixableAudioRouteFrom:(id)from toParticipant:(id)participant checkingAllParticipants:(id)participants
{
  v26 = *MEMORY[0x1E69E9840];
  if (participant)
  {
    if (from)
    {
      [(AVRoutingPlaybackArbiter *)self _setNonMixableAudioPriority:0 forParticipant:from];
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = [participants countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(participants);
            }

            [(AVRoutingPlaybackArbiter *)self _setNonMixableAudioPriority:0 forParticipant:*(*(&v20 + 1) + 8 * i)];
          }

          v13 = [participants countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v13);
      }
    }

    [(AVRoutingPlaybackArbiter *)self _setNonMixableAudioPriority:1 forParticipant:participant];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [participants countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (j = 0; j != v9; ++j)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(participants);
          }

          [(AVRoutingPlaybackArbiter *)self _setDefaultNonMixableAudioPriorityForParticipant:*(*(&v16 + 1) + 8 * j)];
        }

        v9 = [participants countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v9);
    }
  }
}

- (void)setPreferredParticipantForNonMixableAudioRoutes:(id)routes
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__12;
  v14 = __Block_byref_object_dispose__12;
  preferredParticipantForNonMixableAudioRoutes = [(AVRoutingPlaybackArbiter *)self preferredParticipantForNonMixableAudioRoutes];
  v5 = v11[5];
  [(AVRoutingPlaybackArbiter *)self _setWeakRefToPreferredParticipantForNonMixableAudio:routes];
  objc_initWeak(&location, self);
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__AVRoutingPlaybackArbiter_setPreferredParticipantForNonMixableAudioRoutes___block_invoke;
  v7[3] = &unk_1E794F6F8;
  objc_copyWeak(&v8, &location);
  v7[4] = routes;
  v7[5] = &v10;
  dispatch_async(dispatchQueue, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v10, 8);
}

void __76__AVRoutingPlaybackArbiter_setPreferredParticipantForNonMixableAudioRoutes___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 48));
  if (Weak)
  {
    [Weak _updatePreferredParticipantForNonMixableAudioRouteFrom:*(*(*(a1 + 40) + 8) + 40) toParticipant:*(a1 + 32) checkingAllParticipants:{objc_msgSend(Weak, "_allTrackedParticipants")}];
    v3 = *(*(*(a1 + 40) + 8) + 40);
  }
}

- (void)_setWeakRefToPreferredParticipantForExternalPlayback:(id)playback
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__AVRoutingPlaybackArbiter__setWeakRefToPreferredParticipantForExternalPlayback___block_invoke;
  v4[3] = &unk_1E794E9A8;
  v4[4] = self;
  v4[5] = playback;
  dispatch_sync(ivarAccessQueue, v4);
}

AVRoutingWeakReference *__81__AVRoutingPlaybackArbiter__setWeakRefToPreferredParticipantForExternalPlayback___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    result = [[AVRoutingWeakReference alloc] initWithReferencedObject:*(a1 + 40)];
  }

  else
  {
    result = 0;
  }

  *(*(a1 + 32) + 16) = result;
  return result;
}

- (void)_updatePreferredParticipantForExternalPlaybackFrom:(id)from toParticipant:(id)participant checkingAllParticipants:(id)participants
{
  v29 = *MEMORY[0x1E69E9840];
  if (participant)
  {
    if (from)
    {
      [(AVRoutingPlaybackArbiter *)self _setExternalPlaybackPriority:0 forParticipant:from];
      if ([(AVRoutingPlaybackArbiter *)self _externalPlaybackIsActiveForParticipant:from])
      {

        [(AVRoutingPlaybackArbiter *)self _updateExternalPlaybackStatusNotificationListenerToParticipant:from];
        return;
      }

LABEL_25:
      [(AVRoutingPlaybackArbiter *)self _setExternalPlaybackPriority:1 forParticipant:participant];
      return;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = [participants countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (!v13)
    {
      goto LABEL_25;
    }

    v14 = v13;
    v15 = *v24;
    v16 = 1;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(participants);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        [(AVRoutingPlaybackArbiter *)self _setExternalPlaybackPriority:0 forParticipant:v18];
        if ([(AVRoutingPlaybackArbiter *)self _externalPlaybackIsActiveForParticipant:v18])
        {
          [(AVRoutingPlaybackArbiter *)self _updateExternalPlaybackStatusNotificationListenerToParticipant:v18];
          v16 = 0;
        }
      }

      v14 = [participants countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v14);
    if (v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [participants countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(participants);
          }

          [(AVRoutingPlaybackArbiter *)self _setDefaultExternalPlaybackPriorityForParticipant:*(*(&v19 + 1) + 8 * j)];
        }

        v10 = [participants countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v10);
    }
  }
}

- (void)setPreferredParticipantForExternalPlayback:(id)playback
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__12;
  v14 = __Block_byref_object_dispose__12;
  preferredParticipantForExternalPlayback = [(AVRoutingPlaybackArbiter *)self preferredParticipantForExternalPlayback];
  v5 = v11[5];
  [(AVRoutingPlaybackArbiter *)self _setWeakRefToPreferredParticipantForExternalPlayback:playback];
  [(AVRoutingPlaybackArbiter *)self _updateExternalPlaybackStatusNotificationListenerToParticipant:0];
  objc_initWeak(&location, self);
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__AVRoutingPlaybackArbiter_setPreferredParticipantForExternalPlayback___block_invoke;
  v7[3] = &unk_1E794F6F8;
  objc_copyWeak(&v8, &location);
  v7[4] = playback;
  v7[5] = &v10;
  dispatch_async(dispatchQueue, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v10, 8);
}

void __71__AVRoutingPlaybackArbiter_setPreferredParticipantForExternalPlayback___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 48));
  if (Weak)
  {
    [Weak _updatePreferredParticipantForExternalPlaybackFrom:*(*(*(a1 + 40) + 8) + 40) toParticipant:*(a1 + 32) checkingAllParticipants:{objc_msgSend(Weak, "_allTrackedParticipants")}];
    v3 = *(*(*(a1 + 40) + 8) + 40);
  }
}

- (void)_updateExternalPlaybackStatusNotificationListenerToParticipant:(id)participant
{
  if (self->_externalPlaybackStatusChangedNotificationToken)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

    self->_externalPlaybackStatusChangedNotificationToken = 0;
  }

  if (participant)
  {
    objc_initWeak(&location, self);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __91__AVRoutingPlaybackArbiter__updateExternalPlaybackStatusNotificationListenerToParticipant___block_invoke;
    v6[3] = &unk_1E794F748;
    v6[4] = self;
    objc_copyWeak(&v7, &location);
    v6[5] = participant;
    self->_externalPlaybackStatusChangedNotificationToken = [defaultCenter addObserverForName:@"AVRoutingPlaybackParticipantExternalPlaybackStatusDidChangeNotification" object:participant queue:0 usingBlock:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __91__AVRoutingPlaybackArbiter__updateExternalPlaybackStatusNotificationListenerToParticipant___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __91__AVRoutingPlaybackArbiter__updateExternalPlaybackStatusNotificationListenerToParticipant___block_invoke_2;
  v3[3] = &unk_1E794F720;
  objc_copyWeak(&v4, (a1 + 48));
  v3[4] = *(a1 + 40);
  dispatch_async(v2, v3);
  objc_destroyWeak(&v4);
}

id __91__AVRoutingPlaybackArbiter__updateExternalPlaybackStatusNotificationListenerToParticipant___block_invoke_2(uint64_t a1)
{
  result = objc_loadWeak((a1 + 40));
  if (result)
  {
    v3 = result;
    v4 = [result preferredParticipantForExternalPlayback];
    result = [v3 _externalPlaybackIsActiveForParticipant:*(a1 + 32)];
    if ((result & 1) == 0)
    {
      result = [v3 _externalPlaybackPriorityForParticipant:v4];
      if ((result & 1) == 0)
      {

        return [v3 _setExternalPlaybackPriority:1 forParticipant:v4];
      }
    }
  }

  return result;
}

- (id)_allTrackedParticipants
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __92__AVRoutingPlaybackArbiter_AVRoutingPlaybackArbiterInternalSupport___allTrackedParticipants__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__92__AVRoutingPlaybackArbiter_AVRoutingPlaybackArbiterInternalSupport___allTrackedParticipants__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 24) "allObjects")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_removeTrackedParticipant:(id)participant
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __95__AVRoutingPlaybackArbiter_AVRoutingPlaybackArbiterInternalSupport___removeTrackedParticipant___block_invoke;
  v4[3] = &unk_1E794E9A8;
  v4[4] = self;
  v4[5] = participant;
  dispatch_sync(ivarAccessQueue, v4);
}

void __95__AVRoutingPlaybackArbiter_AVRoutingPlaybackArbiterInternalSupport___removeTrackedParticipant___block_invoke(uint64_t a1)
{
  v3 = [objc_msgSend(*(*(a1 + 32) + 24) "allObjects")];
  if ([v3 count])
  {
    v2 = 0;
    while ([*(*(a1 + 32) + 24) pointerAtIndex:v2] != *(a1 + 40))
    {
      if (++v2 >= [v3 count])
      {
        goto LABEL_7;
      }
    }

    [*(*(a1 + 32) + 24) removePointerAtIndex:v2];
  }

LABEL_7:
}

- (void)_addTrackedParticipant:(id)participant
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __92__AVRoutingPlaybackArbiter_AVRoutingPlaybackArbiterInternalSupport___addTrackedParticipant___block_invoke;
  v4[3] = &unk_1E794E9A8;
  v4[4] = self;
  v4[5] = participant;
  dispatch_sync(ivarAccessQueue, v4);
}

void __92__AVRoutingPlaybackArbiter_AVRoutingPlaybackArbiterInternalSupport___addTrackedParticipant___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(*(*(a1 + 32) + 24) "allObjects")];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v8 != v5)
      {
        objc_enumerationMutation(v2);
      }

      if (*(*(&v7 + 1) + 8 * v6) == *(a1 + 40))
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    [*(*(a1 + 32) + 24) addPointer:*(a1 + 40)];
  }
}

- (void)registerParticipant:(id)participant
{
  if (participant)
  {
    [(AVRoutingPlaybackArbiter *)self _addTrackedParticipant:?];
    objc_initWeak(&location, self);
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__AVRoutingPlaybackArbiter_AVRoutingPlaybackParticipantRegistration__registerParticipant___block_invoke;
    block[3] = &unk_1E794F720;
    objc_copyWeak(&v7, &location);
    block[4] = participant;
    dispatch_async(dispatchQueue, block);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

id __90__AVRoutingPlaybackArbiter_AVRoutingPlaybackParticipantRegistration__registerParticipant___block_invoke(uint64_t a1)
{
  result = objc_loadWeak((a1 + 40));
  if (result)
  {
    v3 = result;
    v4 = [result preferredParticipantForNonMixableAudioRoutes];
    result = [v3 preferredParticipantForExternalPlayback];
    v5 = result;
    if (v4)
    {
      result = [v3 _setNonMixableAudioPriority:0 forParticipant:*(a1 + 32)];
    }

    if (v5)
    {
      v6 = *(a1 + 32);

      return [v3 _setExternalPlaybackPriority:0 forParticipant:v6];
    }
  }

  return result;
}

- (BOOL)_nonMixablePriorityForParticipant:(id)participant
{
  if (!participant || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [participant nonMixableAudioPriority];
}

- (void)_setNonMixableAudioPriority:(BOOL)priority forParticipant:(id)participant
{
  if (participant)
  {
    priorityCopy = priority;
    if (objc_opt_respondsToSelector())
    {

      [participant setNonMixableAudioPriority:priorityCopy];
    }
  }
}

- (void)_setDefaultNonMixableAudioPriorityForParticipant:(id)participant
{
  if (participant && (objc_opt_respondsToSelector() & 1) != 0)
  {

    [participant setDefaultNonMixableAudioPriority];
  }
}

- (BOOL)_externalPlaybackIsActiveForParticipant:(id)participant
{
  if (!participant || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [participant externalPlaybackIsActive];
}

- (BOOL)_externalPlaybackPriorityForParticipant:(id)participant
{
  if (!participant || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [participant externalPlaybackPriority];
}

- (void)_setExternalPlaybackPriority:(BOOL)priority forParticipant:(id)participant
{
  if (participant)
  {
    priorityCopy = priority;
    if (objc_opt_respondsToSelector())
    {

      [participant setExternalPlaybackPriority:priorityCopy];
    }
  }
}

- (void)_setDefaultExternalPlaybackPriorityForParticipant:(id)participant
{
  if (participant && (objc_opt_respondsToSelector() & 1) != 0)
  {

    [participant setDefaultExternalPlaybackPriority];
  }
}

- (void)deregisterParticipant:(id)participant
{
  preferredParticipantForNonMixableAudioRoutes = [(AVRoutingPlaybackArbiter *)self preferredParticipantForNonMixableAudioRoutes];
  preferredParticipantForExternalPlayback = [(AVRoutingPlaybackArbiter *)self preferredParticipantForExternalPlayback];
  if (participant)
  {
    v7 = preferredParticipantForExternalPlayback;
    if (preferredParticipantForNonMixableAudioRoutes == participant)
    {
      [(AVRoutingPlaybackArbiter *)self setPreferredParticipantForNonMixableAudioRoutes:0];
    }

    if (v7 == participant)
    {
      [(AVRoutingPlaybackArbiter *)self setPreferredParticipantForExternalPlayback:0];
    }

    [(AVRoutingPlaybackArbiter *)self _removeTrackedParticipant:participant];
  }
}

@end