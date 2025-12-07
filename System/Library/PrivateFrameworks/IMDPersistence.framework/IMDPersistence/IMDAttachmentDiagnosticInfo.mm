@interface IMDAttachmentDiagnosticInfo
- (id)description;
@end

@implementation IMDAttachmentDiagnosticInfo

- (id)description
{
  v44 = MEMORY[0x1E696AEC0];
  v45.receiver = self;
  v45.super_class = IMDAttachmentDiagnosticInfo;
  v3 = [(IMDAttachmentDiagnosticInfo *)&v45 description];
  v7 = objc_msgSend_guid(self, v4, v5, v6);
  v11 = objc_msgSend_total_bytes(self, v8, v9, v10);
  objc_msgSend_ck_sync_state(self, v12, v13, v14);
  v15 = IMStringFromCKSyncState();
  objc_msgSend_transfer_state(self, v16, v17, v18);
  v19 = IMStringFromTransferState();
  v23 = objc_msgSend_uti(self, v20, v21, v22);
  v27 = objc_msgSend_filePath(self, v24, v25, v26);
  if (objc_msgSend_is_sticker(self, v28, v29, v30))
  {
    v34 = @"YES";
  }

  else
  {
    v34 = @"NO";
  }

  v35 = objc_msgSend_mime_type(self, v31, v32, v33);
  v39 = objc_msgSend_plugin_identifier(self, v36, v37, v38);
  v42 = objc_msgSend_stringWithFormat_(v44, v40, @"%@: guid: %@, total_bytes: %lld, ck_sync_state: %@, transfer_state: %@, uti: %@, file path: %@, is_sticker: %@, mime_type: %@, plugin_identifier: %@", v41, v3, v7, v11, v15, v19, v23, v27, v34, v35, v39);

  return v42;
}

@end