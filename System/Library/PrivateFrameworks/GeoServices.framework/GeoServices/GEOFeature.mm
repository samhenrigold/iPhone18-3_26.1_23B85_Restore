@interface GEOFeature
- (GEOFeatureStyleAttributes)attributes;
@end

@implementation GEOFeature

- (GEOFeatureStyleAttributes)attributes
{
  p_initAttributesFlag = &self->_initAttributesFlag;
  selfCopy = self;
  v6 = selfCopy;
  if (atomic_load_explicit(p_initAttributesFlag, memory_order_acquire) != -1)
  {
    v8 = &v6;
    v7 = &v8;
    std::__call_once(&p_initAttributesFlag->__state_, &v7, std::__call_once_proxy[abi:ne200100]<std::tuple<-[GEOFeature attributes]::$_0 &&>>);
  }

  cached_attributes = selfCopy->_cached_attributes;

  return cached_attributes;
}

@end