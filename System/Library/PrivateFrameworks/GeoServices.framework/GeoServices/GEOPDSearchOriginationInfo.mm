@interface GEOPDSearchOriginationInfo
- (GEOPDSearchOriginationInfo)init;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation GEOPDSearchOriginationInfo

- (GEOPDSearchOriginationInfo)init
{
  v6.receiver = self;
  v6.super_class = GEOPDSearchOriginationInfo;
  v2 = [(GEOPDSearchOriginationInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (unint64_t)hash
{
  [(GEOPDSearchOriginationInfo *)self readAll:?];
  if ((*&self->_flags & 2) != 0)
  {
    v3 = 2654435761 * self->_searchOriginationType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(GEOPDSearchOriginationRoutePlanningParameters *)self->_routePlanningParameters hash];
  v5 = PBRepeatedInt32Hash();
  if (*&self->_flags)
  {
    v6 = 2654435761 * self->_clientSoftwarePlatform;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOPDSearchOriginationInfo;
  [(GEOPDSearchOriginationInfo *)&v3 dealloc];
}

@end