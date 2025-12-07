@interface SNAudioFileUtils
+ ($E36B78CDAC119E0352F6B513F3BB0FF8)getTimeRangeEncompassingEntireAudioFileAtURL:(SEL)l error:(id)error;
@end

@implementation SNAudioFileUtils

+ ($E36B78CDAC119E0352F6B513F3BB0FF8)getTimeRangeEncompassingEntireAudioFileAtURL:(SEL)l error:(id)error
{
  v6 = sub_1C9A91558();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9A914F8();
  swift_getObjCClassMetadata();
  v11 = sub_1C99C8248(&v19, v10);
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v15 = v23;
  v16 = v22;
  v17 = *(&v19 + 1);
  result = (*(v7 + 8))(v9, v6, v11);
  retstr->var0.var0 = v12;
  *&retstr->var0.var1 = v17;
  retstr->var0.var3 = v13;
  retstr->var1.var0 = v14;
  *&retstr->var1.var1 = v16;
  retstr->var1.var3 = v15;
  return result;
}

@end