@interface MTLSPathUnion
- (MTLSPathUnion)initWithPaths:(id)paths;
@end

@implementation MTLSPathUnion

- (MTLSPathUnion)initWithPaths:(id)paths
{
  v31 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v29.receiver = self;
  v29.super_class = MTLSPathUnion;
  v4 = [(MTLSPath *)&v29 init];
  if (v4)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = pathsCopy;
    v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v5)
    {
      indicesCount2 = 0;
      v21 = *v26;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v8 = 0;
          v9 = *(*(&v25 + 1) + 8 * i);
          while ([v9 instanceCount] > v8)
          {
            v10 = [v9 copy];
            instances = [v9 instances];
            [v10 collapseTransform:{*(instances + 80 * v8), *(instances + 80 * v8 + 16), *(instances + 80 * v8 + 32), *(instances + 80 * v8 + 48)}];
            [v10 clearInstances];
            -[MTLSPath appendControlPoints:count:](v4, "appendControlPoints:count:", [v10 controlPoints], objc_msgSend(v10, "controlPointsCount"));
            indices = [v10 indices];
            indices2 = [v10 indices];
            indicesCount = [v10 indicesCount];
            __p = 0;
            v23 = 0;
            v24 = 0;
            std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&__p, indices, indices2 + 2 * indicesCount, (indices2 + 2 * indicesCount - indices) >> 1);
            v15 = __p;
            if (v23 != __p)
            {
              v16 = (v23 - __p) >> 1;
              if (v16 <= 1)
              {
                v16 = 1;
              }

              v17 = __p;
              do
              {
                *v17++ += indicesCount2;
                --v16;
              }

              while (v16);
            }

            -[MTLSPath appendIndices:count:](v4, "appendIndices:count:", v15, [v10 indicesCount]);
            indicesCount2 = [(MTLSPath *)v4 indicesCount];
            -[MTLSPath appendPatchInfo:count:](v4, "appendPatchInfo:count:", [v10 patchInfo], objc_msgSend(v10, "patchInfoCount"));
            if (__p)
            {
              v23 = __p;
              operator delete(__p);
            }

            ++v8;
          }
        }

        v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v5);
    }
  }

  return v4;
}

@end