@interface IMDOrphanedAttachmentHandler
- (IMDOrphanedAttachmentHandler)init;
- (IMDOrphanedAttachmentHandler)initWithFileManager:(id)manager;
- (void)_cleanseOrphanedAttachmentsWithEnumerator:(id)enumerator atPath:(id)path;
- (void)cleanseOrphanedAttachments;
- (void)cleanseOrphanedAttachmentsInDirectoryAtPath:(id)path;
- (void)dealloc;
@end

@implementation IMDOrphanedAttachmentHandler

- (IMDOrphanedAttachmentHandler)init
{
  v4.receiver = self;
  v4.super_class = IMDOrphanedAttachmentHandler;
  v2 = [(IMDOrphanedAttachmentHandler *)&v4 init];
  if (v2)
  {
    v2->_fileManager = objc_alloc_init(MEMORY[0x1E696AC08]);
  }

  return v2;
}

- (IMDOrphanedAttachmentHandler)initWithFileManager:(id)manager
{
  v6.receiver = self;
  v6.super_class = IMDOrphanedAttachmentHandler;
  v4 = [(IMDOrphanedAttachmentHandler *)&v6 init];
  if (v4)
  {
    v4->_fileManager = manager;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMDOrphanedAttachmentHandler;
  [(IMDOrphanedAttachmentHandler *)&v3 dealloc];
}

- (void)_cleanseOrphanedAttachmentsWithEnumerator:(id)enumerator atPath:(id)path
{
  *(&v114[2] + 2) = *MEMORY[0x1E69E9840];
  Object = objc_msgSend_nextObject(enumerator, a2, enumerator, path);
  if (Object)
  {
    v9 = Object;
    v10 = 0;
    v105 = *MEMORY[0x1E695E480];
    *&v8 = 138412546;
    v103 = v8;
    do
    {
      if (v10 >= objc_msgSend_maxCleanseIterations(self, v5, v6, v7, v103))
      {
        objc_initWeak(buf, self);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1B7B2E280;
        block[3] = &unk_1E7CB7708;
        objc_copyWeak(&v109, buf);
        block[4] = enumerator;
        block[5] = path;
        IMDPersistencePerformBlock(block, 0, v101, v102);
        objc_destroyWeak(&v109);
        objc_destroyWeak(buf);
        return;
      }

      v11 = objc_autoreleasePoolPush();
      v18 = objc_msgSend_level(enumerator, v12, v13, v14);
      if (v18 == 3)
      {
        if (objc_msgSend_level(enumerator, v15, v16, v17) == 3)
        {
          PathComponent = objc_msgSend_lastPathComponent(v9, v19, v20, v21);
          v23 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v103;
            v112 = v9;
            v113 = 2112;
            v114[0] = PathComponent;
            _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_DEFAULT, "Examining '%@' as it looks like it contains a guid '%@'.", buf, 0x16u);
          }

          v24 = IMDAttachmentRecordCopyAttachmentForGUIDIsLegacyGUID(PathComponent, 1);
          if (v24 || (v24 = IMDAttachmentRecordCopyAttachmentForGUIDIsLegacyGUID(PathComponent, 0)) != 0)
          {
            v27 = IMAttachmentsLogHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v112 = v9;
              _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_DEFAULT, "Keeping '%@' we have a record for it in the DB.", buf, 0xCu);
            }

            v28 = IMDAttachmentRecordCopyFilename(v105, v24, 0);
            v29 = IMDAttachmentRecordCopyFilename(v105, v24, 1);
            v32 = objc_msgSend_stringByAppendingPathComponent_(path, v30, v9, v31);
            v36 = objc_msgSend_fileManager(self, v33, v34, v35);
            v39 = objc_msgSend_enumeratorAtPath_(v36, v37, v32, v38);
            for (i = objc_msgSend_nextObject(v39, v40, v41, v42); ; i = objc_msgSend_nextObject(v39, v82, v83, v84))
            {
              v44 = i;
              if (!i)
              {
                break;
              }

              v45 = objc_autoreleasePoolPush();
              v49 = objc_msgSend_lastPathComponent(v44, v46, v47, v48);
              v53 = objc_msgSend_lastPathComponent(v28, v50, v51, v52);
              if (objc_msgSend_isEqualToString_(v49, v54, v53, v55) & 1) != 0 || (v59 = objc_msgSend_lastPathComponent(v44, v56, v57, v58), v63 = objc_msgSend_lastPathComponent(v29, v60, v61, v62), (objc_msgSend_isEqualToString_(v59, v64, v63, v65)) || (v69 = objc_msgSend_pathExtension(v44, v66, v67, v68), (objc_msgSend_isEqualToIgnoringCase_(v69, v70, @"MOV", v71)))
              {
                v74 = IMAttachmentsLogHandle();
                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v112 = v44;
                  _os_log_impl(&dword_1B7AD5000, v74, OS_LOG_TYPE_DEFAULT, "  Not deleting the actual attachment: %@", buf, 0xCu);
                }
              }

              else
              {
                v75 = objc_msgSend_stringByAppendingPathComponent_(v32, v72, v44, v73);
                v76 = IMAttachmentsLogHandle();
                if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v112 = v75;
                  _os_log_impl(&dword_1B7AD5000, v76, OS_LOG_TYPE_DEFAULT, "  Deleting preview: %@", buf, 0xCu);
                }

                v80 = objc_msgSend_fileManager(self, v77, v78, v79);
                objc_msgSend_removeItemAtPath_error_(v80, v81, v75, 0);
              }

              objc_autoreleasePoolPop(v45);
            }

            CFRelease(v24);
            goto LABEL_27;
          }

          v110 = 0;
          v92 = objc_msgSend_stringByAppendingPathComponent_(path, v25, v9, v26);
          v93 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v112 = v92;
            _os_log_impl(&dword_1B7AD5000, v93, OS_LOG_TYPE_DEFAULT, "To Delete: %@", buf, 0xCu);
          }

          v97 = objc_msgSend_fileManager(self, v94, v95, v96);
          objc_msgSend_removeItemAtPath_error_(v97, v98, v92, &v110);
          v99 = IMAttachmentsLogHandle();
          if (!os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_27;
          }

          *buf = 138412290;
          v112 = v92;
          v86 = v99;
          v87 = "Cleaned up '%@'";
          v88 = 12;
          goto LABEL_25;
        }
      }

      else
      {
        v85 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v112 = v9;
          v113 = 1024;
          LODWORD(v114[0]) = v18;
          WORD2(v114[0]) = 1024;
          *(v114 + 6) = 3;
          v86 = v85;
          v87 = "Skipping '%@' as its level is %d and our target level is %d.";
          v88 = 24;
LABEL_25:
          _os_log_impl(&dword_1B7AD5000, v86, OS_LOG_TYPE_DEFAULT, v87, buf, v88);
        }
      }

LABEL_27:
      objc_autoreleasePoolPop(v11);
      v9 = objc_msgSend_nextObject(enumerator, v89, v90, v91);
      ++v10;
    }

    while (v9);
  }

  v100 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v112 = @"successfully.";
    _os_log_impl(&dword_1B7AD5000, v100, OS_LOG_TYPE_DEFAULT, "File cleanse ended %@", buf, 0xCu);
  }
}

- (void)cleanseOrphanedAttachments
{
  v3 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_DEFAULT, "Beginning file cleanse.", v10, 2u);
  }

  v7 = objc_msgSend_stringByExpandingTildeInPath(@"/var/mobile/Library/SMS/Attachments", v4, v5, v6);
  objc_msgSend_cleanseOrphanedAttachmentsInDirectoryAtPath_(self, v8, v7, v9);
}

- (void)cleanseOrphanedAttachmentsInDirectoryAtPath:(id)path
{
  v6 = objc_msgSend_fileManager(self, a2, path, v3);
  v10 = objc_msgSend_enumeratorAtPath_(v6, v7, path, v8);

  objc_msgSend__cleanseOrphanedAttachmentsWithEnumerator_atPath_(self, v9, v10, path);
}

@end