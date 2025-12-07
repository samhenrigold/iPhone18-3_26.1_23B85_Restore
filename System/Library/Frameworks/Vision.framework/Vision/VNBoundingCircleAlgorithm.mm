@interface VNBoundingCircleAlgorithm
+ (VNCircle)_boundingCircleForPoints:(float)points aspectRatioForCentroid:;
+ (id)boundingCircleForSIMDPoints:(uint64_t)points pointCount:(void *)count aspectRatioForCentroid:(float)centroid error:;
@end

@implementation VNBoundingCircleAlgorithm

+ (id)boundingCircleForSIMDPoints:(uint64_t)points pointCount:(void *)count aspectRatioForCentroid:(float)centroid error:
{
  objc_opt_self();
  if (!a2)
  {
    if (count)
    {
      [VNError errorForInvalidArgumentWithLocalizedDescription:@"null points array"];
      *count = v14 = 0;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (points <= 0)
  {
    if (count)
    {
      points = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid points count %ld", points];
      *count = [VNError errorForInvalidArgumentWithLocalizedDescription:points];
    }

LABEL_13:
    v14 = 0;
    goto LABEL_18;
  }

  objc_opt_self();
  v20 = 0uLL;
  std::vector<CGPoint>::vector[abi:ne200100](&__p, points, &v20);
  v9 = __p;
  do
  {
    v10 = *a2++;
    *v9++ = vcvtq_f64_f32(v10);
    --points;
  }

  while (points);
  rep = std::chrono::system_clock::now().__d_.__rep_;
  v12 = rep + ((rep / 0x7FFFFFFF) | ((rep / 0x7FFFFFFF) << 31));
  if (v12 <= 1)
  {
    v12 = 1;
  }

  LODWORD(v20) = v12;
  std::__shuffle[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<CGPoint *>,std::__wrap_iter<CGPoint *>,std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(__p, v19, &v20);
  v13 = [VNBoundingCircleAlgorithm _boundingCircleForPoints:centroid aspectRatioForCentroid:?];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else if (count)
  {
    *count = [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot calculate minimum enclosing circle for the given set of points"];
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

LABEL_18:

  return v14;
}

+ (VNCircle)_boundingCircleForPoints:(float)points aspectRatioForCentroid:
{
  objc_opt_self();
  objc_opt_self();
  v4 = a2[1];
  v5 = v4 - *a2;
  v6 = v5 >> 4;
  [VNError VNAssert:v4 != *a2 log:@"Number of points in collection must be greater than zero"];
  if (v5 >> 4 == 2)
  {
    v10 = [[VNPoint alloc] initWithLocation:(*a2)[2], (*a2)[3]];
    v11 = [[VNVector alloc] initWithXComponent:**a2 - (*a2)[2] yComponent:(*a2)[1] - (*a2)[3]];
    v12 = [VNVector vectorByMultiplyingVector:v11 byScalar:0.5];
    v13 = [VNPoint pointByApplyingVector:v12 toPoint:v10];

    [v13 location];
    v7 = v14;
    v8 = v15;
    [(VNVector *)v11 length];
    v17 = v16;
    objc_opt_self();
    v9 = v17 * 0.5 + 0.00001;
  }

  else
  {
    if (v6 == 1)
    {
      v7 = **a2;
      v8 = (*a2)[1];
      objc_opt_self();
      v9 = 0.00001;
      goto LABEL_24;
    }

    objc_opt_self();
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Number of points in collection must be greater or equal than %lu", v5 >> 4];
    [VNError VNAssert:a2[1] - *a2 >= v5 log:v10];
    v63 = [[VNPoint alloc] initWithLocation:(*a2)[2], (*a2)[3]];
    v18 = [[VNVector alloc] initWithXComponent:**a2 - (*a2)[2] yComponent:(*a2)[1] - (*a2)[3]];
    v19 = [VNVector vectorByMultiplyingVector:v18 byScalar:0.5];
    v20 = [VNPoint pointByApplyingVector:v19 toPoint:v63];

    [v20 location];
    v7 = v21;
    v8 = v22;
    [(VNVector *)v18 length];
    v24 = v23;
    objc_opt_self();
    v9 = v24 * 0.5 + 0.00001;
    if (v6 >= 3)
    {
      v77 = 2;
      v65 = v5 >> 4;
      do
      {
        v25 = [VNVector alloc];
        [v20 x];
        v27 = v26;
        v28 = (*a2)[2 * v77];
        [v20 y];
        v67 = [(VNVector *)v25 initWithXComponent:v27 - v28 yComponent:v29 - (*a2)[2 * v77 + 1]];
        [(VNVector *)v67 length];
        if (v30 >= v9)
        {
          v66 = [[VNPoint alloc] initWithLocation:**a2, (*a2)[1]];
          v31 = [[VNVector alloc] initWithXComponent:(*a2)[2 * v77] - **a2 yComponent:(*a2)[2 * v77 + 1] - (*a2)[1]];
          v32 = [VNVector vectorByMultiplyingVector:v31 byScalar:0.5];
          v33 = [VNPoint pointByApplyingVector:v32 toPoint:v66];

          v74 = v33;
          [(VNPoint *)v33 location];
          v68 = v35;
          v69 = v34;
          [(VNVector *)v31 length];
          v37 = v36;
          objc_opt_self();
          v70 = v37 * 0.5 + 0.00001;
          v79 = 1;
          do
          {
            v38 = [VNVector alloc];
            [(VNPoint *)v74 x];
            v40 = v39;
            v41 = (*a2)[2 * v79];
            [(VNPoint *)v74 y];
            v73 = [(VNVector *)v38 initWithXComponent:v40 - v41 yComponent:v42 - (*a2)[2 * v79 + 1]];
            [(VNVector *)v73 length];
            if (v43 >= v70)
            {
              v72 = [[VNPoint alloc] initWithLocation:(*a2)[2 * v77], (*a2)[2 * v77 + 1]];
              v71 = [[VNVector alloc] initWithXComponent:(*a2)[2 * v79] - (*a2)[2 * v77] yComponent:(*a2)[2 * v79 + 1] - (*a2)[2 * v77 + 1]];
              v44 = [VNVector vectorByMultiplyingVector:0.5 byScalar:?];
              v45 = [VNPoint pointByApplyingVector:v44 toPoint:v72];

              [v45 location];
              v75 = v47;
              v76 = v46;
              [(VNVector *)v71 length];
              v49 = v48;
              objc_opt_self();
              v50 = 0;
              v78 = v49 * 0.5 + 0.00001;
              do
              {
                v51 = [VNVector alloc];
                [v45 x];
                v53 = v52;
                v54 = (*a2)[2 * v50];
                [v45 y];
                v80 = [(VNVector *)v51 initWithXComponent:v53 - v54 yComponent:v55 - (*a2)[2 * v50 + 1]];
                [(VNVector *)v80 length];
                if (v56 >= v78)
                {
                  operator new();
                }

                ++v50;
              }

              while (v50 != v79);
              if (v78 > 0.0)
              {
                v57 = [[VNPoint alloc] initWithLocation:v76, v75];

                v74 = v57;
                v69 = v76;
                v70 = v78;
                v68 = v75;
              }
            }

            ++v79;
          }

          while (v79 != v77);
          if (v70 > 0.0)
          {
            v58 = [[VNPoint alloc] initWithLocation:v69, v68];

            v20 = v58;
            v7 = v69;
            v9 = v70;
            v8 = v68;
          }

          v6 = v65;
        }

        ++v77;
      }

      while (v77 != v6);
    }
  }

LABEL_24:
  v59 = [VNCircle alloc];
  points = [[VNPoint alloc] initWithLocation:v7, v8 * points];
  v61 = [(VNCircle *)v59 initWithCenter:points radius:v9];

  return v61;
}

@end