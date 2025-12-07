@interface NSURL(FPFSHelpers)
- (BOOL)fp_deleteAllowingCoordination:()FPFSHelpers completionHandler:;
- (BOOL)fp_queued_moveUnderFolder:()FPFSHelpers withNewName:coordinationOptions:allowBounce:allowCoordination:moveHandler:completionHandler:;
- (id)_fp_lookupURLOfChildWithName:()FPFSHelpers notMatchingFileID:;
- (id)fp_existingURLOfChildWithName:()FPFSHelpers isFolder:notMatchingFileID:nextAvailableBounceNumber:forceFetchingBounceNumber:;
- (id)fp_isDatalessWithError:()FPFSHelpers;
- (id)fp_physicalURL;
- (id)fp_scanForURLOfChildWithName:()FPFSHelpers isFolder:maxChildrenCount:notMatchingFileID:nextAvailableBounceNumber:;
- (id)fp_withReadWriteAccess:()FPFSHelpers;
- (uint64_t)fp_createSubFolder:()FPFSHelpers completionHandler:;
- (uint64_t)fp_deleteStaleBusyFileWithFileDescriptor:()FPFSHelpers coordinatorPurposeIdentifier:;
- (uint64_t)fp_importUnderFolder:()FPFSHelpers allowCoordination:completionHandler:;
- (uint64_t)fp_importUnderFolder:()FPFSHelpers allowCoordination:usingBlock:completionHandler:;
- (uint64_t)fp_moveUnderFolder:()FPFSHelpers withNewName:coordinationOptions:allowBounce:allowCoordination:completionHandler:;
- (uint64_t)fp_moveUnderFolder:()FPFSHelpers withNewName:coordinationOptions:allowBounce:allowCoordination:moveHandler:completionHandler:;
- (uint64_t)fp_renameWithNewName:()FPFSHelpers allowCoordination:completionHandler:;
- (uint64_t)fp_reparentUnderFolder:()FPFSHelpers allowBouncing:allowCoordination:completionHandler:;
- (uint64_t)fp_reparentUnderFolder:()FPFSHelpers allowCoordination:completionHandler:;
- (uint64_t)fp_reparentUnderFolder:()FPFSHelpers withNewName:allowCoordination:completionHandler:;
- (uint64_t)fp_trashUnderFolder:()FPFSHelpers allowCoordination:completionHandler:;
- (uint64_t)getMaxChildrenCount;
- (void)fp_coordinatedDeleteWithHandler:()FPFSHelpers;
@end

@implementation NSURL(FPFSHelpers)

- (id)fp_isDatalessWithError:()FPFSHelpers
{
  memset(&v8, 0, sizeof(v8));
  if (lstat([self fileSystemRepresentation], &v8) < 0)
  {
    if (a3)
    {
      v5 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
      v6 = v5;
      v4 = 0;
      *a3 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:(v8.st_flags >> 30) & 1];
  }

  return v4;
}

- (id)_fp_lookupURLOfChildWithName:()FPFSHelpers notMatchingFileID:
{
  v6 = a4;
  v7 = [self URLByAppendingPathComponent:a3];
  v17 = 0;
  v8 = *MEMORY[0x1E695DB00];
  LODWORD(self) = [v7 getResourceValue:&v17 forKey:*MEMORY[0x1E695DB00] error:0];
  v9 = v17;
  v10 = v9;
  if (self)
  {
    if (v6 && v9 && ([v6 isEqual:v9] & 1) != 0)
    {
      v11 = 0;
      goto LABEL_16;
    }

    v12 = v7;
    v14 = v10;
    goto LABEL_13;
  }

  v12 = _CFURLPromiseCopyPhysicalURL();

  if (v12)
  {
    v16 = 0;
    v13 = [v12 getResourceValue:&v16 forKey:v8 error:0];
    v14 = v16;

    if (!v13 || v6 && v14 && ([v6 isEqual:v14] & 1) != 0)
    {
      v11 = 0;
      v7 = v12;
LABEL_14:
      v10 = v14;
      goto LABEL_16;
    }

LABEL_13:
    v11 = v12;
    v7 = v11;
    goto LABEL_14;
  }

  v11 = 0;
  v7 = 0;
LABEL_16:

  return v11;
}

