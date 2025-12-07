@interface IMDPersistentAttachmentController
+ (id)sharedInstance;
- (BOOL)_canDeleteAttachmentPath:(id)path;
- (BOOL)_deleteAttachmentForTransfer:(id)transfer highQuality:(BOOL)quality;
- (BOOL)_shouldDeleteOriginalPath:(id)path copyWithinAttachmentStore:(BOOL)store destPath:(id)destPath storeAtExternalPath:(BOOL)externalPath;
- (BOOL)cleanseOrphanedFileTransfers;
- (BOOL)isSafeToDeleteAttachmentPath:(id)path;
- (id)_migrateSiblingAssetsInAttachmentStoreWithOriginalPath:(id)path destinationPath:(id)destinationPath withFileManager:(id)manager;
- (id)_persistentPathForTransfer:(id)transfer filename:(id)filename highQuality:(BOOL)quality chatGUID:(id)d storeAtExternalPath:(BOOL)path;
- (id)_saveAttachmentForTransfer:(id)transfer highQuality:(BOOL)quality copyWithinAttachmentStore:(BOOL)store chatGUID:(id)d storeAtExternalPath:(BOOL)path;
- (void)_removeLegacyAttachmentPathsInAttachmentStoreWithOriginalPath:(id)path withFileManager:(id)manager;
- (void)moveAttachmentsForTransfer:(id)transfer completion:(id)completion;
- (void)saveAttachmentsForTransfer:(id)transfer chatGUID:(id)d storeAtExternalLocation:(BOOL)location completion:(id)completion;
- (void)saveAttachmentsForTransfer:(id)transfer completion:(id)completion;
@end

@implementation IMDPersistentAttachmentController

+ (id)sharedInstance
{
  if (qword_1EDBE62C8 != -1)
  {
    sub_1B7CF17FC();
  }

  return qword_1EDBE7930;
}

- (void)saveAttachmentsForTransfer:(id)transfer chatGUID:(id)d storeAtExternalLocation:(BOOL)location completion:(id)completion
{
  locationCopy = location;
  v12 = objc_msgSend__saveAttachmentForTransfer_highQuality_copyWithinAttachmentStore_chatGUID_storeAtExternalPath_(self, a2, transfer, 0, 0, 0, 0);
  v13 = 0;
  if (locationCopy)
  {
    v13 = objc_msgSend__saveAttachmentForTransfer_highQuality_copyWithinAttachmentStore_chatGUID_storeAtExternalPath_(self, v11, transfer, 0, 0, d, 1);
  }

  if (completion)
  {
    v14 = *(completion + 2);

    v14(completion, v12, 0, v13);
  }
}

- (void)saveAttachmentsForTransfer:(id)transfer completion:(id)completion
{
  v5 = objc_msgSend__saveAttachmentForTransfer_highQuality_copyWithinAttachmentStore_chatGUID_storeAtExternalPath_(self, a2, transfer, 0, 0, 0, 0);
  if (completion)
  {
    v6 = *(completion + 2);

    v6(completion, v5, 0);
  }
}

- (void)moveAttachmentsForTransfer:(id)transfer completion:(id)completion
{
  v5 = objc_msgSend__saveAttachmentForTransfer_highQuality_copyWithinAttachmentStore_(self, a2, transfer, 0, 1);
  if (completion)
  {
    v6 = *(completion + 2);

    v6(completion, v5, 0);
  }
}

- (BOOL)_shouldDeleteOriginalPath:(id)path copyWithinAttachmentStore:(BOOL)store destPath:(id)destPath storeAtExternalPath:(BOOL)externalPath
{
  v15 = *MEMORY[0x1E69E9840];
  if (!externalPath || !sub_1B7B4DA88(path, a2, path, store))
  {
    return 1;
  }

  v8 = IMAttachmentsLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v9)
  {
    v11 = 138412546;
    pathCopy = path;
    v13 = 2112;
    destPathCopy = destPath;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "Not deleting at original path %@ because we're storing at an external path %@", &v11, 0x16u);
    return 0;
  }

  return result;
}

