@interface ARCoachingSplineGroup
- ($3BA783FF50B239963188BE194EBFFEBA)controlPoints;
- ($8EF4127CF77ECA3DDB612FCF233DC3A8)patchData;
- (ARCoachingSplineGroup)initWithSplines:(id)splines;
- (id).cxx_construct;
- (unsigned)indices;
@end

@implementation ARCoachingSplineGroup

- ($3BA783FF50B239963188BE194EBFFEBA)controlPoints
{
  if (self->_controlPoints.__begin_ == self->_controlPoints.__end_)
  {
    return 0;
  }

  else
  {
    return self->_controlPoints.__begin_;
  }
}

- ($8EF4127CF77ECA3DDB612FCF233DC3A8)patchData
{
  if (self->_patchData.__begin_ == self->_patchData.__end_)
  {
    return 0;
  }

  else
  {
    return self->_patchData.__begin_;
  }
}

- (unsigned)indices
{
  if (self->_indices.__begin_ == self->_indices.__end_)
  {
    return 0;
  }

  else
  {
    return self->_indices.__begin_;
  }
}

- (ARCoachingSplineGroup)initWithSplines:(id)splines
{
  v25 = *MEMORY[0x277D85DE8];
  splinesCopy = splines;
  v23.receiver = self;
  v23.super_class = ARCoachingSplineGroup;
  v5 = [(ARCoachingSplineGroup *)&v23 init];
  if (v5)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = splinesCopy;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = 0;
          v11 = 0;
          v12 = *(*(&v19 + 1) + 8 * v9);
          v13 = v5->_controlPoints.__end_ - v5->_controlPoints.__begin_;
          while (v11 < [v12 numControlPoints])
          {
            std::vector<ARCoachingControlPoint>::push_back[abi:ne200100](&v5->_controlPoints, ([v12 controlPoints] + v10));
            ++v11;
            v10 += 32;
          }

          v14 = 0;
          for (i = 0; i < [v12 patchDataLength]; ++i)
          {
            std::vector<ARCoachingPatchData>::push_back[abi:ne200100](&v5->_patchData, ([v12 patchData] + v14));
            v14 += 8;
          }

          for (j = 0; j < [v12 numIndices]; ++j)
          {
            v18 = *([v12 indices] + 2 * j) + (v13 >> 5);
            std::vector<unsigned short>::push_back[abi:ne200100](&v5->_indices.__begin_, &v18);
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v7);
    }
  }

  return v5;
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