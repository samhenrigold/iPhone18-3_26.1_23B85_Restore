@interface ABPKResultRetargeting
- (ABPKResultRetargeting)initWithModelJointTransforms:(id *)transforms localJointTransformsSRT:(const ABPKSRT *)t numberOfTransforms:(unint64_t)ofTransforms liftedSkeletonData:(id)data identifier:(id)identifier;
- (id).cxx_construct;
@end

@implementation ABPKResultRetargeting

- (ABPKResultRetargeting)initWithModelJointTransforms:(id *)transforms localJointTransformsSRT:(const ABPKSRT *)t numberOfTransforms:(unint64_t)ofTransforms liftedSkeletonData:(id)data identifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  v45.receiver = self;
  v45.super_class = ABPKResultRetargeting;
  v15 = [(ABPKResultRetargeting *)&v45 init];
  if (v15)
  {
    v43 = 0uLL;
    v44 = 0;
    std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(&v43, transforms, transforms + 4 * ofTransforms, ofTransforms);
    begin = v15->_modelTransforms.__begin_;
    if (begin)
    {
      v15->_modelTransforms.__end_ = begin;
      operator delete(begin);
      v15->_modelTransforms.__begin_ = 0;
      v15->_modelTransforms.__end_ = 0;
      v15->_modelTransforms.__cap_ = 0;
    }

    *&v15->_modelTransforms.__begin_ = v43;
    v15->_modelTransforms.__cap_ = v44;
    v43 = 0uLL;
    v44 = 0;
    std::vector<ABPKSRT>::__init_with_size[abi:ne200100]<ABPKSRT const*,ABPKSRT const*>(&v43, t, t + 3 * ofTransforms, ofTransforms);
    p_localTransformsSRT = &v15->_localTransformsSRT;
    v17 = v15->_localTransformsSRT.__begin_;
    if (v17)
    {
      v15->_localTransformsSRT.__end_ = v17;
      operator delete(v17);
      p_localTransformsSRT->__begin_ = 0;
      v15->_localTransformsSRT.__end_ = 0;
      v15->_localTransformsSRT.__cap_ = 0;
    }

    *&v15->_localTransformsSRT.__begin_ = v43;
    v15->_localTransformsSRT.__cap_ = v44;
    std::vector<simd_float4x4>::resize(&v15->_localTransforms.__begin_, ofTransforms);
    if (ofTransforms)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        _Q2 = *(p_localTransformsSRT->__begin_ + v19 + 16);
        _S3 = HIDWORD(*(p_localTransformsSRT->__begin_ + v19 + 16));
        _S0 = DWORD2(_Q2);
        __asm { FMLS            S1, S0, V2.S[2] }

        _S6 = HIDWORD(_Q2);
        __asm
        {
          FMLA            S1, S6, V2.S[3]
          FMLA            S5, S3, V2.S[1]
          FMLA            S5, S6, V2.S[3]
          FMLA            S18, S0, V2.S[1]
          FMLA            S19, S0, V2.S[1]
          FMLA            S6, S0, V2.S[2]
          FMLS            S6, S3, V2.S[1]
        }

        simdMatrix4x4FromRotationAndTranslation();
        v37 = (v15->_localTransforms.__begin_ + v20);
        *v37 = v38;
        v37[1] = v39;
        v37[2] = v40;
        v37[3] = v41;
        v20 += 64;
        v19 += 48;
        --ofTransforms;
      }

      while (ofTransforms);
    }

    objc_storeStrong(&v15->_liftingResult, data);
    objc_storeStrong(&v15->_identifier, identifier);
  }

  return v15;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end