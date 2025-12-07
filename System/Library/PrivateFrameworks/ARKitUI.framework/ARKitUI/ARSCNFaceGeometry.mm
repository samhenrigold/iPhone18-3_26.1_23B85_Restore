@interface ARSCNFaceGeometry
+ (ARSCNFaceGeometry)faceGeometryWithDevice:(id)device eyesFilled:(BOOL)filled mouthFilled:(BOOL)mouthFilled;
- (void)updateFromFaceGeometry:(ARFaceGeometry *)faceGeometry;
@end

@implementation ARSCNFaceGeometry

+ (ARSCNFaceGeometry)faceGeometryWithDevice:(id)device eyesFilled:(BOOL)filled mouthFilled:(BOOL)mouthFilled
{
  mouthFilledCopy = mouthFilled;
  filledCopy = filled;
  v31[3] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if ([MEMORY[0x277CE5288] isSupported])
  {
    v8 = objc_alloc(MEMORY[0x277CE5278]);
    v9 = [v8 initWithBlendShapes:MEMORY[0x277CBEC10]];
    v30 = [deviceCopy newBufferWithBytes:objc_msgSend(v9 length:"vertices") options:{16 * objc_msgSend(v9, "vertexCount"), 0}];
    v29 = [MEMORY[0x277CDBA78] geometrySourceWithBuffer:v30 vertexFormat:30 semantic:*MEMORY[0x277CDBB38] vertexCount:objc_msgSend(v9 dataOffset:"vertexCount") dataStride:0, 16];
    v28 = [deviceCopy newBufferWithBytes:objc_msgSend(v9 length:"textureCoordinates") options:{8 * objc_msgSend(v9, "textureCoordinateCount"), 0}];
    v27 = [MEMORY[0x277CDBA78] geometrySourceWithBuffer:v28 vertexFormat:29 semantic:*MEMORY[0x277CDBB30] vertexCount:objc_msgSend(v9 dataOffset:"textureCoordinateCount") dataStride:0, 8];
    v26 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v9 length:"triangleIndices") freeWhenDone:{6 * objc_msgSend(v9, "triangleCount"), 0}];
    v10 = [MEMORY[0x277CDBA70] geometryElementWithData:v26 primitiveType:0 primitiveCount:objc_msgSend(v9 bytesPerIndex:{"triangleCount"), 2}];
    v11 = [deviceCopy newBufferWithBytes:objc_msgSend(v9 length:"normals") options:{16 * objc_msgSend(v9, "normalCount"), 0}];
    v12 = [MEMORY[0x277CDBA78] geometrySourceWithBuffer:v11 vertexFormat:30 semantic:*MEMORY[0x277CDBB28] vertexCount:objc_msgSend(v9 dataOffset:"vertexCount") dataStride:0, 16];
    v25 = v10;
    v13 = [MEMORY[0x277CBEB18] arrayWithObject:v10];
    if (filledCopy)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&ar_faceTriangleIndicesLeftEye length:132 freeWhenDone:0];
      v15 = [MEMORY[0x277CDBA70] geometryElementWithData:v14 primitiveType:0 primitiveCount:22 bytesPerIndex:2];
      [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&ar_faceTriangleIndicesRightEye length:132 freeWhenDone:0];
      v17 = v16 = mouthFilledCopy;
      v18 = [MEMORY[0x277CDBA70] geometryElementWithData:v17 primitiveType:0 primitiveCount:22 bytesPerIndex:2];
      [v13 addObject:v15];
      [v13 addObject:v18];

      mouthFilledCopy = v16;
    }

    if (mouthFilledCopy)
    {
      v19 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&ar_faceTriangleIndicesMouth length:204 freeWhenDone:0];
      v20 = [MEMORY[0x277CDBA70] geometryElementWithData:v19 primitiveType:0 primitiveCount:34 bytesPerIndex:2];
      [v13 addObject:v20];
    }

    v31[0] = v29;
    v31[1] = v12;
    v31[2] = v27;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
    v22 = [v13 copy];
    v23 = [(SCNGeometry *)ARSCNFaceGeometry geometryWithSources:v21 elements:v22];

    [v23 setVertexBuffer:v30];
    [v23 setNormalBuffer:v11];
    [v23 setTextureBuffer:v28];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)updateFromFaceGeometry:(ARFaceGeometry *)faceGeometry
{
  v4 = faceGeometry;
  [(ARFaceGeometry *)v4 vertexCount];
  kdebug_trace();
  vertexBuffer = [(ARSCNFaceGeometry *)self vertexBuffer];
  memcpy([vertexBuffer contents], -[ARFaceGeometry vertices](v4, "vertices"), 16 * -[ARFaceGeometry vertexCount](v4, "vertexCount"));

  normalBuffer = [(ARSCNFaceGeometry *)self normalBuffer];
  contents = [normalBuffer contents];
  normals = [(ARFaceGeometry *)v4 normals];
  normalCount = [(ARFaceGeometry *)v4 normalCount];

  memcpy(contents, normals, 16 * normalCount);

  kdebug_trace();
}

@end