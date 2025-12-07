@interface SCNNode(AVTExtension)
- (void)avt_enableSubdivisionOnHierarchyWithQuality:()AVTExtension animoji:;
- (void)avt_setGeometryPrimitiveRangesFromFaceIndexRanges:()AVTExtension;
@end

@implementation SCNNode(AVTExtension)

- (void)avt_enableSubdivisionOnHierarchyWithQuality:()AVTExtension animoji:
{
  if (avt_enableSubdivisionOnHierarchyWithQuality_animoji__onceToken != -1)
  {
    [SCNNode(AVTExtension) avt_enableSubdivisionOnHierarchyWithQuality:animoji:];
  }

  if (avt_enableSubdivisionOnHierarchyWithQuality_animoji__onceTokenPad != -1)
  {
    [SCNNode(AVTExtension) avt_enableSubdivisionOnHierarchyWithQuality:animoji:];
  }

  if ((avt_enableSubdivisionOnHierarchyWithQuality_animoji__disableSubdivision & 1) == 0)
  {
    [result enumerateHierarchyUsingBlock:{MEMORY[0x1E69E9820], 3221225472}];
  }
}

- (void)avt_setGeometryPrimitiveRangesFromFaceIndexRanges:()AVTExtension
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v8; i = (i + 1))
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(8 * i) count])
          {

            geometry = [self geometry];
            geometryElements = [geometry geometryElements];
            v13 = v6;
            [geometryElements enumerateObjectsUsingBlock:?];

            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    [self setGeometry:?];
  }

LABEL_12:
}

@end