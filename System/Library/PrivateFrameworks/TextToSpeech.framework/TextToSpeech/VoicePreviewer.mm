@interface VoicePreviewer
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
@end

@implementation VoicePreviewer

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  v6 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_1A957C688();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  v10[5] = playing;
  playingCopy = playing;

  sub_1A938A404(0, 0, v8, &unk_1A9593200, v10);
}

@end