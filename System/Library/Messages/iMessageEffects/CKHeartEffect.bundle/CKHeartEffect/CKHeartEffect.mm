void sub_FDC(uint64_t a1, uint64_t a2)
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = [v4 URLForResource:@"HeartSoundEffect" withExtension:@"m4r"];
  v3 = qword_8968;
  qword_8968 = v2;
}

void sub_2410(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 format];
  [v3 bounds];
  [v2 drawViewHierarchyInRect:0 afterScreenUpdates:?];
}