- (id)fp_scanForURLOfChildWithName:()FPFSHelpers isFolder:maxChildrenCount:notMatchingFileID:nextAvailableBounceNumber:
{
  v87[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v13 = *MEMORY[0x1E695E2B0];
  v74 = *MEMORY[0x1E695DC30];
  v87[0] = *MEMORY[0x1E695DC30];
  v87[1] = v13;
  v14 = *MEMORY[0x1E695DB00];
  v87[2] = *MEMORY[0x1E695DB00];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:3];
  selfCopy = self;
  v16 = [defaultManager enumeratorAtURL:self includingPropertiesForKeys:v15 options:1 errorHandler:0];

  v83 = 0;
  v71 = v10;
  v70 = [v10 fp_stringByDeletingPathBounceNo:&v83 andPathExtension:0 isFolder:a4];
  v17 = v83;
  v18 = objc_alloc_init(FPNSURLBitVectorForBounce);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v19 = v16;
  v20 = [v19 countByEnumeratingWithState:&v79 objects:v86 count:16];
  if (!v20)
  {
    v42 = 0;
    v45 = 0;
    findNextAvailableBounceNumber = v19;
    goto LABEL_56;
  }

  v21 = v20;
  v64 = v14;
  v66 = v17;
  v67 = v11;
  v22 = 0;
  v68 = 0;
  v23 = 0;
  v24 = *v80;
  obj = v19;
LABEL_3:
  v25 = 0;
  v65 = v22 + v21;
  while (1)
  {
    if (*v80 != v24)
    {
      objc_enumerationMutation(obj);
    }

    v26 = *(*(&v79 + 1) + 8 * v25);
    v27 = objc_autoreleasePoolPush();
    if (v22 > a5 || [(FPNSURLBitVectorForBounce *)v18 foundAllAvailableBounceNumbers])
    {
      break;
    }

    v78 = 0;
    v28 = [v26 getResourceValue:&v78 forKey:v74 error:0];
    v29 = v78;
    v30 = v29;
    if (v28)
    {
      v31 = v29 == 0;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      goto LABEL_25;
    }

    if (_CFURLIsPromiseName())
    {
      v32 = _CFURLCopyLogicalNameOfPromiseAtURL();

      v30 = v32;
      if (!v32)
      {
        goto LABEL_25;
      }
    }

    if (!v23 && ![v71 compare:v30 options:1])
    {
      if (v67)
      {
        v77 = 0;
        v38 = [v26 getResourceValue:&v77 forKey:v64 error:0];
        v34 = v77;
        if ((v38 & 1) == 0)
        {
          v39 = fp_current_or_default_log();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            [NSURL(FPFSHelpers) fp_scanForURLOfChildWithName:v84 isFolder:v26 maxChildrenCount:&v85 notMatchingFileID:v39 nextAvailableBounceNumber:?];
          }
        }

        if (v34 && ([v67 isEqual:v34] & 1) != 0)
        {
          v23 = 0;
          v33 = v30;
          goto LABEL_24;
        }
      }

      else
      {
        v34 = 0;
      }

      v40 = v26;
      v23 = v40;
      if (!a7)
      {
        v55 = v40;

        v17 = v66;
        v11 = v67;
        v19 = obj;
        v45 = v68;
        goto LABEL_74;
      }

LABEL_17:
      v76 = 0;
      v33 = [v30 fp_stringByDeletingPathBounceNo:&v76 andPathExtension:0 isFolder:{objc_msgSend(v26, "fp_isFolder", v64)}];
      v34 = v76;

      if (v34 && ![v70 compare:v33 options:1])
      {
        unsignedIntegerValue = [v34 unsignedIntegerValue];
        if (unsignedIntegerValue <= [MEMORY[0x1E696AEC0] fp_maximumBounceLevel])
        {
          [(FPNSURLBitVectorForBounce *)v18 markBounceNumberAsFound:v34];
        }

        if (!v68 || (v36 = [v68 intValue], v36 < objc_msgSend(v34, "intValue")))
        {
          v37 = v34;

          v68 = v37;
        }
      }

LABEL_24:

      v30 = v33;
      goto LABEL_25;
    }

    if (a7)
    {
      goto LABEL_17;
    }

LABEL_25:

    objc_autoreleasePoolPop(v27);
    ++v25;
    ++v22;
    if (v21 == v25)
    {
      v19 = obj;
      v41 = [obj countByEnumeratingWithState:&v79 objects:v86 count:16];
      v21 = v41;
      v22 = v65;
      if (!v41)
      {

        if (a7)
        {
          v11 = v67;
          v42 = v23;
          if (v23)
          {
            findNextAvailableBounceNumber = [(FPNSURLBitVectorForBounce *)v18 findNextAvailableBounceNumber];
            intValue = [findNextAvailableBounceNumber intValue];
            v45 = v68;
            if (intValue < [v68 intValue])
            {
              v46 = findNextAvailableBounceNumber;

              v45 = v46;
            }

            v17 = v66;
            v47 = v45;
            *a7 = v45;
LABEL_56:

LABEL_57:
            v55 = v42;
            goto LABEL_75;
          }
        }

        else
        {
          v42 = v23;
          v11 = v67;
        }

        v17 = v66;
        v45 = v68;
        goto LABEL_57;
      }

      goto LABEL_3;
    }
  }

  v11 = v67;
  if (!v23)
  {
    v23 = [selfCopy _fp_lookupURLOfChildWithName:v71 notMatchingFileID:v67];
  }

  v17 = v66;
  v19 = obj;
  if (!a7 || !v23)
  {
    v50 = v68;
    goto LABEL_73;
  }

  if ([(FPNSURLBitVectorForBounce *)v18 bitCount]< 2)
  {
    v50 = v68;
    if (v66)
    {
      goto LABEL_63;
    }

    goto LABEL_68;
  }

  v48 = v23;
  v49 = 1;
  while (2)
  {
    v50 = [(FPNSURLBitVectorForBounce *)v18 findNextAvailableBounceNumberFromIndex:v49, v64];
    intValue2 = [v50 intValue];
    v52 = [v50 intValue] + 1;
    if (v52 >= [v68 intValue])
    {
LABEL_53:
      v49 = (intValue2 + 1);

      if (v49 >= [(FPNSURLBitVectorForBounce *)v18 bitCount])
      {
        v50 = v68;
        goto LABEL_62;
      }

      continue;
    }

    break;
  }

  v53 = [v48 fp_bouncedNameWithIndex:{objc_msgSend(v50, "longValue") + 1}];
  v54 = [selfCopy _fp_lookupURLOfChildWithName:v53 notMatchingFileID:0];

  if (v54)
  {

    goto LABEL_53;
  }

