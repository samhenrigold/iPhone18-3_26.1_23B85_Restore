@interface TDPhotoshopRenditionSpec
- ($56AE26BFB60993BDE24C7578AE3A2D7B)_subtractThrowawaySliceFromMetricsIfNeeded:(SEL)needed metrics:(CGRect)metrics renditionRect:(id *)rect;
- (BOOL)_sliceRectanglesForPSDImage:(id)image rowsPerRendition:(int *)rendition columnsPerRendition:(int *)perRendition originalColumnWidth:(int *)width newColumnWidth:(int *)columnWidth originalRowHeight:(int *)height newRowHeight:(int *)rowHeight originalColumnX:(int *)self0 originalRowY:(int *)self1 newRenditionSize:(id *)self2 newSliceCount:(int *)self3 renditionRect:(CGRect *)self4 throwawaySliceRect:(CGRect *)self5;
- (BOOL)updatePackingPropertiesWithDocument:(id)document;
- (id)copyDataFromAttributes;
- (id)createCSIRepresentationFromGradientPSDImage:(id)image withCompression:(BOOL)compression colorSpaceID:(unint64_t)d;
- (id)createCSIRepresentationFromPSDImage:(id)image withCompression:(BOOL)compression edgeMetricsMask:(id)mask textMetricsMask:(id)metricsMask baselineMetricsMask:(id)baselineMetricsMask auxiliary1MetricsMask:(id)auxiliary1MetricsMask auxiliary2MetricsMask:(id)auxiliary2MetricsMask colorSpaceID:(unint64_t)self0 allowsPaletteImageCompression:(BOOL)self1 allowsHevcCompression:(BOOL)self2 allowsDeepmapImageCompression:(BOOL)self3 allowsDeepmap2ImageCompression:(BOOL)self4;
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
- (int)_layerIndexInPSDImage:(id)image;
- (void)copyAttributesInto:(id)into;
- (void)dealloc;
- (void)drawPackableRenditionInContext:(CGContext *)context withDocument:(id)document;
- (void)setAttributesFromCopyData:(id)data;
@end

@implementation TDPhotoshopRenditionSpec

- (void)dealloc
{
  [(TDPhotoshopRenditionSpec *)self setHistogram:0];
  v3.receiver = self;
  v3.super_class = TDPhotoshopRenditionSpec;
  [(TDPhotoshopRenditionSpec *)&v3 dealloc];
}

