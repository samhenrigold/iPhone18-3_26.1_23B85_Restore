@interface CUIThemePixelRendition
@end

@implementation CUIThemePixelRendition

NSDictionary *__77___CUIThemePixelRendition_newImageFromCSIDataSlice_ofBitmap_usingColorspace___block_invoke()
{
  v3 = kCGImageProviderAlphaIsOne;
  v4 = kCFBooleanTrue;
  qword_1ED4EC018 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  v1 = kCGImageProviderAlphaIsPremultiplied;
  v2 = kCFBooleanTrue;
  result = [NSDictionary dictionaryWithObjects:&v2 forKeys:&v1 count:1];
  qword_1ED4EC020 = result;
  return result;
}

void __46___CUIThemePixelRendition_setSharedBlockData___block_invoke(uint64_t a1)
{
  _CUILog(3, "CoreUI: dispatch_async to clear caches started");
  v2 = *(a1 + 40);
  if (v2 > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *off_1E72514F8[v2];
    v5 = *(v3 + v4);
    *(v3 + v4) = 0;
    if (*(*(a1 + 32) + 352))
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      CGImageGetImageProvider();
      Info = CGImageProviderGetInfo();
      if (Info)
      {
        v8 = Info;
        os_unfair_lock_lock(Info + 10);
        WeakRetained = objc_loadWeakRetained(&v8[12]);
        v10 = WeakRetained;
        if (WeakRetained)
        {
          if (*(v5 + 176))
          {
            v11 = [WeakRetained bitmapEncoding];
            v12 = [NSString stringWithFormat:@"%p-%d", *(*(a1 + 32) + 352), *(a1 + 40)];
            if (v12)
            {
              if (v11 - 2 <= 5)
              {
                v14 = v12;
                if (![+[_CSIRenditionBlockData sharedCache](_CSIRenditionBlockData v13)])
                {
                  v15 = *(v5 + 32) * *(v5 + 24);
                  if (v15 <= 0x17FEA3)
                  {
                    v16 = v14;
                    [+[_CSIRenditionBlockData sharedCache](_CSIRenditionBlockData v17)];
                    v18 = *(a1 + 40);
                    if (v18 == 2)
                    {

                      *&v8[26]._os_unfair_lock_opaque = v14;
                    }

                    else if (v18 == 1)
                    {

                      *&v8[24]._os_unfair_lock_opaque = v14;
                    }

                    else if (v18)
                    {
                    }

                    else
                    {

                      *&v8[22]._os_unfair_lock_opaque = v14;
                    }
                  }
                }
              }
            }
          }
        }

        os_unfair_lock_unlock(v8 + 10);
      }
    }
  }

  _CUILog(3, "CoreUI: dispatch_async to clear caches ended");
}

@end