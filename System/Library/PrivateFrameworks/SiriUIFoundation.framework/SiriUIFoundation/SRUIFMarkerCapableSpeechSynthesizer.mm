@interface SRUIFMarkerCapableSpeechSynthesizer
- (SRUIFMarkerCapableSpeechSynthesizer)init;
- (unsigned)audioSessionID;
- (void)cancel;
- (void)duckTTSVolumeTo:(float)to rampTime:(double)time completion:(id)completion;
- (void)enqueueAudioData:(id)data identifier:(id)identifier sessionId:(id)id provisionally:(BOOL)provisionally eligibleAfterDuration:(double)duration completion:(id)completion;
- (void)enqueuePhaticWithCompletion:(id)completion;
- (void)enqueueSpeechSynthesisRequest:(id)request;
- (void)enqueueText:(id)text identifier:(id)identifier sessionId:(id)id preferredVoice:(id)voice language:(id)language gender:(id)gender promptStyle:(id)style isPhonetic:(BOOL)self0 provisionally:(BOOL)self1 eligibleAfterDuration:(double)self2 delayed:(BOOL)self3 canUseServerTTS:(BOOL)self4 preparationIdentifier:(id)self5 completion:(id)self6 analyticsContext:(id)self7 speakableContextInfo:(id)self8;
- (void)isSynthesisQueueEmpty:(id)empty;
- (void)prewarmIfNeededKeepActive:(BOOL)active;
- (void)setAudioSessionID:(unsigned int)d;
- (void)speechSynthesisDidFinish:(id)finish withIdentifier:(id)identifier;
- (void)speechSynthesisDidStopSpeakingWithIdentifier:(id)identifier queueIsEmpty:(BOOL)empty;
- (void)speechSynthesisDidUpdatePowerLevelTo:(float)to;
- (void)speechSynthesisGetPreparedTextForIdentifier:(id)identifier completion:(id)completion;
- (void)speechSynthesisRequestsForceAudioSessionActiveWithCompletion:(id)completion;
@end

@implementation SRUIFMarkerCapableSpeechSynthesizer

- (unsigned)audioSessionID
{
  selfCopy = self;
  synthesizer = [(SRUIFMarkerCapableSpeechSynthesizer *)selfCopy synthesizer];
  audioSessionID = [(SRUIFSpeechSynthesizer *)synthesizer audioSessionID];

  return audioSessionID;
}

- (void)setAudioSessionID:(unsigned int)d
{
  v3 = *&d;
  selfCopy = self;
  synthesizer = [(SRUIFMarkerCapableSpeechSynthesizer *)selfCopy synthesizer];
  [(SRUIFSpeechSynthesizer *)synthesizer setAudioSessionID:v3];
}

- (void)enqueueSpeechSynthesisRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  synthesizer = [(SRUIFMarkerCapableSpeechSynthesizer *)selfCopy synthesizer];
  [(SRUIFSpeechSynthesizer *)synthesizer enqueueSpeechSynthesisRequest:requestCopy];
}

- (void)enqueuePhaticWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_2695602C4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  SRUIFMarkerCapableSpeechSynthesizer.enqueuePhatic(completion:)(v7, v6);
  sub_269525B8C(v7, v6);
}

- (void)cancel
{
  selfCopy = self;
  SRUIFMarkerCapableSpeechSynthesizer.cancel()();
}

- (void)prewarmIfNeededKeepActive:(BOOL)active
{
  activeCopy = active;
  selfCopy = self;
  synthesizer = [(SRUIFMarkerCapableSpeechSynthesizer *)selfCopy synthesizer];
  [(SRUIFSpeechSynthesizer *)synthesizer prewarmIfNeededKeepActive:activeCopy];
}

- (void)duckTTSVolumeTo:(float)to rampTime:(double)time completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v11 = sub_26955FCEC;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  selfCopy = self;
  SRUIFMarkerCapableSpeechSynthesizer.duckTTSVolume(to:rampTime:completion:)(v11, v10, to, time);
  sub_269525B8C(v11, v10);
}