- (BOOL)_sliceRectanglesForPSDImage:(id)image rowsPerRendition:(int *)rendition columnsPerRendition:(int *)perRendition originalColumnWidth:(int *)width newColumnWidth:(int *)columnWidth originalRowHeight:(int *)height newRowHeight:(int *)rowHeight originalColumnX:(int *)self0 originalRowY:(int *)self1 newRenditionSize:(id *)self2 newSliceCount:(int *)self3 renditionRect:(CGRect *)self4 throwawaySliceRect:(CGRect *)self5
{
  selfCopy = self;
  production = [(TDPhotoshopRenditionSpec *)self production];
  identifier = [(TDThemeConstant *)[(TDRenditionSpec *)selfCopy renditionType] identifier];
  v103 = identifier;
  v94 = [(TDPhotoshopRenditionSpec *)selfCopy _layerIndexInPSDImage:image];
  v97 = [objc_msgSend(production "columnCount")];
  v102 = [-[TDPhotoshopRenditionSpec valueForKey:](selfCopy valueForKey:{@"row", "intValue"}];
  v101 = [-[TDPhotoshopRenditionSpec valueForKey:](selfCopy valueForKey:{@"column", "intValue"}];
  [image size];
  v23 = v22;
  v100 = selfCopy;
  imageCopy = image;
  if (identifier <= 2)
  {
    switch(identifier)
    {
      case 0:
        if ([production renditionSubtype])
        {
          v93 = [objc_msgSend(production "renditionSubtype")];
        }

        else
        {
          v93 = 10;
        }

        columnWidthCopy3 = columnWidth;
        renditionCopy4 = rendition;
        if ([image numberOfSlices] == 10)
        {
          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"One part rendition is being distilled with artwork that has more than one slice (%d). Either the rendition is cataloged incorrectly, or the artwork has the wrong number of slices %@", 9, -[TDPhotoshopRenditionSpec debugDescription](selfCopy, "debugDescription"), v87, v88, v91];
          goto LABEL_137;
        }

        goto LABEL_35;
      case 1:
        v24 = 22;
        goto LABEL_33;
      case 2:
        v24 = 25;
        goto LABEL_33;
    }

LABEL_14:
    v24 = -1;
    goto LABEL_33;
  }

  switch(identifier)
  {
    case 3:
      if ([production renditionSubtype])
      {
        v93 = [objc_msgSend(production "renditionSubtype")];
LABEL_34:
        columnWidthCopy3 = columnWidth;
        renditionCopy4 = rendition;
LABEL_35:
        *perRendition = [TDPhotoshopElementProduction sliceColumnsPerRendition:identifier];
        *renditionCopy4 = [TDPhotoshopElementProduction sliceRowsPerRendition:identifier];
        LODWORD(v29) = *perRendition;
        goto LABEL_36;
      }

      v24 = 31;
LABEL_33:
      v93 = v24;
      goto LABEL_34;
    case 5:
      v25 = 40;
      break;
    case 8:
      v25 = 50;
      break;
    default:
      goto LABEL_14;
  }

  v93 = v25;
  v26 = [objc_msgSend(production "columnCount")];
  v27 = [objc_msgSend(production "rowCount")];
  v28 = [image numberOfSlices] - 1;
  v29 = (v28 / (v27 * v26));
  if (v28 != v27 * v26 * v29)
  {
    -[TDPhotoshopRenditionSpec _logError:](selfCopy, "_logError:", [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Number of slices per rendition %f is not a whole number!", v28 / (v27 * v26)]);
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Slice count %d rendition rows %d rendition columns %d in %@", v28, v27, v26, -[TDPhotoshopRenditionSpec debugDescription](selfCopy, "debugDescription"), v91];
    goto LABEL_137;
  }

  if (v28 < 1)
  {
    v31 = 0;
    renditionCopy4 = rendition;
  }

  else
  {
    heightCopy = height;
    v31 = 0;
    v32 = 0;
    v33 = v28;
    v34 = v28 - 1;
    renditionCopy4 = rendition;
    while (1)
    {
      [imageCopy boundsForSlice:(v31 + 1)];
      if (v31)
      {
        if (v36 != v32)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v32 = v36;
      }

      if (v34 == v31)
      {
        break;
      }

      ++v31;
    }

    v31 = v33;
LABEL_28:
    selfCopy = v100;
    height = heightCopy;
  }

  if (v31 == v26)
  {
    v85 = v29;
    LODWORD(v29) = 1;
  }

  else
  {
    if (v31 != v29 * v26)
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Inconsistent many part structure. Found %ld actual slice columns, %d slices per rendition and %d rendition column count in %@", v31, v29, v26, -[TDPhotoshopRenditionSpec debugDescription](selfCopy, "debugDescription"), v91];
      goto LABEL_137;
    }

    v85 = 1;
  }

  *renditionCopy4 = v85;
  *perRendition = v29;
  columnWidthCopy3 = columnWidth;
LABEL_36:
  if (v29 >= 1)
  {
    v39 = 0;
    do
    {
      width[v39] = -1;
      columnWidthCopy3[v39++] = -1;
    }

    while (v39 < *perRendition);
  }

  v40 = imageCopy;
  if (*renditionCopy4 >= 1)
  {
    v41 = 0;
    do
    {
      height[v41] = -1;
      rowHeight[v41++] = -1;
    }

    while (v41 < *renditionCopy4);
  }

  *count = 0;
  v42 = *MEMORY[0x277CCA868];
  v43 = *(MEMORY[0x277CCA868] + 16);
  rect->origin = *MEMORY[0x277CCA868];
  rect->size = v43;
  sliceRect->origin = v42;
  sliceRect->size = v43;
  v44 = *perRendition;
  if (*perRendition < 1)
  {
    return 1;
  }

  v45 = 0;
  v46 = v103 == 3 && v93 == 31;
  v47 = v46;
  if (v103 == 1 && v93 == 22)
  {
    v47 = 1;
  }

  v92 = v47;
  LODWORD(v49) = *renditionCopy4;
  perRenditionCopy = perRendition;
  while (v49 < 1)
  {
LABEL_124:
    ++v45;
    result = 1;
    if (v45 >= v44)
    {
      return result;
    }
  }

  v50 = 0;
  v52 = v103 == 1 && v45 == 2;
  v98 = v52;
  while (1)
  {
    widthCopy = width;
    LODWORD(v86) = v97;
    v54 = [TDPhotoshopRenditionSpec psdSliceNumberForRenditionRow:selfCopy sliceRow:"psdSliceNumberForRenditionRow:sliceRow:renditionColumn:sliceColumn:rowsPerRendition:columnsPerRendition:renditionColumnCount:" renditionColumn:v102 sliceColumn:v50 rowsPerRendition:v101 columnsPerRendition:v45 renditionColumnCount:v86];
    if ((v54 & 0x80000000) != 0 || v54 >= [v40 numberOfSlices])
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Rendition slice number %d for row %d column %d is greater than or equal to slice count %d in %@", v54, v50, v45, objc_msgSend(v40, "numberOfSlices"), -[TDPhotoshopRenditionSpec debugDescription](selfCopy, "debugDescription")];
      goto LABEL_137;
    }

    [v40 boundsForSlice:v54];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v105.origin.x = v55;
    v105.origin.y = v57;
    v105.size.width = v59;
    v105.size.height = v61;
    *rect = NSUnionRect(*rect, v105);
    if ((v56 & 0x80000000) != 0 || (v58 & 0x80000000) != 0)
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Slice at row %d column %d has negative x origin %f and/or y origin %f in %@", v50, v45, *&v56, *&v58, -[TDPhotoshopRenditionSpec debugDescription](selfCopy, "debugDescription")];
      goto LABEL_137;
    }

    if (v60 == 0.0 || v62 == 0.0)
    {
      break;
    }

    heightCopy2 = height;
    v64 = rint(v60);
    v65 = v64;
    v66 = rint(v62);
    v67 = v66;
    v68 = v67;
    if (v64 != v65 || v66 != v68)
    {
      -[TDPhotoshopRenditionSpec _logWarning:](selfCopy, "_logWarning:", [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Slice image size w:%d h:%d does not match slice bounds w:%f h:%f in %@", v65, v67, *&v60, *&v62, -[TDPhotoshopRenditionSpec debugDescription](selfCopy, "debugDescription")]);
    }

    if (v65)
    {
      v70 = v67 == 0;
    }

    else
    {
      v70 = 1;
    }

    if (v70)
    {
      -[TDPhotoshopRenditionSpec _logWarning:](selfCopy, "_logWarning:", [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Zero width or height slice at row %d column %d within rendition row %d column %d in %@", v50, v45, v102, v101, -[TDPhotoshopRenditionSpec debugDescription](selfCopy, "debugDescription")]);
    }

    v71 = v103 == 2 && v50 == 2;
    v72 = v71;
    v73 = v98;
    if (v71)
    {
      v73 = 1;
    }

    width = widthCopy;
    if (v73)
    {
      sliceRect->origin.x = v56;
      sliceRect->origin.y = v58;
      sliceRect->size.width = v60;
      sliceRect->size.height = v62;
    }

    else
    {
      ++*count;
    }

    v74 = widthCopy[v45];
    if (v74 == -1)
    {
      widthCopy[v45] = v65;
      x[v45] = v56;
      if (v98)
      {
        columnWidth[v45] = 0;
      }

      else
      {
        if (v65 <= 8)
        {
          v77 = 8;
        }

        else
        {
          v77 = v65;
        }

        if (((v45 == 1) & v92) == 0)
        {
          v77 = v65;
        }

        columnWidth[v45] = v77;
        size->var0 += v77;
      }
    }

    else if (v74 != v65)
    {
      v75 = MEMORY[0x277CCACA8];
      v89 = [(TDPhotoshopRenditionSpec *)v100 debugDescription];
      v76 = v75;
      width = widthCopy;
      -[TDPhotoshopRenditionSpec _logWarning:](v100, "_logWarning:", [v76 stringWithFormat:@"WARNING: Slice geometry inconsistency. Column width for slice at row:%d column:%d layer:%d does not match previous slices in column in %@", v50, v45, v94, v89]);
    }

    height = heightCopy2;
    v78 = heightCopy2[v50];
    if (v78 == -1)
    {
      heightCopy2[v50] = v67;
      y[v50] = (v23 - v58 - v68);
      if (v72)
      {
        rowHeight[2] = 0;
      }

      else
      {
        if (v67 <= 8)
        {
          v81 = 8;
        }

        else
        {
          v81 = v67;
        }

        if (v93 != 25 || v50 != 1 || v103 != 2)
        {
          v81 = v67;
        }

        size->var1 += v81;
        rowHeight[v50] = v81;
      }

      selfCopy = v100;
      v40 = imageCopy;
    }

    else
    {
      v46 = v78 == v67;
      selfCopy = v100;
      v40 = imageCopy;
      if (!v46)
      {
        v79 = MEMORY[0x277CCACA8];
        v90 = [(TDPhotoshopRenditionSpec *)v100 debugDescription];
        v80 = v79;
        width = widthCopy;
        -[TDPhotoshopRenditionSpec _logWarning:](v100, "_logWarning:", [v80 stringWithFormat:@"WARNING: Slice geometry inconsistency. Row height for slice at row:%d column:%d layer:%d does not match previous slices in row in %@", v50, v45, v94, v90]);
      }
    }

    ++v50;
    v49 = *rendition;
    if (v50 >= v49)
    {
      v44 = *perRenditionCopy;
      goto LABEL_124;
    }
  }

  v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Slice bounds height %f or width %f is zero in %@", *&v60, *&v62, -[TDPhotoshopRenditionSpec debugDescription](selfCopy, "debugDescription"), v88, v91];
LABEL_137:
  [(TDPhotoshopRenditionSpec *)selfCopy _logError:v37];
  return 0;
}

- ($56AE26BFB60993BDE24C7578AE3A2D7B)_subtractThrowawaySliceFromMetricsIfNeeded:(SEL)needed metrics:(CGRect)metrics renditionRect:(id *)rect
{
  height = a6.size.height;
  width = a6.size.width;
  v9 = metrics.size.height;
  v10 = metrics.size.width;
  y = metrics.origin.y;
  x = metrics.origin.x;
  result = NSEqualRects(metrics, *MEMORY[0x277CCA868]);
  if ((result & 1) == 0)
  {
    v15 = rect->var0.width;
    v16 = rect->var0.height;
    v17 = rect->var1.width;
    v18 = rect->var1.height;
    if (v9 == height)
    {
      if (v15 >= x + v10)
      {
        v15 = v15 - v10;
      }

      if (width - v17 <= x)
      {
        v17 = v17 - v10;
      }
    }

    else if (v10 == width)
    {
      if (v16 >= height - y)
      {
        v16 = v16 - v9;
      }

      if (v18 >= y + v9)
      {
        v18 = v18 - v9;
      }
    }

    rect->var0.width = v15;
    rect->var0.height = v16;
    rect->var1.width = v17;
    rect->var1.height = v18;
  }

  var1 = rect->var1;
  retstr->var0 = rect->var0;
  retstr->var1 = var1;
  retstr->var2 = rect->var2;
  return result;
}

- (id)createCSIRepresentationFromPSDImage:(id)image withCompression:(BOOL)compression edgeMetricsMask:(id)mask textMetricsMask:(id)metricsMask baselineMetricsMask:(id)baselineMetricsMask auxiliary1MetricsMask:(id)auxiliary1MetricsMask auxiliary2MetricsMask:(id)auxiliary2MetricsMask colorSpaceID:(unint64_t)self0 allowsPaletteImageCompression:(BOOL)self1 allowsHevcCompression:(BOOL)self2 allowsDeepmapImageCompression:(BOOL)self3 allowsDeepmap2ImageCompression:(BOOL)self4
{
  compressionCopy = compression;
  v103 = *MEMORY[0x277D85DE8];
  v95 = 0;
  v96 = 0;
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  production = [(TDPhotoshopRenditionSpec *)self production];
  identifier = [(TDThemeConstant *)[(TDRenditionSpec *)self renditionType] identifier];
  v22 = [(TDPhotoshopRenditionSpec *)self _layerIndexInPSDImage:image];
  v80 = [objc_msgSend(production "columnCount")];
  v79 = [-[TDPhotoshopRenditionSpec valueForKey:](self valueForKey:{@"row", "intValue"}];
  v78 = [-[TDPhotoshopRenditionSpec valueForKey:](self valueForKey:{@"column", "intValue"}];
  [image size];
  v23 = 0;
  if (![(TDPhotoshopRenditionSpec *)self _sliceRectanglesForPSDImage:image rowsPerRendition:&v95 columnsPerRendition:&v95 + 4 originalColumnWidth:v102 newColumnWidth:v101 originalRowHeight:v100 newRowHeight:v99 originalColumnX:v98 originalRowY:v97 newRenditionSize:&v96 newSliceCount:&v94 renditionRect:&v92 throwawaySliceRect:&v90])
  {
    return v23;
  }

  baselineMetricsMaskCopy = baselineMetricsMask;
  imageCopy = image;
  v24 = compressionCopy;
  if ([production renditionSubtype])
  {
    identifier = [objc_msgSend(production "renditionSubtype")];
  }

  auxiliary1MetricsMaskCopy = auxiliary1MetricsMask;
  v26 = identifier;
  if ([(TDPhotoshopRenditionSpec *)self parentRendition])
  {
    [(TDRenditionSpec *)self packedPoint];
    v28 = v27;
    v30 = v29;
    v31 = objc_alloc(MEMORY[0x277D02668]);
    v32 = [v31 initWithInternalReferenceRect:v26 layout:{v28, v30, v96, SHIDWORD(v96)}];
    v33 = objc_alloc_init(MEMORY[0x277D026D0]);
    v34 = [objc_alloc(MEMORY[0x277D026C8]) initWithKeyList:{objc_msgSend(objc_msgSend(-[TDPhotoshopRenditionSpec parentRendition](self, "parentRendition"), "keySpec"), "key")}];
    [v33 setReferenceKey:v34];
    [v32 addLayerReference:v33];
  }

  else
  {
    v35 = objc_alloc(MEMORY[0x277D02668]);
    v32 = [v35 initWithCanvasSize:v94 sliceCount:v26 layout:{v96, SHIDWORD(v96)}];
  }

  [v32 setName:{objc_msgSend(objc_msgSend(production, "asset"), "name")}];
  [v32 setColorSpaceID:d];
  if ([objc_msgSend(objc_msgSend(production "asset")])
  {
    [v32 setPixelFormat:1195456544];
  }

  [v32 setIsTintable:{-[TDPhotoshopRenditionSpec isTintable](self, "isTintable")}];
  [v32 setAllowsDeepmapImageCompression:deepmapImageCompression];
  [v32 setAllowsDeepmap2ImageCompression:deepmap2ImageCompression];
  [v32 setRenditionProperties:{-[TDRenditionSpec propertiesAsDictionary](self, "propertiesAsDictionary")}];
  v71 = production;
  [v32 setScaleFactor:{objc_msgSend(objc_msgSend(production, "asset"), "scaleFactor")}];
  v36 = MEMORY[0x277D02650];
  v37 = *MEMORY[0x277D02650];
  v38 = *(MEMORY[0x277D02650] + 16);
  v88 = *MEMORY[0x277D02650];
  v89 = v38;
  v39 = auxiliary1MetricsMaskCopy;
  if (mask)
  {
    v40 = v24;
    if (image)
    {
      v72 = v37;
      v69 = v38;
      objc_msgSend_metricsInMask_forRect_(image, v92, v93);
      v38 = v69;
      v37 = v72;
      v41 = *(&v87 + 1);
      v42 = v87;
    }

    else
    {
      v86 = 0u;
      v87 = 0u;
      v85 = 0u;
      v41 = 0;
      v42 = 0;
    }

    v43 = baselineMetricsMaskCopy;
    metricsMaskCopy2 = metricsMask;
    v88 = v85;
    v89 = v86;
  }

  else
  {
    v42 = *(MEMORY[0x277D02650] + 32);
    v41 = *(MEMORY[0x277D02650] + 40);
    v40 = v24;
    v43 = baselineMetricsMaskCopy;
    metricsMaskCopy2 = metricsMask;
  }

  v85 = v88;
  v86 = v89;
  *&v87 = v42;
  *(&v87 + 1) = v41;
  v82 = v37;
  v83 = v38;
  v84 = *(v36 + 32);
  if (CSIEqualMetrics())
  {
    v41 = *(&v93 + 1);
    v42 = v93;
    v88 = 0u;
    v89 = 0u;
  }

  v85 = v88;
  v86 = v89;
  *&v87 = v42;
  *(&v87 + 1) = v41;
  [v32 addMetrics:&v85];
  if (metricsMaskCopy2)
  {
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    if (image)
    {
      objc_msgSend_metricsInMask_forRect_(image, v92, v93);
    }

    v82 = v85;
    v83 = v86;
    v84 = v87;
    [v32 addMetrics:&v82];
  }

  if (v43)
  {
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    if (image)
    {
      objc_msgSend_metricsInMask_forRect_(image, v92, v93);
    }

    v82 = v85;
    v83 = v86;
    v84 = v87;
    [v32 addMetrics:&v82];
  }

  if (v39)
  {
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    if (image)
    {
      objc_msgSend_metricsInMask_forRect_(image, v92, v93);
    }

    if (self)
    {
      objc_msgSend__subtractThrowawaySliceFromMetricsIfNeeded_metrics_renditionRect_(self, v90, v91, v92, v93);
    }

    else
    {
      v83 = 0u;
      v84 = 0u;
      v82 = 0u;
    }

    v85 = v82;
    v86 = v83;
    v87 = v84;
    [v32 addMetrics:&v82];
  }

  if (auxiliary2MetricsMask)
  {
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    if (image)
    {
      objc_msgSend_metricsInMask_forRect_(image, v92, v93);
    }

    if (self)
    {
      objc_msgSend__subtractThrowawaySliceFromMetricsIfNeeded_metrics_renditionRect_(self, v90, v91, v92, v93);
    }

    else
    {
      v83 = 0u;
      v84 = 0u;
      v82 = 0u;
    }

    v85 = v82;
    v86 = v83;
    v87 = v84;
    [v32 addMetrics:&v82];
  }

  v45 = [image layerRefAtIndex:v22];
  [v32 setBlendMode:{objc_msgSend(v45, "blendMode")}];
  [v45 opacity];
  [v32 setOpacity:?];
  parentRendition = [(TDPhotoshopRenditionSpec *)self parentRendition];
  if (parentRendition)
  {
    v77 = v32;
    v70 = v40;
    [image boundsAtLayer:v22];
    v46 = 0;
    v73 = 0;
  }

  else
  {
    v47 = objc_alloc(MEMORY[0x277D02660]);
    v48 = [v47 initWithPixelWidth:v96 pixelHeight:HIDWORD(v96)];
    [v32 addBitmap:v48];
    [v48 setPixelFormat:objc_msgSend(v32, "pixelFormat")];
    bitmapContext = [v48 bitmapContext];
    if (!bitmapContext)
    {

      [(TDPhotoshopRenditionSpec *)self _logError:@"ERROR: Could not create bitmap context"];
      return 0;
    }

    v46 = bitmapContext;
    v73 = v48;
    v77 = v32;
    v70 = v40;
    [image boundsAtLayer:v22];
    CGContextSetCompositeOperation();
    CGContextSetAlpha(v46, 1.0);
  }

  v50 = HIDWORD(v95);
  if (SHIDWORD(v95) >= 1)
  {
    v51 = 0;
    v52 = 0.0;
    do
    {
      v53 = v101[v51];
      if (v53)
      {
        v54 = v95;
        if (v95 >= 1)
        {
          v55 = 0.0;
          while (1)
          {
            v56 = v99[v54 - 1];
            if (v56)
            {
              v57 = v101[v51];
              LODWORD(v68) = v80;
              v58 = [(TDPhotoshopRenditionSpec *)self psdSliceNumberForRenditionRow:v79 sliceRow:v54 - 1 renditionColumn:v78 sliceColumn:v51 rowsPerRendition:v95 columnsPerRendition:HIDWORD(v95) renditionColumnCount:v68];
              LOBYTE(v85) = 0;
              v59 = [imageCopy imageFromSlice:v58 atLayer:v22 isEmptyImage:&v85];
              if (!v59)
              {
                -[TDPhotoshopRenditionSpec _logError:](self, "_logError:", [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Unable to extract Photoshop image: %@\nThings to check:\n1. Are any Photoshop layers missing when compared to the reference file?\n2. Are any of the layer names not matching the layer names in the reference file (case sensitive)?\n3. Are there the same number of slices as in the reference file?\n", objc_msgSend(objc_msgSend(v71, "asset"), "name")]);

                return 0;
              }

              v60 = v56;
              if (!parentRendition)
              {
                v61 = v59;
                CGContextSaveGState(v46);
                v104.origin.x = v52;
                v104.origin.y = v55;
                v104.size.width = v57;
                v104.size.height = v56;
                CGContextClipToRect(v46, v104);
                v62 = v102[v51];
                v63 = vcvtpd_s64_f64(v101[v51] / v62);
                if (v63 >= 1)
                {
                  v64 = v52;
                  do
                  {
                    image = [v61 image];
                    v105.origin.x = v64;
                    v105.origin.y = v55;
                    v105.size.width = v62;
                    v105.size.height = v60;
                    CGContextDrawImage(v46, v105, image);
                    v64 = v64 + v62;
                    --v63;
                  }

                  while (v63);
                }

                CGContextRestoreGState(v46);
              }

              [v77 addSliceRect:{v52, v55, v57, v60}];
              v55 = v55 + v99[v54 - 1];
            }

            if (v54-- <= 1)
            {
              v53 = v101[v51];
              v50 = HIDWORD(v95);
              break;
            }
          }
        }

        v52 = v52 + v53;
      }

      ++v51;
    }

    while (v51 < v50);
  }

  [v77 setExcludedFromContrastFilter:{objc_msgSend(objc_msgSend(-[TDPhotoshopRenditionSpec production](self, "production"), "valueForKey:", @"isExcludedFromFilter", "BOOLValue")}];
  [v77 setAllowsPaletteImageCompression:imageCompression];
  [v77 setAllowsHevcCompression:hevcCompression];
  [v77 setAllowsDeepmapImageCompression:deepmapImageCompression];
  [v77 setAllowsDeepmap2ImageCompression:deepmap2ImageCompression];
  v23 = [v77 CSIRepresentationWithCompression:v70];

  return v23;
}

- (id)createCSIRepresentationFromGradientPSDImage:(id)image withCompression:(BOOL)compression colorSpaceID:(unint64_t)d
{
  dCopy = d;
  compressionCopy = compression;
  production = [(TDPhotoshopRenditionSpec *)self production];
  v10 = objc_alloc(MEMORY[0x277D02668]);
  v11 = [v10 initWithCanvasSize:0 sliceCount:6 layout:{*MEMORY[0x277CCA870], *(MEMORY[0x277CCA870] + 8)}];
  [v11 setName:{objc_msgSend(objc_msgSend(production, "asset"), "name")}];
  [v11 setColorSpaceID:dCopy];
  [v11 setIsTintable:{-[TDPhotoshopRenditionSpec isTintable](self, "isTintable")}];
  [v11 setScaleFactor:{objc_msgSend(objc_msgSend(production, "asset"), "scaleFactor")}];
  v12 = [(TDPhotoshopRenditionSpec *)self _layerIndexInPSDImage:image];
  v13 = [image layerRefAtIndex:v12];
  [v13 opacity];
  [v11 setOpacity:?];
  [v11 setBlendMode:{objc_msgSend(v13, "blendMode")}];
  [v11 setGradient:{objc_msgSend(image, "gradientAtLayer:", v12)}];
  v14 = [v11 CSIRepresentationWithCompression:compressionCopy];

  return v14;
}

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  compressionCopy = compression;
  production = [(TDPhotoshopRenditionSpec *)self production];
  v10 = [production psdImageRefWithDocument:document];
  if ([(TDThemeConstant *)[(TDRenditionSpec *)self renditionType] identifier]== 6)
  {

    return [(TDPhotoshopRenditionSpec *)self createCSIRepresentationFromGradientPSDImage:v10 withCompression:compressionCopy colorSpaceID:d];
  }

  else
  {
    v20 = [production edgeMetricsMaskWithDocument:document];
    v19 = [production textMetricsMaskWithDocument:document];
    v18 = [production baselineMetricsMaskWithDocument:document];
    v12 = [production auxiliary1MetricsMaskWithDocument:document];
    v13 = [production auxiliary2MetricsMaskWithDocument:document];
    shouldAllowPaletteImageCompression = [document shouldAllowPaletteImageCompression];
    shouldAllowHevcCompression = [document shouldAllowHevcCompression];
    shouldAllowDeepmapCompression = [document shouldAllowDeepmapCompression];
    BYTE3(v17) = [document shouldAllowDeepmap2Compression];
    BYTE2(v17) = shouldAllowDeepmapCompression;
    BYTE1(v17) = shouldAllowHevcCompression;
    LOBYTE(v17) = shouldAllowPaletteImageCompression;
    return [TDPhotoshopRenditionSpec createCSIRepresentationFromPSDImage:"createCSIRepresentationFromPSDImage:withCompression:edgeMetricsMask:textMetricsMask:baselineMetricsMask:auxiliary1MetricsMask:auxiliary2MetricsMask:colorSpaceID:allowsPaletteImageCompression:allowsHevcCompression:allowsDeepmapImageCompression:allowsDeepmap2ImageCompression:" withCompression:v10 edgeMetricsMask:compressionCopy textMetricsMask:v20 baselineMetricsMask:v19 auxiliary1MetricsMask:v18 auxiliary2MetricsMask:v12 colorSpaceID:v13 allowsPaletteImageCompression:d allowsHevcCompression:v17 allowsDeepmapImageCompression:? allowsDeepmap2ImageCompression:?];
  }
}

- (int)_layerIndexInPSDImage:(id)image
{
  if (_layerIndexInPSDImage__pred != -1)
  {
    [TDPhotoshopRenditionSpec _layerIndexInPSDImage:];
  }

  if ([(TDPhotoshopRenditionSpec *)self photoshopLayer]&& (_layerIndexInPSDImage__usingOldStylePSDFiles & 1) == 0)
  {
    v7 = [-[TDPhotoshopRenditionSpec photoshopLayer](self "photoshopLayer")];

    return [image absoluteLayerIndexFromLayerNames:v7];
  }

  else
  {
    v5 = [(TDPhotoshopRenditionSpec *)self valueForKey:@"layer"];

    return [v5 unsignedIntValue];
  }
}

void *__50__TDPhotoshopRenditionSpec__layerIndexInPSDImage___block_invoke()
{
  result = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  _layerIndexInPSDImage__usingOldStylePSDFiles = result;
  return result;
}

- (void)copyAttributesInto:(id)into
{
  [into setValue:-[TDPhotoshopRenditionSpec valueForKey:](self forKey:{"valueForKey:", @"row", @"row"}];
  [into setValue:-[TDPhotoshopRenditionSpec valueForKey:](self forKey:{"valueForKey:", @"column", @"column"}];
  [into setValue:-[TDPhotoshopRenditionSpec valueForKey:](self forKey:{"valueForKey:", @"layer", @"layer"}];
  [into setValue:-[TDPhotoshopRenditionSpec valueForKey:](self forKey:{"valueForKey:", @"isTintable", @"isTintable"}];
  preserveForArchiveOnly = [(TDPhotoshopRenditionSpec *)self preserveForArchiveOnly];

  [into setPreserveForArchiveOnly:preserveForArchiveOnly];
}

- (id)copyDataFromAttributes
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v4 = [(TDPhotoshopRenditionSpec *)self valueForKey:@"row"];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"row"];
  }

  v5 = [(TDPhotoshopRenditionSpec *)self valueForKey:@"column"];
  if (v5)
  {
    [v3 setObject:v5 forKey:@"column"];
  }

  v6 = [(TDPhotoshopRenditionSpec *)self valueForKey:@"layer"];
  if (v6)
  {
    [v3 setObject:v6 forKey:@"layer"];
  }

  keySpec = [(TDPhotoshopRenditionSpec *)self keySpec];
  if (keySpec)
  {
    [v3 setObject:objc_msgSend(keySpec forKey:{"copyDataFromAttributes"), @"keySpec"}];
  }

  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:200 options:0 error:0];

  return [v8 copy];
}

- (void)setAttributesFromCopyData:(id)data
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:0];
  v5 = [v4 objectForKey:@"row"];
  if (v5)
  {
    [(TDPhotoshopRenditionSpec *)self setValue:v5 forKey:@"row"];
  }

  v6 = [v4 objectForKey:@"column"];
  if (v6)
  {
    [(TDPhotoshopRenditionSpec *)self setValue:v6 forKey:@"column"];
  }

  v7 = [v4 objectForKey:@"layer"];
  if (v7)
  {

    [(TDPhotoshopRenditionSpec *)self setValue:v7 forKey:@"layer"];
  }
}

- (BOOL)updatePackingPropertiesWithDocument:(id)document
{
  selfCopy = self;
  v78 = *MEMORY[0x277D85DE8];
  v71.receiver = self;
  v71.super_class = TDPhotoshopRenditionSpec;
  [(TDRenditionSpec *)&v71 updatePackingPropertiesWithDocument:?];
  v69 = 0;
  v70 = 0;
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  memset(v65, 0, sizeof(v65));
  production = [(TDPhotoshopRenditionSpec *)selfCopy production];
  v6 = [production psdImageRefWithDocument:document];
  if ([(TDThemeConstant *)[(TDRenditionSpec *)selfCopy renditionType] identifier]!= 6)
  {
    if (![(TDPhotoshopRenditionSpec *)selfCopy _sliceRectanglesForPSDImage:v6 rowsPerRendition:&v69 columnsPerRendition:&v69 + 4 originalColumnWidth:v77 newColumnWidth:v76 originalRowHeight:v75 newRowHeight:v74 originalColumnX:v73 originalRowY:v72 newRenditionSize:&v70 newSliceCount:&v68 renditionRect:&v66 throwawaySliceRect:v65])
    {
      if (!v6)
      {
        NSLog(&cfstr_CouldnTReadPsd.isa, [objc_msgSend(objc_msgSend(production "asset")]);
        return 0;
      }

      return 1;
    }

    [(TDPhotoshopRenditionSpec *)selfCopy setWidth:v70];
    [(TDPhotoshopRenditionSpec *)selfCopy setHeight:HIDWORD(v70)];
  }

  if (![document shouldPerformHistogramBasedPacking])
  {
    return 1;
  }

  identifier = [(TDThemeConstant *)[(TDRenditionSpec *)selfCopy renditionType] identifier];
  v8 = [(TDPhotoshopRenditionSpec *)selfCopy _layerIndexInPSDImage:v6];
  v58 = [objc_msgSend(production "columnCount")];
  v57 = [-[TDPhotoshopRenditionSpec valueForKey:](selfCopy valueForKey:{@"row", "intValue"}];
  v56 = [-[TDPhotoshopRenditionSpec valueForKey:](selfCopy valueForKey:{@"column", "intValue"}];
  [v6 size];
  if ([production renditionSubtype])
  {
    identifier = [objc_msgSend(production "renditionSubtype")];
  }

  result = 1;
  if (v70 && HIDWORD(v70))
  {
    v10 = identifier;
    if ([(TDPhotoshopRenditionSpec *)selfCopy parentRendition])
    {
      [(TDRenditionSpec *)selfCopy packedPoint];
      v12 = v11;
      v14 = v13;
      v15 = objc_alloc(MEMORY[0x277D02668]);
      v16 = [v15 initWithInternalReferenceRect:v10 layout:{v12, v14, v70, SHIDWORD(v70)}];
      v17 = objc_alloc_init(MEMORY[0x277D026D0]);
      v18 = [objc_alloc(MEMORY[0x277D026C8]) initWithKeyList:{objc_msgSend(objc_msgSend(-[TDPhotoshopRenditionSpec parentRendition](selfCopy, "parentRendition"), "keySpec"), "key")}];
      [v17 setReferenceKey:v18];
      [v16 addLayerReference:v17];
    }

    else
    {
      v19 = objc_alloc(MEMORY[0x277D02668]);
      v16 = [v19 initWithCanvasSize:v68 sliceCount:v10 layout:{v70, SHIDWORD(v70)}];
    }

    [v16 setName:{objc_msgSend(objc_msgSend(production, "asset"), "name")}];
    [v16 setIsTintable:{-[TDPhotoshopRenditionSpec isTintable](selfCopy, "isTintable")}];
    [v16 setAllowsDeepmapImageCompression:{objc_msgSend(document, "shouldAllowDeepmapCompression")}];
    [v16 setAllowsDeepmap2ImageCompression:{objc_msgSend(document, "shouldAllowDeepmap2Compression")}];
    [v16 setRenditionProperties:{-[TDRenditionSpec propertiesAsDictionary](selfCopy, "propertiesAsDictionary")}];
    [v16 setScaleFactor:{objc_msgSend(objc_msgSend(production, "asset"), "scaleFactor")}];
    v20 = *(MEMORY[0x277D02650] + 16);
    v63 = *MEMORY[0x277D02650];
    v64 = v20;
    v21 = *(MEMORY[0x277D02650] + 32);
    v22 = *(MEMORY[0x277D02650] + 40);
    v59 = v63;
    v60 = v20;
    v61 = v21;
    v62 = v22;
    if (CSIEqualMetrics())
    {
      v22 = *(&v67 + 1);
      v21 = v67;
      v63 = 0u;
      v64 = 0u;
    }

    v59 = v63;
    v60 = v64;
    v61 = v21;
    v62 = v22;
    [v16 addMetrics:&v59];
    v23 = [v6 layerRefAtIndex:v8];
    [v16 setBlendMode:{objc_msgSend(v23, "blendMode")}];
    [v23 opacity];
    [v16 setOpacity:?];
    parentRendition = [(TDPhotoshopRenditionSpec *)selfCopy parentRendition];
    if (parentRendition)
    {
      v53 = production;
      [v6 boundsAtLayer:v8];
      v24 = 0;
      v52 = 0;
      goto LABEL_20;
    }

    v25 = objc_alloc(MEMORY[0x277D02660]);
    v26 = [v25 initWithPixelWidth:v70 pixelHeight:HIDWORD(v70)];
    [v16 addBitmap:v26];
    bitmapContext = [v26 bitmapContext];
    if (bitmapContext)
    {
      v24 = bitmapContext;
      v52 = v26;
      v53 = production;
      [v6 boundsAtLayer:v8];
      CGContextSetCompositeOperation();
      CGContextSetAlpha(v24, 1.0);
LABEL_20:
      v28 = HIDWORD(v69);
      if (SHIDWORD(v69) >= 1)
      {
        v29 = 0;
        v30 = 0.0;
        v55 = selfCopy;
        do
        {
          v31 = v76[v29];
          if (v31)
          {
            v32 = v69;
            if (v69 >= 1)
            {
              v33 = v8;
              v34 = 0.0;
              while (1)
              {
                v35 = v74[v32 - 1];
                if (v35)
                {
                  v36 = v16;
                  v37 = v76[v29];
                  LODWORD(v51) = v58;
                  v38 = [(TDPhotoshopRenditionSpec *)v55 psdSliceNumberForRenditionRow:v57 sliceRow:v32 - 1 renditionColumn:v56 sliceColumn:v29 rowsPerRendition:v69 columnsPerRendition:HIDWORD(v69) renditionColumnCount:v51];
                  LOBYTE(v59) = 0;
                  v39 = v6;
                  v40 = [v6 imageFromSlice:v38 atLayer:v33 isEmptyImage:&v59];
                  if (!v40)
                  {
                    -[TDPhotoshopRenditionSpec _logError:](v55, "_logError:", [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Unable to extract Photoshop image: %@\nThings to check:\n1. Are any Photoshop layers missing when compared to the reference file?\n2. Are any of the layer names not matching the layer names in the reference file (case sensitive)?\n3. Are there the same number of slices as in the reference file?\n", objc_msgSend(objc_msgSend(v53, "asset"), "name")]);

                    return 0;
                  }

                  v41 = v37;
                  v42 = v35;
                  v16 = v36;
                  if (!parentRendition)
                  {
                    v43 = v40;
                    CGContextSaveGState(v24);
                    v79.origin.x = v30;
                    v79.origin.y = v34;
                    v79.size.width = v41;
                    v79.size.height = v35;
                    CGContextClipToRect(v24, v79);
                    v44 = v77[v29];
                    v45 = vcvtpd_s64_f64(v76[v29] / v44);
                    if (v45 >= 1)
                    {
                      v46 = v30;
                      do
                      {
                        image = [v43 image];
                        v80.origin.x = v46;
                        v80.origin.y = v34;
                        v80.size.width = v44;
                        v80.size.height = v42;
                        CGContextDrawImage(v24, v80, image);
                        v46 = v46 + v44;
                        --v45;
                      }

                      while (v45);
                    }

                    CGContextRestoreGState(v24);
                  }

                  [v36 addSliceRect:{v30, v34, v41, v42}];
                  v34 = v34 + v74[v32 - 1];
                  v6 = v39;
                }

                if (v32-- <= 1)
                {
                  v31 = v76[v29];
                  v28 = HIDWORD(v69);
                  v8 = v33;
                  selfCopy = v55;
                  break;
                }
              }
            }

            v30 = v30 + v31;
          }

          ++v29;
        }

        while (v29 < v28);
      }

      if ([objc_msgSend(objc_msgSend(v53 "asset")])
      {
        IsMonochrome = 1;
        v50 = v52;
      }

      else
      {
        v50 = v52;
        if (!CGBitmapContextCreateImage(v24))
        {
LABEL_44:

          return 1;
        }

        IsMonochrome = CUIImageIsMonochrome();
      }

      [(TDPhotoshopRenditionSpec *)selfCopy setMonochrome:IsMonochrome];
      goto LABEL_44;
    }

    [(TDPhotoshopRenditionSpec *)selfCopy _logError:@"ERROR: Could not create bitmap context"];
    return 0;
  }

  return result;
}

- (void)drawPackableRenditionInContext:(CGContext *)context withDocument:(id)document
{
  v48 = *MEMORY[0x277D85DE8];
  if ([(TDThemeConstant *)[(TDRenditionSpec *)self renditionType] identifier]!= 6)
  {
    v40 = 0;
    v41 = 0;
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    memset(v37, 0, sizeof(v37));
    [(TDRenditionSpec *)self packedPoint];
    v8 = v7;
    v10 = v9;
    production = [(TDPhotoshopRenditionSpec *)self production];
    v12 = [production psdImageRefWithDocument:document];
    v34 = [(TDPhotoshopRenditionSpec *)self _layerIndexInPSDImage:v12];
    v30 = production;
    v33 = [objc_msgSend(production "columnCount")];
    v32 = [-[TDPhotoshopRenditionSpec valueForKey:](self valueForKey:{@"row", "intValue"}];
    v31 = [-[TDPhotoshopRenditionSpec valueForKey:](self valueForKey:{@"column", "intValue"}];
    [v12 size];
    v35 = v12;
    if ([(TDPhotoshopRenditionSpec *)self _sliceRectanglesForPSDImage:v12 rowsPerRendition:&v40 columnsPerRendition:&v40 + 4 originalColumnWidth:v47 newColumnWidth:v46 originalRowHeight:v45 newRowHeight:v44 originalColumnX:v43 originalRowY:v42 newRenditionSize:&v41 newSliceCount:&v39 renditionRect:v38 throwawaySliceRect:v37])
    {
      [v12 boundsAtLayer:v34];
      v13 = HIDWORD(v40);
      if (SHIDWORD(v40) >= 1)
      {
        v14 = 0;
        v15 = 0.0;
        do
        {
          v16 = v46[v14];
          if (v16)
          {
            v17 = v40;
            if (v40 >= 1)
            {
              v18 = 0.0;
              while (1)
              {
                v19 = v44[v17 - 1];
                if (v19)
                {
                  v20 = v46[v14];
                  LODWORD(v29) = v33;
                  v21 = [(TDPhotoshopRenditionSpec *)self psdSliceNumberForRenditionRow:v32 sliceRow:v17 - 1 renditionColumn:v31 sliceColumn:v14 rowsPerRendition:v40 columnsPerRendition:HIDWORD(v40) renditionColumnCount:v29];
                  v36 = 0;
                  v22 = [v35 imageFromSlice:v21 atLayer:v34 isEmptyImage:&v36];
                  if (!v22)
                  {
                    -[TDPhotoshopRenditionSpec _logError:](self, "_logError:", [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Unable to extract Photoshop image: %@\nThings to check:\n1. Are any Photoshop layers missing when compared to the reference file?\n2. Are any of the layer names not matching the layer names in the reference file (case sensitive)?\n3. Are there the same number of slices as in the reference file?\n", objc_msgSend(objc_msgSend(v30, "asset"), "name")]);
                    return;
                  }

                  v23 = v22;
                  CGContextSaveGState(context);
                  CGContextTranslateCTM(context, v8, v10);
                  v49.origin.x = v15;
                  v49.origin.y = v18;
                  v49.size.width = v20;
                  v49.size.height = v19;
                  CGContextClipToRect(context, v49);
                  v24 = v47[v14];
                  v25 = vcvtpd_s64_f64(v46[v14] / v24);
                  if (v25 >= 1)
                  {
                    v26 = v15;
                    do
                    {
                      image = [v23 image];
                      v50.origin.x = v26;
                      v50.origin.y = v18;
                      v50.size.width = v24;
                      v50.size.height = v19;
                      CGContextDrawImage(context, v50, image);
                      v26 = v26 + v24;
                      --v25;
                    }

                    while (v25);
                  }

                  CGContextRestoreGState(context);
                  v18 = v18 + v44[v17 - 1];
                }

                if (v17-- <= 1)
                {
                  v16 = v46[v14];
                  v13 = HIDWORD(v40);
                  break;
                }
              }
            }

            v15 = v15 + v16;
          }

          ++v14;
        }

        while (v14 < v13);
      }
    }
  }
}

@end