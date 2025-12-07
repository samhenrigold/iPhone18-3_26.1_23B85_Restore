@interface PHMediaProcessingAlgorithmVersionProvider
@end

@implementation PHMediaProcessingAlgorithmVersionProvider

void __102__PHMediaProcessingAlgorithmVersionProvider_MediaAnalysis__mad_sharedVersionProviderWithPhotoLibrary___block_invoke(uint64_t a1)
{
  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    v2 = 75;
  }

  else
  {
    v2 = 0;
  }

  if (+[VCPVideoCaptionAnalyzer mode]== 1)
  {
    v3 = VCPPhotosCaptionProcessingVersion;
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_alloc(*(a1 + 40));
  v5 = VCPPhotosSceneProcessingVersionInternal();
  v6 = [*(a1 + 32) mad_faceProcessingInternalVersion];
  HIDWORD(v11) = v2;
  WORD1(v11) = v3;
  LOWORD(v11) = 75;
  LOWORD(v10) = VCPPhotosPECProcessingVersion;
  v8 = [v4 initWithSceneAnalysisVersion:v5 faceAnalysisVersion:v6 characterRecognitionAlgorithmVersion:VCPPhotosOCRProcessingVersion visualSearchAlgorithmVersion:VCPPhotosVisualSearchAlgorithmVersion(v6 stickerConfidenceAlgorithmVersion:v7) vaAnalysisVersion:1 vaLocationAnalysisVersion:v10 mediaAnalysisVersion:75 mediaAnalysisImageVersion:v11 captionGenerationVersion:? imageEmbeddingVersion:? videoEmbeddingVersion:?];
  v9 = +[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedVersionProviderWithPhotoLibrary:]::instance;
  +[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedVersionProviderWithPhotoLibrary:]::instance = v8;
}

void __116__PHMediaProcessingAlgorithmVersionProvider_MediaAnalysis__mad_sharedImageEmbeddingVersionProviderWithPhotoLibrary___block_invoke(uint64_t a1)
{
  LOWORD(v3) = 0;
  v1 = [objc_alloc(*(a1 + 32)) initWithSceneAnalysisVersion:0 faceAnalysisVersion:0 characterRecognitionAlgorithmVersion:0 visualSearchAlgorithmVersion:0 stickerConfidenceAlgorithmVersion:0 vaAnalysisVersion:0 vaLocationAnalysisVersion:v3 mediaAnalysisVersion:0 mediaAnalysisImageVersion:0x4B00000000 captionGenerationVersion:? imageEmbeddingVersion:? videoEmbeddingVersion:?];
  v2 = +[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedImageEmbeddingVersionProviderWithPhotoLibrary:]::instance;
  +[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedImageEmbeddingVersionProviderWithPhotoLibrary:]::instance = v1;
}

void __116__PHMediaProcessingAlgorithmVersionProvider_MediaAnalysis__mad_sharedVideoEmbeddingVersionProviderWithPhotoLibrary___block_invoke(uint64_t a1)
{
  LOWORD(v3) = 0;
  v1 = [objc_alloc(*(a1 + 32)) initWithSceneAnalysisVersion:0 faceAnalysisVersion:0 characterRecognitionAlgorithmVersion:0 visualSearchAlgorithmVersion:0 stickerConfidenceAlgorithmVersion:0 vaAnalysisVersion:0 vaLocationAnalysisVersion:v3 mediaAnalysisVersion:0 mediaAnalysisImageVersion:0x4B000000000000 captionGenerationVersion:? imageEmbeddingVersion:? videoEmbeddingVersion:?];
  v2 = +[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedVideoEmbeddingVersionProviderWithPhotoLibrary:]::instance;
  +[PHMediaProcessingAlgorithmVersionProvider(MediaAnalysis) mad_sharedVideoEmbeddingVersionProviderWithPhotoLibrary:]::instance = v1;
}

@end