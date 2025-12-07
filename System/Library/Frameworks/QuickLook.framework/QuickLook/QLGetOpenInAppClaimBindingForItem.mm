@interface QLGetOpenInAppClaimBindingForItem
@end

@implementation QLGetOpenInAppClaimBindingForItem

void ___QLGetOpenInAppClaimBindingForItem_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) previewItemURL];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = [*(a1 + 32) fpItem];
    v3 = [v4 fileURL];

    if (!v3)
    {
      goto LABEL_6;
    }
  }

  v5 = [MEMORY[0x277CC1EB8] documentProxyForURL:v3 isContentManaged:*(a1 + 48) sourceAuditToken:0];
  if (v5)
  {
    v6 = v5;
LABEL_7:
    v9 = _QLGetOpenInAppClaimBindingForDocumentProxy(v6);
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    goto LABEL_8;
  }

LABEL_6:
  v7 = MEMORY[0x277CC1EB8];
  v8 = [*(a1 + 32) previewItemContentType];
  v6 = [v7 documentProxyForName:0 type:v8 MIMEType:0 isContentManaged:*(a1 + 48) sourceAuditToken:0];

  if (v6)
  {
    goto LABEL_7;
  }

  v12 = MEMORY[0x277D43EF8];
  v13 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v13 = *v12;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 32);
    v15 = 138412290;
    v16 = v14;
    _os_log_impl(&dword_23A714000, v13, OS_LOG_TYPE_INFO, "No Open In app for item: %@ #Generic", &v15, 0xCu);
  }

LABEL_8:
}

@end