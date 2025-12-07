void sub_24A4F2894(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id LogCategory_Daemon(uint64_t a1)
{
  if (LogCategory_Daemon_onceToken != -1)
  {
    LogCategory_Daemon_cold_1();
  }

  v2 = LogCategory_Daemon_log;

  return v2;
}

id LogCategory_FMFMapXPC(uint64_t a1)
{
  if (LogCategory_FMFMapXPC_onceToken != -1)
  {
    LogCategory_FMFMapXPC_cold_1();
  }

  v2 = LogCategory_FMFMapXPC_log;

  return v2;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

MKCoordinateRegion MKCoordinateRegionForMapRect(MKMapRect rect)
{
  MEMORY[0x282123640](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.span.longitudeDelta = v4;
  result.span.latitudeDelta = v3;
  result.center.longitude = v2;
  result.center.latitude = v1;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  MEMORY[0x282123658](coordinate, *&coordinate.longitude);
  result.y = v2;
  result.x = v1;
  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___FindMyAccountOverviewViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_FindMyUICore))
  {
    return dlopenHelper_FindMyUICore(result);
  }

  return result;
}

double dlopenHelper_FindMyUICore(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/FindMyUICore.framework/FindMyUICore", 0);
  atomic_store(1u, &dlopenHelperFlag_FindMyUICore);
  return a1;
}