LABEL_62:
  v23 = v48;
  v11 = v67;
  if (v66)
  {
LABEL_63:
    if (v50)
    {
      v56 = MEMORY[0x1E696AD98];
      v57 = v23;
      longValue = [v66 longValue];
      longValue2 = [v50 longValue];
      if (longValue <= longValue2)
      {
        v60 = longValue2;
      }

      else
      {
        v60 = longValue;
      }

      v23 = v57;
      v61 = [v56 numberWithLong:{v60, v64}];
      goto LABEL_72;
    }
  }

LABEL_68:
  if (v66)
  {
    v62 = v66;
  }

  else
  {
    v62 = v50;
  }

  v61 = v62;
LABEL_72:
  *a7 = v61;
LABEL_73:
  v55 = v23;
  v45 = v50;
LABEL_74:
  objc_autoreleasePoolPop(v27);

LABEL_75:

  return v55;
}

- (uint64_t)getMaxChildrenCount
{
  if (os_variant_has_internal_content() && getMaxChildrenCount_once != -1)
  {
    [NSURL(FPFSHelpers) getMaxChildrenCount];
  }

  return getMaxChildrenCount_maxChildrenCount;
}

- (id)fp_existingURLOfChildWithName:()FPFSHelpers isFolder:notMatchingFileID:nextAvailableBounceNumber:forceFetchingBounceNumber:
{
  v12 = a3;
  v13 = a5;
  if (!v12)
  {
    v15 = 0;
    goto LABEL_16;
  }

  if (a7)
  {
    v14 = 0;
  }

  else
  {
    v21 = 0;
    v16 = [self getResourceValue:&v21 forKey:*MEMORY[0x1E695DE18] error:0];
    v14 = v21;
    if ((v16 & 1) == 0)
    {
      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [NSURL(FPFSHelpers) fp_existingURLOfChildWithName:self isFolder:? notMatchingFileID:? nextAvailableBounceNumber:? forceFetchingBounceNumber:?];
      }
    }

    if (v14 && ([v14 BOOLValue] & 1) == 0)
    {
      v19 = [self _fp_lookupURLOfChildWithName:v12 notMatchingFileID:v13];
      goto LABEL_15;
    }

    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [NSURL(FPFSHelpers) fp_existingURLOfChildWithName:self isFolder:? notMatchingFileID:? nextAvailableBounceNumber:? forceFetchingBounceNumber:?];
    }
  }

  v19 = [self fp_scanForURLOfChildWithName:v12 isFolder:a4 maxChildrenCount:objc_msgSend(self notMatchingFileID:"getMaxChildrenCount") nextAvailableBounceNumber:{v13, a6}];
LABEL_15:
  v15 = v19;

LABEL_16:

  return v15;
}

- (uint64_t)fp_moveUnderFolder:()FPFSHelpers withNewName:coordinationOptions:allowBounce:allowCoordination:completionHandler:
{
  v14 = a8;
  v15 = a4;
  v16 = a3;
  fp_defaultMoverBlock = [self fp_defaultMoverBlock];
  v18 = [self fp_moveUnderFolder:v16 withNewName:v15 coordinationOptions:a5 allowBounce:a6 allowCoordination:a7 moveHandler:fp_defaultMoverBlock completionHandler:v14];

  return v18;
}

- (uint64_t)fp_moveUnderFolder:()FPFSHelpers withNewName:coordinationOptions:allowBounce:allowCoordination:moveHandler:completionHandler:
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v18 = a9;
  if (fp_moveUnderFolder_withNewName_coordinationOptions_allowBounce_allowCoordination_moveHandler_completionHandler__onceToken != -1)
  {
    [NSURL(FPFSHelpers) fp_moveUnderFolder:withNewName:coordinationOptions:allowBounce:allowCoordination:moveHandler:completionHandler:];
  }

  v19 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __133__NSURL_FPFSHelpers__fp_moveUnderFolder_withNewName_coordinationOptions_allowBounce_allowCoordination_moveHandler_completionHandler___block_invoke_2;
  block[3] = &unk_1E793A380;
  block[4] = self;
  v27 = v15;
  v32 = a6;
  v33 = a7;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = a5;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  v24 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v19, 0, block);
  dispatch_async(fp_moveUnderFolder_withNewName_coordinationOptions_allowBounce_allowCoordination_moveHandler_completionHandler__workQueue, v24);

  return 1;
}

