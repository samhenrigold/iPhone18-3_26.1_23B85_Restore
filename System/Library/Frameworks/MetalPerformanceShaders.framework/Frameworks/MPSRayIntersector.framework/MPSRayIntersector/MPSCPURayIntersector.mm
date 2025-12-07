@interface MPSCPURayIntersector
- (MPSCPURayIntersector)init;
- (void)getIntersectionsOfType:(unint64_t)type rays:(void *)rays intersections:(void *)intersections rayCount:(unint64_t)count accelerationStructure:(id)structure;
@end

@implementation MPSCPURayIntersector

- (MPSCPURayIntersector)init
{
  v3.receiver = self;
  v3.super_class = MPSCPURayIntersector;
  result = [(MPSCPURayIntersector *)&v3 init];
  if (result)
  {
    result->_rayDataType = 0;
    result->_rayStride = 0;
    *&result->_intersectionDataType = xmmword_239E26FB0;
  }

  return result;
}

- (void)getIntersectionsOfType:(unint64_t)type rays:(void *)rays intersections:(void *)intersections rayCount:(unint64_t)count accelerationStructure:(id)structure
{
  rayStride = self->_rayStride;
  if (!rayStride)
  {
    rayStride = MPSRayDataTypeStride(self->_rayDataType);
  }

  intersectionStride = self->_intersectionStride;
  if (!intersectionStride)
  {
    intersectionStride = MPSIntersectionDataTypeStride(self->_intersectionDataType);
  }

  v13 = objc_msgSend_bvh(structure, a2, type, rays);
  if (count)
  {
    v18 = v13;
    v19 = 0;
    v20 = 1;
    do
    {
      v21 = 0;
      rayDataType = self->_rayDataType;
      v23 = 0;
      if (rayDataType > 1)
      {
        if (rayDataType == 2)
        {
          v32 = (v60 + v19 * rayStride);
          LODWORD(v17) = *v32;
          v28 = v32[1];
          v27 = v32[2];
          v21 = v32[3];
          LODWORD(v16) = v32[4];
          v26 = v32[5];
          v25 = v32[6];
          v24 = v32[7];
        }

        else
        {
          if (rayDataType == 3)
          {
            v30 = (v60 + v19 * rayStride);
            LODWORD(v17) = *v30;
            v28 = v30[1];
            v27 = v30[2];
            LODWORD(v16) = v30[3];
            v26 = v30[4];
            v25 = v30[5];
LABEL_15:
            v21 = 0xFFFFFFFFLL;
            v24 = 2139095040;
            goto LABEL_18;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          *&v16 = 0;
          v27 = 0;
          v28 = 0;
          *&v17 = 0;
        }
      }

      else
      {
        if (!rayDataType)
        {
          v31 = (v60 + v19 * rayStride);
          v17 = *v31;
          v16 = v31[1];
          v28 = HIDWORD(*v31);
          v27 = *(v31 + 1);
          v26 = HIDWORD(*(v31 + 2));
          v25 = *(v31 + 3);
          goto LABEL_15;
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        *&v16 = 0;
        v27 = 0;
        v28 = 0;
        *&v17 = 0;
        if (rayDataType == 1)
        {
          v29 = (v60 + v19 * rayStride);
          LODWORD(v17) = *v29;
          v28 = v29[1];
          v27 = v29[2];
          v23 = v29[3];
          LODWORD(v16) = v29[4];
          v26 = v29[5];
          v25 = v29[6];
          v24 = v29[7];
          v21 = 0xFFFFFFFFLL;
        }
      }

LABEL_18:
      v62 = *&v17;
      v63 = *&v16;
      v65 = 0;
      v66 = 0;
      v64 = 0;
      if (objc_msgSend_instancing(structure, v14, v15))
      {
        if (objc_msgSend_identityTransforms(structure, v33, v34))
        {
          v41.i32[0] = v28;
          v42.i32[0] = v27;
          LODWORD(v43) = v26;
          LODWORD(v44) = v25;
          v45.i32[0] = v23;
          v46.i32[0] = v24;
          if (type)
          {
            sub_239DE9BC4(*&v62, v41, v42, v63, v43, v44, v45, *v46.i64, v21, v18, &v66 + 1, &v66, &v65 + 1, &v65, &v64 + 1, &v64);
          }

          else
          {
            sub_239DE9618(*&v62, v41, v42, v63, v43, v44, v45, v46, v21, v18, &v66 + 1, &v66, &v65 + 1, &v65, &v64 + 1, &v64);
          }
        }

        else
        {
          v41.i32[0] = v28;
          v42.i32[0] = v27;
          LODWORD(v43) = v26;
          LODWORD(v44) = v25;
          v45.i32[0] = v23;
          v46.i32[0] = v24;
          if (type)
          {
            sub_239DE9090(*&v62, v41, v42, v63, v43, v44, v45, *v46.i64, v21, v18, &v66 + 1, &v66, &v65 + 1, &v65, &v64 + 1, &v64);
          }

          else
          {
            sub_239DE88C4(v62, v41, v42, v63, v43, v44, v45, *v46.i64, v21, v18, &v66 + 1, &v66, &v65 + 1, &v65, &v64 + 1, &v64);
          }
        }
      }

      else
      {
        v35.i32[0] = v28;
        v36.i32[0] = v27;
        LODWORD(v37) = v26;
        LODWORD(v38) = v25;
        v39.i32[0] = v23;
        v40.i32[0] = v24;
        if (type)
        {
          sub_239DE8554(*&v62, v35, v36, v63, v37, v38, v39, *v40.i64, v21, v18, &v66 + 1, &v66, &v65 + 1, &v65, &v64 + 1, &v64);
        }

        else
        {
          sub_239DE7FD0(*&v62, v35, v36, v63, v37, v38, v39, v40, v21, v18, &v66 + 1, &v66, &v65 + 1, &v65, &v64 + 1, &v64);
        }
      }

      intersectionDataType = self->_intersectionDataType;
      if (intersectionDataType <= 3)
      {
        if (intersectionDataType <= 1)
        {
          if (intersectionDataType)
          {
            if (intersectionDataType == 1)
            {
              v50 = intersections + v19 * intersectionStride;
              *v50 = HIDWORD(v66);
              if (!type)
              {
                v50[1] = v66;
              }
            }
          }

          else
          {
            *(intersections + v19 * intersectionStride) = HIDWORD(v66);
          }

          goto LABEL_59;
        }

        if (intersectionDataType == 2)
        {
          v54 = intersections + v19 * intersectionStride;
          *v54 = HIDWORD(v66);
          if (!type)
          {
            *(v54 + 1) = v66;
            *&v16 = __PAIR64__(HIDWORD(v64), v65);
            *(v54 + 1) = __PAIR64__(HIDWORD(v64), v65);
          }

          goto LABEL_59;
        }

        v51 = intersections + v19 * intersectionStride;
        *v51 = HIDWORD(v66);
        if (!type)
        {
          v52 = v66;
          v53 = v64;
LABEL_47:
          v51[1] = v52;
          v51[2] = v53;
        }
      }

      else if (intersectionDataType <= 5)
      {
        if (intersectionDataType == 4)
        {
          v48 = intersections + v19 * intersectionStride;
          *v48 = HIDWORD(v66);
          if (!type)
          {
            v55 = v66;
            v56 = v64;
            goto LABEL_55;
          }
        }

        else
        {
          v51 = intersections + v19 * intersectionStride;
          *v51 = HIDWORD(v66);
          if (!type)
          {
            v53 = HIDWORD(v65);
            v52 = v66;
            goto LABEL_47;
          }
        }
      }

      else
      {
        switch(intersectionDataType)
        {
          case 6:
            v48 = intersections + v19 * intersectionStride;
            *v48 = HIDWORD(v66);
            if (!type)
            {
              v56 = HIDWORD(v65);
              v55 = v66;
LABEL_55:
              *(v48 + 1) = v55;
              *(v48 + 2) = v56;
              goto LABEL_56;
            }

            break;
          case 7:
            v57 = intersections + v19 * intersectionStride;
            *v57 = HIDWORD(v66);
            if (!type)
            {
              v58 = HIDWORD(v65);
              v57[1] = v66;
              v57[2] = v58;
              v57[3] = v64;
            }

            break;
          case 8:
            v48 = intersections + v19 * intersectionStride;
            *v48 = HIDWORD(v66);
            if (!type)
            {
              v49 = HIDWORD(v65);
              *(v48 + 1) = v66;
              *(v48 + 2) = v49;
              *(v48 + 3) = v64;
LABEL_56:
              *&v16 = __PAIR64__(HIDWORD(v64), v65);
              *(v48 + 2) = __PAIR64__(HIDWORD(v64), v65);
            }

            break;
        }
      }

LABEL_59:
      v19 = v20++;
    }

    while (v19 < count);
  }
}

@end