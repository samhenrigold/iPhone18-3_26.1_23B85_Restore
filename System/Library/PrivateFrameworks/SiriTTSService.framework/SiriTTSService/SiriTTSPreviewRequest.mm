@interface SiriTTSPreviewRequest
- (BOOL)immediate;
- (NSURL)previewAudioURL;
- (SiriTTSAudibleContext)audibleContext;
- (SiriTTSSynthesisVoice)voice;
- (float)playbackVolume;
- (id)didStartSpeaking;
- (id)siriAceViewId;
- (id)siriRequestId;
- (unsigned)audioSessionId;
- (void)encodeWithCoder:(id)coder;
- (void)setAudibleContext:(id)context;
- (void)setAudioSessionId:(unsigned int)id;
- (void)setDidStartSpeaking:(id)speaking;
- (void)setImmediate:(BOOL)immediate;
- (void)setPlaybackVolume:(float)volume;
- (void)setSiriAceViewId:(id)id;
- (void)setSiriRequestId:(id)id;
- (void)setVoice:(id)voice;
@end

@implementation SiriTTSPreviewRequest

- (SiriTTSAudibleContext)audibleContext
{
  v2 = sub_1B1B1229C(self);

  return v2;
}

- (void)setAudibleContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1B1B1233C(contextCopy);
}

- (SiriTTSSynthesisVoice)voice
{
  v2 = sub_1B1B12428(self);

  return v2;
}

- (void)setVoice:(id)voice
{
  voiceCopy = voice;
  selfCopy = self;
  sub_1B1B124C8(voiceCopy);
}

- (NSURL)previewAudioURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  selfCopy = self;
  sub_1B1B12A30();

  v7 = sub_1B1C2C1C8();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) != 1)
  {
    v8 = sub_1B1C2C118();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B1B12B98(coderCopy);
}

- (void)setSiriAceViewId:(id)id
{
  idCopy = id;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SiriTTSBaseRequest *)self setInteractionLinkId:idCopy];
  }
}

- (id)siriAceViewId
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    interactionLinkId = [(SiriTTSBaseRequest *)self interactionLinkId];
  }

  else
  {
    interactionLinkId = 0;
  }

  return interactionLinkId;
}

- (void)setSiriRequestId:(id)id
{
  idCopy = id;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SiriTTSBaseRequest *)self setLogLinkId:idCopy];
  }
}

- (id)siriRequestId
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    logLinkId = [(SiriTTSBaseRequest *)self logLinkId];
  }

  else
  {
    logLinkId = 0;
  }

  return logLinkId;
}

- (void)setDidStartSpeaking:(id)speaking
{
  speakingCopy = speaking;
  audibleContext = [(SiriTTSPreviewRequest *)self audibleContext];
  [audibleContext setDidStartSpeaking:speakingCopy];
}

- (id)didStartSpeaking
{
  audibleContext = [(SiriTTSPreviewRequest *)self audibleContext];
  didStartSpeaking = [audibleContext didStartSpeaking];

  return didStartSpeaking;
}

- (void)setPlaybackVolume:(float)volume
{
  audibleContext = [(SiriTTSPreviewRequest *)self audibleContext];
  *&v4 = volume;
  [audibleContext setPlaybackVolume:v4];
}

- (float)playbackVolume
{
  audibleContext = [(SiriTTSPreviewRequest *)self audibleContext];
  [audibleContext playbackVolume];
  v4 = v3;

  return v4;
}

- (void)setImmediate:(BOOL)immediate
{
  immediateCopy = immediate;
  audibleContext = [(SiriTTSPreviewRequest *)self audibleContext];
  [audibleContext setImmediate:immediateCopy];
}

- (BOOL)immediate
{
  audibleContext = [(SiriTTSPreviewRequest *)self audibleContext];
  immediate = [audibleContext immediate];

  return immediate;
}

- (void)setAudioSessionId:(unsigned int)id
{
  v3 = *&id;
  audibleContext = [(SiriTTSPreviewRequest *)self audibleContext];
  [audibleContext setAudioSessionId:v3];
}

- (unsigned)audioSessionId
{
  audibleContext = [(SiriTTSPreviewRequest *)self audibleContext];
  audioSessionId = [audibleContext audioSessionId];

  return audioSessionId;
}

@end