- (BOOL)fp_queued_moveUnderFolder:()FPFSHelpers withNewName:coordinationOptions:allowBounce:allowCoordination:moveHandler:completionHandler:
{
  v115 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v73 = a8;
  v69 = a9;
  v104 = 0;
  v105 = 0;
  v70 = v13;
  v80 = [v70 fp_stringByDeletingPathBounceNo:&v105 andPathExtension:&v104 isFolder:{objc_msgSend(self, "fp_isFolder")}];
  v14 = v105;
  v71 = v104;
  selfCopy = self;
  v98 = 0;
  v99 = &v98;
  v100 = 0x3032000000;
  v101 = __Block_byref_object_copy__1;
  v102 = __Block_byref_object_dispose__1;
  v103 = 0;
  if (![v14 intValue])
  {

    v14 = &unk_1F1FC99E0;
  }

  section = __fp_create_section();
  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    fp_shortDescription = [selfCopy fp_shortDescription];
    fp_shortDescription2 = [v12 fp_shortDescription];
    *v112 = 134218754;
    *&v112[4] = section;
    *&v112[12] = 2112;
    *&v112[14] = fp_shortDescription;
    *&v112[22] = 2112;
    v113 = fp_shortDescription2;
    LOWORD(v114) = 2112;
    *(&v114 + 2) = v70;
    _os_log_debug_impl(&dword_1AAAE1000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx moving %@ to %@ as %@", v112, 0x2Au);
  }

  *v112 = 0;
  *&v112[8] = v112;
  *&v112[16] = 0x3032000000;
  v113 = __Block_byref_object_copy__1;
  *&v114 = __Block_byref_object_dispose__1;
  *(&v114 + 1) = 0;
  v75 = [MEMORY[0x1E696ABF8] fp_fileCoordinatorForCurrentProcess:0];
  startAccessingSecurityScopedResource = [selfCopy startAccessingSecurityScopedResource];
  v16 = _CFURLPromiseCopyPhysicalURL();
  if (!v16)
  {
    v16 = selfCopy;
  }

  if (a5)
  {
    v96 = 0;
    v18 = *MEMORY[0x1E695DA98];
    v95 = 0;
    v19 = [v16 getResourceValue:&v96 forKey:v18 error:&v95];
    v74 = v96;
    v17 = v95;
    if ((v19 & 1) == 0)
    {
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [selfCopy path];
        objc_claimAutoreleasedReturnValue();
        [v17 fp_prettyDescription];
        objc_claimAutoreleasedReturnValue();
        [NSURL(FPFSHelpers) fp_queued_moveUnderFolder:withNewName:coordinationOptions:allowBounce:allowCoordination:moveHandler:completionHandler:];
      }
    }
  }

  else
  {
    v74 = 0;
    v17 = 0;
  }

  v94 = 0;
  v21 = [v16 getResourceValue:&v94 forKey:*MEMORY[0x1E695DB00] error:0];
  v66 = v16;
  v67 = v17;
  v81 = v94;
  if ((v21 & 1) == 0)
  {
    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [NSURL(FPFSHelpers) fp_queued_moveUnderFolder:withNewName:coordinationOptions:allowBounce:allowCoordination:moveHandler:completionHandler:];
    }
  }

  v79 = 0;
  v23 = 0;
  v24 = &v93;
  if (!a6)
  {
    v24 = 0;
  }

  v77 = v24;
  v76 = *MEMORY[0x1E696A250];
  v25 = 1;
  v26 = v70;
  do
  {
    *v110 = 0;
    *&v110[8] = v110;
    *&v110[16] = 0x2020000000;
    LOBYTE(v111) = 0;
    if (v25)
    {
      fp_isFolder = [selfCopy fp_isFolder];
      if (a6)
      {
        v93 = 0;
      }

      v28 = [v12 fp_existingURLOfChildWithName:v26 isFolder:fp_isFolder notMatchingFileID:v81 nextAvailableBounceNumber:v77 forceFetchingBounceNumber:0];
      if (a6)
      {
        v29 = v93;
        if (v29)
        {
          intValue = [v14 intValue];
          if (intValue < [v29 intValue])
          {
            v29 = v29;

            v14 = v29;
          }
        }
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v28 = [v12 _fp_lookupURLOfChildWithName:v26 notMatchingFileID:v81];
    }

    if (v28)
    {
      v31 = fp_current_or_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        fp_shortDescription3 = [v12 fp_shortDescription];
        *buf = 138412546;
        v107 = v26;
        v108 = 2112;
        v109 = fp_shortDescription3;
        _os_log_impl(&dword_1AAAE1000, v31, OS_LOG_TYPE_INFO, "[INFO] won't create '%@' because it already exists under %@", buf, 0x16u);
      }

      *(*&v110[8] + 24) = 0;
      v33 = [MEMORY[0x1E696ABC0] fp_errorForCollisionWithURL:v28];
      v34 = 0;
      v35 = *(*&v112[8] + 40);
      *(*&v112[8] + 40) = v33;
    }

    else
    {
      path = [selfCopy path];
      v37 = [v12 URLByAppendingPathComponent:v26 isDirectory:{objc_msgSend(path, "hasSuffix:", @"/"}];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __140__NSURL_FPFSHelpers__fp_queued_moveUnderFolder_withNewName_coordinationOptions_allowBounce_allowCoordination_moveHandler_completionHandler___block_invoke;
      aBlock[3] = &unk_1E793A3A8;
      v86 = v74;
      v89 = v112;
      v92 = a7;
      v38 = v75;
      v87 = v38;
      v90 = v110;
      v88 = v73;
      v91 = &v98;
      v39 = _Block_copy(aBlock);
      v40 = v39;
      if (a7)
      {
        v84 = 0;
        [v38 coordinateWritingItemAtURL:selfCopy options:a5 writingItemAtURL:v37 options:4 error:&v84 byAccessor:v39];
        v34 = v84;
      }

      else
      {
        (*(v39 + 2))(v39, selfCopy, v37);
        v34 = 0;
      }

      v23 = 0;
      v35 = v86;
      v79 = v37;
    }

    if (((a6 ^ 1 | *(*&v110[8] + 24)) & 1) == 0)
    {
      domain = [*(*&v112[8] + 40) domain];
      if ([domain isEqualToString:v76])
      {
        v42 = [*(*&v112[8] + 40) code] == 516;

        if (!v42)
        {
          goto LABEL_46;
        }

        v43 = *(*&v112[8] + 40);
        *(*&v112[8] + 40) = 0;

        v44 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v14, "intValue") + 1}];

        unsignedIntegerValue = [v44 unsignedIntegerValue];
        if (unsignedIntegerValue <= [MEMORY[0x1E696AEC0] fp_maximumBounceLevel])
        {
          v52 = [v80 fp_representableHFSFileNameWithNumber:v44 addedExtension:v71 makeDotFile:0];
          v23 = 1;
          domain = v26;
          v50 = v80;
        }

        else
        {
          domain = objc_opt_new();
          [domain setDateStyle:1];
          [domain setTimeStyle:2];
          date = [MEMORY[0x1E695DF00] date];
          v47 = [domain stringFromDate:date];

          v48 = [v47 stringByReplacingOccurrencesOfString:@":" withString:@"'"];

          v49 = [v48 stringByReplacingOccurrencesOfString:@"/" withString:@":"];

          v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v80, v49];

          if (v71)
          {
            v51 = [v50 stringByAppendingPathExtension:v71];
          }

          else
          {
            v51 = v50;
          }

          v52 = v51;

          v23 = 1;
          v44 = &unk_1F1FC99E0;
        }
      }

      else
      {
        v44 = v14;
        v50 = v80;
        v52 = v26;
      }

      v80 = v50;
      v26 = v52;
      v14 = v44;
    }

