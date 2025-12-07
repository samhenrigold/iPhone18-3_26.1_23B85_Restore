@interface BCImageManager
- (BCImageManager)init;
- (void)_fetchBrandIconDataForMapItem:(id)item desiredSize:(CGSize)size allowSmaller:(BOOL)smaller completion:(id)completion;
- (void)_fetchNavBarBrandIconDataForMapItem:(id)item desiredSize:(CGSize)size allowSmaller:(BOOL)smaller completion:(id)completion;
@end

@implementation BCImageManager

- (BCImageManager)init
{
  v3 = objc_alloc_init(BCNetworkProvider);
  v4 = v3;
  if (self)
  {
    v7.receiver = self;
    v7.super_class = BCImageManager;
    v5 = [(BCImageManager *)&v7 init];
    self = v5;
    if (v5)
    {
      objc_storeStrong(&v5->_networkProvider, v3);
    }
  }

  return self;
}

- (void)_fetchBrandIconDataForMapItem:(id)item desiredSize:(CGSize)size allowSmaller:(BOOL)smaller completion:(id)completion
{
  smallerCopy = smaller;
  height = size.height;
  width = size.width;
  v20 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  completionCopy = completion;
  v13 = LogCategory_Daemon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[BCImageManager _fetchBrandIconDataForMapItem:desiredSize:allowSmaller:completion:]";
    _os_log_impl(&dword_236EA0000, v13, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (completionCopy)
  {
    v14 = [itemCopy _bestBrandIconURLForSize:smallerCopy allowSmaller:{width, height}];
    v15 = [objc_alloc(MEMORY[0x277CCAD20]) initWithURL:v14];
    if (self)
    {
      self = self->_networkProvider;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __84__BCImageManager__fetchBrandIconDataForMapItem_desiredSize_allowSmaller_completion___block_invoke;
    v16[3] = &unk_278A0E7E0;
    v17 = completionCopy;
    [(BCImageManager *)self performDataTaskWithRequest:v15 completionHandler:v16];
  }
}

void __84__BCImageManager__fetchBrandIconDataForMapItem_desiredSize_allowSmaller_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = LogCategory_Daemon();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v11 = 138412290;
      v12 = v7;
      v10 = "Failed to fetch brand icon data: %@";
LABEL_6:
      _os_log_impl(&dword_236EA0000, v8, OS_LOG_TYPE_DEFAULT, v10, &v11, 0xCu);
    }
  }

  else if (v9)
  {
    v11 = 134217984;
    v12 = [v6 length];
    v10 = "Fetched brand icon data with length: %ld";
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v6);
}

- (void)_fetchNavBarBrandIconDataForMapItem:(id)item desiredSize:(CGSize)size allowSmaller:(BOOL)smaller completion:(id)completion
{
  smallerCopy = smaller;
  height = size.height;
  width = size.width;
  v20 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  completionCopy = completion;
  v13 = LogCategory_Daemon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[BCImageManager _fetchNavBarBrandIconDataForMapItem:desiredSize:allowSmaller:completion:]";
    _os_log_impl(&dword_236EA0000, v13, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (completionCopy)
  {
    v14 = [itemCopy _bestNavbarBrandIconURLForSize:smallerCopy allowSmaller:{width, height}];
    v15 = [objc_alloc(MEMORY[0x277CCAD20]) initWithURL:v14];
    if (self)
    {
      self = self->_networkProvider;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __90__BCImageManager__fetchNavBarBrandIconDataForMapItem_desiredSize_allowSmaller_completion___block_invoke;
    v16[3] = &unk_278A0E7E0;
    v17 = completionCopy;
    [(BCImageManager *)self performDataTaskWithRequest:v15 completionHandler:v16];
  }
}

void __90__BCImageManager__fetchNavBarBrandIconDataForMapItem_desiredSize_allowSmaller_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = LogCategory_Daemon();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v11 = 138412290;
      v12 = v7;
      v10 = "Failed to fetch navbar brand icon data: %@";
LABEL_6:
      _os_log_impl(&dword_236EA0000, v8, OS_LOG_TYPE_DEFAULT, v10, &v11, 0xCu);
    }
  }

  else if (v9)
  {
    v11 = 134217984;
    v12 = [v6 length];
    v10 = "Fetched navbar brand icon data with length: %ld";
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v6);
}

@end