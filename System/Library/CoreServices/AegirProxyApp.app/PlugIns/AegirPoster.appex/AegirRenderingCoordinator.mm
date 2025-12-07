@interface AegirRenderingCoordinator
- (uint64_t)astronomyVistaViewContentsAnimationFinished:;
- (void)pulseAnimationDidFinish;
@end

@implementation AegirRenderingCoordinator

- (void)pulseAnimationDidFinish
{
  v2 = qword_1000470F0;
  v3 = off_1000470F8;

  v5._countAndFlagsBits = v2;
  v5._object = v3;
  sub_100034684(v5);

  sub_100012108(0);
}

- (uint64_t)astronomyVistaViewContentsAnimationFinished:
{
  v0 = sub_100034874();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034834();
  v4 = sub_100034854();
  v5 = sub_100034C64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "astronomyVistaViewContentsAnimationFinished", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

@end