LABEL_46:

    _Block_object_dispose(v110, 8);
    if (v34)
    {
      v53 = 1;
    }

    else
    {
      v53 = a6 ^ 1;
    }

    if (v53)
    {
      break;
    }

    v25 = 0;
  }

  while (((v23 ^ 1) & 1) == 0);
  if (startAccessingSecurityScopedResource)
  {
    [selfCopy stopAccessingSecurityScopedResource];
  }

  if (v34 || *(*&v112[8] + 40))
  {
    v54 = fp_current_or_default_log();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      fp_shortDescription4 = [selfCopy fp_shortDescription];
      fp_shortDescription5 = [v12 fp_shortDescription];
      v64 = fp_shortDescription5;
      v65 = v34;
      if (!v34)
      {
        v65 = *(*&v112[8] + 40);
      }

      *v110 = 138412802;
      *&v110[4] = fp_shortDescription4;
      *&v110[12] = 2112;
      *&v110[14] = fp_shortDescription5;
      *&v110[22] = 2112;
      v111 = v65;
      _os_log_error_impl(&dword_1AAAE1000, v54, OS_LOG_TYPE_ERROR, "[ERROR] couldn't move %@ to %@: %@", v110, 0x20u);
    }

    v55 = v34;
    if (!v34)
    {
      v55 = *(*&v112[8] + 40);
    }

    v56 = v55;

    v57 = v56;
  }

  else
  {
    v57 = v67;
  }

  v58 = v57;
  v69[2](v69, v99[5]);

  _Block_object_dispose(v112, 8);
  __fp_leave_section_Debug(&section);
  _Block_object_dispose(&v98, 8);

  return v58 == 0;
}

