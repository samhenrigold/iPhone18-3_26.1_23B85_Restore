@interface NTKExtragalacticDigitsView
- (NTKExtragalacticDigitsView)initWithFrame:(CGRect)frame device:(id)device digitNumbers:(id)numbers;
- (void)_setupShapeLayers;
- (void)setDigitNumbers:(id)numbers;
@end

@implementation NTKExtragalacticDigitsView

- (NTKExtragalacticDigitsView)initWithFrame:(CGRect)frame device:(id)device digitNumbers:(id)numbers
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  numbersCopy = numbers;
  v20.receiver = self;
  v20.super_class = NTKExtragalacticDigitsView;
  height = [(NTKExtragalacticDigitsView *)&v20 initWithFrame:x, y, width, height];
  v15 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v15->_lineWidth = sub_23BE52760(v16, deviceCopy);
    v17 = [[NTKExtragalacticDigitLoader alloc] initWithDevice:deviceCopy];
    digitLoader = v15->_digitLoader;
    v15->_digitLoader = v17;

    [(NTKExtragalacticDigitsView *)v15 _setupShapeLayers];
    [(NTKExtragalacticDigitsView *)v15 setDigitNumbers:numbersCopy];
  }

  return v15;
}

- (void)_setupShapeLayers
{
  v61 = *MEMORY[0x277D85DE8];
  if (qword_27E1DC290 != -1)
  {
    sub_23BE552CC();
  }

  v2 = qword_27E1DC288;
  layer = [MEMORY[0x277CD9ED0] layer];
  fillContainerLayer = self->_fillContainerLayer;
  self->_fillContainerLayer = layer;

  [(NTKExtragalacticDigitsView *)self bounds];
  [(CALayer *)self->_fillContainerLayer setFrame:?];
  [(CALayer *)self->_fillContainerLayer setActions:v2];
  layer2 = [(NTKExtragalacticDigitsView *)self layer];
  [layer2 addSublayer:self->_fillContainerLayer];

  layer3 = [MEMORY[0x277CD9ED0] layer];
  strokeContainerLayer = self->_strokeContainerLayer;
  self->_strokeContainerLayer = layer3;

  [(NTKExtragalacticDigitsView *)self bounds];
  [(CALayer *)self->_strokeContainerLayer setFrame:?];
  [(CALayer *)self->_strokeContainerLayer setOpacity:0.0];
  [(CALayer *)self->_strokeContainerLayer setActions:v2];
  layer4 = [(NTKExtragalacticDigitsView *)self layer];
  [layer4 addSublayer:self->_strokeContainerLayer];

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = sub_23BE51E40;
  v57[3] = &unk_278B9B6B0;
  v36 = v2;
  v58 = v36;
  v9 = MEMORY[0x23EEBF4B0](v57);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = sub_23BE51EC8;
  v55[3] = &unk_278B9B6D8;
  v10 = v9;
  v56 = v10;
  v43 = MEMORY[0x23EEBF4B0](v55);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = sub_23BE51FA4;
  v53[3] = &unk_278B9B700;
  v35 = v10;
  v53[4] = self;
  v54 = v35;
  v42 = MEMORY[0x23EEBF4B0](v53);
  v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  glyphFillLayers = self->_glyphFillLayers;
  self->_glyphFillLayers = v11;

  v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  glyphStrokeLayers = self->_glyphStrokeLayers;
  self->_glyphStrokeLayers = v13;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = +[NTKExtragalacticLayoutHelper allCorners];
  v39 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v39)
  {
    v38 = *v50;
    do
    {
      v15 = 0;
      do
      {
        if (*v50 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v49 + 1) + 8 * v15);
        v41 = v15;
        unsignedIntegerValue = [v40 unsignedIntegerValue];
        [(NTKExtragalacticDigitsView *)self bounds];
        [NTKExtragalacticLayoutHelper frameForCorner:unsignedIntegerValue screenBounds:?];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v25 = objc_opt_new();
        v26 = objc_opt_new();
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v27 = [&unk_284E9BC00 countByEnumeratingWithState:&v45 objects:v59 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v46;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v46 != v29)
              {
                objc_enumerationMutation(&unk_284E9BC00);
              }

              unsignedIntegerValue2 = [*(*(&v45 + 1) + 8 * i) unsignedIntegerValue];
              v32 = [NTKExtragalacticColors identityColorForGlyphColor:unsignedIntegerValue2];
              v33 = (v43)[2](v43, v32, v18, v20, v22, v24);
              [(CALayer *)self->_fillContainerLayer addSublayer:v33];
              [v25 setShapeLayer:v33 atGlyphColor:unsignedIntegerValue2];
              v34 = (v42)[2](v42, v32, v18, v20, v22, v24);
              [(CALayer *)self->_strokeContainerLayer addSublayer:v34];
              [v26 setShapeLayer:v34 atGlyphColor:unsignedIntegerValue2];
            }

            v28 = [&unk_284E9BC00 countByEnumeratingWithState:&v45 objects:v59 count:16];
          }

          while (v28);
        }

        [(NSMutableDictionary *)self->_glyphFillLayers setObject:v25 forKeyedSubscript:v40];
        [(NSMutableDictionary *)self->_glyphStrokeLayers setObject:v26 forKeyedSubscript:v40];

        v15 = v41 + 1;
      }

      while (v41 + 1 != v39);
      v39 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v39);
  }
}

