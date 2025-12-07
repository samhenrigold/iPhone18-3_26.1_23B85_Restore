@interface TDSimpleArtworkRenditionSpec
- ($56AE26BFB60993BDE24C7578AE3A2D7B)_edgeMetricsForAlignmentRect:(SEL)rect originalRenditionSize:(CGRect)size newRenditionSize:(id)renditionSize;
- (BOOL)canBePackedWithDocument:(id)document;
- (BOOL)updatePackingPropertiesWithDocument:(id)document;
- (CGImage)_createImageRefWithURL:(id)l andDocument:(id)document format:(unsigned int *)format vectorBased:(BOOL *)based;
- (CGRect)alignmentRect;
- (CGRect)primitiveAlignmentRect;
- (CGSize)_scaleRecognitionImageFromSize:(CGSize)size;
- (CGSize)physicalSizeInMeters;
- (id)_sliceRectanglesForRenditionSize:(id)size unadjustedSliceRectangles:(id *)rectangles imageSlicesNeedAdjustment:(BOOL *)adjustment newRenditionSize:(id *)renditionSize;
- (id)associatedFileModificationDateWithDocument:(id)document;
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
- (int)_rawPixelFormatOfCGImage:(CGImage *)image;
- (void)awakeFromFetch;
- (void)copyAttributesInto:(id)into;
- (void)dealloc;
- (void)drawPackableRenditionInContext:(CGContext *)context withDocument:(id)document;
- (void)setAlignmentRect:(CGRect)rect;
- (void)setPhysicalSizeInMeters:(CGSize)meters;
@end

@implementation TDSimpleArtworkRenditionSpec

- (void)dealloc
{
  [(TDSimpleArtworkRenditionSpec *)self setHistogram:0];
  v3.receiver = self;
  v3.super_class = TDSimpleArtworkRenditionSpec;
  [(TDSimpleArtworkRenditionSpec *)&v3 dealloc];
}

- (CGRect)primitiveAlignmentRect
{
  x = self->_alignmentRect.origin.x;
  y = self->_alignmentRect.origin.y;
  width = self->_alignmentRect.size.width;
  height = self->_alignmentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setAlignmentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(TDSimpleArtworkRenditionSpec *)self willChangeValueForKey:@"alignmentRect"];
  self->_alignmentRect.origin.x = x;
  self->_alignmentRect.origin.y = y;
  self->_alignmentRect.size.width = width;
  self->_alignmentRect.size.height = height;
  [(TDSimpleArtworkRenditionSpec *)self didChangeValueForKey:@"alignmentRect"];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  v8 = NSStringFromRect(v10);

  [(TDSimpleArtworkRenditionSpec *)self setAlignmentRectString:v8];
}

- (CGRect)alignmentRect
{
  [(TDSimpleArtworkRenditionSpec *)self willAccessValueForKey:@"alignmentRect"];
  [(TDSimpleArtworkRenditionSpec *)self primitiveAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TDSimpleArtworkRenditionSpec *)self didAccessValueForKey:@"alignmentRect"];
  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setPhysicalSizeInMeters:(CGSize)meters
{
  v4 = NSStringFromSize(meters);

  [(TDSimpleArtworkRenditionSpec *)self setPhysicalSizeInMetersString:v4];
}

- (CGSize)physicalSizeInMeters
{
  physicalSizeInMetersString = [(TDSimpleArtworkRenditionSpec *)self physicalSizeInMetersString];

  v5 = NSSizeFromString(physicalSizeInMetersString);
  height = v5.height;
  width = v5.width;
  result.height = height;
  result.width = width;
  return result;
}

- (void)awakeFromFetch
{
  v3.receiver = self;
  v3.super_class = TDSimpleArtworkRenditionSpec;
  [(TDSimpleArtworkRenditionSpec *)&v3 awakeFromFetch];
  v4 = NSRectFromString([(TDSimpleArtworkRenditionSpec *)self alignmentRectString]);
  [(TDSimpleArtworkRenditionSpec *)self setPrimitiveAlignmentRect:v4.origin.x, v4.origin.y, v4.size.width, v4.size.height];
}

- (void)copyAttributesInto:(id)into
{
  [(TDSimpleArtworkRenditionSpec *)self alignmentRect];
  [into setAlignmentRect:?];
  [into setNonAlphaImageAreaString:{-[TDSimpleArtworkRenditionSpec nonAlphaImageAreaString](self, "nonAlphaImageAreaString")}];
  [into setAlphaCrop:{-[TDSimpleArtworkRenditionSpec alphaCrop](self, "alphaCrop")}];
  [into setHeight:{-[TDSimpleArtworkRenditionSpec height](self, "height")}];
  [into setWidth:{-[TDSimpleArtworkRenditionSpec width](self, "width")}];
  [into setMonochrome:{-[TDSimpleArtworkRenditionSpec monochrome](self, "monochrome")}];
  [into setOpaque:{-[TDSimpleArtworkRenditionSpec opaque](self, "opaque")}];
  [into setCompressionType:{-[TDSimpleArtworkRenditionSpec compressionType](self, "compressionType")}];
  [into setRenditionType:{-[TDRenditionSpec renditionType](self, "renditionType")}];
  [(TDSimpleArtworkRenditionSpec *)self postScaleFactor];
  [into setPostScaleFactor:?];
  [into setAllowsPaletteImageCompression:{-[TDSimpleArtworkRenditionSpec allowsPaletteImageCompression](self, "allowsPaletteImageCompression")}];
  [into setAllowsHevcCompression:{-[TDSimpleArtworkRenditionSpec allowsHevcCompression](self, "allowsHevcCompression")}];
  [into setAllowsDeepmapCompression:{-[TDSimpleArtworkRenditionSpec allowsDeepmapCompression](self, "allowsDeepmapCompression")}];
  [into setAllowsDeepmap2Compression:{-[TDSimpleArtworkRenditionSpec allowsDeepmap2Compression](self, "allowsDeepmap2Compression")}];
  [into setPhysicalSizeInMetersString:{-[TDSimpleArtworkRenditionSpec physicalSizeInMetersString](self, "physicalSizeInMetersString")}];
  preserveForArchiveOnly = [(TDSimpleArtworkRenditionSpec *)self preserveForArchiveOnly];

  [into setPreserveForArchiveOnly:preserveForArchiveOnly];
}

- (id)associatedFileModificationDateWithDocument:(id)document
{
  v3 = [objc_msgSend(-[TDSimpleArtworkRenditionSpec asset](self "asset")];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];
  if (v5)
  {
    v6 = [defaultManager attributesOfItemAtPath:v3 error:0];
  }

  else
  {
    v6 = 0;
  }

  result = [v6 objectForKey:*MEMORY[0x277CCA150]];
  if (result)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (v8 == 1)
  {
    NSLog(&cfstr_Tdsimpleartwor.isa, v3);
    v9 = MEMORY[0x277CBEAA8];

    return [v9 distantFuture];
  }

  return result;
}

