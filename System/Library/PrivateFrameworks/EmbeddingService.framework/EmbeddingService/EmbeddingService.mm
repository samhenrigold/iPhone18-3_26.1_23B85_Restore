double gotLoadHelper_x8__OBJC_CLASS___CDMClient(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CDMFoundation))
  {
    return dlopenHelper_CDMFoundation(result);
  }

  return result;
}

double dlopenHelper_CDMFoundation(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CDMFoundation.framework/CDMFoundation", 0);
  atomic_store(1u, &dlopenHelperFlag_CDMFoundation);
  return a1;
}