- (uint64_t)fp_importUnderFolder:()FPFSHelpers allowCoordination:completionHandler:
{
  v8 = a5;
  v9 = a3;
  fp_defaultMoverBlock = [self fp_defaultMoverBlock];
  v11 = [self fp_importUnderFolder:v9 allowCoordination:a4 usingBlock:fp_defaultMoverBlock completionHandler:v8];

  return v11;
}

- (uint64_t)fp_importUnderFolder:()FPFSHelpers allowCoordination:usingBlock:completionHandler:
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  lastPathComponent = [self lastPathComponent];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__NSURL_FPFSHelpers__fp_importUnderFolder_allowCoordination_usingBlock_completionHandler___block_invoke;
  v17[3] = &unk_1E793A3D0;
  v18 = v10;
  v14 = v10;
  v15 = [self fp_moveUnderFolder:v12 withNewName:lastPathComponent allowBounce:0 allowCoordination:a4 moveHandler:v11 completionHandler:v17];

  return v15;
}

- (uint64_t)fp_reparentUnderFolder:()FPFSHelpers allowCoordination:completionHandler:
{
  v8 = a5;
  v9 = a3;
  lastPathComponent = [self lastPathComponent];
  v11 = [self fp_moveUnderFolder:v9 withNewName:lastPathComponent allowBounce:0 allowCoordination:a4 completionHandler:v8];

  return v11;
}

- (uint64_t)fp_reparentUnderFolder:()FPFSHelpers withNewName:allowCoordination:completionHandler:
{
  v10 = a3;
  lastPathComponent = a4;
  v12 = a6;
  if (!lastPathComponent)
  {
    lastPathComponent = [self lastPathComponent];
  }

  v13 = [self fp_moveUnderFolder:v10 withNewName:lastPathComponent allowBounce:0 allowCoordination:a5 completionHandler:v12];

  return v13;
}

- (uint64_t)fp_reparentUnderFolder:()FPFSHelpers allowBouncing:allowCoordination:completionHandler:
{
  v10 = a6;
  v11 = a3;
  lastPathComponent = [self lastPathComponent];
  v13 = [self fp_moveUnderFolder:v11 withNewName:lastPathComponent allowBounce:a4 allowCoordination:a5 completionHandler:v10];

  return v13;
}

- (uint64_t)fp_trashUnderFolder:()FPFSHelpers allowCoordination:completionHandler:
{
  v8 = a5;
  v9 = a3;
  lastPathComponent = [self lastPathComponent];
  v11 = [self fp_moveUnderFolder:v9 withNewName:lastPathComponent coordinationOptions:1 allowBounce:1 allowCoordination:a4 completionHandler:v8];

  return v11;
}

- (uint64_t)fp_renameWithNewName:()FPFSHelpers allowCoordination:completionHandler:
{
  v8 = a5;
  v9 = a3;
  uRLByDeletingLastPathComponent = [self URLByDeletingLastPathComponent];
  v11 = [self fp_moveUnderFolder:uRLByDeletingLastPathComponent withNewName:v9 allowBounce:0 allowCoordination:a4 completionHandler:v8];

  return v11;
}

- (uint64_t)fp_createSubFolder:()FPFSHelpers completionHandler:
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [self fp_existingURLOfChildWithName:v6 isFolder:1];
  if (!v8)
  {
    v24 = 0;
    v13 = [self fp_uniqueTempFolderWithError:&v24];
    v14 = v24;
    v23 = v14;
    v15 = [v13 fp_addDocumentTrackingWithError:&v23];
    v11 = v23;

    if (!v15)
    {
      v7[2](v7, 0, v11);
      v12 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v16 = [self URLByAppendingPathComponent:v6 isDirectory:1];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v22 = v11;
    v12 = [defaultManager moveItemAtURL:v13 toURL:v16 error:&v22];
    v18 = v22;

    if (v12)
    {
      (v7)[2](v7, v16, 0);
LABEL_14:

      v11 = v18;
      goto LABEL_15;
    }

    domain = [v18 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]])
    {
      code = [v18 code];

      if (code != 516)
      {
LABEL_13:
        v7[2](v7, 0, v18);
        goto LABEL_14;
      }

      [MEMORY[0x1E696ABC0] fp_errorForCollisionWithURL:v16];
      v18 = domain = v18;
    }

    goto LABEL_13;
  }

  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    fp_shortDescription = [self fp_shortDescription];
    *buf = 138412546;
    v26 = v6;
    v27 = 2112;
    v28 = fp_shortDescription;
    _os_log_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_INFO, "[INFO] won't create '%@' because it already exists under %@", buf, 0x16u);
  }

  v11 = [MEMORY[0x1E696ABC0] fp_errorForCollisionWithURL:v8];
  v7[2](v7, 0, v11);
  v12 = 0;
LABEL_16:

  return v12;
}

