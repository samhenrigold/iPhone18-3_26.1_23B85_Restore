@interface CPSBusinessItemFetcher
- (void)fetchBusinessMetadataForURL:(id)l availabilityHandler:(id)handler completion:(id)completion;
- (void)fetchBusinessMetadataForURLHash:(id)hash completion:(id)completion;
@end

@implementation CPSBusinessItemFetcher

- (void)fetchBusinessMetadataForURL:(id)l availabilityHandler:(id)handler completion:(id)completion
{
  lCopy = l;
  handlerCopy = handler;
  completionCopy = completion;
  if (!self->_businessQueryService)
  {
    v11 = objc_alloc_init(MEMORY[0x277CF3618]);
    businessQueryService = self->_businessQueryService;
    self->_businessQueryService = v11;
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __85__CPSBusinessItemFetcher_fetchBusinessMetadataForURL_availabilityHandler_completion___block_invoke;
  v21[3] = &unk_278DCDB38;
  v13 = lCopy;
  v22 = v13;
  v14 = handlerCopy;
  v24 = v14;
  v15 = completionCopy;
  v25 = v15;
  selfCopy = self;
  v16 = MEMORY[0x245D3D5F0](v21);
  v17 = objc_opt_respondsToSelector();
  v18 = self->_businessQueryService;
  if (v17)
  {
    [(BCSBusinessQueryService *)v18 isBusinessRegisteredForURL:v13 chopURL:1 completion:v16];
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __85__CPSBusinessItemFetcher_fetchBusinessMetadataForURL_availabilityHandler_completion___block_invoke_8;
    v19[3] = &unk_278DCDB60;
    v20 = v16;
    [(BCSBusinessQueryService *)v18 isBusinessRegisteredForURL:v13 completion:v19];
  }
}

void __85__CPSBusinessItemFetcher_fetchBusinessMetadataForURL_availabilityHandler_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v10 = CPS_LOG_CHANNEL_PREFIXClipServices(v8, v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v11)
  {
    v13 = @"NO";
    v14 = *(a1 + 32);
    if (a2)
    {
      v13 = @"YES";
    }

    *buf = 138740227;
    v23 = v14;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_2436ED000, v10, OS_LOG_TYPE_INFO, "Remote Client: Has ABR entry for %{sensitive}@, %@", buf, 0x16u);
  }

  if (v8)
  {
    v15 = CPS_LOG_CHANNEL_PREFIXClipServices(v11, v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __85__CPSBusinessItemFetcher_fetchBusinessMetadataForURL_availabilityHandler_completion___block_invoke_cold_1(v8, v15);
    }
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, a2, v7);
  }

  if (a2)
  {
    v17 = *(a1 + 32);
    v18 = *(*(a1 + 40) + 8);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __85__CPSBusinessItemFetcher_fetchBusinessMetadataForURL_availabilityHandler_completion___block_invoke_4;
    v19[3] = &unk_278DCDB10;
    v21 = *(a1 + 56);
    v20 = *(a1 + 32);
    [v18 fetchLinkItemWithURL:v17 completion:v19];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __85__CPSBusinessItemFetcher_fetchBusinessMetadataForURL_availabilityHandler_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = CPS_LOG_CHANNEL_PREFIXClipServices(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __85__CPSBusinessItemFetcher_fetchBusinessMetadataForURL_availabilityHandler_completion___block_invoke_4_cold_1(v8, v9);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_10:
      (*(*(a1 + 40) + 16))();
      goto LABEL_11;
    }
  }

  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  v10 = [[CPSClipMetadata alloc] initWithBusinessItem:v5];
  v11 = [(CPSClipMetadata *)v10 clipURL];

  if (!v11)
  {
    [(CPSClipMetadata *)v10 setClipURL:*(a1 + 32)];
  }

  v12 = [(CPSClipMetadata *)v10 clipRequestURL];

  if (!v12)
  {
    [(CPSClipMetadata *)v10 setClipRequestURL:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();

LABEL_11:
}

- (void)fetchBusinessMetadataForURLHash:(id)hash completion:(id)completion
{
  hashCopy = hash;
  completionCopy = completion;
  businessQueryService = self->_businessQueryService;
  if (!businessQueryService)
  {
    v9 = objc_alloc_init(MEMORY[0x277CF3618]);
    v10 = self->_businessQueryService;
    self->_businessQueryService = v9;

    businessQueryService = self->_businessQueryService;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__CPSBusinessItemFetcher_fetchBusinessMetadataForURLHash_completion___block_invoke;
  v12[3] = &unk_278DCDB88;
  v13 = completionCopy;
  v11 = completionCopy;
  [(BCSBusinessQueryService *)businessQueryService fetchLinkItemWithHash:hashCopy completion:v12];
}

void __69__CPSBusinessItemFetcher_fetchBusinessMetadataForURLHash_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[CPSClipMetadata alloc] initWithBusinessItem:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __85__CPSBusinessItemFetcher_fetchBusinessMetadataForURL_availabilityHandler_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2436ED000, a2, OS_LOG_TYPE_ERROR, "fetchBusinessMetadataForURL: Error calling -isBusinessRegisteredForURL: %@", &v2, 0xCu);
}

void __85__CPSBusinessItemFetcher_fetchBusinessMetadataForURL_availabilityHandler_completion___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2436ED000, a2, OS_LOG_TYPE_ERROR, "fetchBusinessMetadataForURL: Error calling -fetchLinkItemWithURL: %@", &v2, 0xCu);
}

@end