- (id)_saveAttachmentForTransfer:(id)transfer highQuality:(BOOL)quality copyWithinAttachmentStore:(BOOL)store chatGUID:(id)d storeAtExternalPath:(BOOL)path
{
  pathCopy = path;
  storeCopy = store;
  qualityCopy = quality;
  v193 = *MEMORY[0x1E69E9840];
  v13 = objc_msgSend_filename(transfer, a2, transfer, quality);
  if (!objc_msgSend_length(v13, v14, v15, v16))
  {
    v31 = IMAttachmentsLogHandle();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 138412290;
    transferCopy4 = transfer;
    v28 = "   => transfer has empty file name, bailing: %@";
    goto LABEL_16;
  }

  v20 = objc_msgSend_transferState(transfer, v17, v18, v19);
  if (!objc_msgSend_isIncoming(transfer, v21, v22, v23) || v20 > 3 || qualityCopy)
  {
    v186 = 0;
    v32 = objc_msgSend_filename(transfer, v24, v25, v26);
    v34 = v32;
    if (qualityCopy)
    {
      v34 = objc_msgSend___im_filePathWithVariant_(v32, v33, *MEMORY[0x1E69A7078], v32);
    }

    v35 = objc_msgSend__persistentPathForTransfer_filename_highQuality_chatGUID_storeAtExternalPath_(self, v33, transfer, v34, qualityCopy, d, pathCopy);
    if (objc_msgSend_length(v35, v36, v37, v38))
    {
      v39 = objc_autoreleasePoolPush();
      v43 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v40, v41, v42);
      PathComponent = objc_msgSend_stringByDeletingLastPathComponent(v35, v44, v45, v46);
      if (qualityCopy)
      {
        v51 = objc_msgSend_temporaryHighQualityLocalPath(transfer, v47, v48, v49);
      }

      else
      {
        v51 = objc_msgSend_localPath(transfer, v47, v48, v49);
      }

      v55 = v51;
      if (objc_msgSend___im_makeDirectoriesInPath_mode_(v43, v52, PathComponent, 448))
      {
        v59 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v56, v57, v58);
        if (objc_msgSend_isLQMHQEnabled(v59, v60, v61, v62))
        {
          v66 = objc_msgSend_userInfo(transfer, v63, v64, v65);
          v69 = objc_msgSend_objectForKey_(v66, v67, @"isHQTransfer", v68);
          v73 = objc_msgSend_stringValue(v69, v70, v71, v72);
          isEqualToString = objc_msgSend_isEqualToString_(v73, v74, @"YES", v75);
          v77 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(transferCopy4) = isEqualToString;
            _os_log_impl(&dword_1B7AD5000, v77, OS_LOG_TYPE_DEFAULT, "   => local path is already the same as destination path. isHQTransfer: %d", buf, 8u);
          }
        }

        else
        {
          isEqualToString = 0;
        }

        if (isEqualToString & 1 | ((objc_msgSend_isEqualToString_(v55, v63, v35, v65) & 1) == 0))
        {
          v84 = objc_msgSend_fileExistsAtPath_(v43, v79, v35, v80);
          if (!((pathCopy || (v84 & 1) == 0) | isEqualToString & 1))
          {
            v118 = IMAttachmentsLogHandle();
            if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              transferCopy4 = transfer;
              _os_log_impl(&dword_1B7AD5000, v118, OS_LOG_TYPE_DEFAULT, "   => file already exists for transfer: %@", buf, 0xCu);
            }

            v119 = 0;
            goto LABEL_98;
          }

          if (!(storeCopy | ((sub_1B7B4DA88(v55, v81, v82, v83) & 1) == 0)) && !(pathCopy | isEqualToString))
          {
            v120 = IMAttachmentsLogHandle();
            if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              transferCopy4 = transfer;
              _os_log_impl(&dword_1B7AD5000, v120, OS_LOG_TYPE_DEFAULT, "   => file is already in attachment store: %@", buf, 0xCu);
            }

            v119 = v55;
            goto LABEL_98;
          }

          v88 = objc_msgSend_sandboxToken(transfer, v85, v86, v87);
          v182 = v88;
          if (v88)
          {
            objc_msgSend_UTF8String(v88, v89, v90, v91);
            v183 = sandbox_extension_consume();
            if (v183 != -1)
            {
              goto LABEL_38;
            }

            if (IMOSLoggingEnabled())
            {
              v184 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v184, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                transferCopy4 = v55;
                v191 = 2112;
                v192 = v182;
                _os_log_impl(&dword_1B7AD5000, v184, OS_LOG_TYPE_INFO, "Failed to consume sandbox token, %@ token: %@", buf, 0x16u);
              }
            }
          }

          v183 = -1;
