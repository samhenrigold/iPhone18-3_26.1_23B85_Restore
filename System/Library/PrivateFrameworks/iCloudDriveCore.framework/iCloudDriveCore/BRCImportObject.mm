@interface BRCImportObject
- (BOOL)isBRAlias;
- (BOOL)isDocument;
- (BOOL)isFault;
- (BOOL)isFileWithFinderInfoAliasBit;
- (BOOL)isFinderAlias;
- (BRCGenerationID)generationID;
- (BRCImportObject)initWithURL:(id)l existingItem:(id)item quarantineInfo:(id)info error:(id *)error;
- (BRCImportObject)initWithURL:(id)l logicalName:(id)name quarantineInfo:(id)info parentItem:(id)item error:(id *)error;
- (BRCImportObject)initWithURL:(id)l packageRoot:(id)root error:(id *)error;
- (id)initAsNewDirectoryWithLogicalName:(id)name parentItem:(id)item;
- (id)initAsSymlinkWithTarget:(id)target parentItem:(id)item logicalName:(id)name error:(id *)error;
- (int)_resolveAgainstFileDescriptor:(int)descriptor;
- (void)_resolveParentBasedPropertiesWithParent:(id)parent logicalName:(id)name;
@end

@implementation BRCImportObject

- (BOOL)isDocument
{
  if ([(BRCImportObject *)self isFile])
  {
    if ((*(self + 161) & 0x40) != 0 || [(BRCImportObject *)self isSymLink])
    {
      return 0;
    }

    else
    {
      return ![(BRCImportObject *)self isFinderAlias];
    }
  }

  else
  {

    return [(BRCImportObject *)self isPackageRoot];
  }
}

- (BOOL)isFault
{
  isDocument = [(BRCImportObject *)self isDocument];
  if (isDocument)
  {
    logicalName = [(BRCImportObject *)self logicalName];
    br_isSideFaultName = [logicalName br_isSideFaultName];

    LOBYTE(isDocument) = br_isSideFaultName;
  }

  return isDocument;
}

- (BRCGenerationID)generationID
{
  generationID = self->_generationID;
  if (!generationID)
  {
    v4 = [[BRCGenerationID alloc] initWithFSGenerationID:self->_fsGenerationID];
    v5 = self->_generationID;
    self->_generationID = v4;

    generationID = self->_generationID;
  }

  return generationID;
}

- (BOOL)isFileWithFinderInfoAliasBit
{
  isFile = [(BRCImportObject *)self isFile];
  if (isFile)
  {
    return (*(self + 161) >> 5) & 1;
  }

  return isFile;
}

- (BOOL)isFinderAlias
{
  isFileWithFinderInfoAliasBit = [(BRCImportObject *)self isFileWithFinderInfoAliasBit];
  if (isFileWithFinderInfoAliasBit)
  {
    LOBYTE(isFileWithFinderInfoAliasBit) = (*(self + 161) & 0x40) == 0;
  }

  return isFileWithFinderInfoAliasBit;
}

- (BOOL)isBRAlias
{
  isFileWithFinderInfoAliasBit = [(BRCImportObject *)self isFileWithFinderInfoAliasBit];
  if (isFileWithFinderInfoAliasBit)
  {
    return (*(self + 161) >> 6) & 1;
  }

  return isFileWithFinderInfoAliasBit;
}

