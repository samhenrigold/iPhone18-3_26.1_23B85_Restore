@interface QLLivePhotoItemTransformer
+ (id)allowedOutputClasses;
- (id)transformedContentsFromURL:(id)l context:(id)context error:(id *)error;
@end

@implementation QLLivePhotoItemTransformer

+ (id)allowedOutputClasses
{
  v3 = MEMORY[0x277CBEB98];
  gotLoadHelper_x8__OBJC_CLASS___PHLivePhoto(v2);
  return [v3 setWithObjects:{objc_opt_class(), 0}];
}

- (id)transformedContentsFromURL:(id)l context:(id)context error:(id *)error
{
  v40[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  gotLoadHelper_x8__OBJC_CLASS___PFVideoComplement(v7);
  v9 = [objc_alloc(*(v8 + 1312)) initWithBundleAtURL:lCopy];
  imagePath = [v9 imagePath];
  v11 = MEMORY[0x277D43EF8];
  if (imagePath && (v12 = imagePath, [v9 videoPath], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    v14 = MEMORY[0x277CBEBC0];
    imagePath2 = [v9 imagePath];
    v16 = [v14 fileURLWithPath:imagePath2];

    v17 = MEMORY[0x277CBEBC0];
    videoPath = [v9 videoPath];
    v19 = [v17 fileURLWithPath:videoPath];

    gotLoadHelper_x24__OBJC_CLASS___PHLivePhoto(v20);
    if ((objc_opt_respondsToSelector() & 1) != 0 && _os_feature_enabled_impl())
    {
      v21 = videoPath[281];
      v40[0] = v16;
      v40[1] = v19;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
      v34 = 0;
      v23 = &v34;
      v24 = [v21 livePhotoWithResourceFileURLs:v22 prefersHDR:1 error:&v34];
    }

    else
    {
      v31 = videoPath[281];
      v39[0] = v16;
      v39[1] = v19;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
      v33 = 0;
      v23 = &v33;
      v24 = [v31 livePhotoWithResourceFileURLs:v22 error:&v33];
    }

    v27 = v24;
    v26 = *v23;

    if (!v26 && v27)
    {
      v27 = v27;
      v26 = 0;
      v30 = v27;
      goto LABEL_22;
    }
  }

  else
  {
    v25 = *v11;
    if (!*v11)
    {
      QLSInitLogging();
      v25 = *v11;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = lCopy;
      _os_log_impl(&dword_23A714000, v25, OS_LOG_TYPE_INFO, "Could not generate a PFVideoComplement from the given url: %@ #PreviewItem", buf, 0xCu);
    }

    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.QLLivePhotoItemTransformer" code:0 userInfo:0];
    v16 = 0;
    v19 = 0;
    v27 = 0;
  }

  v28 = *v11;
  if (!*v11)
  {
    QLSInitLogging();
    v28 = *v11;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v36 = lCopy;
    v37 = 2112;
    v38 = v26;
    _os_log_impl(&dword_23A714000, v28, OS_LOG_TYPE_ERROR, "Error creating PHLivePhoto for url(%@) error (%@) #PreviewItem", buf, 0x16u);
  }

  if (error)
  {
    v29 = v26;
    v30 = 0;
    *error = v26;
  }

  else
  {
    v30 = 0;
  }

LABEL_22:

  return v30;
}

@end