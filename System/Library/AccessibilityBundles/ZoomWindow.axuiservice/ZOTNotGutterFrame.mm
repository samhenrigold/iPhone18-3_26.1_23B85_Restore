@interface ZOTNotGutterFrame
@end

@implementation ZOTNotGutterFrame

void __ZOTNotGutterFrame_block_invoke(id a1)
{
  v1 = ZOTMainScreenSize();
  v3 = v2;
  v4 = ZOTGutterDistance();
  *&v5 = v4;
  v6 = (v4 + v4);
  ZOTNotGutterFrame_nonGutterFrame_0 = v5;
  ZOTNotGutterFrame_nonGutterFrame_1 = v5;
  *&ZOTNotGutterFrame_nonGutterFrame_2 = v1 - v6;
  *&ZOTNotGutterFrame_nonGutterFrame_3 = v3 - v6;
}

@end