- (id)initAsSymlinkWithTarget:(id)target parentItem:(id)item logicalName:(id)name error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  itemCopy = item;
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = BRCImportObject;
  v14 = [(BRCImportObject *)&v23 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_4;
  }

  if (targetCopy)
  {
    [(BRCImportObject *)v14 _resolveParentBasedPropertiesWithParent:itemCopy logicalName:nameCopy];
    v15->_mode = -24128;
    v15->_birthtime.tv_sec = time(0);
    v15->_mtime = v15->_birthtime;
    objc_storeStrong(&v15->_symlinkContent, target);
LABEL_4:
    v16 = v15;
    goto LABEL_11;
  }

  v17 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:96];
  if (v17)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, 0x90u))
    {
      v22 = "(passed to caller)";
      *buf = 136315906;
      v25 = "[BRCImportObject initAsSymlinkWithTarget:parentItem:logicalName:error:]";
      v26 = 2080;
      if (!error)
      {
        v22 = "(ignored by caller)";
      }

      v27 = v22;
      v28 = 2112;
      v29 = v17;
      v30 = 2112;
      v31 = v18;
      _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v20 = v17;
    *error = v17;
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (BRCImportObject)initWithURL:(id)l existingItem:(id)item quarantineInfo:(id)info error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  lCopy = l;
  itemCopy = item;
  v38.receiver = self;
  v38.super_class = BRCImportObject;
  v12 = [(BRCImportObject *)&v38 init];
  if (!v12)
  {
LABEL_22:
    v26 = v12;
    goto LABEL_23;
  }

  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  objc_storeStrong(&v12->_fileURL, l);
  if (itemCopy)
  {
    v14 = [itemCopy st];
    logicalName = [v14 logicalName];
    p_logicalName = &v12->_logicalName;
    logicalName = v12->_logicalName;
    v12->_logicalName = logicalName;
  }

  else
  {
    lastPathComponent = [lCopy lastPathComponent];
    p_logicalName = &v12->_logicalName;
    v14 = v12->_logicalName;
    v12->_logicalName = lastPathComponent;
  }

  v19 = open(fileSystemRepresentation, 2129924);
  if ((v19 & 0x80000000) != 0)
  {
    v21 = *__error();
    if (v21)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  v20 = v19;
  v21 = [(BRCImportObject *)v12 _resolveAgainstFileDescriptor:v19];
  close(v20);
  if (!v21)
  {
LABEL_14:
    if ([*p_logicalName br_isExcludedWithMaximumDepth:1024])
    {
      v27 = brc_bread_crumbs();
      v28 = brc_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        path = [(NSURL *)v12->_fileURL path];
        *buf = 138412546;
        v40 = path;
        v41 = 2112;
        v42 = v27;
        _os_log_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEFAULT, "[WARNING] fileURL is excluded at %@%@", buf, 0x16u);
      }

      *(v12 + 161) |= 1u;
    }

    if ([itemCopy isDocument] && -[BRCImportObject isUnixDir](v12, "isUnixDir"))
    {
      *(v12 + 161) |= 4u;
    }

    session = [itemCopy session];
    session = v12->_session;
    v12->_session = session;

    itemParentGlobalID = [itemCopy itemParentGlobalID];
    parentItemGlobalID = v12->_parentItemGlobalID;
    v12->_parentItemGlobalID = itemParentGlobalID;

    appLibrary = [itemCopy appLibrary];
    appLibrary = v12->_appLibrary;
    v12->_appLibrary = appLibrary;

    v12->_itemScope = [itemCopy itemScope];
    v12->_sharingOptions = [itemCopy sharingOptions];
    v12->_isUserVisible = [itemCopy isUserVisible];
    goto LABEL_22;
  }

LABEL_7:
  v22 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:v21];
  if (v22)
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, 0x90u))
    {
      v37 = "(passed to caller)";
      *buf = 136315906;
      v40 = "[BRCImportObject initWithURL:existingItem:quarantineInfo:error:]";
      v41 = 2080;
      if (!error)
      {
        v37 = "(ignored by caller)";
      }

      v42 = v37;
      v43 = 2112;
      v44 = v22;
      v45 = 2112;
      v46 = v23;
      _os_log_error_impl(&dword_223E7A000, v24, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v25 = v22;
    *error = v22;
  }

  v26 = 0;
LABEL_23:

  return v26;
}

