@interface NRCompanionLinkPreferences
- (BOOL)isEqual:(id)equal;
- (id)copyShortDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initInternalWithServiceClass:(unsigned __int8)class highThroughout:(BOOL)throughout includeP2P:(BOOL)p;
@end

@implementation NRCompanionLinkPreferences

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = *(&self->super._linkType + 1);
    if (v7 == [(NRCompanionLinkPreferences *)v6 highThroughput]&& (v8 = *(&self->super._linkType + 2), v8 == [(NRCompanionLinkPreferences *)v6 includeP2P]))
    {
      v9 = *(&self->super._linkType + 3);
      v10 = v9 == [(NRCompanionLinkPreferences *)v6 serviceClass];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyShortDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = *&self->_highThroughput;
  v5 = *(&self->super._linkType + 3);
  if (v5 >= 6)
  {
    v7 = v3;
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%u)", v5];
    v3 = v7;
  }

  else
  {
    v6 = off_27996BB58[*(&self->super._linkType + 3)];
  }

  v8 = "";
  if (*(&self->super._linkType + 1))
  {
    v9 = " ht";
  }

  else
  {
    v9 = "";
  }

  if (*(&self->super._linkType + 2))
  {
    v8 = " p2p";
  }

  v10 = [v3 initWithFormat:@"[%llu %@%s%s", v4, v6, v9, v8];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = NRCompanionLinkPreferences;
  v4 = [(NRLinkPreferences *)&v7 copyWithZone:zone];
  serviceClass = [(NRCompanionLinkPreferences *)self serviceClass];
  if (v4)
  {
    v4[11] = serviceClass;
    v4[9] = [(NRCompanionLinkPreferences *)self highThroughput];
    v4[10] = [(NRCompanionLinkPreferences *)self includeP2P];
  }

  else
  {
    [(NRCompanionLinkPreferences *)self highThroughput];
    [(NRCompanionLinkPreferences *)self includeP2P];
  }

  return v4;
}

- (id)initInternalWithServiceClass:(unsigned __int8)class highThroughout:(BOOL)throughout includeP2P:(BOOL)p
{
  v21 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = NRCompanionLinkPreferences;
  result = [(NRCompanionLinkPreferences *)&v20 init];
  if (!result)
  {
    v9 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v10 = v9;
      v11 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (!v11)
      {
        goto LABEL_7;
      }
    }

    v12 = nrCopyLogObj_461();
    _NRLogWithArgs(v12, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRCompanionLinkPreferences initInternalWithServiceClass:highThroughout:includeP2P:]"", 246);

LABEL_7:
    v13 = _os_log_pack_size();
    v15 = &v19 - ((MEMORY[0x28223BE20](v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = __error();
    v17 = _os_log_pack_fill(v15, v13, *v16, &dword_25B98C000, "%{public}s [super init] failed");
    *v17 = 136446210;
    *(v17 + 4) = "[NRCompanionLinkPreferences initInternalWithServiceClass:highThroughout:includeP2P:]";
    v18 = nrCopyLogObj_461();
    _NRLogAbortWithPack(v18, v15);
  }

  *(result + 2) = atomic_fetch_add_explicit(&initInternalWithServiceClass_highThroughout_includeP2P__sNRLinkID, 1uLL, memory_order_relaxed);
  *(result + 11) = class;
  *(result + 9) = throughout;
  *(result + 10) = p;
  return result;
}

@end