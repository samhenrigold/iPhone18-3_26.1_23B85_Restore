@interface C3DIOCreateNormalsIfAbsent
@end

@implementation C3DIOCreateNormalsIfAbsent

uint64_t ___C3DIOCreateNormalsIfAbsent_block_invoke(uint64_t a1, uint64_t a2)
{
  Geometry = C3DNodeGetGeometry(a2, a2);
  if (Geometry)
  {
    v4 = Geometry;
    if (!C3DGeometryOsdGetWantsGPUSubdivision(Geometry, v3))
    {
      Mesh = C3DGeometryGetMesh(v4, v5);
      if (Mesh)
      {
        v7 = Mesh;
        if (!C3DMeshGetNormalSource(Mesh, 0))
        {
          if (C3DMeshGetPositionSource(v7, 0))
          {
            v9 = C3DCreateNormalsWithMesh(v7, 0, 0);
            if (v9)
            {
              v10 = v9;
              ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(v7, 0, 0);
              C3DMeshSetSourceWithInputSet(v7, v10, 0, ChannelForSourceWithSemanticAtIndex);
              CFRelease(v10);
            }
          }
        }
      }
    }
  }

  return 0;
}

@end