- (void)_resolveParentBasedPropertiesWithParent:(id)parent logicalName:(id)name
{
  parentCopy = parent;
  nameCopy = name;
  objc_storeStrong(&self->_logicalName, name);
  session = [parentCopy session];
  session = self->_session;
  self->_session = session;

  itemGlobalID = [parentCopy itemGlobalID];
  parentItemGlobalID = self->_parentItemGlobalID;
  self->_parentItemGlobalID = itemGlobalID;

  appLibrary = [parentCopy appLibrary];
  appLibrary = self->_appLibrary;
  self->_appLibrary = appLibrary;

  includesDataScope = [(BRCAppLibrary *)self->_appLibrary includesDataScope];
  if ([parentCopy isZoneRoot])
  {
    if (includesDataScope)
    {
      v15 = [nameCopy isEqualToString:*MEMORY[0x277CFAD50]] == 0;
      v16 = 1;
    }

    else
    {
      v15 = [nameCopy isEqualToString:*MEMORY[0x277CFADB8]] == 0;
      v16 = 2;
    }

    if (!v15)
    {
      ++v16;
    }

    goto LABEL_10;
  }

  itemID = [parentCopy itemID];
  if ([itemID isDocumentsFolder])
  {
    v18 = [nameCopy isEqualToString:*MEMORY[0x277CFADB8]];

    if (v18)
    {
      v16 = 3;
LABEL_10:
      self->_itemScope = v16;
      goto LABEL_13;
    }
  }

  else
  {
  }

  self->_itemScope = [parentCopy itemScope];
LABEL_13:
  if ([nameCopy isEqualToString:*MEMORY[0x277CFAD90]])
  {
    fileObjectID = [parentCopy fileObjectID];
    if ([fileObjectID isAppLibraryRoot] && (objc_msgSend(fileObjectID, "isCloudDocsRoot") & 1) == 0)
    {
      appLibrary2 = [parentCopy appLibrary];
      v21 = self->_appLibrary;
      self->_appLibrary = appLibrary2;
      v22 = appLibrary2;

      *(self + 162) |= 2u;
      rootItemGlobalID = [(BRCAppLibrary *)v22 rootItemGlobalID];
      v24 = self->_parentItemGlobalID;
      self->_parentItemGlobalID = rootItemGlobalID;
    }
  }

  self->_sharingOptions = [parentCopy sharingOptions] & 0x78;
  isUserVisible = [parentCopy isUserVisible];
  itemID2 = [parentCopy itemID];
  isNonDesktopRoot = [itemID2 isNonDesktopRoot];
  itemScope = [parentCopy itemScope];
  isZoneRoot = [parentCopy isZoneRoot];
  if (isZoneRoot)
  {
    logicalName = 0;
  }

  else
  {
    v4 = [parentCopy st];
    logicalName = [v4 logicalName];
  }

  appLibrary3 = [parentCopy appLibrary];
  self->_isUserVisible = [BRCLocalItem computeUserVisibleStatusOfLiveItemWithParentVisible:isUserVisible parentIsNonDesktopRoot:isNonDesktopRoot parentScope:itemScope itemFilename:v32 parentFilename:logicalName appLibrary:appLibrary3];

  if ((isZoneRoot & 1) == 0)
  {
  }

  if ([(NSString *)self->_logicalName br_isExcludedWithMaximumDepth:1])
  {
    *(self + 161) |= 1u;
  }
}

- (id)initAsNewDirectoryWithLogicalName:(id)name parentItem:(id)item
{
  nameCopy = name;
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = BRCImportObject;
  v8 = [(BRCImportObject *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(BRCImportObject *)v8 _resolveParentBasedPropertiesWithParent:itemCopy logicalName:nameCopy];
    v9->_mode = 16832;
    v9->_birthtime.tv_sec = time(0);
    v9->_mtime = v9->_birthtime;
  }

  return v9;
}