- (id)_sliceRectanglesForRenditionSize:(id)size unadjustedSliceRectangles:(id *)rectangles imageSlicesNeedAdjustment:(BOOL *)adjustment newRenditionSize:(id *)renditionSize
{
  v165 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  _slicesToUseForCSI = [(TDSimpleArtworkRenditionSpec *)self _slicesToUseForCSI];
  identifier = [(TDThemeConstant *)[(TDRenditionSpec *)self renditionType] identifier];
  if ([_slicesToUseForCSI count])
  {
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v12 = [_slicesToUseForCSI countByEnumeratingWithState:&v159 objects:v164 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v160;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v160 != v14)
          {
            objc_enumerationMutation(_slicesToUseForCSI);
          }

          [*(*(&v159 + 1) + 8 * i) sliceRect];
          [array addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:")}];
        }

        v13 = [_slicesToUseForCSI countByEnumeratingWithState:&v159 objects:v164 count:16];
      }

      while (v13);
    }
  }

  if (![array count])
  {
    [array addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", 0.0, 0.0, size.var0, size.var1)}];
  }

  if (identifier - 1 > 1)
  {
    if (identifier == 3 && [array count] == 9)
    {
      [objc_msgSend(array objectAtIndex:{1), "rectValue"}];
      v49 = v48;
      v51 = v50;
      [objc_msgSend(array objectAtIndex:{2), "rectValue"}];
      v53 = v52 - (v49 + v51);
      [objc_msgSend(array objectAtIndex:{3), "rectValue"}];
      v55 = v54;
      v57 = v56;
      [objc_msgSend(array objectAtIndex:{6), "rectValue"}];
      v59 = v58 - (v55 + v57);
      if (v53 > 0.0 || v59 > 0.0)
      {
        v75 = (renditionSize->var0 - v53);
        var1 = renditionSize->var1;
        *adjustment = 1;
        renditionSize->var0 = v75;
        renditionSize->var1 = (var1 - v59);
        goto LABEL_41;
      }
    }
  }

  else if ([array count] == 4)
  {
    *(&renditionSize->var0 + (identifier != 1)) = 0;
    array2 = [MEMORY[0x277CBEB18] array];
    if ([array count])
    {
      v17 = 0;
      do
      {
        if (v17 != 2)
        {
          v18 = [array objectAtIndex:v17];
          [array2 addObject:v18];
          [v18 rectValue];
          if (identifier == 1)
          {
            v21 = v19;
          }

          else
          {
            v21 = v20;
          }

          *(&renditionSize->var0 + (identifier != 1)) = (v21 + *(&renditionSize->var0 + (identifier != 1)));
        }

        ++v17;
      }

      while (v17 < [array count]);
    }

    *adjustment = 1;
    if (identifier == 2)
    {
      if ([array2 count] == 3)
      {
        [objc_msgSend(array2 objectAtIndex:{2), "rectValue"}];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;
        [objc_msgSend(array2 objectAtIndex:{1), "rectValue"}];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v38 = v25 - (v32 + v36);
        if (v38 < 0.0)
        {
          v38 = 0.0;
        }

        v39 = v25 - v38;
        [objc_msgSend(array2 objectAtIndex:{0), "rectValue"}];
        v40 = MEMORY[0x277CBEA60];
        v41 = [MEMORY[0x277CCAE60] valueWithRect:?];
        v42 = [MEMORY[0x277CCAE60] valueWithRect:{v31, v33, v35, v37}];
        v43 = MEMORY[0x277CCAE60];
        v44 = v23;
        v45 = v39;
        v46 = v27;
        v47 = v29;
LABEL_37:
        v74 = [v40 arrayWithObjects:{v41, v42, objc_msgSend(v43, "valueWithRect:", v44, v45, v46, v47), 0}];
LABEL_55:
        array = v74;
        goto LABEL_31;
      }

      goto LABEL_57;
    }

    if (identifier == 1)
    {
      if ([array2 count] == 3)
      {
        [objc_msgSend(array2 objectAtIndex:{1), "rectValue"}];
        v62 = v61;
        v64 = v63;
        [objc_msgSend(array2 objectAtIndex:{2), "rectValue"}];
        v67 = v66;
        v69 = v68;
        v71 = v70;
        v72 = v65 - (v62 + v64);
        if (v72 < 0.0)
        {
          v72 = 0.0;
        }

        v73 = v65 - v72;
        v40 = MEMORY[0x277CBEA60];
        v41 = [array2 objectAtIndex:0];
        v42 = [array2 objectAtIndex:1];
        v43 = MEMORY[0x277CCAE60];
        v44 = v73;
        v45 = v67;
        v46 = v69;
        v47 = v71;
        goto LABEL_37;
      }

LABEL_57:
      array = 0;
      goto LABEL_31;
    }

    if (identifier != 3)
    {
      goto LABEL_57;
    }

    array = array2;
LABEL_41:
    if ([array count] == 9)
    {
      [objc_msgSend(array objectAtIndex:{0), "rectValue"}];
      v155 = v78;
      v157 = v77;
      v153 = v80;
      v154 = v79;
      [objc_msgSend(array objectAtIndex:{1), "rectValue"}];
      v82 = v81;
      v151 = v84;
      v152 = v83;
      v86 = v85;
      [objc_msgSend(array objectAtIndex:{2), "rectValue"}];
      v88 = v87;
      v149 = v90;
      v150 = v89;
      v148 = v91;
      [objc_msgSend(array objectAtIndex:{3), "rectValue"}];
      v146 = v93;
      v147 = v92;
      v95 = v94;
      v128 = v96;
      [objc_msgSend(array objectAtIndex:{4), "rectValue"}];
      v144 = v98;
      v145 = v97;
      v142 = v100;
      v143 = v99;
      [objc_msgSend(array objectAtIndex:{5), "rectValue"}];
      v102 = v101;
      v140 = v104;
      v141 = v103;
      v139 = v105;
      [objc_msgSend(array objectAtIndex:{6), "rectValue"}];
      v137 = v107;
      v138 = v106;
      v109 = v108;
      v136 = v110;
      [objc_msgSend(array objectAtIndex:{7), "rectValue"}];
      v134 = v112;
      v135 = v111;
      v114 = v113;
      v133 = v115;
      [objc_msgSend(array objectAtIndex:{8), "rectValue"}];
      v131 = v119;
      v132 = v118;
      v120 = v88 - (v82 + v86);
      v121 = v116 - v120;
      if (v120 <= 0.0)
      {
        v122 = v88;
      }

      else
      {
        v122 = v88 - v120;
      }

      if (v120 <= 0.0)
      {
        v123 = v102;
      }

      else
      {
        v123 = v102 - v120;
      }

      if (v120 <= 0.0)
      {
        v124 = v116;
      }

      else
      {
        v124 = v116 - v120;
      }

      v125 = v109 - (v95 + v128);
      v126 = v117 - v125;
      if (v125 <= 0.0)
      {
        v127 = v117;
      }

      else
      {
        v109 = v109 - v125;
        v114 = v114 - v125;
        v127 = v117 - v125;
      }

      v129 = v127;
      v130 = v124;
      v163[0] = [MEMORY[0x277CCAE60] valueWithRect:{v157, v155, v154, v153, v126, v121}];
      v163[1] = [MEMORY[0x277CCAE60] valueWithRect:{v82, v152, v86, v151}];
      v163[2] = [MEMORY[0x277CCAE60] valueWithRect:{v122, v150, v149, v148}];
      v163[3] = [MEMORY[0x277CCAE60] valueWithRect:{v147, v95, v146, v128}];
      v163[4] = [MEMORY[0x277CCAE60] valueWithRect:{v145, v144, v143, v142}];
      v163[5] = [MEMORY[0x277CCAE60] valueWithRect:{v123, v141, v140, v139}];
      v163[6] = [MEMORY[0x277CCAE60] valueWithRect:{v138, v109, v137, v136}];
      v163[7] = [MEMORY[0x277CCAE60] valueWithRect:{v135, v114, v134, v133}];
      v163[8] = [MEMORY[0x277CCAE60] valueWithRect:{v130, v129, v132, v131}];
      v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v163 count:9];
      array2 = array;
      goto LABEL_55;
    }

    array2 = array;
    goto LABEL_57;
  }

  array2 = array;
LABEL_31:
  *rectangles = array2;
  return array;
}

- ($56AE26BFB60993BDE24C7578AE3A2D7B)_edgeMetricsForAlignmentRect:(SEL)rect originalRenditionSize:(CGRect)size newRenditionSize:(id)renditionSize
{
  v6 = size.size.width - (renditionSize.var0 - a6.var0);
  v7 = size.size.height - (renditionSize.var1 - a6.var1);
  retstr->var0.width = size.origin.x;
  retstr->var0.height = size.origin.y;
  retstr->var1.width = a6.var0 - (size.origin.x + v6);
  retstr->var1.height = a6.var1 - (size.origin.y + v7);
  retstr->var2.width = v6;
  retstr->var2.height = v7;
  return self;
}

