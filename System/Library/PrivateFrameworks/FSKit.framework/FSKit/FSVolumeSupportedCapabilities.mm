@interface FSVolumeSupportedCapabilities
- (BOOL)isEqual:(id)equal;
- (FSVolumeSupportedCapabilities)initWithCoder:(id)coder;
- (unint64_t)capabilities;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSVolumeSupportedCapabilities

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[FSVolumeSupportedCapabilities capabilities](self forKey:{"capabilities"), @"FSKitSupportedCapabilities"}];
}

- (FSVolumeSupportedCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FSVolumeSupportedCapabilities;
  v5 = [(FSVolumeSupportedCapabilities *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"FSKitSupportedCapabilities"];
    v5[8] = v6 & 1;
    v7 = *&vshl_u16((*&vdup_n_s16(v6) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
    *(v5 + 9) = vuzp1_s8(v7, v7).u32[0];
    v5[14] = (v6 & 0x40) != 0;
    v5[15] = (v6 & 0x80) != 0;
    v5[25] = (v6 & 0x800000) != 0;
    v5[26] = BYTE3(v6) & 1;
    v5[13] = (v6 & 0x20) != 0;
    v8 = vdupq_n_s64(v6);
    *(v5 + 2) = vand_s8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v8, xmmword_24A970F80), vshlq_u64(v8, xmmword_24A970F70)), vuzp1q_s32(vshlq_u64(v8, xmmword_24A970FA0), vshlq_u64(v8, xmmword_24A970F90)))), 0x101010101010101);
    v5[24] = (v6 & 0x400000) != 0;
    if ((v6 & 0x100) != 0)
    {
      *(v5 + 4) = 0;
    }

    else
    {
      if ((v6 & 0x200) != 0)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      *(v5 + 4) = v9;
    }
  }

  return v5;
}