- (BRCImportObject)initWithURL:(id)l logicalName:(id)name quarantineInfo:(id)info parentItem:(id)item error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  lCopy = l;
  nameCopy = name;
  infoCopy = info;
  itemCopy = item;
  v35.receiver = self;
  v35.super_class = BRCImportObject;
  v17 = [(BRCImportObject *)&v35 init];
  if (!v17)
  {
LABEL_15:
    v31 = v17;
    goto LABEL_16;
  }

  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  objc_storeStrong(&v17->_fileURL, l);
  objc_storeStrong(&v17->_logicalName, name);
  objc_storeStrong(&v17->_quarantineInfo, info);
  v24 = BRCOpenAt(0xFFFFFFFFLL, fileSystemRepresentation, 32772, v19, v20, v21, v22, v23, v35.receiver);
  if ((v24 & 0x80000000) != 0)
  {
    v26 = *__error();
    if (v26)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v25 = v24;
  v26 = [(BRCImportObject *)v17 _resolveAgainstFileDescriptor:v24];
  close(v25);
  if (!v26)
  {
LABEL_11:
    if ([(BRCImportObject *)v17 isUnixDir])
    {
      v32 = 4;
    }

    else
    {
      v32 = 0;
    }

    *(v17 + 161) = *(v17 + 161) & 0xFB | v32;
    [(BRCImportObject *)v17 _resolveParentBasedPropertiesWithParent:itemCopy logicalName:nameCopy];
    goto LABEL_15;
  }

LABEL_4:
  v27 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:v26];
  if (v27)
  {
    v28 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, 0x90u))
    {
      v34 = "(passed to caller)";
      *buf = 136315906;
      v37 = "[BRCImportObject initWithURL:logicalName:quarantineInfo:parentItem:error:]";
      v38 = 2080;
      if (!error)
      {
        v34 = "(ignored by caller)";
      }

      v39 = v34;
      v40 = 2112;
      v41 = v27;
      v42 = 2112;
      v43 = v28;
      _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v30 = v27;
    *error = v27;
  }

  v31 = 0;
LABEL_16:

  return v31;
}