- (BOOL)canBePackedWithDocument:(id)document
{
  v10.receiver = self;
  v10.super_class = TDSimpleArtworkRenditionSpec;
  scaleFactor = [(TDRenditionSpec *)&v10 canBePackedWithDocument:document];
  if (scaleFactor)
  {
    asset = [(TDSimpleArtworkRenditionSpec *)self asset];
    v6 = [objc_msgSend(asset "name")];
    if ([v6 length])
    {
      if ([v6 caseInsensitiveCompare:@"PDF"] && objc_msgSend(v6, "caseInsensitiveCompare:", @"SVG"))
      {
        if ((![v6 caseInsensitiveCompare:@"JPEG"] || !objc_msgSend(v6, "caseInsensitiveCompare:", @"JPG") || !objc_msgSend(v6, "caseInsensitiveCompare:", @"HEIF") || !objc_msgSend(v6, "caseInsensitiveCompare:", @"HEIC")) && (-[TDSimpleArtworkRenditionSpec alphaCrop](self, "alphaCrop") & 1) == 0)
        {
          [(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters];
          if (v7 <= 0.0)
          {
            [(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters];
            if (v8 <= 0.0)
            {
              LOBYTE(scaleFactor) = 0;
              return scaleFactor;
            }
          }
        }
      }

      else
      {
        scaleFactor = [asset scaleFactor];
        if (!scaleFactor)
        {
          return scaleFactor;
        }
      }
    }

    LOBYTE(scaleFactor) = 1;
  }

  return scaleFactor;
}

- (int)_rawPixelFormatOfCGImage:(CGImage *)image
{
  v5 = 1095911234;
  if ([(TDSimpleArtworkRenditionSpec *)self allowsMultiPassEncoding])
  {
    monochrome = [(TDSimpleArtworkRenditionSpec *)self monochrome];
    BitsPerComponent = CGImageGetBitsPerComponent(image);
    if (BitsPerComponent <= 15)
    {
      v8 = 1095911234;
    }

    else
    {
      v8 = 1380401751;
    }

    if (BitsPerComponent <= 15)
    {
      v9 = 1195456544;
    }

    else
    {
      v9 = 1195454774;
    }

    if (monochrome)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  return v5;
}

- (CGImage)_createImageRefWithURL:(id)l andDocument:(id)document format:(unsigned int *)format vectorBased:(BOOL *)based
{
  asset = [(TDSimpleArtworkRenditionSpec *)self asset];
  if (![objc_msgSend(l "pathExtension")])
  {
    scaleFactor = [asset scaleFactor];
    if (format && !scaleFactor)
    {
      Image = 0;
      v15 = 1346651680;
      goto LABEL_17;
    }

    v18 = CGPDFDocumentCreateWithURL(l);
    if (v18)
    {
      v19 = v18;
      v91 = a2;
      basedCopy = based;
      scaleFactor2 = [asset scaleFactor];
      v21 = scaleFactor2;
      Page = CGPDFDocumentGetPage(v19, 1uLL);
      BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
      x = BoxRect.origin.x;
      y = BoxRect.origin.y;
      width = BoxRect.size.width;
      height = BoxRect.size.height;
      fileScaleFactor = [asset fileScaleFactor];
      if (!fileScaleFactor)
      {
        fileScaleFactor = +[TDAsset scaleFactorFromImageFilename:](TDAsset, "scaleFactorFromImageFilename:", [l path]);
      }

      if (!scaleFactor2)
      {
        v21 = 1.0;
      }

      [(TDSimpleArtworkRenditionSpec *)self postScaleFactor];
      v29 = v21 * v28;
      v90 = fileScaleFactor;
      v30 = fileScaleFactor;
      v31 = round(width / fileScaleFactor * v29);
      v32 = round(height / fileScaleFactor * v29);
      if ((CGPDFPageContainsWideGamutContent() & 1) == 0)
      {
        goto LABEL_82;
      }

      v33 = 1;
      v34 = 4097;
      v35 = MEMORY[0x277CBF3E0];
      v36 = 16;
      for (i = 8; ; i = 4)
      {
        v71 = CGColorSpaceCreateWithName(*v35);
        v72 = CGBitmapContextCreate(0, v31, v32, v36, (v31 * i), v71, v34);
        if (!v72)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          v88 = [objc_msgSend(-[TDSimpleArtworkRenditionSpec production](self "production")];
          [(TDSimpleArtworkRenditionSpec *)self postScaleFactor];
          [currentHandler handleFailureInMethod:v91 object:self file:@"TDSimpleArtworkRenditionSpec.m" lineNumber:483 description:{@"CoreThemeDefinition: '%@' Unable to create bitmap context for %s (%fx%f) colorSpace:'%@' [pdfsize:%fx%f fileScale:%d postScaleFactor:%f scale:%f bpc:%d bpp:%d bitmapInfo:%d]", v88, "-[TDSimpleArtworkRenditionSpec _createImageRefWithURL:andDocument:format:vectorBased:]", *&v31, *&v32, v71, *&width, *&height, v90, v87, *&v29, v36, i, v34}];
        }

        CGColorSpaceRelease(v71);
        CGContextScaleCTM(v72, v29 / v30, v29 / v30);
        CGContextTranslateCTM(v72, -x, -y);
        CGContextDrawPDFPage(v72, Page);
        Image = CGBitmapContextCreateImage(v72);
        if (v33 & 1) == 0 || (CUIImageIsWideGamut())
        {
          break;
        }

        CFRelease(Image);
        CFRelease(v72);
LABEL_82:
        v33 = 0;
        v34 = 8193;
        v35 = MEMORY[0x277CBF4B8];
        v36 = 8;
      }

      CFRelease(v72);
      CGPDFDocumentRelease(v19);
      a2 = v91;
      if (basedCopy)
      {
        *basedCopy = 1;
      }

      if (format)
      {
        *format = [(TDSimpleArtworkRenditionSpec *)self _rawPixelFormatOfCGImage:Image];
      }

      goto LABEL_92;
    }

    return 0;
  }

  if (![objc_msgSend(l "pathExtension")])
  {
    scaleFactor3 = [asset scaleFactor];
    if (format && !scaleFactor3)
    {
      Image = 0;
      v15 = 1398163232;
      goto LABEL_17;
    }

    if ([objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self "keySpec")] || objc_msgSend(objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self, "keySpec"), "glyphSize"), "identifier"))
    {
      v43 = +[TDVectorGlyphReader vectorGlyphReaderWithURL:platform:error:](TDVectorGlyphReader, "vectorGlyphReaderWithURL:platform:error:", l, [document targetPlatform], 0);
      -[TDVectorGlyphReader canvasSizeForWeight:size:](v43, "canvasSizeForWeight:size:", [objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self "keySpec")], objc_msgSend(objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self, "keySpec"), "glyphSize"), "identifier"));
      v45 = v44;
      v47 = v46;
      [(TDVectorGlyphReader *)v43 templateVersion];
      containsWideGamutContent = [(TDVectorGlyphReader *)v43 containsWideGamutContent];
      v49 = 0;
    }

    else
    {
      v68 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:l options:8 error:0];
      v49 = CGSVGDocumentCreateFromData();
      CGSVGDocumentGetCanvasSize();
      v45 = v69;
      v47 = v70;
      containsWideGamutContent = CGSVGDocumentContainsWideGamutContent();

      v43 = 0;
    }

    if (v45 != 0.0 && v47 != 0.0)
    {
      basedCopy2 = based;
      scaleFactor4 = [asset scaleFactor];
      v51 = scaleFactor4;
      [asset fileScaleFactor];
      if (!scaleFactor4)
      {
        v51 = 1.0;
      }

      [(TDSimpleArtworkRenditionSpec *)self postScaleFactor];
      v53 = v51 * v52;
      v54 = v45 * v53;
      v55 = ceil(v54);
      v56 = v47 * v53;
      if (containsWideGamutContent)
      {
        v57 = 16;
      }

      else
      {
        v57 = 8;
      }

      if (containsWideGamutContent)
      {
        v58 = 8.0;
      }

      else
      {
        v58 = 4.0;
      }

      if (containsWideGamutContent)
      {
        v59 = 4097;
      }

      else
      {
        v59 = 8193;
      }

      v60 = MEMORY[0x277CBF3E0];
      if (!containsWideGamutContent)
      {
        v60 = MEMORY[0x277CBF4B8];
      }

      v61 = CGColorSpaceCreateWithName(*v60);
      v62 = CGBitmapContextCreate(0, vcvtpd_u64_f64(v54), vcvtpd_u64_f64(v56), v57, (v55 * v58), v61, v59);
      if (!v62)
      {
        [TDSimpleArtworkRenditionSpec _createImageRefWithURL:andDocument:format:vectorBased:];
      }

      CGColorSpaceRelease(v61);
      if (v43)
      {
        [(TDSimpleArtworkRenditionSpec *)self postScaleFactor];
        v64 = v63;
        [(TDVectorGlyphReader *)v43 defaultPointSize];
        -[TDVectorGlyphReader drawInContext:atPointSize:scaleFactor:weight:size:](v43, "drawInContext:atPointSize:scaleFactor:weight:size:", v62, [objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self "keySpec")], objc_msgSend(objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self, "keySpec"), "glyphSize"), "identifier"), v64 * v65, objc_msgSend(asset, "scaleFactor"));
      }

      else
      {
        CGContextScaleCTM(v62, v53, v53);
        CGContextDrawSVGDocument();
      }

      Image = CGBitmapContextCreateImage(v62);
      CFRelease(v62);
      CGSVGDocumentRelease();
      if (basedCopy2)
      {
        *basedCopy2 = 1;
      }

      if (format)
      {
        *format = [(TDSimpleArtworkRenditionSpec *)self _rawPixelFormatOfCGImage:Image];
      }

      if (v43)
      {
      }

      goto LABEL_92;
    }

    if ([objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self "keySpec")] || objc_msgSend(objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self, "keySpec"), "glyphSize"), "identifier"))
    {
      NSLog(&cfstr_SGotZeroWidthH.isa, "-[TDSimpleArtworkRenditionSpec _createImageRefWithURL:andDocument:format:vectorBased:]", l, [objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self "keySpec")], objc_msgSend(objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self, "keySpec"), "glyphSize"), "identifier"));
      if (v45 == 0.0 && v47 == 0.0)
      {
        [TDSimpleArtworkRenditionSpec _createImageRefWithURL:andDocument:format:vectorBased:];
      }
    }

    else
    {
      NSLog(&cfstr_SGotZeroWidthH_0.isa, "[TDSimpleArtworkRenditionSpec _createImageRefWithURL:andDocument:format:vectorBased:]", l);
      if (v45 == 0.0 && v47 == 0.0)
      {
        [TDSimpleArtworkRenditionSpec _createImageRefWithURL:andDocument:format:vectorBased:];
      }
    }

    if (v49)
    {
      CGSVGDocumentRelease();
    }

    return 0;
  }

  pathExtension = [l pathExtension];
  if ([pathExtension length])
  {
    if ([pathExtension caseInsensitiveCompare:@"JPEG"] && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"JPG"))
    {
      if ([pathExtension caseInsensitiveCompare:@"HEIF"] && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"HEIC"))
      {
        if ([pathExtension caseInsensitiveCompare:@"PNG"])
        {
          goto LABEL_9;
        }

LABEL_32:
        v41 = [asset sourceImageWithDocument:document];
        image = [v41 image];
        if (v41)
        {
          Image = image;
          if (format)
          {
            *format = [(TDSimpleArtworkRenditionSpec *)self _rawPixelFormatOfCGImage:image];
          }

          goto LABEL_68;
        }

        return 0;
      }

      if (format)
      {
        *format = 1212500294;
      }
    }

    else if (format)
    {
      if (([(TDSimpleArtworkRenditionSpec *)self alphaCrop]& 1) != 0 || ([(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters], v38 > 0.0) || ([(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters], v39 > 0.0))
      {
        v40 = [(TDSimpleArtworkRenditionSpec *)self _rawPixelFormatOfCGImage:0];
      }

      else
      {
        v40 = 1246774599;
      }

      *format = v40;
    }

    v66 = [asset sourceImageWithDocument:document];
    image2 = [v66 image];
    if (v66)
    {
      Image = image2;
LABEL_68:
      CGImageRetain(Image);
      goto LABEL_92;
    }

    return 0;
  }

  if (![l checkResourceIsReachableAndReturnError:0])
  {
    goto LABEL_32;
  }

LABEL_9:
  Image = 0;
  if (format)
  {
    v15 = 1145132097;
LABEL_17:
    *format = v15;
  }

LABEL_92:
  [(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters];
  if (v73 > 0.0 || ([(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters], v74 > 0.0))
  {
    v75 = CGImageGetWidth(Image);
    v76 = v75;
    v77 = CGImageGetHeight(Image);
    if (v75 <= 0x63)
    {
      [TDSimpleArtworkRenditionSpec _createImageRefWithURL:a2 andDocument:? format:? vectorBased:?];
    }

    [(TDSimpleArtworkRenditionSpec *)self _scaleRecognitionImageFromSize:v76, v77];
    if (v78 != v76 || v79 != v77)
    {
      v81 = v78;
      v82 = v79;
      memset(&dest, 0, sizeof(dest));
      v83 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
      v96[0] = 0x2000000008;
      v96[1] = v83;
      v97 = 12289;
      memset(v99, 0, sizeof(v99));
      v98 = 0;
      src.height = v77;
      src.width = v76;
      src.data = 0;
      src.rowBytes = CGBitmapGetAlignedBytesPerRow();
      CGImageGetColorSpace(Image);
      v84 = CUIConvertCGImageFormat();
      CGColorSpaceRelease(v83);
      if (!v84)
      {
        dest.height = v82;
        dest.width = v81;
        dest.rowBytes = 32 * v81;
        dest.data = malloc_type_calloc(dest.rowBytes * v82, 1uLL, 0x100004077774924uLL);
        v85 = vImageScale_ARGB8888(&src, &dest, 0, 0x20u);
        CGBitmapFreeData();
        if (!v85)
        {
          CGImageRelease(Image);
          return MEMORY[0x24C1B1FF0](&dest, v96, 0, 0, 512, 0);
        }
      }
    }
  }

  return Image;
}

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  dCopy = d;
  BitsPerComponent = compression;
  v160 = *MEMORY[0x277D85DE8];
  production = [(TDSimpleArtworkRenditionSpec *)self production];
  asset = [(TDSimpleArtworkRenditionSpec *)self asset];
  v158 = 0;
  v157 = 0;
  v156 = 1246774599;
  identifier = [(TDThemeConstant *)[(TDRenditionSpec *)self renditionType] identifier];
  if (identifier == 1006)
  {
    v12 = objc_alloc(MEMORY[0x277D02668]);
    v13 = [v12 initWithCanvasSize:0 sliceCount:1006 layout:{*MEMORY[0x277CCA870], *(MEMORY[0x277CCA870] + 8)}];
    [v13 setScaleFactor:{objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self, "keySpec"), "scaleFactor")}];
    [v13 setTargetPlatform:{objc_msgSend(document, "targetPlatform")}];
    v14 = [v13 CSIRepresentationWithCompression:BitsPerComponent];

    return v14;
  }

  v15 = identifier;
  Width = *MEMORY[0x277CBF3A8];
  v17 = *(MEMORY[0x277CBF3A8] + 8);
  v18 = [asset fileURLWithDocument:document];
  if ([asset rawData])
  {
    v135 = dCopy;
    v136 = BitsPerComponent;
    image = 0;
    v156 = 1145132097;
LABEL_5:
    LODWORD(BitsPerComponent) = 1;
    goto LABEL_40;
  }

  v19 = [(TDSimpleArtworkRenditionSpec *)self _createImageRefWithURL:v18 andDocument:document format:&v156 vectorBased:&v157];
  image = v19;
  if (v19)
  {
LABEL_7:
    if (v156 == 1145132097)
    {
      v135 = dCopy;
      v136 = BitsPerComponent;
      goto LABEL_5;
    }

    if (v156 == 1246774599 || v156 == 1212500294)
    {
      if (v19)
      {
        v136 = BitsPerComponent;
        v135 = dCopy;
        if (v156 == 1212500294 && [(TDSimpleArtworkRenditionSpec *)self isBackstop])
        {
          LODWORD(BitsPerComponent) = 0;
          v156 = 1095911234;
        }

        else
        {
          LODWORD(BitsPerComponent) = 1;
        }

        Width = CGImageGetWidth(image);
        Height = CGImageGetHeight(image);
        goto LABEL_39;
      }
    }

    else if (v19)
    {
      v135 = dCopy;
      v136 = BitsPerComponent;
      Width = CGImageGetWidth(v19);
      Height = CGImageGetHeight(image);
      LODWORD(BitsPerComponent) = 0;
LABEL_39:
      v17 = Height;
LABEL_40:
      LODWORD(v158) = Width;
      HIDWORD(v158) = v17;
      v155 = 0;
      v154 = 0;
      v47 = [(TDSimpleArtworkRenditionSpec *)self _sliceRectanglesForRenditionSize:v158 unadjustedSliceRectangles:&v154 imageSlicesNeedAdjustment:&v155 newRenditionSize:&v158];
      v134 = v15;
      if ([production renditionSubtype])
      {
        LOWORD(v15) = [objc_msgSend(production "renditionSubtype")];
      }

      v139 = asset;
      if (!BitsPerComponent)
      {
        if ([(TDSimpleArtworkRenditionSpec *)self parentRendition])
        {
          v161 = NSRectFromString([(TDSimpleArtworkRenditionSpec *)self nonAlphaImageAreaString]);
          x = v161.origin.x;
          y = v161.origin.y;
          v66 = v161.size.width;
          v67 = v161.size.height;
          v68 = NSSizeFromString([(TDSimpleArtworkRenditionSpec *)self originalImageSizeString]);
          [(TDRenditionSpec *)self packedPoint];
          v70 = v69;
          v72 = v71;
          v162.origin.x = x;
          v162.origin.y = y;
          v162.size.width = v66;
          v162.size.height = v67;
          if (!CGRectIsEmpty(v162))
          {
            LODWORD(v158) = v66;
            HIDWORD(v158) = v67;
          }

          v73 = BitsPerComponent;
          v74 = objc_alloc(MEMORY[0x277D02668]);
          v75 = [v74 initWithInternalReferenceRect:v15 layout:{v70, v72, v158, SHIDWORD(v158)}];
          v163.origin.x = x;
          v163.origin.y = y;
          v163.size.width = v66;
          v163.size.height = v67;
          if (!CGRectIsEmpty(v163))
          {
            [v75 setAlphaCroppedFrame:{x, y, v66, v67}];
            [v75 setOriginalUncroppedSize:{v68.width, v68.height}];
          }

          v76 = objc_alloc_init(MEMORY[0x277D026D0]);
          BitsPerComponent = [objc_alloc(MEMORY[0x277D026C8]) initWithKeyList:{objc_msgSend(objc_msgSend(-[TDSimpleArtworkRenditionSpec parentRendition](self, "parentRendition"), "keySpec"), "key")}];
          [v76 setReferenceKey:BitsPerComponent];
          [v75 addLayerReference:v76];

          LOBYTE(BitsPerComponent) = v73;
          v77 = image;
        }

        else
        {
          v78 = objc_alloc(MEMORY[0x277D02668]);
          v75 = [v78 initWithCanvasSize:objc_msgSend(v47 sliceCount:"count") layout:{v15, v158, SHIDWORD(v158)}];
          v77 = image;
        }

        [v75 setTargetPlatform:{objc_msgSend(document, "targetPlatform")}];
        [v75 setPixelFormat:v156];
        [v75 setName:{objc_msgSend(asset, "name")}];
        if (!v77)
        {
          goto LABEL_88;
        }

LABEL_80:
        if (v156 != 1246774599 && v156 != 1212500294)
        {
          v85 = BitsPerComponent;
          BitsPerComponent = CGImageGetBitsPerComponent(v77);
          monochrome = [(TDSimpleArtworkRenditionSpec *)self monochrome];
          allowsExtendedRangePixelFormats = [document allowsExtendedRangePixelFormats];
          if ([objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self "keySpec")] == 1)
          {
            if (CUIImageIsWideGamut())
            {
              if (allowsExtendedRangePixelFormats)
              {
                v88 = 4;
              }

              else
              {
                v88 = 3;
              }

              [v75 setPixelFormat:1380401751];
            }

            else
            {
              if (BitsPerComponent > 8)
              {
                v90 = monochrome;
              }

              else
              {
                v90 = 0;
              }

              if (v90 != 1)
              {
                v129 = BitsPerComponent >= 9;
                LOBYTE(BitsPerComponent) = v85;
                asset = v139;
                v88 = v135;
                if (v129)
                {
                  if (monochrome)
                  {
                    v88 = 2;
                  }

                  else
                  {
                    v88 = 1;
                  }

                  if (monochrome)
                  {
                    v130 = 1195456544;
                  }

                  else
                  {
                    v130 = 1095911234;
                  }

                  [v75 setPixelFormat:v130];
                }

LABEL_105:
                [v75 setAllowsMultiPassEncoding:{-[TDSimpleArtworkRenditionSpec allowsMultiPassEncoding](self, "allowsMultiPassEncoding")}];
                [v75 setAllowsOptimalRowbytesPacking:{-[TDSimpleArtworkRenditionSpec allowsOptimalRowbytesPacking](self, "allowsOptimalRowbytesPacking")}];
                [v75 setColorSpaceID:v88];
                [v75 setIsVectorBased:v157];
                [v75 setExifOrientation:{objc_msgSend(asset, "exifOrientation")}];
                [v75 setAllowsPaletteImageCompression:{-[TDSimpleArtworkRenditionSpec allowsPaletteImageCompression](self, "allowsPaletteImageCompression")}];
                [v75 setAllowsHevcCompression:{-[TDSimpleArtworkRenditionSpec allowsHevcCompression](self, "allowsHevcCompression")}];
                [v75 setAllowsDeepmapImageCompression:{-[TDSimpleArtworkRenditionSpec allowsDeepmapCompression](self, "allowsDeepmapCompression")}];
                [v75 setAllowsDeepmap2ImageCompression:{-[TDSimpleArtworkRenditionSpec allowsDeepmap2Compression](self, "allowsDeepmap2Compression")}];
                if ([-[TDSimpleArtworkRenditionSpec compressionType](self "compressionType")])
                {
                  [v75 setCompressionType:{objc_msgSend(-[TDSimpleArtworkRenditionSpec compressionType](self, "compressionType"), "identifier")}];
                }

                [v75 setScaleFactor:{objc_msgSend(asset, "scaleFactor")}];
                v91 = MEMORY[0x277D02650];
                v140 = *(MEMORY[0x277D02650] + 16);
                *imageb = *MEMORY[0x277D02650];
                v153.origin = *MEMORY[0x277D02650];
                v153.size = v140;
                v93 = *(MEMORY[0x277D02650] + 32);
                v92 = *(MEMORY[0x277D02650] + 40);
                [(TDSimpleArtworkRenditionSpec *)self alignmentRect];
                v94 = v164.origin.x;
                v95 = v164.origin.y;
                v96 = v164.size.width;
                v97 = v164.size.height;
                if (!NSEqualRects(v164, *MEMORY[0x277CCA868]) && (v94 >= 0.0 || v95 >= 0.0 || v94 + v96 <= Width || v95 + v97 <= v17))
                {
                  if (self)
                  {
                    objc_msgSend__edgeMetricsForAlignmentRect_originalRenditionSize_newRenditionSize_(self, v94, v95, v96, v97);
                    v92 = *(&v152 + 1);
                    v93 = *&v152;
                  }

                  else
                  {
                    v152 = 0u;
                    memset(&mediaBox, 0, sizeof(mediaBox));
                    v92 = 0.0;
                    v93 = 0.0;
                  }

                  v153 = mediaBox;
                }

                mediaBox = v153;
                *&v152 = v93;
                *(&v152 + 1) = v92;
                *value = *imageb;
                v149 = v140;
                v150 = *(v91 + 32);
                if (CSIEqualMetrics())
                {
                  memset(&v153, 0, sizeof(v153));
                  v93 = v158;
                  v92 = SHIDWORD(v158);
                }

                [v75 setClampMetrics:{objc_msgSend(document, "_clampMetrics")}];
                mediaBox = v153;
                *&v152 = v93;
                *(&v152 + 1) = v92;
                [v75 addMetrics:&mediaBox];
                [v75 setBlendMode:0];
                [v75 setOpacity:1.0];
                if ([(TDSimpleArtworkRenditionSpec *)self parentRendition])
                {
                  goto LABEL_119;
                }

                if (([production makeOpaqueIfPossible] & 1) != 0 || v156 == 1195456544 || v156 == 1195454774)
                {
                  AlphaInfo = CUICGImageGetAlphaInfo();
                  if ((BitsPerComponent & 1) == 0)
                  {
                    goto LABEL_133;
                  }
                }

                else
                {
                  AlphaInfo = CGImageGetBitmapInfo(v77) & 0x1F;
                  if ((BitsPerComponent & 1) == 0)
                  {
LABEL_133:
                    v105 = objc_alloc(MEMORY[0x277D02660]);
                    documentCopy = document;
                    v98 = [v105 initWithPixelWidth:v158 pixelHeight:HIDWORD(v158)];
                    [v98 setAllowsMultiPassEncoding:{-[TDSimpleArtworkRenditionSpec allowsMultiPassEncoding](self, "allowsMultiPassEncoding")}];
                    [v98 setAllowsOptimalRowbytesPacking:{-[TDSimpleArtworkRenditionSpec allowsOptimalRowbytesPacking](self, "allowsOptimalRowbytesPacking")}];
                    [v98 setAllowsCompactCompression:{-[TDSimpleArtworkRenditionSpec allowsCompactCompression](self, "allowsCompactCompression")}];
                    [v98 setPixelFormat:objc_msgSend(v75, "pixelFormat")];
                    [v98 setColorSpaceID:{objc_msgSend(v75, "colorSpaceID")}];
                    [v98 setSourceAlphaInfo:AlphaInfo];
                    [v98 setTargetPlatform:{objc_msgSend(documentCopy, "targetPlatform")}];
                    [v75 addBitmap:v98];
                    bitmapContext = [v98 bitmapContext];
                    if (CGImageGetBitsPerComponent(v77) >= 9 && CGBitmapContextGetBitsPerComponent(bitmapContext) == 8)
                    {
                      v108 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
                      v109 = CUIConvertDeepImageTo8();
                      if (v109)
                      {
                        v110 = v109;
                        CFRelease(v77);
                        v77 = v110;
                      }

                      CFRelease(v108);
                    }

                    if (v155 == 1)
                    {
                      if (bitmapContext && [v47 count])
                      {
                        CGContextSaveGState(bitmapContext);
                        CGContextSetBlendMode(bitmapContext, kCGBlendModeCopy);
                        if ([v47 count])
                        {
                          v111 = 0;
                          do
                          {
                            [objc_msgSend(v154 objectAtIndex:{v111), "rectValue"}];
                            v113 = v112;
                            v115 = v114;
                            v117 = v116;
                            v119 = v118;
                            [objc_msgSend(v47 objectAtIndex:{v111), "rectValue"}];
                            if (v117 > 0.0 && v119 > 0.0)
                            {
                              v124 = v120;
                              v125 = v122;
                              v126 = v123;
                              if ((v134 & 0xFFFFFFFE) == 2)
                              {
                                v127 = SHIDWORD(v158) - (v121 + v123);
                              }

                              else
                              {
                                v127 = v121;
                              }

                              v165.origin.x = v113;
                              v165.origin.y = v115;
                              v165.size.width = v117;
                              v165.size.height = v119;
                              v128 = CGImageCreateWithImageInRect(v77, v165);
                              v166.origin.x = v124;
                              v166.origin.y = v127;
                              v166.size.width = v125;
                              v166.size.height = v126;
                              CGContextDrawImage(bitmapContext, v166, v128);
                              CGImageRelease(v128);
                            }

                            ++v111;
                          }

                          while (v111 < [v47 count]);
                        }

                        CGContextRestoreGState(bitmapContext);
                      }
                    }

                    else if (bitmapContext)
                    {
                      v167.origin.x = 0.0;
                      v167.origin.y = 0.0;
                      v167.size.width = Width;
                      v167.size.height = v17;
                      CGContextDrawImage(bitmapContext, v167, v77);
                    }

                    goto LABEL_120;
                  }
                }

LABEL_119:
                v98 = 0;
LABEL_120:
                v146 = 0u;
                v147 = 0u;
                v144 = 0u;
                v145 = 0u;
                v99 = [v47 countByEnumeratingWithState:&v144 objects:v159 count:16];
                if (v99)
                {
                  v100 = v99;
                  v101 = *v145;
                  do
                  {
                    for (i = 0; i != v100; ++i)
                    {
                      if (*v145 != v101)
                      {
                        objc_enumerationMutation(v47);
                      }

                      [*(*(&v144 + 1) + 8 * i) rectValue];
                      [v75 addSliceRect:?];
                    }

                    v100 = [v47 countByEnumeratingWithState:&v144 objects:v159 count:16];
                  }

                  while (v100);
                }

                [(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters];
                [v75 setPhysicalSizeInMeters:?];
                [v75 setTemplateRenderingMode:{objc_msgSend(objc_msgSend(production, "templateRenderingMode"), "identifier")}];
                [v75 setOptOutOfThinning:{objc_msgSend(production, "optOutOfThinning")}];
                [v75 setPreserveForArchiveOnly:{-[TDSimpleArtworkRenditionSpec preserveForArchiveOnly](self, "preserveForArchiveOnly")}];
                [v75 setPreservedVectorRepresentation:{objc_msgSend(production, "preservesVectorRepresentation")}];
                [v75 setIsFlippable:{objc_msgSend(production, "isFlippable")}];
                [v75 setExcludedFromContrastFilter:{objc_msgSend(objc_msgSend(production, "isExcludedFromFilter"), "BOOLValue")}];
                [v75 setRenditionProperties:{-[TDRenditionSpec propertiesAsDictionary](self, "propertiesAsDictionary")}];
                v14 = [v75 CSIRepresentationWithCompression:v136];

                CGImageRelease(v77);
                return v14;
              }

              if (allowsExtendedRangePixelFormats)
              {
                v88 = 6;
              }

              else
              {
                v88 = 2;
              }
            }

            LOBYTE(BitsPerComponent) = v85;
          }

          else
          {
            if (monochrome)
            {
              v88 = 2;
            }

            else
            {
              v88 = 1;
            }

            if (monochrome)
            {
              v89 = 1195456544;
            }

            else
            {
              v89 = 1095911234;
            }

            [v75 setPixelFormat:v89];
            LOBYTE(BitsPerComponent) = v85;
          }

          asset = v139;
          goto LABEL_105;
        }

LABEL_88:
        v88 = v135;
        goto LABEL_105;
      }

      mediaBox.origin.x = 0.0;
      v48 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v18 options:2 error:0];
      v49 = v48;
      if (v156 == 1246774599 || v156 == 1212500294)
      {
        v50 = CGImageSourceCreateWithData(v48, 0);
        if (v50)
        {
          v51 = v50;
          v132 = BitsPerComponent;
          documentCopy2 = document;
          v52 = CGImageSourceCopyMetadataAtIndex(v50, 0, 0);
          v53 = objc_alloc_init(MEMORY[0x277CBEB38]);
          cf = v52;
          [v53 setObject:v52 forKey:*MEMORY[0x277CD2D58]];
          v54 = objc_alloc_init(MEMORY[0x277CBEB28]);
          Type = CGImageSourceGetType(v51);
          v56 = CGImageDestinationCreateWithData(v54, Type, 1uLL, 0);
          if (v56)
          {
            v57 = v56;
            value[0] = 0;
            v58 = v49;
            v59 = production;
            v60 = *MEMORY[0x277CBED28];
            [v53 setObject:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CD2D88]];
            v61 = v60;
            production = v59;
            [v53 setObject:v61 forKey:*MEMORY[0x277CD2D80]];
            v62 = CGImageDestinationCopyImageSource(v57, v51, v53, value);
            if (v62)
            {
              v63 = v58;
            }

            else
            {
              v63 = v54;
            }

            if (v62)
            {
              v49 = v54;
            }

            else
            {
              v49 = v58;
            }

            CFRelease(v57);
          }

          else
          {
          }

          document = documentCopy2;
          asset = v139;

          CFRelease(cf);
          CFRelease(v51);
          LOBYTE(BitsPerComponent) = v132;
        }

        v84 = objc_alloc(MEMORY[0x277D02668]);
        v75 = [v84 initWithRawData:v49 pixelFormat:v156 layout:v15];
        [v75 setName:{objc_msgSend(asset, "name")}];
        [v75 setAllowsPaletteImageCompression:{-[TDSimpleArtworkRenditionSpec allowsPaletteImageCompression](self, "allowsPaletteImageCompression")}];
        [v75 setAllowsHevcCompression:{-[TDSimpleArtworkRenditionSpec allowsHevcCompression](self, "allowsHevcCompression")}];
        [v75 setAllowsDeepmapImageCompression:{-[TDSimpleArtworkRenditionSpec allowsDeepmapCompression](self, "allowsDeepmapCompression")}];
        [v75 setAllowsDeepmap2ImageCompression:{-[TDSimpleArtworkRenditionSpec allowsDeepmap2Compression](self, "allowsDeepmap2Compression")}];
        [v75 setTargetPlatform:{objc_msgSend(document, "targetPlatform")}];
LABEL_79:
        v77 = image;

        if (!image)
        {
          goto LABEL_88;
        }

        goto LABEL_80;
      }

      v79 = objc_alloc(MEMORY[0x277D02668]);
      v75 = [v79 initWithRawData:v49 pixelFormat:v156 layout:1000];
      [v75 setAllowsPaletteImageCompression:{-[TDSimpleArtworkRenditionSpec allowsPaletteImageCompression](self, "allowsPaletteImageCompression")}];
      [v75 setAllowsHevcCompression:{-[TDSimpleArtworkRenditionSpec allowsHevcCompression](self, "allowsHevcCompression")}];
      [v75 setAllowsDeepmapImageCompression:{-[TDSimpleArtworkRenditionSpec allowsDeepmapCompression](self, "allowsDeepmapCompression")}];
      [v75 setAllowsDeepmap2ImageCompression:{-[TDSimpleArtworkRenditionSpec allowsDeepmap2Compression](self, "allowsDeepmap2Compression")}];
      [v75 setTargetPlatform:{objc_msgSend(document, "targetPlatform")}];
      if ([objc_msgSend(-[TDSimpleArtworkRenditionSpec production](self "production")])
      {
        v80 = COERCE_DOUBLE([-[TDSimpleArtworkRenditionSpec production](self "production")]);
      }

      else
      {
        if (![v18 getResourceValue:&mediaBox forKey:*MEMORY[0x277CBE918] error:0])
        {
          [v75 setName:{objc_msgSend(asset, "name")}];
          goto LABEL_78;
        }

        v80 = mediaBox.origin.x;
      }

      [v75 setUtiType:*&v80];
LABEL_78:
      v135 = 0;
      goto LABEL_79;
    }

    return 0;
  }

  if (v156 == 1398163232)
  {
    goto LABEL_65;
  }

  if (v156 != 1346651680)
  {
    goto LABEL_7;
  }

  v20 = CGPDFDocumentCreateWithURL(v18);
  if (!v20)
  {
LABEL_65:
    v43 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v18 options:2 error:0];
  }

  else
  {
    v21 = v20;
    imagea = production;
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v23 = *MEMORY[0x277CBEEE8];
    v24 = *MEMORY[0x277CBF5C0];
    [v22 setObject:*MEMORY[0x277CBEEE8] forKeyedSubscript:*MEMORY[0x277CBF5C0]];
    v25 = *MEMORY[0x277CBF590];
    [v22 setObject:v23 forKeyedSubscript:*MEMORY[0x277CBF590]];
    v26 = *MEMORY[0x277CBF588];
    [v22 setObject:v23 forKeyedSubscript:*MEMORY[0x277CBF588]];
    Info = CGPDFDocumentGetInfo(v21);
    if (Info)
    {
      v28 = Info;
      value[0] = 0;
      if (CGPDFDictionaryGetString(Info, "Producer", value))
      {
        v29 = CGPDFStringCopyTextString(value[0]);
        if (v29)
        {
          v30 = v29;
          [v22 setObject:v29 forKeyedSubscript:v24];
          CFRelease(v30);
        }
      }

      v138 = asset;
      if (CGPDFDictionaryGetString(v28, "CreationDate", value))
      {
        v31 = CGPDFStringCopyDate(value[0]);
        if (v31)
        {
          v32 = v31;
          [v22 setObject:v31 forKeyedSubscript:v26];
          CFRelease(v32);
        }
      }

      ID = CGPDFDocumentGetID(v21);
      Count = CGPDFArrayGetCount(ID);
      if (Count)
      {
        v35 = Count;
        v137 = v25;
        v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v37 = 0;
        v38 = *MEMORY[0x277CBECE8];
        do
        {
          if (CGPDFArrayGetString(ID, v37, value))
          {
            BytePtr = CGPDFStringGetBytePtr(value[0]);
            Length = CGPDFStringGetLength(value[0]);
            if (Length)
            {
              v41 = CFDataCreate(v38, BytePtr, Length);
              [v36 addObject:v41];
              CFRelease(v41);
            }
          }

          ++v37;
        }

        while (v35 != v37);
        [v22 setObject:v36 forKeyedSubscript:v137];
      }

      asset = v138;
    }

    CGPDFDocumentEnableTaggedStructureSerialization();
    Page = CGPDFDocumentGetPage(v21, 1uLL);
    mediaBox = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
    v43 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v44 = CGDataConsumerCreateWithCFData(v43);
    v45 = CGPDFContextCreate(v44, &mediaBox, v22);
    CGDataConsumerRelease(v44);
    CGPDFContextBeginPage(v45, 0);
    CGContextDrawPDFPage(v45, Page);
    CGPDFContextEndPage(v45);
    CGPDFContextClose(v45);
    CGContextRelease(v45);
    CGPDFDocumentRelease(v21);

    production = imagea;
  }

  v81 = objc_alloc(MEMORY[0x277D02668]);
  v82 = [v81 initWithRawData:v43 pixelFormat:v156 layout:9];
  [v82 setIsVectorBased:1];
  [v82 setName:{objc_msgSend(asset, "name")}];
  if (v156 == 1398163232)
  {
    colorSpaceID = [(TDSimpleArtworkRenditionSpec *)self colorSpaceID];
  }

  else
  {
    colorSpaceID = 0;
  }

  [v82 setColorSpaceID:colorSpaceID];
  [v82 setScaleFactor:0];
  [v82 setIsFlippable:{objc_msgSend(production, "isFlippable")}];
  [(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters];
  [v82 setPhysicalSizeInMeters:?];
  [v82 setAllowsPaletteImageCompression:{-[TDSimpleArtworkRenditionSpec allowsPaletteImageCompression](self, "allowsPaletteImageCompression")}];
  [v82 setAllowsHevcCompression:{-[TDSimpleArtworkRenditionSpec allowsHevcCompression](self, "allowsHevcCompression")}];
  [v82 setAllowsDeepmapImageCompression:{-[TDSimpleArtworkRenditionSpec allowsDeepmapCompression](self, "allowsDeepmapCompression")}];
  [v82 setAllowsDeepmap2ImageCompression:{-[TDSimpleArtworkRenditionSpec allowsDeepmap2Compression](self, "allowsDeepmap2Compression")}];
  [v82 setTargetPlatform:{objc_msgSend(document, "targetPlatform")}];
  if (v156 == 1398163232)
  {
    [v82 setCompressionType:2];
  }

  v14 = [v82 CSIRepresentationWithCompression:0];

  return v14;
}

- (CGSize)_scaleRecognitionImageFromSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters];
  if (v6 > 0.0 || ([(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters], v7 > 0.0))
  {
    if (width <= height)
    {
      if (height > 640.0)
      {
        width = round(width * (640.0 / height));
        height = 640.0;
      }
    }

    else if (width > 640.0)
    {
      height = round(height * (640.0 / width));
      width = 640.0;
    }
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)updatePackingPropertiesWithDocument:(id)document
{
  asset = [(TDSimpleArtworkRenditionSpec *)self asset];
  v81.receiver = self;
  v81.super_class = TDSimpleArtworkRenditionSpec;
  [(TDRenditionSpec *)&v81 updatePackingPropertiesWithDocument:document];
  v6 = [asset fileURLWithDocument:document];
  pathExtension = [v6 pathExtension];
  v8 = [pathExtension length];
  if (![pathExtension caseInsensitiveCompare:@"PDF"])
  {
    if (![asset scaleFactor])
    {
      return 1;
    }

    v22 = CGPDFDocumentCreateWithURL(v6);
    if (!v22)
    {
      return 1;
    }

    v23 = v22;
    Page = CGPDFDocumentGetPage(v22, 1uLL);
    BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
    width = BoxRect.size.width;
    height = BoxRect.size.height;
    scaleFactor = [asset scaleFactor];
    [(TDSimpleArtworkRenditionSpec *)self postScaleFactor];
    v29 = v28 * scaleFactor;
    fileScaleFactor = [asset fileScaleFactor];
    if (!fileScaleFactor)
    {
      fileScaleFactor = +[TDAsset scaleFactorFromImageFilename:](TDAsset, "scaleFactorFromImageFilename:", [v6 path]);
    }

    v32 = fileScaleFactor;
    LODWORD(v31) = llround(v29 * (width / fileScaleFactor));
    [(TDSimpleArtworkRenditionSpec *)self setWidth:v31];
    LODWORD(v33) = llround(v29 * (height / v32));
    [(TDSimpleArtworkRenditionSpec *)self setHeight:v33];
    if ([-[TDSimpleArtworkRenditionSpec production](self "production")])
    {
      [(TDSimpleArtworkRenditionSpec *)self setMonochrome:1];
    }

    else
    {
      LODWORD(v72) = 0;
      LOBYTE(v67) = 0;
      v41 = [(TDSimpleArtworkRenditionSpec *)self _createImageRefWithURL:v6 andDocument:document format:&v72 vectorBased:&v67];
      [(TDSimpleArtworkRenditionSpec *)self setMonochrome:CUIImageIsMonochrome()];
      CFRelease(v41);
    }

    v42 = v23;
LABEL_31:
    CFRelease(v42);
    return 1;
  }

  if (![objc_msgSend(v6 "pathExtension")])
  {
    if (![asset scaleFactor] || (objc_msgSend(asset, "rawData") & 1) != 0)
    {
      return 1;
    }

    LODWORD(v72) = 0;
    LOBYTE(v67) = 0;
    v34 = [(TDSimpleArtworkRenditionSpec *)self _createImageRefWithURL:v6 andDocument:document format:&v72 vectorBased:&v67];
    [(TDSimpleArtworkRenditionSpec *)self setWidth:CGImageGetWidth(v34)];
    [(TDSimpleArtworkRenditionSpec *)self setHeight:CGImageGetHeight(v34)];
    if ([-[TDSimpleArtworkRenditionSpec production](self "production")])
    {
      IsMonochrome = 1;
    }

    else
    {
      IsMonochrome = CUIImageIsMonochrome();
    }

    [(TDSimpleArtworkRenditionSpec *)self setMonochrome:IsMonochrome];
    v42 = v34;
    goto LABEL_31;
  }

  if (v8)
  {
    if ([pathExtension caseInsensitiveCompare:@"JPEG"] && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"JPG"))
    {
      if (![pathExtension caseInsensitiveCompare:@"PNG"])
      {
        v9 = [asset sourceImageWithDocument:document];
        if (v9)
        {
          v10 = v9;
          v80 = 0;
          v79 = 0;
          v78 = 0;
          v72 = 0;
          v73 = &v72;
          v74 = 0x4010000000;
          v75 = &unk_247A5213F;
          v11 = *(MEMORY[0x277CBF3A0] + 16);
          v76 = *MEMORY[0x277CBF3A0];
          v77 = v11;
          v67 = 0;
          v68 = &v67;
          v70 = &unk_247A5213F;
          v69 = 0x3010000000;
          v71 = *MEMORY[0x277CBF3A8];
          v63 = 0;
          v64 = &v63;
          v65 = 0x2020000000;
          v66 = 0;
          v59 = 0;
          v60 = &v59;
          v61 = 0x2020000000;
          v62 = 0;
          v55 = 0;
          v56 = &v55;
          v57 = 0x2020000000;
          v58 = 0;
          v51 = 0;
          v52 = &v51;
          v53 = 0x2020000000;
          v54 = 0;
          v47 = 0;
          v48 = &v47;
          v49 = 0x2020000000;
          v50 = 0;
          alphaCrop = [(TDSimpleArtworkRenditionSpec *)self alphaCrop];
          identifier = [(TDThemeConstant *)[(TDRenditionSpec *)self renditionType] identifier];
          v48[3] = identifier;
          [v10 size];
          [(TDSimpleArtworkRenditionSpec *)self _scaleRecognitionImageFromSize:?];
          v15 = v14;
          v17 = v16;
          v18 = [-[TDSimpleArtworkRenditionSpec production](self "production")];
          *(v60 + 24) = v18;
          v19 = [-[TDSimpleArtworkRenditionSpec production](self "production")];
          *(v56 + 24) = v19;
          global_queue = dispatch_get_global_queue(0, 0);
          v21 = dispatch_group_create();
          LODWORD(v80) = v15;
          HIDWORD(v80) = v17;
          [(TDSimpleArtworkRenditionSpec *)self _sliceRectanglesForRenditionSize:v80 unadjustedSliceRectangles:&v78 imageSlicesNeedAdjustment:&v79 newRenditionSize:&v80];
          [(TDSimpleArtworkRenditionSpec *)self setWidth:v80];
          [(TDSimpleArtworkRenditionSpec *)self setHeight:HIDWORD(v80)];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __68__TDSimpleArtworkRenditionSpec_updatePackingPropertiesWithDocument___block_invoke;
          block[3] = &unk_278EBB5B8;
          block[4] = v10;
          block[5] = &v47;
          v46 = alphaCrop;
          block[6] = &v67;
          block[7] = &v72;
          block[8] = &v59;
          block[9] = &v63;
          block[10] = v80;
          dispatch_group_async(v21, global_queue, block);
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __68__TDSimpleArtworkRenditionSpec_updatePackingPropertiesWithDocument___block_invoke_2;
          v44[3] = &unk_278EBB5E0;
          v44[6] = &v51;
          v44[4] = v10;
          v44[5] = &v55;
          dispatch_group_async(v21, global_queue, v44);
          dispatch_group_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
          dispatch_release(v21);
          if (((v48[3] == 0) & alphaCrop) == 1)
          {
            if (!CGRectIsEmpty(v73[1]))
            {
              [(TDSimpleArtworkRenditionSpec *)self setWidth:v73[1].size.width];
              [(TDSimpleArtworkRenditionSpec *)self setHeight:v73[1].size.height];
            }

            [(TDSimpleArtworkRenditionSpec *)self setOriginalImageSizeString:NSStringFromSize(v68[2])];
            [(TDSimpleArtworkRenditionSpec *)self setNonAlphaImageAreaString:NSStringFromRect(v73[1])];
          }

          else
          {
            [(TDSimpleArtworkRenditionSpec *)self setOpaque:*(v64 + 24)];
          }

          [(TDSimpleArtworkRenditionSpec *)self setMonochrome:*(v52 + 24)];
          _Block_object_dispose(&v47, 8);
          _Block_object_dispose(&v51, 8);
          _Block_object_dispose(&v55, 8);
          _Block_object_dispose(&v59, 8);
          _Block_object_dispose(&v63, 8);
          _Block_object_dispose(&v67, 8);
          _Block_object_dispose(&v72, 8);
        }
      }
    }

    else if (([(TDSimpleArtworkRenditionSpec *)self alphaCrop]& 1) != 0 || ([(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters], v36 > 0.0) || ([(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters], v37 > 0.0))
    {
      v38 = [asset sourceImageWithDocument:document];
      if (v38)
      {
        LOBYTE(v63) = 0;
        v67 = 0;
        [v38 size];
        [(TDSimpleArtworkRenditionSpec *)self _scaleRecognitionImageFromSize:?];
        LODWORD(v72) = v39;
        HIDWORD(v72) = v40;
        [(TDSimpleArtworkRenditionSpec *)self _sliceRectanglesForRenditionSize:v72 unadjustedSliceRectangles:&v67 imageSlicesNeedAdjustment:&v63 newRenditionSize:&v72];
        [(TDSimpleArtworkRenditionSpec *)self setWidth:v72];
        [(TDSimpleArtworkRenditionSpec *)self setHeight:HIDWORD(v72)];
        [(TDSimpleArtworkRenditionSpec *)self setOpaque:1];
      }
    }
  }

  return 1;
}

__n128 __68__TDSimpleArtworkRenditionSpec_updatePackingPropertiesWithDocument___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) image])
  {
    if (*(*(*(a1 + 40) + 8) + 24) || *(a1 + 88) != 1)
    {
      v13 = *(*(*(a1 + 64) + 8) + 24);
      v14 = [*(a1 + 32) image];
      if (v13 == 1)
      {
        AlphaInfo = CUICGImageGetAlphaInfo();
      }

      else
      {
        AlphaInfo = CGImageGetAlphaInfo(v14);
      }

      if (AlphaInfo == 5 || AlphaInfo == 0)
      {
        *(*(*(a1 + 72) + 8) + 24) = 1;
      }
    }

    else
    {
      v3 = *(a1 + 80);
      v4.i64[0] = v3;
      v4.i64[1] = SHIDWORD(v3);
      *(*(*(a1 + 48) + 8) + 32) = vcvtq_f64_s64(v4);
      [*(a1 + 32) image];
      CUICalcNonAlphaAreaOfImage();
      v5 = *(*(a1 + 56) + 8);
      v5[4] = v6;
      v5[5] = v7;
      v5[6] = v8;
      v5[7] = v9;
      IsEmpty = CGRectIsEmpty(*(*(*(a1 + 56) + 8) + 32));
      v11 = *(a1 + 48);
      if (IsEmpty)
      {
        v12 = *(v11 + 8);
LABEL_18:
        *(v12 + 32) = *MEMORY[0x277CBF3A8];
        v18 = *(*(a1 + 56) + 8);
        result = *(MEMORY[0x277CBF3A0] + 16);
        *(v18 + 32) = *MEMORY[0x277CBF3A0];
        *(v18 + 48) = result;
        return result;
      }

      v17 = *(*(a1 + 56) + 8);
      result.n128_u64[0] = *(v17 + 56);
      v12 = *(v11 + 8);
      if (result.n128_f64[0] == *(v12 + 40))
      {
        result.n128_u64[0] = *(v17 + 48);
        if (result.n128_f64[0] == *(v12 + 32))
        {
          goto LABEL_18;
        }
      }
    }
  }

  return result;
}