LABEL_38:
          if (v55)
          {
            if (objc_msgSend_fileExistsAtPath_(v43, v89, v55, v91))
            {
              if (v84 & (pathCopy | isEqualToString))
              {
                v94 = objc_msgSend_im_randomTemporaryFileURLWithFileName_(v43, v92, @"tmp", v93);
                v98 = objc_msgSend_path(v94, v95, v96, v97);
                objc_msgSend_copyItemAtPath_toPath_error_(v43, v99, v55, v98, &v186);
                logb = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v100, v35, v101);
                v104 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v102, v98, v103);
                if ((objc_msgSend_replaceItemAtURL_withItemAtURL_backupItemName_options_resultingItemURL_error_(v43, v105, logb, v104, 0, 0, 0, &v186) & 1) == 0)
                {
                  goto LABEL_42;
                }
              }

              else if (!objc_msgSend_copyItemAtPath_toPath_error_(v43, v92, v55, v35, &v186))
              {
LABEL_42:
                v106 = IMAttachmentsLogHandle();
                if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  transferCopy4 = v35;
                  _os_log_impl(&dword_1B7AD5000, v106, OS_LOG_TYPE_DEFAULT, "   => ** failed copying file to path: %@", buf, 0xCu);
                }

                v107 = IMAttachmentsLogHandle();
                if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  transferCopy4 = v186;
                  _os_log_impl(&dword_1B7AD5000, v107, OS_LOG_TYPE_DEFAULT, "          The error was %@", buf, 0xCu);
                }

                v108 = IMAttachmentsLogHandle();
                if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  transferCopy4 = v35;
                  _os_log_impl(&dword_1B7AD5000, v108, OS_LOG_TYPE_DEFAULT, "   => failed copy file to path: %@, will try move", buf, 0xCu);
                }

                v109 = IMAttachmentsLogHandle();
                if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  transferCopy4 = v186;
                  _os_log_impl(&dword_1B7AD5000, v109, OS_LOG_TYPE_DEFAULT, "      The error was %@", buf, 0xCu);
                }

                if ((objc_msgSend_moveItemAtPath_toPath_error_(v43, v110, v55, v35, &v186) & 1) == 0)
                {
                  v111 = IMAttachmentsLogHandle();
                  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    transferCopy4 = v35;
                    _os_log_impl(&dword_1B7AD5000, v111, OS_LOG_TYPE_DEFAULT, "   => ** failed moving file to path: %@", buf, 0xCu);
                  }

                  v112 = IMAttachmentsLogHandle();
                  if (!os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_68;
                  }

                  *buf = 138412290;
                  transferCopy4 = v186;
                  v113 = "          The error was %@";
                  goto LABEL_67;
                }