- (int)_resolveAgainstFileDescriptor:(int)descriptor
{
  v99 = *MEMORY[0x277D85DE8];
  if (descriptor < 0)
  {
    return *__error();
  }

  v3 = *&descriptor;
  v78 = xmmword_2241ABE80;
  v79 = 513;
  v98 = 0;
  memset(v97, 0, sizeof(v97));
  if (fgetattrlist(descriptor, &v78, v97, 0x68uLL, 0x20u) < 0)
  {
    v17 = *__error();
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, 0x90u))
    {
      path = [(NSURL *)self->_fileURL path];
      *buf = 67109890;
      *v84 = v3;
      *&v84[4] = 2112;
      *&v84[6] = path;
      *&v84[14] = 1024;
      *&v84[16] = v17;
      *&v84[20] = 2112;
      *&v84[22] = v18;
      _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] fgetattrlist(%d) at '%@' failed %{errno}d%@", buf, 0x22u);
    }

    *__error() = v17;
    return *__error();
  }

  v5 = v97[9];
  v6 = v97[9] & 0xF000;
  if (v6 != 0x4000 && v6 != 0x8000 && v6 != 40960)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v65 = aPcDBLSW[LOWORD(v97[9]) >> 12];
      *buf = 67111938;
      if ((v97[9] & 0x100) != 0)
      {
        v66 = 114;
      }

      else
      {
        v66 = 45;
      }

      *v84 = v65;
      *&v84[4] = 1024;
      if ((v97[9] & 0x80) != 0)
      {
        v67 = 119;
      }

      else
      {
        v67 = 45;
      }

      *&v84[6] = v66;
      *&v84[10] = 1024;
      if ((v97[9] & 0x40) != 0)
      {
        v68 = 120;
      }

      else
      {
        v68 = 45;
      }

      *&v84[12] = v67;
      if ((v97[9] & 0x20) != 0)
      {
        v69 = 114;
      }

      else
      {
        v69 = 45;
      }

      *&v84[16] = 1024;
      if ((v97[9] & 0x10) != 0)
      {
        v70 = 119;
      }

      else
      {
        v70 = 45;
      }

      *&v84[18] = v68;
      if ((v97[9] & 8) != 0)
      {
        v71 = 120;
      }

      else
      {
        v71 = 45;
      }

      *&v84[22] = 1024;
      if ((v97[9] & 4) != 0)
      {
        v72 = 114;
      }

      else
      {
        v72 = 45;
      }

      *&v84[24] = v69;
      if ((v97[9] & 2) != 0)
      {
        v73 = 119;
      }

      else
      {
        v73 = 45;
      }

      *&v84[28] = 1024;
      if (v97[9])
      {
        v74 = 120;
      }

      else
      {
        v74 = 45;
      }

      *&v84[30] = v70;
      v85 = 1024;
      v86 = v71;
      v87 = 1024;
      v88 = v72;
      v89 = 1024;
      v90 = v73;
      v91 = 1024;
      v92 = v74;
      v93 = 2112;
      selfCopy = self;
      v95 = 2112;
      v96 = v7;
      _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Inappropriate file type %c%c%c%c%c%c%c%c%c%c for %@%@", buf, 0x52u);
    }

    *(self + 161) |= 1u;
    v5 = v97[9];
  }

  v9 = BRCIsLegacyUbiquityFault(v3, SBYTE4(v97[9]), v5, &v97[5]);
  if (v9)
  {
    v10 = v9;
    path2 = [(NSURL *)self->_fileURL path];
    v12 = BRCUnlinkAt(-1, path2, ((v97[9] & 0xF000) == 0x4000) << 7);

    if (v12 < 0)
    {
      v28 = *__error();
      v29 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, 0x90u))
      {
        if (v10 == 2)
        {
          v75 = "brok";
        }

        else
        {
          v75 = "UF_COMPRESSED";
        }

        path3 = [(NSURL *)self->_fileURL path];
        *buf = 136315906;
        *v84 = v75;
        *&v84[8] = 2112;
        *&v84[10] = path3;
        *&v84[18] = 1024;
        *&v84[20] = v28;
        *&v84[24] = 2112;
        *&v84[26] = v29;
        _os_log_error_impl(&dword_223E7A000, v30, 0x90u, "[ERROR] failed to unlink legacy ubiquity %s fault at '%@' %{errno}d%@", buf, 0x26u);
      }

      *__error() = v28;
    }

    else
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (v10 == 2)
        {
          v15 = "brok";
        }

        else
        {
          v15 = "UF_COMPRESSED";
        }

        path4 = [(NSURL *)self->_fileURL path];
        *buf = 136315650;
        *v84 = v15;
        *&v84[8] = 2112;
        *&v84[10] = path4;
        *&v84[18] = 2112;
        *&v84[20] = v13;
        _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[NOTICE] cleaned up legacy ubiquity %s fault at '%@'%@", buf, 0x20u);
      }
    }

    return 14;
  }

  self->_fileID = *(&v97[10] + 4);
  *&self->_fsGenerationID = vrev64_s32(*(&v97[9] + 4));
  self->_mode = v97[9];
  if (BRCIsBusyDate(v97[1]))
  {
    v21 = time(0);
    v22 = v97[3];
    if (v21 < v97[3])
    {
      v22 = v21;
    }

    v97[1] = v22;
  }

  v23 = *&v97[3];
  self->_birthtime = *&v97[1];
  self->_mtime = v23;
  if ((v97[9] & 0xF000) == 0x8000)
  {
    v24 = v98;
  }

  else
  {
    v24 = 0;
  }

  self->_size = v24;
  v25 = *&v97[7];
  *self->_finderInfo = *&v97[5];
  *&self->_finderInfo[16] = v25;
  v26 = *(self + 161) & 0xDF | (32 * ((LOBYTE(v97[6]) >> 7) & 1));
  *(self + 161) = *(self + 161) & 0xDF | (32 * (LOBYTE(v97[6]) >> 7));
  if ((v97[6] & 0xE00) != 0)
  {
    v27 = v26 | 0x10;
  }

  else
  {
    v27 = *(self + 161) & 0xEF | (16 * (fgetxattr(v3, "com.apple.metadata:_kMDItemUserTags", 0, 0, 0, 0) > 0));
  }

  *(self + 161) = v27;
  if ((v27 & 0x20) != 0)
  {
    if ((v27 & 2) != 0)
    {
      v31 = brc_bread_crumbs();
      v32 = brc_default_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [BRCImportObject _resolveAgainstFileDescriptor:];
      }

      *(self + 161) |= 1u;
    }

    if ((v97[9] & 0xF000) == 0x4000)
    {
      v33 = brc_bread_crumbs();
      v34 = brc_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [BRCImportObject _resolveAgainstFileDescriptor:];
      }

      *(self + 161) |= 1u;
    }

    if (fgetxattr(v3, "com.apple.clouddocs.security", 0, 0, 0, 0) != -1)
    {
      *(self + 161) |= 0x40u;
      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [(BRCImportObject *)self _resolveAgainstFileDescriptor:v35, v36];
      }

      return 45;
    }

    if (*__error() == 93)
    {
      v37 = *(self + 161);
    }

    else
    {
      v39 = brc_bread_crumbs();
      v40 = brc_default_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *__error();
        *buf = 138412802;
        *v84 = self;
        *&v84[8] = 1024;
        *&v84[10] = v41;
        *&v84[14] = 2112;
        *&v84[16] = v39;
        _os_log_impl(&dword_223E7A000, v40, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't read xattr for '%@' %{errno}d%@", buf, 0x1Cu);
      }

      v37 = *(self + 161) | 1;
    }

    *(self + 161) = v37 & 0xBF;
  }

  if (_CFURLIsPromiseName() && ((self->_mode & 0xF000) != 0x8000 || (*(self + 161) & 0x40) != 0))
  {
    v42 = brc_bread_crumbs();
    v43 = brc_default_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      logicalName = self->_logicalName;
      *buf = 138412546;
      *v84 = logicalName;
      *&v84[8] = 2112;
      *&v84[10] = v42;
      _os_log_impl(&dword_223E7A000, v43, OS_LOG_TYPE_DEFAULT, "[WARNING] Excluding item with promise name that isn't a promise '%@'%@", buf, 0x16u);
    }

    *(self + 161) |= 1u;
  }

  if (![(BRCImportObject *)self isSymLink])
  {
    goto LABEL_66;
  }

  if ((BRCReadlinkAt(-1, [(NSURL *)self->_fileURL fileSystemRepresentation], buf, 1025) & 0x80000000) == 0)
  {
    v45 = [MEMORY[0x277CCACA8] br_pathWithFileSystemRepresentation:buf];
    symlinkContent = self->_symlinkContent;
    self->_symlinkContent = v45;

    v47 = self->_symlinkContent;
    if (!v47)
    {
      [(BRCImportObject *)&self->_symlinkContent _resolveAgainstFileDescriptor:v80];
      v47 = *v80;
    }

    if (![(NSString *)v47 br_pathSafeFileSystemRepresentation])
    {
      v48 = brc_bread_crumbs();
      v49 = brc_default_log();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = self->_symlinkContent;
        *v80 = 138412546;
        *&v80[4] = v50;
        v81 = 2112;
        v82 = v48;
        _os_log_impl(&dword_223E7A000, v49, OS_LOG_TYPE_DEFAULT, "[WARNING] invalid symlink content: %@%@", v80, 0x16u);
      }
    }