- (unint64_t)capabilities
{
  supportsPersistentObjectIDs = self->_supportsPersistentObjectIDs;
  if (self->_supportsSymbolicLinks)
  {
    supportsPersistentObjectIDs |= 2uLL;
  }

  if (self->_supportsHardLinks)
  {
    supportsPersistentObjectIDs |= 4uLL;
  }

  if (self->_supportsJournal)
  {
    supportsPersistentObjectIDs |= 8uLL;
  }

  if (self->_supportsActiveJournal)
  {
    supportsPersistentObjectIDs |= 0x10uLL;
  }

  if (self->_supportsSparseFiles)
  {
    supportsPersistentObjectIDs |= 0x40uLL;
  }

  if (self->_supportsZeroRuns)
  {
    supportsPersistentObjectIDs |= 0x80uLL;
  }

  if (self->_supportsFastStatFS)
  {
    supportsPersistentObjectIDs |= 0x400uLL;
  }

  if (self->_supports2TBFiles)
  {
    supportsPersistentObjectIDs |= 0x800uLL;
  }

  if (self->_supportsOpenDenyModes)
  {
    supportsPersistentObjectIDs |= 0x1000uLL;
  }

  if (self->_supportsHiddenFiles)
  {
    supportsPersistentObjectIDs |= 0x2000uLL;
  }

  if (self->_supports64BitObjectIDs)
  {
    supportsPersistentObjectIDs |= 0x20000uLL;
  }

  if (self->_supportsDocumentID)
  {
    supportsPersistentObjectIDs |= 0x80000uLL;
  }

  if (self->_supportsSharedSpace)
  {
    supportsPersistentObjectIDs |= 0x800000uLL;
  }

  if (self->_supportsVolumeGroups)
  {
    supportsPersistentObjectIDs |= 0x1000000uLL;
  }

  if (self->_doesNotSupportVolumeSizes)
  {
    supportsPersistentObjectIDs |= 0x8000uLL;
  }

  if (self->_doesNotSupportRootTimes)
  {
    supportsPersistentObjectIDs |= 0x20uLL;
  }

  if (self->_doesNotSupportImmutableFiles)
  {
    supportsPersistentObjectIDs |= 0x200000uLL;
  }

  if (self->_doesNotSupportSettingFilePermissions)
  {
    supportsPersistentObjectIDs |= 0x400000uLL;
  }

  caseFormat = self->_caseFormat;
  v4 = supportsPersistentObjectIDs | 0x100;
  if (caseFormat)
  {
    v4 = supportsPersistentObjectIDs;
  }

  if (caseFormat == 2 || caseFormat == 0)
  {
    return v4 | 0x200;
  }

  else
  {
    return supportsPersistentObjectIDs;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v26 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    doesNotSupportRootTimes = [(FSVolumeSupportedCapabilities *)self doesNotSupportRootTimes];
    if (doesNotSupportRootTimes == [(FSVolumeSupportedCapabilities *)v6 doesNotSupportRootTimes]
      && (v8 = [(FSVolumeSupportedCapabilities *)self doesNotSupportSettingFilePermissions], v8 == [(FSVolumeSupportedCapabilities *)v6 doesNotSupportSettingFilePermissions])
      && (v9 = [(FSVolumeSupportedCapabilities *)self supportsSymbolicLinks], v9 == [(FSVolumeSupportedCapabilities *)v6 supportsSymbolicLinks])
      && (v10 = [(FSVolumeSupportedCapabilities *)self supportsHardLinks], v10 == [(FSVolumeSupportedCapabilities *)v6 supportsHardLinks])
      && (v11 = [(FSVolumeSupportedCapabilities *)self supports64BitObjectIDs], v11 == [(FSVolumeSupportedCapabilities *)v6 supports64BitObjectIDs])
      && (v12 = [(FSVolumeSupportedCapabilities *)self supportsDocumentID], v12 == [(FSVolumeSupportedCapabilities *)v6 supportsDocumentID])
      && (v13 = [(FSVolumeSupportedCapabilities *)self supportsFastStatFS], v13 == [(FSVolumeSupportedCapabilities *)v6 supportsFastStatFS])
      && (v14 = [(FSVolumeSupportedCapabilities *)self doesNotSupportImmutableFiles], v14 == [(FSVolumeSupportedCapabilities *)v6 doesNotSupportImmutableFiles])
      && (v15 = [(FSVolumeSupportedCapabilities *)self supportsJournal], v15 == [(FSVolumeSupportedCapabilities *)v6 supportsJournal])
      && (v16 = [(FSVolumeSupportedCapabilities *)self supportsActiveJournal], v16 == [(FSVolumeSupportedCapabilities *)v6 supportsActiveJournal])
      && (v17 = [(FSVolumeSupportedCapabilities *)self supportsOpenDenyModes], v17 == [(FSVolumeSupportedCapabilities *)v6 supportsOpenDenyModes])
      && (v18 = [(FSVolumeSupportedCapabilities *)self supportsPersistentObjectIDs], v18 == [(FSVolumeSupportedCapabilities *)v6 supportsPersistentObjectIDs])
      && (v19 = [(FSVolumeSupportedCapabilities *)self supportsSharedSpace], v19 == [(FSVolumeSupportedCapabilities *)v6 supportsSharedSpace])
      && (v20 = [(FSVolumeSupportedCapabilities *)self supportsSparseFiles], v20 == [(FSVolumeSupportedCapabilities *)v6 supportsSparseFiles])
      && (v21 = [(FSVolumeSupportedCapabilities *)self supportsVolumeGroups], v21 == [(FSVolumeSupportedCapabilities *)v6 supportsVolumeGroups])
      && (v22 = [(FSVolumeSupportedCapabilities *)self doesNotSupportVolumeSizes], v22 == [(FSVolumeSupportedCapabilities *)v6 doesNotSupportVolumeSizes])
      && (v23 = [(FSVolumeSupportedCapabilities *)self supportsVolumeGroups], v23 == [(FSVolumeSupportedCapabilities *)v6 supportsVolumeGroups])
      && (v24 = [(FSVolumeSupportedCapabilities *)self supportsZeroRuns], v24 == [(FSVolumeSupportedCapabilities *)v6 supportsZeroRuns])
      && (v25 = [(FSVolumeSupportedCapabilities *)self supports2TBFiles], v25 == [(FSVolumeSupportedCapabilities *)v6 supports2TBFiles]))
    {
      caseFormat = [(FSVolumeSupportedCapabilities *)self caseFormat];
      v26 = caseFormat == [(FSVolumeSupportedCapabilities *)v6 caseFormat];
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end