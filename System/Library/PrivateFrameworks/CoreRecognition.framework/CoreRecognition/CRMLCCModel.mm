@interface CRMLCCModel
- (id)creditcardMLResultsFromImage:(id)image textFeatures:(id)features invert:(BOOL)invert tryPatternMatch:(BOOL)match;
- (id)creditcardResultsFromImage:(id)image;
- (id)creditcardResultsFromImage:(id)image textFeatures:(id)features invert:(BOOL)invert tryPatternMatch:(BOOL)match;
@end

@implementation CRMLCCModel

- (id)creditcardResultsFromImage:(id)image
{
  [v6 activationsFromImage:?];
  v4 = [(CRMLModel *)self decodeActivations:?];
  v7 = v6;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v7);

  return v4;
}

- (id)creditcardResultsFromImage:(id)image textFeatures:(id)features invert:(BOOL)invert tryPatternMatch:(BOOL)match
{
  v6 = [CRMLCCModel creditcardMLResultsFromImage:"creditcardMLResultsFromImage:textFeatures:invert:tryPatternMatch:" textFeatures:? invert:? tryPatternMatch:?];

  return v6;
}

- (id)creditcardMLResultsFromImage:(id)image textFeatures:(id)features invert:(BOOL)invert tryPatternMatch:(BOOL)match
{
  matchCopy = match;
  invertCopy = invert;
  imageCopy = image;
  featuresCopy = features;
  [featuresCopy shouldExpandToFullWidth];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [imageCopy width];
  [imageCopy height];
  v12 = [GeometricCutTools findCorrectedBoundingBoxOfTextFeature:"findCorrectedBoundingBoxOfTextFeature:inImageWithSize:" inImageWithSize:?];
  v13 = [imageCopy imageByCroppingTextFeature:? correctedBoundingBox:? padding:? networkInputSize:?];
  v14 = v13;
  if (v13)
  {
    imageByApplyingHistogramCorrection = [v13 imageByApplyingHistogramCorrection];
    [featuresCopy setImageCut:?];
    sharedInsights = [off_278EAA000 sharedInsights];
    [sharedInsights provideInsightValue:? forKey:?];

    v36 = 0uLL;
    v37 = 0;
    if (invertCopy)
    {
      imageByRotating180 = [imageByApplyingHistogramCorrection imageByRotating180];
      [&v34 activationsFromImage:?];
      std::vector<std::vector<std::vector<float>>>::__vdeallocate(&v36);
      v36 = v34;
      v37 = v35;
      *&v35 = 0;
      v34 = 0uLL;
      v38[0] = &v34;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v38);
    }

    else
    {
      [&v34 activationsFromImage:?];
      std::vector<std::vector<std::vector<float>>>::__vdeallocate(&v36);
      v36 = v34;
      v37 = v35;
      *&v35 = 0;
      v34 = 0uLL;
      v38[0] = &v34;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v38);
    }

    if (*(&v36 + 1) != v36)
    {
      v28 = matchCopy;
      if (imageByApplyingHistogramCorrection)
      {
        [&v34 vImage];
      }

      else
      {
        v34 = 0u;
        v35 = 0u;
      }

      [imageCopy width];
      [imageCopy height];
      [(CRMLModel *)self codeMap];
      memset(v33, 0, sizeof(v33));
      std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v33, v36, *(&v36 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v36 + 1) - v36) >> 3));
      v18 = [GeometricCutTools geometricRecognitionOf:"geometricRecognitionOf:inDerotatedRegion:withPadding:fromCorrectedBoundingBox:inImageWithSize:withCodeMap:activations:invert:networkInputSize:" inDerotatedRegion:? withPadding:? fromCorrectedBoundingBox:? inImageWithSize:? withCodeMap:? activations:? invert:? networkInputSize:?];
      v29 = [v18 mutableCopy];

      *&v34 = v33;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v34);
      subFeatures = [featuresCopy subFeatures];
      v20 = [subFeatures count];

      if (v20 == 10)
      {
        [featuresCopy addKohlsDigitProjection];
        if (imageByApplyingHistogramCorrection)
        {
          [&v34 vImage];
        }

        else
        {
          v34 = 0u;
          v35 = 0u;
        }

        [imageCopy width];
        [imageCopy height];
        [(CRMLModel *)self codeMap];
        memset(v32, 0, sizeof(v32));
        std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v32, v36, *(&v36 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v36 + 1) - v36) >> 3));
        v21 = [GeometricCutTools geometricRecognitionOf:"geometricRecognitionOf:inDerotatedRegion:withPadding:fromCorrectedBoundingBox:inImageWithSize:withCodeMap:activations:invert:networkInputSize:" inDerotatedRegion:? withPadding:? fromCorrectedBoundingBox:? inImageWithSize:? withCodeMap:? activations:? invert:? networkInputSize:?];
        *&v34 = v32;
        std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v34);
        v22 = [v21 objectForKey:?];
        [v29 setObject:? forKey:?];
      }

      [dictionary setObject:? forKey:?];
      codeMap = [(CRMLModel *)self codeMap];
      classCount = [(CRMLModel *)self classCount];
      memset(v31, 0, sizeof(v31));
      std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v31, v36, *(&v36 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v36 + 1) - v36) >> 3));
      v25 = _creditCardImage2stringCTCSegment(featuresCopy, codeMap, classCount, v31);
      *&v34 = v31;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v34);
      [dictionary setObject:? forKey:?];
      if (v28)
      {
        [(CRMLModel *)self codeMap];
        v26 = [ActivationMapTools textFromActivationMap:"textFromActivationMap:codeMap:invert:" codeMap:? invert:?];
        if (v26)
        {
          [dictionary setObject:? forKey:?];
        }
      }
    }

    *&v34 = &v36;
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v34);
  }

  return dictionary;
}

@end