LABEL_66:
    appLibrary = [(BRCImportObject *)self appLibrary];
    mangledID = [appLibrary mangledID];
    v53 = [BRCUserDefaults defaultsForMangledID:mangledID];
    maxXattrBlobSize = [v53 maxXattrBlobSize];

    v77 = 0;
    v55 = [BRFieldXattrBlob loadXattrsFromFD:v3 withMaximumSize:maxXattrBlobSize error:&v77];
    v56 = v77;
    xattrs = self->_xattrs;
    self->_xattrs = v55;

    if (v56)
    {
      v58 = brc_bread_crumbs();
      v59 = brc_default_log();
      if (os_log_type_enabled(v59, 0x90u))
      {
        [(BRCImportObject *)self _resolveAgainstFileDescriptor:v58, v59];
      }
    }

    return 0;
  }

  v61 = *__error();
  if (v61)
  {
    v20 = v61;
  }

  else
  {
    v20 = 22;
  }

  v62 = brc_bread_crumbs();
  v63 = brc_default_log();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    fileSystemRepresentation = [(NSURL *)self->_fileURL fileSystemRepresentation];
    *v80 = 136315394;
    *&v80[4] = fileSystemRepresentation;
    v81 = 2112;
    v82 = v62;
    _os_log_impl(&dword_223E7A000, v63, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't read symlink at '%s'%@", v80, 0x16u);
  }

  return v20;
}

