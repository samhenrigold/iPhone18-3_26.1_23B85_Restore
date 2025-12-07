@interface HDRProcessorEx
- (int)processWithMSRColorConfigs:(id *)configs MSRScaler:(__IOSurfaceAccelerator *)scaler InputSurfaces:(__IOSurface *)surfaces OutputSurfaces:(__IOSurface *)outputSurfaces CropRects:(id *)rects NumOfCropRectsInAGroup:(int *)group NumOfGroup:(int)ofGroup;
- (int64_t)generateMSRColorConfigExWithOperation:(unsigned int)operation InputSurfaces:(__IOSurface *)surfaces OutputSurfaces:(__IOSurface *)outputSurfaces Metadatas:(id *)metadatas Histograms:(RgbHistogram_t *)histograms Configs:(id *)configs NumOfGroup:(int)group MVImageLayout:(unsigned int)self0;
@end

@implementation HDRProcessorEx

- (int64_t)generateMSRColorConfigExWithOperation:(unsigned int)operation InputSurfaces:(__IOSurface *)surfaces OutputSurfaces:(__IOSurface *)outputSurfaces Metadatas:(id *)metadatas Histograms:(RgbHistogram_t *)histograms Configs:(id *)configs NumOfGroup:(int)group MVImageLayout:(unsigned int)self0
{
  groupCopy = group;
  v11 = -17000;
  if (group >= 1)
  {
    v17 = *&operation;
    while (1)
    {
      v19 = *surfaces;
      v20 = *outputSurfaces;
      v21 = *metadatas;
      v22 = *histograms;
      v25.receiver = self;
      v25.super_class = HDRProcessorEx;
      v23 = [(HDRProcessor *)&v25 generateMSRColorConfigWithOperation:v17 inputSurface:v19 outputSurface:v20 metadata:v21 histogram:v22 config:configs];
      if (v23 != -17000)
      {
        break;
      }

      ++configs;
      ++histograms;
      ++metadatas;
      ++outputSurfaces;
      ++surfaces;
      if (!--groupCopy)
      {
        return -17000;
      }
    }

    return v23;
  }

  return v11;
}

- (int)processWithMSRColorConfigs:(id *)configs MSRScaler:(__IOSurfaceAccelerator *)scaler InputSurfaces:(__IOSurface *)surfaces OutputSurfaces:(__IOSurface *)outputSurfaces CropRects:(id *)rects NumOfCropRectsInAGroup:(int *)group NumOfGroup:(int)ofGroup
{
  v27[3] = *MEMORY[0x277D85DE8];
  if (ofGroup < 1)
  {
    return 0;
  }

  configsCopy2 = configs;
  v12 = 0;
  v24 = *MEMORY[0x277D1AE28];
  v23 = *MEMORY[0x277D1AE58];
  v22 = *MEMORY[0x277D1AE90];
  while (1)
  {
    v13 = malloc_type_malloc(0x28uLL, 0x10000407607B2BCuLL);
    *v13 = 3;
    v13[1] = [configsCopy2[v12] bytes];
    *(v13 + 4) = [configsCopy2[v12] length];
    *(v13 + 28) = 0;
    *(v13 + 20) = 0;
    v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v13 length:40 freeWhenDone:1];
    v25 = v14;
    v26[0] = v24;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v27[0] = v15;
    v27[1] = MEMORY[0x277CBEC38];
    v26[1] = v23;
    v26[2] = v22;
    v27[2] = MEMORY[0x277CBEC28];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];

    if (rects)
    {
      if (group && rects[v12])
      {
        break;
      }
    }

    v19 = IOSurfaceAcceleratorTransformSurface();
    if (v19)
    {
      goto LABEL_14;
    }

LABEL_12:

    configsCopy2 = configs;
    if (++v12 == ofGroup)
    {
      return 0;
    }
  }

  if (group[v12] < 1)
  {
    goto LABEL_12;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = IOSurfaceAcceleratorTransformSurface();
    if (v19)
    {
      break;
    }

    ++v18;
    v17 += 48;
    if (v18 >= group[v12])
    {
      goto LABEL_12;
    }
  }

LABEL_14:

  return v19;
}

@end