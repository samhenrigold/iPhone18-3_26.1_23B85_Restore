@interface VoiceDialFacetimeRecognitionAction
- (VoiceDialFacetimeRecognitionAction)initWithContactInfo:(id)info uid:(int)uid;
- (id)perform;
@end

@implementation VoiceDialFacetimeRecognitionAction

- (VoiceDialFacetimeRecognitionAction)initWithContactInfo:(id)info uid:(int)uid
{
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = VoiceDialFacetimeRecognitionAction;
  v8 = [(VoiceDialFacetimeRecognitionAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contactInfo, info);
    v9->_abID = uid;
  }

  return v9;
}

- (id)perform
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = [(VSRecognitionURLAction *)self URL];

  if (!v3)
  {
    v5 = PHDefaultLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      contactInfo = self->_contactInfo;
      abID = self->_abID;
      *buf = 138412546;
      v23 = contactInfo;
      v24 = 1024;
      LODWORD(v25) = abID;
      _os_log_impl(&dword_295FD5000, v5, OS_LOG_TYPE_DEFAULT, "Performing FaceTime voice dial for destination ID %@ and address book record ID %d", buf, 0x12u);
    }

    v8 = objc_alloc_init(MEMORY[0x29EDB8BB0]);
    v9 = [v8 contactFromPersonID:self->_abID keysToFetch:MEMORY[0x29EDB8E90]];

    identifier = [v9 identifier];
    v11 = objc_alloc_init(MEMORY[0x29EDC6F80]);
    v12 = objc_alloc(MEMORY[0x29EDC6F98]);
    faceTimeProvider = [v11 faceTimeProvider];
    v14 = [v12 initWithProvider:faceTimeProvider];

    v15 = [MEMORY[0x29EDC6FA0] handleWithDestinationID:self->_contactInfo];
    [v14 setHandle:v15];

    [v14 setContactIdentifier:identifier];
    v16 = PHDefaultLog([v14 setOriginatingUIType:42]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v14 URL];
      *buf = 138412546;
      v23 = v14;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_295FD5000, v16, OS_LOG_TYPE_DEFAULT, "Using dial request %@ to set URL %@", buf, 0x16u);
    }

    v18 = [v14 URL];
    [(VSRecognitionURLAction *)self setURL:v18];
  }

  v21.receiver = self;
  v21.super_class = VoiceDialFacetimeRecognitionAction;
  perform = [(VSRecognitionURLAction *)&v21 perform];

  return perform;
}

@end