- (BRCImportObject)initWithURL:(id)l packageRoot:(id)root error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rootCopy = root;
  v34.receiver = self;
  v34.super_class = BRCImportObject;
  v11 = [(BRCImportObject *)&v34 init];
  if (!v11)
  {
    goto LABEL_18;
  }

  session = [rootCopy session];
  session = v11->_session;
  v11->_session = session;

  appLibrary = [rootCopy appLibrary];
  appLibrary = v11->_appLibrary;
  v11->_appLibrary = appLibrary;

  objc_storeStrong(&v11->_fileURL, l);
  lastPathComponent = [(NSURL *)v11->_fileURL lastPathComponent];
  logicalName = v11->_logicalName;
  v11->_logicalName = lastPathComponent;

  *(v11 + 161) |= 2u;
  if ([(NSString *)v11->_logicalName br_isExcludedWithMaximumDepth:1])
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      path = [(NSURL *)v11->_fileURL path];
      *buf = 138412546;
      v36 = path;
      v37 = 2112;
      *v38 = v18;
      _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Package item is excluded at %@%@", buf, 0x16u);
    }

    *(v11 + 161) |= 1u;
  }

  v21 = open([(NSURL *)v11->_fileURL fileSystemRepresentation], 2129924);
  if ((v21 & 0x80000000) == 0)
  {
    v22 = v21;
    v23 = [(BRCImportObject *)v11 _resolveAgainstFileDescriptor:v21];
    close(v22);
    if (!v23)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v23 = *__error();
  v24 = *__error();
  v25 = brc_bread_crumbs();
  v26 = brc_default_log();
  if (os_log_type_enabled(v26, 0x90u))
  {
    path2 = [(NSURL *)v11->_fileURL path];
    *buf = 138412802;
    v36 = path2;
    v37 = 1024;
    *v38 = v24;
    *&v38[4] = 2112;
    *&v38[6] = v25;
    _os_log_error_impl(&dword_223E7A000, v26, 0x90u, "[ERROR] Failed opening %@ %{errno}d%@", buf, 0x1Cu);
  }

  *__error() = v24;
  if (v23)
  {
LABEL_12:
    v27 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:v23];
    if (v27)
    {
      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, 0x90u))
      {
        v32 = "(passed to caller)";
        *buf = 136315906;
        v36 = "[BRCImportObject(BRCPackageAdditions) initWithURL:packageRoot:error:]";
        v37 = 2080;
        if (!error)
        {
          v32 = "(ignored by caller)";
        }

        *v38 = v32;
        *&v38[8] = 2112;
        *&v38[10] = v27;
        v39 = 2112;
        v40 = v28;
        _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v30 = v27;
      *error = v27;
    }

    v11 = 0;
  }

LABEL_18:

  return v11;
}

- (void)_resolveAgainstFileDescriptor:(NSObject *)a3 .cold.3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 8) path];
  OUTLINED_FUNCTION_1_0();
  v7 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] BR alias is ignored at '%@'%@", v6, 0x16u);
}

- (void)_resolveAgainstFileDescriptor:(void *)a1 .cold.4(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _symlinkContent%@", &v6, 0xCu);
  }

  *a2 = *a1;
}

- (void)_resolveAgainstFileDescriptor:(NSObject *)a3 .cold.5(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 8) fileSystemRepresentation];
  OUTLINED_FUNCTION_1_0();
  v6 = a2;
  _os_log_error_impl(&dword_223E7A000, a3, 0x90u, "[ERROR] Recieved an error while reading xattrs at '%s'%@", v5, 0x16u);
}

@end