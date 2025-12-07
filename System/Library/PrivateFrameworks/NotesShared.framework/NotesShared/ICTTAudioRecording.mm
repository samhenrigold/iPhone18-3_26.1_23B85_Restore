@interface ICTTAudioRecording
- (ICTTAudioRecording)initWithICCRCoder:(id)coder;
- (ICTTAudioRecording)initWithIdentity:(id)identity fields:(id)fields;
@end

@implementation ICTTAudioRecording

- (ICTTAudioRecording)initWithIdentity:(id)identity fields:(id)fields
{
  v5 = sub_2150A3A00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A39C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA427F0, &qword_2150C38A8);
  sub_2150A4920();
  v10 = sub_2150A39A0();
  v11 = sub_2150A4910();

  v14.receiver = self;
  v14.super_class = ICTTAudioRecording;
  v12 = [(ICCRObject *)&v14 initWithIdentity:v10 fields:v11];

  (*(v6 + 8))(v9, v5);
  return v12;
}

- (ICTTAudioRecording)initWithICCRCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICTTAudioRecording;
  coderCopy = coder;
  v4 = [(ICCRObject *)&v6 initWithICCRCoder:coderCopy];

  if (v4)
  {
  }

  return v4;
}

@end