LABEL_90:
                v121 = 1;
                goto LABEL_91;
              }

              v122 = IMAttachmentsLogHandle();
              if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                transferCopy4 = v35;
                _os_log_impl(&dword_1B7AD5000, v122, OS_LOG_TYPE_DEFAULT, "   => successfully copied file to path: %@", buf, 0xCu);
              }

              if (storeCopy)
              {
                v126 = IMAttachmentsLogHandle();
                if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1B7AD5000, v126, OS_LOG_TYPE_DEFAULT, "   => checking if file has any siblings to copy", buf, 2u);
                }

                v128 = objc_msgSend__migrateSiblingAssetsInAttachmentStoreWithOriginalPath_destinationPath_withFileManager_(self, v127, v55, v35, v43);
                logc = objc_msgSend_copy(v128, v129, v130, v131);
                v133 = objc_msgSend__shouldDeleteOriginalPath_copyWithinAttachmentStore_destPath_storeAtExternalPath_(self, v132, v55, storeCopy, v35, pathCopy, logc);
              }

              else
              {
                v138 = objc_msgSend__auxVideoPathIfItExists(transfer, v123, v124, v125);
                if (v138)
                {
                  loga = IMAttachmentsLogHandle();
                  if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
                  {
                    v142 = objc_msgSend_lastPathComponent(v138, v139, v140, v141);
                    *buf = 138412290;
                    transferCopy4 = v142;
                    _os_log_impl(&dword_1B7AD5000, loga, OS_LOG_TYPE_DEFAULT, "   => copying video complement: %@", buf, 0xCu);
                  }

                  objc_msgSend__migrateSiblingAssetsInAttachmentStoreWithOriginalPath_destinationPath_withFileManager_(self, v139, v55, v35, v43, loga);
                }

                v133 = objc_msgSend__shouldDeleteOriginalPath_copyWithinAttachmentStore_destPath_storeAtExternalPath_(self, v137, v55, storeCopy, v35, pathCopy, 0);
              }

              v143 = v133;
              v144 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v134, v135, v136);
              v151 = 10000000000;
              if (objc_msgSend_isLQMHQEnabled(v144, v145, v146, v147))
              {
                v152 = objc_msgSend_userInfo(transfer, v148, v149, v150);
                v155 = objc_msgSend_objectForKey_(v152, v153, @"file-size", v154);
                v159 = objc_msgSend_stringValue(v155, v156, v157, v158);
                v163 = objc_msgSend_integerValue(v159, v160, v161, v162);
                if (v163 < 358400)
                {
                  v151 = 86400000000000;
                }

                if ((((v163 < 358400) | ~isEqualToString) & v143 & 1) == 0)
                {
                  goto LABEL_90;
                }
              }

              else if (!v143)
              {
                goto LABEL_90;
              }

              v164 = IMAttachmentsLogHandle();
              if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                transferCopy4 = v55;
                _os_log_impl(&dword_1B7AD5000, v164, OS_LOG_TYPE_DEFAULT, "        ...removing old file in 10: %@", buf, 0xCu);
              }

              v165 = dispatch_time(0, v151);
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = sub_1B7B4E7E8;
              block[3] = &unk_1E7CB8E30;
              block[4] = v55;
              block[5] = v43;
              block[6] = log;
              block[7] = self;
              dispatch_after(v165, MEMORY[0x1E69E96A0], block);
              goto LABEL_90;
            }

            v112 = IMAttachmentsLogHandle();
            if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              transferCopy4 = v55;
              v113 = "   => ** failed copying file from path, file not on disk: %@";
LABEL_67:
              _os_log_impl(&dword_1B7AD5000, v112, OS_LOG_TYPE_DEFAULT, v113, buf, 0xCu);
            }
          }

LABEL_68:
          v121 = 0;
LABEL_91:
          if (v183 != -1 && sandbox_extension_release() == -1 && IMOSLoggingEnabled() && (v166 = OSLogHandleForIMFoundationCategory(), os_log_type_enabled(v166, OS_LOG_TYPE_INFO)))
          {
            *buf = 138412546;
            transferCopy4 = v55;
            v191 = 2112;
            v192 = v182;
            _os_log_impl(&dword_1B7AD5000, v166, OS_LOG_TYPE_INFO, "Failed to release sandbox token, %@ token: %@", buf, 0x16u);
            v119 = 0;
            if ((v121 & 1) == 0)
            {
              goto LABEL_108;
            }
          }

          else
          {
            v119 = 0;
            if (!v121)
            {
LABEL_108:
              objc_autoreleasePoolPop(v39);
              return v119;
            }
          }

