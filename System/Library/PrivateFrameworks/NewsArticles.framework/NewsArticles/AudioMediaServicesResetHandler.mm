@interface AudioMediaServicesResetHandler
- (void)handleMediaServicesReset:(id)reset;
@end

@implementation AudioMediaServicesResetHandler

- (void)handleMediaServicesReset:(id)reset
{
  v4 = sub_1D7D2802C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D27FFC();
  v9 = qword_1EE0C05E0;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE0C05E8;
  v11 = sub_1D7D30C4C();
  sub_1D79F3AB0(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7D3B4D0;
  sub_1D7CA8738(v12, v13);
  v14 = sub_1D7D3190C();
  v16 = v15;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1D79D6AE0();
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  sub_1D7D29AAC("AudioMediaServicesResetHandler: notification observed: %{public}@", 65, 2, &dword_1D7987000, v10, v11, v12);

  (*self->stopPlayer)(v17);

  (*(v5 + 8))(v8, v4);
}

@end