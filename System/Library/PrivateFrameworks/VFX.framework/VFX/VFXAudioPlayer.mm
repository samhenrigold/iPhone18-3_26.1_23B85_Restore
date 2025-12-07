@interface VFXAudioPlayer
+ (id)audioPlayerWithAVAudioNode:(id)node;
+ (id)audioPlayerWithSource:(id)source;
- (VFXAudioPlayer)initWithAVAudioNode:(id)node;
- (VFXAudioPlayer)initWithSource:(id)source;
- (void)dealloc;
- (void)play;
- (void)recycle;
- (void)reset;
- (void)setNodeRef:(__CFXNode *)ref;
@end

@implementation VFXAudioPlayer

- (VFXAudioPlayer)initWithSource:(id)source
{
  v25.receiver = self;
  v25.super_class = VFXAudioPlayer;
  v4 = [(VFXAudioPlayer *)&v25 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E6958458]);
    v4->_audioNode = &v5->super;
    v4->_audioPlayer = v5;
    v4->_customAudioNode = 0;
    sourceCopy = source;
    v4->_audioSource = sourceCopy;
    audioPlayer = v4->_audioPlayer;
    v10 = objc_msgSend_renderingAlgorithm(sourceCopy, v8, v9);
    objc_msgSend_setRenderingAlgorithm_(audioPlayer, v11, v10);
    objc_msgSend_rate(v4->_audioSource, v12, v13);
    objc_msgSend_setRate_(v4->_audioPlayer, v14, v15);
    objc_msgSend_volume(v4->_audioSource, v16, v17);
    objc_msgSend_setVolume_(v4->_audioPlayer, v18, v19);
    objc_msgSend_reverbBlend(v4->_audioSource, v20, v21);
    objc_msgSend_setReverbBlend_(v4->_audioPlayer, v22, v23);
  }

  return v4;
}

- (VFXAudioPlayer)initWithAVAudioNode:(id)node
{
  v7.receiver = self;
  v7.super_class = VFXAudioPlayer;
  v4 = [(VFXAudioPlayer *)&v7 init];
  if (v4)
  {
    nodeCopy = node;
    v4->_customAudioNode = 1;
    v4->_audioPlayer = 0;
    v4->_audioSource = 0;
    v4->_audioNode = nodeCopy;
  }

  return v4;
}

+ (id)audioPlayerWithAVAudioNode:(id)node
{
  v4 = [VFXAudioPlayer alloc];
  result = objc_msgSend_initWithAVAudioNode_(v4, v5, node);
  *(result + 50) = 1;
  return result;
}

- (void)reset
{
  objc_msgSend_setWillStartPlayback_(self, a2, 0);
  objc_msgSend_setDidFinishPlayback_(self, v3, 0);
  self->_nodeRef = 0;
  self->_world = 0;

  self->_audioSource = 0;
}

+ (id)audioPlayerWithSource:(id)source
{
  if (qword_1EB658840 && objc_msgSend_count(qword_1EB658840, a2, source))
  {
    v6 = objc_msgSend_anyObject(qword_1EB658840, v4, v5);
    v7 = v6;
    objc_msgSend_removeObject_(qword_1EB658840, v8, v6);
    sourceCopy = source;
    v6[3] = sourceCopy;
    v10 = v6[2];
    v13 = objc_msgSend_renderingAlgorithm(sourceCopy, v11, v12);
    objc_msgSend_setRenderingAlgorithm_(v10, v14, v13);
    objc_msgSend_rate(v6[3], v15, v16);
    objc_msgSend_setRate_(v6[2], v17, v18);
    objc_msgSend_volume(v6[3], v19, v20);
    objc_msgSend_setVolume_(v6[2], v21, v22);
    objc_msgSend_reverbBlend(v6[3], v23, v24);
    objc_msgSend_setReverbBlend_(v6[2], v25, v26);

    return v6;
  }

  else
  {
    v28 = [VFXAudioPlayer alloc];
    result = objc_msgSend_initWithSource_(v28, v29, source);
    *(result + 50) = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXAudioPlayer;
  [(VFXAudioPlayer *)&v3 dealloc];
}

- (void)setNodeRef:(__CFXNode *)ref
{
  self->_nodeRef = ref;
  if (ref)
  {
    self->_world = sub_1AF1C3FAC(ref, a2);
  }
}

- (void)play
{
  audioSource = self->_audioSource;
  if (!audioSource || self->_customAudioNode)
  {
    return;
  }

  audioPlayer = self->_audioPlayer;
  v6 = objc_msgSend_audioBuffer(audioSource, a2, v2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF29D4B0;
  block[3] = &unk_1E7A7A770;
  block[4] = self;
  objc_msgSend_setCompleted_(self, v7, 0);
  shouldStream = objc_msgSend_shouldStream(self->_audioSource, v8, v9);
  nodeRef = self->_nodeRef;
  if (nodeRef)
  {
    CFRetain(self->_nodeRef);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1AF29D508;
  v23[3] = &unk_1E7A7E4F8;
  v23[6] = block;
  v23[7] = nodeRef;
  v23[4] = self;
  v23[5] = audioPlayer;
  if (v6)
  {
    v14 = objc_msgSend_loops(self->_audioSource, v10, v11);
    objc_msgSend_scheduleBuffer_atTime_options_completionHandler_(audioPlayer, v15, v6, 0, v14, v23);
LABEL_9:
    v18 = 1;
    goto LABEL_10;
  }

  if (shouldStream)
  {
    v16 = objc_msgSend_audioFile(self->_audioSource, v10, v11);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1AF29D634;
    v22[3] = &unk_1E7A7E520;
    v22[4] = self;
    v22[5] = audioPlayer;
    v22[6] = v23;
    v22[7] = nodeRef;
    objc_msgSend_scheduleFile_atTime_completionHandler_(audioPlayer, v17, v16, 0, v22);
    goto LABEL_9;
  }

  v18 = 0;
LABEL_10:
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1AF29D7B4;
  v21[3] = &unk_1E7A7A770;
  v21[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], v21);
  if ((v18 & 1) == 0)
  {
    v19 = self->_nodeRef;
    if (v19)
    {
      CFRelease(v19);
    }

    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_msgSend_setCompleted_(self, v20, 1);
  }
}

- (void)recycle
{
  objc_sync_enter(self);
  objc_msgSend_reset(self, v3, v4);
  v7 = qword_1EB658840;
  if (!qword_1EB658840)
  {
    qword_1EB658840 = objc_msgSend_set(MEMORY[0x1E695DFA8], v5, v6);
    v8 = qword_1EB658840;
    v7 = qword_1EB658840;
  }

  objc_msgSend_addObject_(v7, v5, self);

  objc_sync_exit(self);
}

@end