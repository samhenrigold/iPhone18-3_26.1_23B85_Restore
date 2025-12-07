@interface MUUserSubmittedPhoto
- (MUUserSubmittedPhoto)initWithPhotoURL:(id)l;
- (void)configureWithSize:(CGSize)size imageProvider:(id)provider;
@end

@implementation MUUserSubmittedPhoto

- (void)configureWithSize:(CGSize)size imageProvider:(id)provider
{
  height = size.height;
  width = size.width;
  providerCopy = provider;
  mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
  [mEMORY[0x1E696F3B8] screenScale];
  v10 = v9;

  mEMORY[0x1E696F190] = [MEMORY[0x1E696F190] sharedImageManager];
  photoURL = self->_photoURL;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__MUUserSubmittedPhoto_configureWithSize_imageProvider___block_invoke;
  v14[3] = &unk_1E821A058;
  v15 = providerCopy;
  v16 = width;
  v17 = height;
  v18 = v10;
  v13 = providerCopy;
  [mEMORY[0x1E696F190] loadAppImageAtURL:photoURL completionHandler:v14];
}

void __56__MUUserSubmittedPhoto_configureWithSize_imageProvider___block_invoke(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || a5)
  {
    v10 = *(*(a1 + 32) + 16);

    v10();
  }

  else
  {
    v8 = *(a1 + 56);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__MUUserSubmittedPhoto_configureWithSize_imageProvider___block_invoke_2;
    v11[3] = &unk_1E821A030;
    v9 = *(a1 + 32);
    v12 = 0;
    v13 = v9;
    v14 = a3;
    [MapsUIUtilities resizeImageIfNeeded:a2 toFrameSize:v11 displayScale:*(a1 + 40) completion:*(a1 + 48), v8];
  }
}

- (MUUserSubmittedPhoto)initWithPhotoURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v10.receiver = self;
    v10.super_class = MUUserSubmittedPhoto;
    v6 = [(MUUserSubmittedPhoto *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_photoURL, l);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end