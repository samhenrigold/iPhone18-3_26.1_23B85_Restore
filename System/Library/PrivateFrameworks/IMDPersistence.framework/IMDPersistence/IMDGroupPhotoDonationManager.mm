@interface IMDGroupPhotoDonationManager
+ (id)sharedInstance;
- (IMDGroupPhotoDonationManager)init;
- (void)copyGroupPhotoToExternalPathIfNecessary:(id)necessary chatGUID:(id)d attachmentFilepath:(id)filepath;
- (void)dealloc;
@end

@implementation IMDGroupPhotoDonationManager

+ (id)sharedInstance
{
  if (qword_1EDBE62D0 != -1)
  {
    sub_1B7CF3EDC();
  }

  v3 = qword_1EDBE7938;

  return v3;
}

- (IMDGroupPhotoDonationManager)init
{
  v9.receiver = self;
  v9.super_class = IMDGroupPhotoDonationManager;
  v5 = [(IMDGroupPhotoDonationManager *)&v9 init];
  if (v5)
  {
    v6 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v2, v3, v4);
    fileManager = v5->_fileManager;
    v5->_fileManager = v6;
  }

  return v5;
}

- (void)dealloc
{
  fileManager = self->_fileManager;
  self->_fileManager = 0;

  v4.receiver = self;
  v4.super_class = IMDGroupPhotoDonationManager;
  [(IMDGroupPhotoDonationManager *)&v4 dealloc];
}

- (void)copyGroupPhotoToExternalPathIfNecessary:(id)necessary chatGUID:(id)d attachmentFilepath:(id)filepath
{
  v58 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  dCopy = d;
  filepathCopy = filepath;
  v14 = filepathCopy;
  if (necessaryCopy && dCopy && filepathCopy)
  {
    v15 = objc_msgSend_im_lastPathComponent(filepathCopy, v11, v12, v13);
    v16 = IMSharedHelperExternalLocationForFile();

    v20 = objc_msgSend_fileManager(self, v17, v18, v19);
    v23 = objc_msgSend_fileExistsAtPath_(v20, v21, v16, v22);

    if (v23)
    {
      v24 = IMLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_1B7CF3EF0(v16, v24);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v51 = v16;
          _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "File missing at path %@. Will attempt to copy from Attachments directory", buf, 0xCu);
        }
      }

      v24 = objc_msgSend_stringByDeletingLastPathComponent(v16, v26, v27, v28);
      v33 = objc_msgSend_fileManager(self, v30, v31, v32);
      DirectoriesInPath_mode = objc_msgSend___im_makeDirectoriesInPath_mode_(v33, v34, v24, 448);

      if ((DirectoriesInPath_mode & 1) == 0 && IMOSLoggingEnabled())
      {
        v39 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v51 = v24;
          _os_log_impl(&dword_1B7AD5000, v39, OS_LOG_TYPE_INFO, "Error creating intermediate directories for path: %@", buf, 0xCu);
        }
      }

      v40 = objc_msgSend_fileManager(self, v36, v37, v38);
      v49 = 0;
      v42 = objc_msgSend_copyItemAtPath_toPath_error_(v40, v41, v14, v16, &v49);
      v43 = v49;

      if (v43)
      {
        v44 = 0;
      }

      else
      {
        v44 = v42;
      }

      v45 = IMOSLoggingEnabled();
      if (v44)
      {
        if (v45)
        {
          v46 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v51 = v16;
            v52 = 2112;
            v53 = v14;
            _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_INFO, "Successfully copied to path %@ from path %@", buf, 0x16u);
          }
        }
      }

      else if (v45)
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = @"NO";
          *buf = 138413058;
          v51 = v16;
          v52 = 2112;
          if (v42)
          {
            v48 = @"YES";
          }

          v53 = v14;
          v54 = 2112;
          v55 = v48;
          v56 = 2112;
          v57 = v43;
          _os_log_impl(&dword_1B7AD5000, v47, OS_LOG_TYPE_INFO, "Error copying to path %@ from path %@ success: %@ error: %@", buf, 0x2Au);
        }
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v51 = necessaryCopy;
      v52 = 2112;
      v53 = dCopy;
      v54 = 2112;
      v55 = v14;
      _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "early returning from copyGroupPhotoToExternalPathIfNecessary - nil argument. groupPhotoGUID %@ chatGUID %@ filepath %@", buf, 0x20u);
    }
  }
}

@end