LABEL_98:
          v167 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            transferCopy4 = v35;
            _os_log_impl(&dword_1B7AD5000, v167, OS_LOG_TYPE_DEFAULT, "Changing permissions on attachment file at %@", buf, 0xCu);
          }

          v187 = *MEMORY[0x1E696A3A0];
          v188 = *MEMORY[0x1E696A388];
          v169 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v168, &v188, &v187, 1);
          v171 = objc_msgSend_setAttributes_ofItemAtPath_error_(v43, v170, v169, v35, &v186);
          v172 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
          {
            v176 = @"NO";
            if (v171)
            {
              v176 = @"YES";
            }

            *buf = 138412546;
            transferCopy4 = v176;
            v191 = 2112;
            v192 = v186;
            _os_log_impl(&dword_1B7AD5000, v172, OS_LOG_TYPE_DEFAULT, "    => Permissions changed: %@  error: %@", buf, 0x16u);
          }

          if (!v119)
          {
            v119 = objc_msgSend_copy(v35, v173, v174, v175);
          }

          v177 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            transferCopy4 = v119;
            _os_log_impl(&dword_1B7AD5000, v177, OS_LOG_TYPE_DEFAULT, "   => Success! returning path: %@", buf, 0xCu);
          }

          goto LABEL_108;
        }

        v114 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v114, OS_LOG_TYPE_DEFAULT, "   => local path is already the same as destination path. Not moving or copying.", buf, 2u);
        }

        v53 = objc_msgSend_copy(v35, v115, v116, v117);
      }

      else
      {
        v78 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          transferCopy4 = PathComponent;
          _os_log_impl(&dword_1B7AD5000, v78, OS_LOG_TYPE_DEFAULT, "   => transfer could not ensure persistent path: %@", buf, 0xCu);
        }

        v53 = 0;
      }

      objc_autoreleasePoolPop(v39);
      return v53;
    }

    v31 = IMAttachmentsLogHandle();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 138412290;
    transferCopy4 = transfer;
    v28 = "   => persistent path is zero length for transfer: %@";
LABEL_16:
    v29 = v31;
    v30 = 12;
    goto LABEL_17;
  }

  v27 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v28 = "   => transfer is not ready to save";
    v29 = v27;
    v30 = 2;
LABEL_17:
    _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
  }

  return 0;
}

- (BOOL)_canDeleteAttachmentPath:(id)path
{
  v37 = *MEMORY[0x1E69E9840];
  PathComponent = objc_msgSend_lastPathComponent(path, a2, path, v3);
  if (objc_msgSend_isEqualToString_(PathComponent, v6, @"Attachments", v7))
  {
    v11 = IMOSLoggingEnabled();
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      v11 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
      if (v11)
      {
        LOWORD(v33) = 0;
        v13 = "Not deleting attachment path, last component is Attachments";
        v14 = v12;
        v15 = 2;
LABEL_14:
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, v13, &v33, v15);
        LOBYTE(v11) = 0;
      }
    }
  }

  else
  {
    v16 = objc_msgSend_lastPathComponent(path, v8, v9, v10);
    if (objc_msgSend_length(v16, v17, v18, v19) == 36)
    {
      v23 = objc_msgSend_stringByDeletingLastPathComponent(path, v20, v21, v22);
      v27 = objc_msgSend_stringByExpandingTildeInPath(@"/var/mobile/Library/SMS/Attachments", v24, v25, v26);
      if (objc_msgSend_containsString_(v23, v28, v27, v29))
      {
        LOBYTE(v11) = 1;
      }

      else
      {
        v11 = IMOSLoggingEnabled();
        if (v11)
        {
          v31 = OSLogHandleForIMFoundationCategory();
          v11 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);
          if (v11)
          {
            v33 = 138412290;
            pathCopy2 = path;
            v13 = "Not deleting attachment path, not in attachment store: %@";
            v14 = v31;
            v15 = 12;
            goto LABEL_14;
          }
        }
      }
    }

    else
    {
      v11 = IMOSLoggingEnabled();
      if (v11)
      {
        v30 = OSLogHandleForIMFoundationCategory();
        v11 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
        if (v11)
        {
          v33 = 138412546;
          pathCopy2 = path;
          v35 = 2112;
          v36 = v16;
          v13 = "Not deleting attachment path, last component is not guid-like %@ guidPathComponent: %@";
          v14 = v30;
          v15 = 22;
          goto LABEL_14;
        }
      }
    }
  }

  return v11;
}