uint64_t __68__TDSimpleArtworkRenditionSpec_updatePackingPropertiesWithDocument___block_invoke_2(uint64_t result)
{
  v1 = result;
  if ((*(*(*(result + 40) + 8) + 24) & 1) != 0 || ([*(result + 32) image], result = CUIImageIsMonochrome(), result))
  {
    *(*(*(v1 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (void)drawPackableRenditionInContext:(CGContext *)context withDocument:(id)document
{
  v57 = 0;
  v56 = 1246774599;
  v55 = 0;
  v53 = 0;
  v54 = 0;
  [(TDRenditionSpec *)self packedPoint];
  v47 = v7;
  v48 = v8;
  identifier = [(TDThemeConstant *)[(TDRenditionSpec *)self renditionType] identifier];
  v10 = -[TDSimpleArtworkRenditionSpec _createImageRefWithURL:andDocument:format:vectorBased:](self, "_createImageRefWithURL:andDocument:format:vectorBased:", [-[TDSimpleArtworkRenditionSpec asset](self "asset")], document, &v56, &v57);
  if (CGImageGetBitsPerComponent(v10) >= 9 && CGBitmapContextGetBitsPerComponent(context) == 8)
  {
    v11 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    v12 = CUIConvertDeepImageTo8();
    if (v12)
    {
      v13 = v12;
      CFRelease(v10);
      v10 = v13;
    }

    CFRelease(v11);
  }

  Width = CGImageGetWidth(v10);
  Height = CGImageGetHeight(v10);
  v16 = Height;
  v53 = __PAIR64__(Height, Width);
  v17 = [(TDSimpleArtworkRenditionSpec *)self _sliceRectanglesForRenditionSize:__PAIR64__(Height unadjustedSliceRectangles:Width) imageSlicesNeedAdjustment:&v54 newRenditionSize:&v55, &v53];
  if (v55 == 1)
  {
    if (context)
    {
      v18 = v17;
      if ([v54 count])
      {
        CGContextSaveGState(context);
        x = *MEMORY[0x277CBF398];
        v51 = *(MEMORY[0x277CBF398] + 16);
        y = *(MEMORY[0x277CBF398] + 8);
        v50 = *(MEMORY[0x277CBF398] + 24);
        CGContextSetBlendMode(context, kCGBlendModeCopy);
        if ([v18 count])
        {
          v20 = 0;
          v21 = identifier & 0xFFFFFFFE;
          do
          {
            [objc_msgSend(v54 objectAtIndex:{v20), "rectValue"}];
            v23 = v22;
            v25 = v24;
            v27 = v26;
            v29 = v28;
            [objc_msgSend(v18 objectAtIndex:{v20), "rectValue"}];
            if (v27 > 0.0 && v29 > 0.0)
            {
              v34 = v30;
              v35 = v32;
              v36 = v33;
              v49 = x;
              if (v21 == 2)
              {
                v37 = SHIDWORD(v53) - (v31 + v33);
              }

              else
              {
                v37 = v31;
              }

              v58.origin.x = v23;
              v58.origin.y = v25;
              v58.size.width = v27;
              v58.size.height = v29;
              v38 = CGImageCreateWithImageInRect(v10, v58);
              v59.origin.x = v47 + v34;
              v59.origin.y = v48 + v37;
              v59.size.width = v35;
              v59.size.height = v36;
              CGContextDrawImage(context, v59, v38);
              CGImageRelease(v38);
              v60.origin.x = v49;
              v60.size.height = v50;
              v60.size.width = v51;
              v60.origin.y = y;
              v67.origin.x = v47 + v34;
              v67.origin.y = v48 + v37;
              v67.size.width = v35;
              v67.size.height = v36;
              v61 = CGRectUnion(v60, v67);
              x = v61.origin.x;
              v51 = v61.size.width;
              y = v61.origin.y;
              v50 = v61.size.height;
            }

            ++v20;
          }

          while (v20 < [v18 count]);
        }

        v39 = CGBitmapContextGetHeight(context) - (v50 + y);
        Image = CGBitmapContextCreateImage(context);
        v62.origin.x = x;
        v62.origin.y = v39;
        v62.size.width = v51;
        v62.size.height = v50;
        v41 = CGImageCreateWithImageInRect(Image, v62);
        CUICalculateExtrusionMaskOfImage();
        CUIDrawExtrudedImageInContext();
        CGImageRelease(Image);
        CGImageRelease(v41);
        CGContextRestoreGState(context);
      }
    }
  }

  else if (context)
  {
    v63 = NSRectFromString([(TDSimpleArtworkRenditionSpec *)self nonAlphaImageAreaString]);
    v42 = v63.origin.x;
    v43 = v63.origin.y;
    v44 = v63.size.width;
    v45 = v63.size.height;
    if (CGRectIsEmpty(v63))
    {
      CUICalculateExtrusionMaskOfImage();
      v64.origin.x = v47 + 0.0;
      v64.origin.y = v48 + 0.0;
      v64.size.width = Width;
      v64.size.height = v16;
      CGContextDrawImage(context, v64, v10);
      CUIDrawExtrudedImageInContext();
    }

    else
    {
      v65.origin.x = v42;
      v65.origin.y = v43;
      v65.size.width = v44;
      v65.size.height = v45;
      v46 = CGImageCreateWithImageInRect(v10, v65);
      CUICalculateExtrusionMaskOfImage();
      v66.origin.x = v47 + 0.0;
      v66.origin.y = v48 + 0.0;
      v66.size.width = v44;
      v66.size.height = v45;
      CGContextDrawImage(context, v66, v46);
      CUIDrawExtrudedImageInContext();
      CGImageRelease(v46);
    }
  }

  CGImageRelease(v10);
}

@end