- (uint64_t)fp_deleteStaleBusyFileWithFileDescriptor:()FPFSHelpers coordinatorPurposeIdentifier:
{
  v6 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v7 = [MEMORY[0x1E696ABF8] fp_fileCoordinatorForCurrentProcess:v6];
  v18 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__NSURL_FPFSHelpers__fp_deleteStaleBusyFileWithFileDescriptor_coordinatorPurposeIdentifier___block_invoke;
  v13[3] = &unk_1E793A420;
  v8 = v7;
  v17 = a3;
  v14 = v8;
  selfCopy = self;
  v16 = &v19;
  [v8 coordinateReadingItemAtURL:self options:0x80000 error:&v18 byAccessor:v13];
  v9 = v18;
  if (v9)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [NSURL(FPFSHelpers) fp_deleteStaleBusyFileWithFileDescriptor:coordinatorPurposeIdentifier:];
    }
  }

  v11 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v11;
}

- (void)fp_coordinatedDeleteWithHandler:()FPFSHelpers
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__1;
  v21[4] = __Block_byref_object_dispose__1;
  v22 = 0;
  v5 = [MEMORY[0x1E696ABF8] fp_fileCoordinatorForCurrentProcess:0];
  v20 = 0;
  v6 = *MEMORY[0x1E695DA98];
  v19 = 0;
  v7 = [self getResourceValue:&v20 forKey:v6 error:&v19];
  v8 = v20;
  v9 = v19;
  if ((v7 & 1) == 0)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [self path];
      objc_claimAutoreleasedReturnValue();
      [v9 fp_prettyDescription];
      objc_claimAutoreleasedReturnValue();
      [NSURL(FPFSHelpers) fp_queued_moveUnderFolder:withNewName:coordinationOptions:allowBounce:allowCoordination:moveHandler:completionHandler:];
    }
  }

  v18 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__NSURL_FPFSHelpers__fp_coordinatedDeleteWithHandler___block_invoke;
  v14[3] = &unk_1E793A448;
  v11 = v8;
  v15 = v11;
  v17 = v21;
  v12 = v4;
  v16 = v12;
  [v5 coordinateWritingItemAtURL:self options:1 error:&v18 byAccessor:v14];
  v13 = v18;
  if (v13)
  {
    (*(v12 + 2))(v12, 0, v13);
  }

  _Block_object_dispose(v21, 8);
}

- (BOOL)fp_deleteAllowingCoordination:()FPFSHelpers completionHandler:
{
  v6 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__NSURL_FPFSHelpers__fp_deleteAllowingCoordination_completionHandler___block_invoke;
  aBlock[3] = &unk_1E793A470;
  aBlock[4] = &v12;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (a3)
  {
    [self fp_coordinatedDeleteWithHandler:v7];
  }

  else
  {
    (*(v7 + 2))(v7, self, 0);
  }

  v6[2](v6, v13[5]);
  v9 = v13[5] == 0;

  _Block_object_dispose(&v12, 8);
  return v9;
}

- (id)fp_withReadWriteAccess:()FPFSHelpers
{
  v4 = a3;
  v5 = open([self fileSystemRepresentation], 260);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    v7 = v4[2](v4, v5);
    v8 = v7;
    if (v7)
    {
      domain = [v7 domain];
      if (domain != *MEMORY[0x1E696A798] || [v8 code] == 13)
      {

LABEL_6:
        v10 = fp_current_or_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __70__NSURL_FPFSHelpers__fp_deleteAllowingCoordination_completionHandler___block_invoke_cold_1();
        }

        memset(&v38, 0, sizeof(v38));
        if ((fstat(v6, &v38) & 0x80000000) == 0)
        {
          v37 = 0;
          v11 = *MEMORY[0x1E695DB48];
          v36[1] = 0;
          v34 = v11;
          v12 = [self getResourceValue:&v37 forKey:? error:?];
          v13 = v37;
          v14 = 0;

          if ((v12 & 1) == 0)
          {
            v15 = fp_current_or_default_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              [NSURL(FPFSHelpers) fp_withReadWriteAccess:];
            }
          }

          if (v13)
          {
            v16 = objc_alloc_init(MEMORY[0x1E695DF40]);
            if (!CFFileSecuritySetAccessControlList(v16, 1))
            {
              v17 = fp_current_or_default_log();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                [NSURL(FPFSHelpers) fp_withReadWriteAccess:];
              }
            }

            v36[0] = v14;
            v18 = [self setResourceValue:v16 forKey:v34 error:v36];
            v8 = v36[0];

            if ((v18 & 1) == 0)
            {
              v27 = fp_current_or_default_log();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                [NSURL(FPFSHelpers) fp_withReadWriteAccess:];
              }

              close(v6);
              v8 = v8;

              v21 = v8;
              goto LABEL_57;
            }

            st_mode = v38.st_mode;
          }

          else
          {
            st_mode = v38.st_mode;
            if ((v38.st_mode & 0x80) != 0)
            {
              v28 = fp_current_or_default_log();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                [NSURL(FPFSHelpers) fp_withReadWriteAccess:];
              }

              close(v6);
              v25 = v14;
              goto LABEL_55;
            }

            v8 = v14;
          }

          if (fchmod(v6, st_mode | 0x80) < 0)
          {
            v29 = fp_current_or_default_log();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [NSURL(FPFSHelpers) fp_withReadWriteAccess:];
            }
          }

          else
          {
            v24 = v4[2](v4, v6);

            if (access([self fileSystemRepresentation], 0))
            {
              close(v6);
              if (*__error() != 2)
              {
                v32 = fp_current_or_default_log();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  [NSURL(FPFSHelpers) fp_withReadWriteAccess:];
                }

                v21 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
                v8 = v24;
                goto LABEL_57;
              }

              v25 = v24;
              goto LABEL_55;
            }

            if (v13)
            {
              v35 = v24;
              v30 = [self setResourceValue:v13 forKey:v34 error:&v35];
              v8 = v35;

              if ((v30 & 1) == 0)
              {
                v31 = fp_current_or_default_log();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  [NSURL(FPFSHelpers) fp_withReadWriteAccess:];
                }

                goto LABEL_54;
              }
            }

            else
            {
              v8 = v24;
            }

            if ((fchmod(v6, v38.st_mode) & 0x80000000) == 0)
            {
LABEL_54:
              close(v6);
              v25 = v8;
LABEL_55:
              v8 = v25;
              goto LABEL_56;
            }

            v29 = fp_current_or_default_log();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [NSURL(FPFSHelpers) fp_withReadWriteAccess:];
            }
          }

          close(v6);
          v25 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
