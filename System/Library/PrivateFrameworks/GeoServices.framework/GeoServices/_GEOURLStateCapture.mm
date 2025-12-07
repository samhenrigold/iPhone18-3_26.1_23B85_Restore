@interface _GEOURLStateCapture
- (_GEOURLStateCapture)init;
@end

@implementation _GEOURLStateCapture

- (_GEOURLStateCapture)init
{
  v6.receiver = self;
  v6.super_class = _GEOURLStateCapture;
  v2 = [(_GEOURLStateCapture *)&v6 init];
  if (v2)
  {
    global_queue = geo_get_global_queue();
    GEORegisterPListStateCaptureLegacy();

    v4 = v2;
  }

  return v2;
}

@end