- (void)setDigitNumbers:(id)numbers
{
  v67[3] = *MEMORY[0x277D85DE8];
  numbersCopy = numbers;
  selfCopy = self;
  if (self->_digitNumbers == numbersCopy)
  {
    goto LABEL_37;
  }

  if (qword_27E1DC2A0 != -1)
  {
    sub_23BE552E0();
  }

  v45 = qword_27E1DC298;
  v5 = [(NSMutableDictionary *)numbersCopy objectForKeyedSubscript:&unk_284E9B950];
  v6 = [v5 isEqual:&unk_284E9B980];

  if (v6)
  {
    if (qword_27E1DC2B0 != -1)
    {
      sub_23BE552F4();
    }

    v7 = qword_27E1DC2A8;

    v66[0] = &unk_284E9B920;
    v66[1] = &unk_284E9B938;
    v67[0] = &unk_284E9B950;
    v67[1] = &unk_284E9B920;
    v66[2] = &unk_284E9B950;
    v67[2] = &unk_284E9B938;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:3];
    v45 = v7;
    goto LABEL_13;
  }

  v8 = [(NSMutableDictionary *)numbersCopy objectForKeyedSubscript:&unk_284E9B950];
  if (([v8 isEqual:&unk_284E9B998] & 1) == 0)
  {

    goto LABEL_12;
  }

  v9 = [(NSMutableDictionary *)numbersCopy objectForKeyedSubscript:&unk_284E9B968];
  v10 = [v9 isEqual:&unk_284E9B9B0];

  if (!v10)
  {
LABEL_12:
    v52 = 0;
    goto LABEL_13;
  }

  v64[0] = &unk_284E9B920;
  v64[1] = &unk_284E9B938;
  v65[0] = &unk_284E9B950;
  v65[1] = &unk_284E9B938;
  v64[2] = &unk_284E9B950;
  v65[2] = &unk_284E9B920;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:3];
LABEL_13:
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = +[NTKExtragalacticLayoutHelper allCorners];
  v47 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v47)
  {
    v46 = *v59;
    v43 = numbersCopy;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v59 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v58 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)selfCopy->_digitNumbers objectForKeyedSubscript:v12];
        v14 = [(NSMutableDictionary *)numbersCopy objectForKeyedSubscript:v12];

        if (v13 != v14)
        {
          v49 = i;
          unsignedIntegerValue = [v12 unsignedIntegerValue];
          [(NTKExtragalacticDigitsView *)selfCopy bounds];
          [NTKExtragalacticLayoutHelper frameForCorner:unsignedIntegerValue screenBounds:?];
          v16 = [(NSMutableDictionary *)numbersCopy objectForKeyedSubscript:v12];
          [(NSMutableDictionary *)selfCopy->_digitNumbers setObject:v16 forKeyedSubscript:v12];
          v17 = [v45 objectForKeyedSubscript:v12];
          unsignedIntegerValue2 = [v17 unsignedIntegerValue];

          v48 = v16;
          v19 = [(NTKExtragalacticDigitLoader *)selfCopy->_digitLoader digitDrawInfoForNumber:v16 style:unsignedIntegerValue2];
          v20 = v19;
          if (v19)
          {
            [v19 unifiedGlyphSize];
            [NTKExtragalacticLayoutHelper digitCenterPositionForCorner:"digitCenterPositionForCorner:unifiedGlyphSize:cornerFrame:" unifiedGlyphSize:unsignedIntegerValue cornerFrame:?];
            v22 = v21;
            v24 = v23;
            v25 = [(NSMutableDictionary *)selfCopy->_glyphFillLayers objectForKeyedSubscript:v12];
            [v25 removeAllPaths];

            v26 = [(NSMutableDictionary *)selfCopy->_glyphStrokeLayers objectForKeyedSubscript:v12];
            [v26 removeAllPaths];

            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            paths = [v20 paths];
            allKeys = [paths allKeys];

            v50 = allKeys;
            v29 = [allKeys countByEnumeratingWithState:&v54 objects:v62 count:16];
            if (v29)
            {
              v30 = v29;
              v53 = *v55;
              do
              {
                for (j = 0; j != v30; ++j)
                {
                  if (*v55 != v53)
                  {
                    objc_enumerationMutation(v50);
                  }

                  v32 = *(*(&v54 + 1) + 8 * j);
                  unsignedIntegerValue3 = [v32 unsignedIntegerValue];
                  paths2 = [v20 paths];
                  v35 = [paths2 objectForKeyedSubscript:v32];

                  if ([v12 isEqual:&unk_284E9B950] && v52)
                  {
                    v36 = [v52 objectForKeyedSubscript:v32];
                    paths3 = [v20 paths];
                    v38 = [paths3 objectForKeyedSubscript:v36];

                    v35 = v38;
                  }

                  if (v35)
                  {
                    v39 = [(NSMutableDictionary *)selfCopy->_glyphFillLayers objectForKeyedSubscript:v12];
                    [v39 setPath:v35 forGlyphColor:unsignedIntegerValue3];

                    v40 = [(NSMutableDictionary *)selfCopy->_glyphFillLayers objectForKeyedSubscript:v12];
                    [v40 setPosition:{v22, v24}];

                    v41 = [(NSMutableDictionary *)selfCopy->_glyphStrokeLayers objectForKeyedSubscript:v12];
                    [v41 setPath:v35 forGlyphColor:unsignedIntegerValue3];

                    v42 = [(NSMutableDictionary *)selfCopy->_glyphStrokeLayers objectForKeyedSubscript:v12];
                    [v42 setPosition:{v22, v24}];
                  }
                }

                v30 = [v50 countByEnumeratingWithState:&v54 objects:v62 count:16];
              }

              while (v30);
            }

            numbersCopy = v43;
          }

          i = v49;
        }
      }

      v47 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v47);
  }

LABEL_37:
}

@end