LABEL_56:
          v21 = v25;
LABEL_57:

          goto LABEL_58;
        }

        v22 = fp_current_or_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [NSURL(FPFSHelpers) fp_withReadWriteAccess:];
        }

        close(v6);
        v23 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
LABEL_34:
        v21 = v23;
LABEL_58:

        goto LABEL_59;
      }

      code = [v8 code];

      if (code == 1)
      {
        goto LABEL_6;
      }
    }

    close(v6);
    v23 = v8;
    v8 = v23;
    goto LABEL_34;
  }

  v20 = fp_current_or_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [NSURL(FPFSHelpers) fp_withReadWriteAccess:];
  }

  v21 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
LABEL_59:

  return v21;
}

- (id)fp_physicalURL
{
  v2 = _CFURLPromiseCopyPhysicalURL();
  v3 = v2;
  if (v2)
  {
    selfCopy = v2;
  }

  else
  {
    selfCopy = self;
  }

  v5 = selfCopy;

  return v5;
}

- (void)fp_scanForURLOfChildWithName:()FPFSHelpers isFolder:maxChildrenCount:notMatchingFileID:nextAvailableBounceNumber:.cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 lastPathComponent];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_1AAAE1000, a4, OS_LOG_TYPE_DEBUG, "[DEBUG] can't get fileID of '%@'", a1, 0xCu);
}

- (void)fp_existingURLOfChildWithName:()FPFSHelpers isFolder:notMatchingFileID:nextAvailableBounceNumber:forceFetchingBounceNumber:.cold.1(void *a1)
{
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)fp_existingURLOfChildWithName:()FPFSHelpers isFolder:notMatchingFileID:nextAvailableBounceNumber:forceFetchingBounceNumber:.cold.2(void *a1)
{
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)fp_queued_moveUnderFolder:()FPFSHelpers withNewName:coordinationOptions:allowBounce:allowCoordination:moveHandler:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_9_0(v2, v3, v4, 5.778e-34);
  _os_log_debug_impl(&dword_1AAAE1000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] Can't read mtime from %@: %@", v5, 0x16u);
}

- (void)fp_queued_moveUnderFolder:()FPFSHelpers withNewName:coordinationOptions:allowBounce:allowCoordination:moveHandler:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)fp_deleteStaleBusyFileWithFileDescriptor:()FPFSHelpers coordinatorPurposeIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)fp_withReadWriteAccess:()FPFSHelpers .cold.2()
{
  OUTLINED_FUNCTION_10_1();
  v2 = [OUTLINED_FUNCTION_11_0(v0 v1)];
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)fp_withReadWriteAccess:()FPFSHelpers .cold.4()
{
  OUTLINED_FUNCTION_10_1();
  v2 = [OUTLINED_FUNCTION_11_0(v0 v1)];
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)fp_withReadWriteAccess:()FPFSHelpers .cold.6()
{
  OUTLINED_FUNCTION_6_0();
  __error();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)fp_withReadWriteAccess:()FPFSHelpers .cold.7()
{
  OUTLINED_FUNCTION_10_1();
  v2 = [OUTLINED_FUNCTION_11_0(v0 v1)];
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)fp_withReadWriteAccess:()FPFSHelpers .cold.8()
{
  OUTLINED_FUNCTION_6_0();
  __error();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)fp_withReadWriteAccess:()FPFSHelpers .cold.9()
{
  OUTLINED_FUNCTION_6_0();
  __error();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)fp_withReadWriteAccess:()FPFSHelpers .cold.10()
{
  OUTLINED_FUNCTION_6_0();
  __error();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)fp_withReadWriteAccess:()FPFSHelpers .cold.11()
{
  OUTLINED_FUNCTION_6_0();
  __error();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end