- (void)_removeLegacyAttachmentPathsInAttachmentStoreWithOriginalPath:(id)path withFileManager:(id)manager
{
  v20 = *MEMORY[0x1E69E9840];
  PathComponent = objc_msgSend_stringByDeletingLastPathComponent(path, a2, path, manager);
  v8 = objc_msgSend_contentsOfDirectoryAtPath_error_(manager, v7, PathComponent, 0);
  if (v8 && !objc_msgSend_count(v8, v9, v10, v11))
  {
    if (objc_msgSend__canDeleteAttachmentPath_(self, v12, PathComponent, v13))
    {
      v16 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = PathComponent;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_DEFAULT, "Path was in attachment store, removing %@", &v18, 0xCu);
      }

      objc_msgSend_removeItemAtPath_error_(manager, v17, PathComponent, 0);
    }

    else if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = PathComponent;
        v15 = "Bailing out of legacy attachment path deletion, %@ is not an eligible path";
        goto LABEL_6;
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = PathComponent;
      v15 = "Bailing out of legacy attachment path deletion, %@ has other contents in path";
LABEL_6:
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, v15, &v18, 0xCu);
    }
  }
}

- (id)_migrateSiblingAssetsInAttachmentStoreWithOriginalPath:(id)path destinationPath:(id)destinationPath withFileManager:(id)manager
{
  v94 = *MEMORY[0x1E69E9840];
  PathComponent = objc_msgSend_stringByDeletingLastPathComponent(path, a2, path, destinationPath);
  destinationPathCopy = destinationPath;
  v12 = objc_msgSend_stringByDeletingLastPathComponent(destinationPath, v9, v10, v11);
  pathCopy = path;
  v16 = objc_msgSend_lastPathComponent(path, v13, v14, v15);
  v75 = v12;
  v76 = PathComponent;
  if (!objc_msgSend_isEqualToString_(PathComponent, v17, v12, v18))
  {
    v21 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v86 = v16;
      v87 = 2112;
      v88 = PathComponent;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_DEFAULT, "Looking for sibling files of %@ in %@", buf, 0x16u);
    }

    v23 = objc_msgSend_contentsOfDirectoryAtPath_error_(manager, v22, PathComponent, 0);
    obj = v23;
    if (!v23 || !objc_msgSend_count(v23, v24, v25, v26) || (v81 = 0u, v82 = 0u, v79 = 0u, v80 = 0u, (v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v79, v93, 16)) == 0))
    {
      v74 = 0;
      return v74;
    }

    v74 = 0;
    v32 = *v80;
    v71 = *MEMORY[0x1E696A250];
    v73 = *MEMORY[0x1E696A3A0];
    v72 = *MEMORY[0x1E696A388];
    *&v31 = 138413058;
    v68 = v31;
    while (1)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v80 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v79 + 1) + 8 * i);
        if (objc_msgSend_isEqualToString_(v34, v28, v16, v29, v68))
        {
          v37 = IMAttachmentsLogHandle();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          *buf = 138412290;
          v86 = v34;
          v38 = v37;
          v39 = OS_LOG_TYPE_DEFAULT;
          v40 = "Sibling search found orig filename %@, skipping";
          v41 = 12;
          goto LABEL_43;
        }

        v42 = objc_msgSend_stringByAppendingPathComponent_(v76, v35, v34, v36);
        v45 = objc_msgSend_stringByAppendingPathComponent_(v75, v43, v34, v44);
        v46 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v86 = v42;
          v87 = 2112;
          v88 = v45;
          _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_DEFAULT, "Will migrate sibling at path %@ to %@", buf, 0x16u);
        }

        v78 = 0;
        v51 = objc_msgSend_removeItemAtPath_error_(manager, v47, v45, &v78);
        if (!v51)
        {
          goto LABEL_51;
        }

        if (!v78)
        {
          goto LABEL_31;
        }

        v52 = objc_msgSend_domain(v78, v48, v49, v50);
        if (!objc_msgSend_isEqualToString_(v52, v53, v71, v54) || objc_msgSend_code(v78, v55, v56, v57) != 4)
        {
LABEL_51:
          if (IMOSLoggingEnabled())
          {
            v58 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v59 = @"NO";
              if (v51)
              {
                v59 = @"YES";
              }

              *buf = 138412802;
              v86 = v45;
              v87 = 2112;
              v88 = v59;
              v89 = 2112;
              v90 = v78;
              _os_log_impl(&dword_1B7AD5000, v58, OS_LOG_TYPE_INFO, "Failed to delete existing sibling %@ success %@ error %@", buf, 0x20u);
            }
          }
        }

        if (v78)
        {
          v78 = 0;
        }

