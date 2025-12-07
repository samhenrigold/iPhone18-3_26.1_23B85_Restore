@interface DIStackParams
- (BOOL)appendWithURL:(id)l isCache:(BOOL)cache numBlocks:(unint64_t)blocks error:(id *)error;
- (DIStackParams)initWithURL:(id)l error:(id *)error;
@end

@implementation DIStackParams

- (DIStackParams)initWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = DIStackParams;
  v7 = [(DIBaseParams *)&v11 initWithURL:lCopy error:error];
  v8 = v7;
  if (v7 && ![(DIBaseParams *)v7 openExistingImageWithError:error])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (BOOL)appendWithURL:(id)l isCache:(BOOL)cache numBlocks:(unint64_t)blocks error:(id *)error
{
  cacheCopy = cache;
  v21[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v11 = [[DIShadowNode alloc] initWithURL:lCopy isCache:cacheCopy];
  [(DIShadowNode *)v11 setNumBlocks:blocks];
  shadowChain = [(DIBaseParams *)self shadowChain];
  v21[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v14 = [shadowChain addShadowNodes:v13 error:error];

  if (v14)
  {
    v15 = objc_alloc_init(DIClient2Controller_XPCHandler);
    if ([(DIClient2Controller_XPCHandler *)v15 connectWithError:error]&& [(DIBaseParams *)self prepareImageWithXpcHandler:v15 fileMode:3 error:error])
    {
      diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
      v17 = diskImageParamsXPC;
      if (diskImageParamsXPC)
      {
        objc_msgSend_createDiskImageWithCache_shadowValidation_(diskImageParamsXPC);

        if (v20)
        {
          (*(*v20 + 16))();
        }
      }

      else
      {
      }

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end