- (void)isSynthesisQueueEmpty:(id)empty
{
  v4 = _Block_copy(empty);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_26955FCD4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  SRUIFMarkerCapableSpeechSynthesizer.isSynthesisQueueEmpty(_:)(v7, v6);
  sub_269525B8C(v7, v6);
}

- (void)enqueueAudioData:(id)data identifier:(id)identifier sessionId:(id)id provisionally:(BOOL)provisionally eligibleAfterDuration:(double)duration completion:(id)completion
{
  v14 = _Block_copy(completion);
  if (identifier)
  {
    v15 = sub_269562BB0();
    identifier = v16;
    if (id)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v15 = 0;
  if (!id)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = sub_269562BB0();
  id = v18;
  if (v14)
  {
LABEL_4:
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    v14 = sub_2695602C4;
    goto LABEL_8;
  }

LABEL_7:
  v19 = 0;
LABEL_8:
  dataCopy = data;
  selfCopy = self;
  SRUIFMarkerCapableSpeechSynthesizer.enqueue(_:identifier:sessionId:provisionally:eligibleAfterDuration:completion:)(data, v15, identifier, v17, id, provisionally, v14, v19, duration);
  sub_269525B8C(v14, v19);

  id, v22, v23, v24, v25, v26, v27, v28;

  identifier, v29, v30, v31, v32, v33, v34, v35;
}

- (void)enqueueText:(id)text identifier:(id)identifier sessionId:(id)id preferredVoice:(id)voice language:(id)language gender:(id)gender promptStyle:(id)style isPhonetic:(BOOL)self0 provisionally:(BOOL)self1 eligibleAfterDuration:(double)self2 delayed:(BOOL)self3 canUseServerTTS:(BOOL)self4 preparationIdentifier:(id)self5 completion:(id)self6 analyticsContext:(id)self7 speakableContextInfo:(id)self8
{
  v113 = _Block_copy(completion);
  if (text)
  {
    v119 = sub_269562BB0();
    v122 = v26;
    if (identifier)
    {
      goto LABEL_3;
    }

LABEL_6:
    v118 = 0;
    v121 = 0;
    if (id)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v119 = 0;
  v122 = 0;
  if (!identifier)
  {
    goto LABEL_6;
  }

LABEL_3:
  v118 = sub_269562BB0();
  v121 = v27;
  if (id)
  {
LABEL_4:
    v116 = sub_269562BB0();
    v120 = v28;
    goto LABEL_8;
  }

LABEL_7:
  v116 = 0;
  v120 = 0;
LABEL_8:
  voiceCopy = voice;
  languageCopy = language;
  genderCopy = gender;
  styleCopy = style;
  preparationIdentifierCopy = preparationIdentifier;
  contextCopy = context;
  infoCopy = info;
  selfCopy = self;
  if (languageCopy)
  {
    v112 = sub_269562BB0();
    v115 = v35;

    if (genderCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v112 = 0;
    v115 = 0;
    if (genderCopy)
    {
LABEL_10:
      v111 = sub_269562BB0();
      v37 = v36;

      v38 = v113;
      if (styleCopy)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  v111 = 0;
  v37 = 0;
  v38 = v113;
  if (styleCopy)
  {
LABEL_11:
    v39 = sub_269562BB0();
    v41 = v40;

    if (preparationIdentifierCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v39 = 0;
  v41 = 0;
  if (preparationIdentifierCopy)
  {
LABEL_12:
    v42 = sub_269562BB0();
    v44 = v43;

    if (v38)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

LABEL_19:
  v42 = 0;
  v44 = 0;
  if (v38)
  {
LABEL_13:
    v45 = swift_allocObject();
    *(v45 + 16) = v38;
    v38 = sub_26955FCCC;
    if (contextCopy)
    {
      goto LABEL_14;
    }

LABEL_21:
    v46 = 0;
    if (infoCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_20:
  v45 = 0;
  if (!contextCopy)
  {
    goto LABEL_21;
  }

LABEL_14:
  v46 = sub_269562B80();

  if (infoCopy)
  {
LABEL_15:
    v47 = sub_269562B80();

    goto LABEL_23;
  }

LABEL_22:
  v47 = 0;
LABEL_23:
  SRUIFMarkerCapableSpeechSynthesizer.enqueueText(_:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:completion:analyticsContext:speakableContextInfo:)(v119, v122, v118, v121, v116, v120, voiceCopy, v112, duration, v115, v111, v37, v39, v41, phonetic, provisionally, delayed, s, v42, v44, v38, v45, v46, v47);
  v47, v48, v49, v50, v51, v52, v53, v54;
  v46, v55, v56, v57, v58, v59, v60, v61;
  sub_269525B8C(v38, v45);

  v44, v62, v63, v64, v65, v66, v67, v68;
  v41, v69, v70, v71, v72, v73, v74, v75;
  v37, v76, v77, v78, v79, v80, v81, v82;
  v115, v83, v84, v85, v86, v87, v88, v89;
  v120, v90, v91, v92, v93, v94, v95, v96;
  v121, v97, v98, v99, v100, v101, v102, v103;

  v122, v104, v105, v106, v107, v108, v109, v110;
}

- (void)speechSynthesisDidFinish:(id)finish withIdentifier:(id)identifier
{
  v7 = sub_269562B00();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (identifier)
  {
    identifier = sub_269562BB0();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v24[0] = finish;
  selfCopy = self;
  queue = [(SRUIFMarkerCapableSpeechSynthesizer *)selfCopy queue];
  sub_269562AF0();
  v15 = swift_allocObject();
  v16 = swift_unknownObjectWeakInit();
  MEMORY[0x28223BE20](v16);
  v24[-4] = v15;
  v24[-3] = finish;
  v24[-2] = identifier;
  v24[-1] = v12;
  sub_269562CE0();
  (*(v8 + 8))(v10, v7);

  v12, v17, v18, v19, v20, v21, v22, v23;
}

- (void)speechSynthesisDidStopSpeakingWithIdentifier:(id)identifier queueIsEmpty:(BOOL)empty
{
  if (identifier)
  {
    v6 = sub_269562BB0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  selfCopy = self;
  v10.value._countAndFlagsBits = v6;
  v10.value._object = v8;
  SRUIFMarkerCapableSpeechSynthesizer.speechSynthesisDidStopSpeaking(withIdentifier:queueIsEmpty:)(v10, empty);

  v8, v11, v12, v13, v14, v15, v16, v17;
}

- (void)speechSynthesisDidUpdatePowerLevelTo:(float)to
{
  selfCopy = self;
  delegate = [(SRUIFMarkerCapableSpeechSynthesizer *)selfCopy delegate];
  if (delegate)
  {
    *&v5 = to;
    [(SRUIFSpeechSynthesizerDelegate *)delegate speechSynthesisDidUpdatePowerLevelTo:v5];
    swift_unknownObjectRelease();
  }
}

- (void)speechSynthesisGetPreparedTextForIdentifier:(id)identifier completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = v6;
  if (identifier)
  {
    v8 = sub_269562BB0();
    identifier = v9;
    if (v7)
    {
LABEL_3:
      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      v7 = sub_26955FCC4;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  selfCopy = self;
  sub_26955E570(v8, identifier, v7, v10);
  sub_269525B8C(v7, v10);

  identifier, v12, v13, v14, v15, v16, v17, v18;
}

- (void)speechSynthesisRequestsForceAudioSessionActiveWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_26955FCA8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  SRUIFMarkerCapableSpeechSynthesizer.speechSynthesisRequestsForceAudioSessionActive(completion:)(v7, v6);
  sub_269525B8C(v7, v6);
}

- (SRUIFMarkerCapableSpeechSynthesizer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end