LABEL_31:
        objc_msgSend_copyItemAtPath_toPath_error_(manager, v48, v42, v45, &v78);
        if (v78)
        {
          if (IMOSLoggingEnabled())
          {
            v60 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              *buf = v68;
              v86 = pathCopy;
              v87 = 2112;
              v88 = v42;
              v89 = 2112;
              v90 = v45;
              v91 = 2112;
              v92 = v78;
              v38 = v60;
              v39 = OS_LOG_TYPE_INFO;
              v40 = "Failed to copy sibling attachment to dst. Orig %@ sibling %@ dst %@ error %@";
              v41 = 42;
LABEL_43:
              _os_log_impl(&dword_1B7AD5000, v38, v39, v40, buf, v41);
              continue;
            }
          }
        }

        else
        {
          if (!v74)
          {
            v74 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v61 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v86 = v34;
            v87 = 2112;
            v88 = destinationPathCopy;
            _os_log_impl(&dword_1B7AD5000, v61, OS_LOG_TYPE_DEFAULT, "Successfully migrated %@ to %@", buf, 0x16u);
          }

          objc_msgSend_addObject_(v74, v62, v42, v63);
          v83 = v73;
          v84 = v72;
          v65 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v64, &v84, &v83, 1);
          objc_msgSend_setAttributes_ofItemAtPath_error_(manager, v66, v65, v45, &v78);
          if (v78)
          {
            if (IMOSLoggingEnabled())
            {
              v67 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v86 = v45;
                v87 = 2112;
                v88 = v78;
                v38 = v67;
                v39 = OS_LOG_TYPE_INFO;
                v40 = "Failed to update permissions on sibling file dst path %@ error %@";
                v41 = 22;
                goto LABEL_43;
              }
            }
          }
        }
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v79, v93, 16);
      if (!v30)
      {
        return v74;
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Can't migrate sibling attachments to the same folder", buf, 2u);
    }
  }

  return 0;
}

- (BOOL)isSafeToDeleteAttachmentPath:(id)path
{
  v27 = *MEMORY[0x1E69E9840];
  PathComponent = objc_msgSend_lastPathComponent(path, a2, path, v3);
  if (objc_msgSend_isEqualToString_(PathComponent, v6, @"Attachments", v7))
  {
    v11 = IMOSLoggingEnabled();
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      v11 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
      if (v11)
      {
        LOWORD(v25) = 0;
        v13 = "Not deleting attachment path, last component is Attachments";
        v14 = v12;
        v15 = 2;
LABEL_10:
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, v13, &v25, v15);
        LOBYTE(v11) = 0;
      }
    }
  }

  else
  {
    v16 = objc_msgSend_stringByDeletingLastPathComponent(path, v8, v9, v10);
    v20 = objc_msgSend_stringByExpandingTildeInPath(@"/var/mobile/Library/SMS/Attachments", v17, v18, v19);
    if (objc_msgSend_containsString_(v16, v21, v20, v22))
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      v11 = IMOSLoggingEnabled();
      if (v11)
      {
        v23 = OSLogHandleForIMFoundationCategory();
        v11 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
        if (v11)
        {
          v25 = 138412290;
          pathCopy = path;
          v13 = "Not deleting attachment path, not in attachment store: %@";
          v14 = v23;
          v15 = 12;
          goto LABEL_10;
        }
      }
    }
  }

  return v11;
}

- (BOOL)_deleteAttachmentForTransfer:(id)transfer highQuality:(BOOL)quality
{
  qualityCopy = quality;
  v31 = *MEMORY[0x1E69E9840];
  v7 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (qualityCopy)
    {
      v9 = @"YES";
    }

    *buf = 138412546;
    transferCopy4 = transfer;
    v29 = 2112;
    transferCopy3 = v9;
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_DEFAULT, "Request to delete attachment for transfer: %@ high quality: %@", buf, 0x16u);
  }

  v13 = objc_msgSend__persistentPathForTransfer_filename_highQuality_chatGUID_storeAtExternalPath_(self, v8, transfer, 0, qualityCopy, 0, 0);
  if (v13 || objc_msgSend_length(0, v10, v11, v12))
  {
    v14 = objc_autoreleasePoolPush();
    v26 = 0;
    v18 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v15, v16, v17);
    v20 = objc_msgSend_removeItemAtPath_error_(v18, v19, v13, &v26);
    v21 = IMAttachmentsLogHandle();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v22)
      {
        *buf = 138412546;
        transferCopy4 = v13;
        v29 = 2112;
        transferCopy3 = transfer;
        v23 = "  => Successfully deleted item at path: %@  for transfer: %@";
LABEL_12:
        _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_DEFAULT, v23, buf, 0x16u);
      }
    }

    else if (v22)
    {
      *buf = 138412546;
      transferCopy4 = v13;
      v29 = 2112;
      transferCopy3 = transfer;
      v23 = "  => failed to remove item at path: %@  for transfer: %@";
      goto LABEL_12;
    }

    objc_autoreleasePoolPop(v14);
    return v20;
  }

  v25 = IMAttachmentsLogHandle();
  v20 = 0;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    transferCopy4 = transfer;
    _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_DEFAULT, "  => No persistent path for transfer found: %@", buf, 0xCu);
    return 0;
  }

  return v20;
}

- (id)_persistentPathForTransfer:(id)transfer filename:(id)filename highQuality:(BOOL)quality chatGUID:(id)d storeAtExternalPath:(BOOL)path
{
  pathCopy = path;
  qualityCopy = quality;
  PathComponent = filename;
  v52 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_isSticker(transfer, a2, transfer, filename))
  {
    v29 = objc_msgSend_guid(transfer, v12, v13, v14);
    if (objc_msgSend_isAuxVideo(transfer, v30, v31, v32))
    {
      v36 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v48 = 138412290;
        transferCopy = transfer;
        _os_log_impl(&dword_1B7AD5000, v36, OS_LOG_TYPE_DEFAULT, "Overriding guid for transfer in _persistentPathForTransfer %@", &v48, 0xCu);
      }

      v29 = objc_msgSend_guidByStrippingAuxPrefix_(MEMORY[0x1E69A8078], v37, v29, v38);
    }

    if (qualityCopy)
    {
      v39 = objc_msgSend_temporaryHighQualityLocalPath(transfer, v33, v34, v35);
      if (!PathComponent)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v39 = objc_msgSend_localPath(transfer, v33, v34, v35);
      if (!PathComponent)
      {
LABEL_15:
        PathComponent = objc_msgSend_lastPathComponent(v39, v40, v41, v42);
      }
    }

    v43 = objc_msgSend_mimeType(transfer, v40, v41, v42);
    v47 = objc_msgSend_type(transfer, v44, v45, v46);
    return IMDCopyAttachmentPersistentPath(v29, PathComponent, v43, v47, d, pathCopy);
  }

  v15 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_msgSend_guid(transfer, v16, v17, v18);
    isSticker = objc_msgSend_isSticker(transfer, v20, v21, v22);
    v24 = @"NO";
    if (isSticker)
    {
      v24 = @"YES";
    }

    v48 = 138412546;
    transferCopy = v19;
    v50 = 2112;
    v51 = v24;
    _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_DEFAULT, "Generating path for sticker transfer %@ isSticker %@", &v48, 0x16u);
  }

  objc_msgSend_stickerUserInfo(transfer, v16, v17, v18);
  objc_msgSend_isAdaptiveImageGlyph(transfer, v25, v26, v27);
  return IMSharedHelperCachePathForStickerWithProperties();
}

- (BOOL)cleanseOrphanedFileTransfers
{
  v2 = objc_alloc_init(IMDOrphanedAttachmentHandler);
  objc_msgSend_cleanseOrphanedAttachments(v2, v3, v4, v5);

  return 1;
}

@end