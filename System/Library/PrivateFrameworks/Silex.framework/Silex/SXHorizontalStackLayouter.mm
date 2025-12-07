@interface SXHorizontalStackLayouter
- (SXLayouterDelegate)delegate;
- (double)calculateSizeForComponentWithBlueprint:(void *)blueprint width:(double)width layoutContext:;
- (double)calculateSizeForContainerComponentWithBlueprint:(void *)blueprint width:(void *)width layoutContext:(uint64_t)context layoutDescription:(double)description shouldContinue:;
- (id)childColumnLayoutForContainerComponentWidth:(void *)width componentWidth:(void *)componentWidth componentBlueprint:(double)blueprint columnLayout:(double)layout unitConverter:;
- (id)initWithContainerComponent:(void *)component layouterFactory:(void *)factory columnCalculator:(void *)calculator layoutContextFactory:(void *)contextFactory unitConverterFactory:;
- (void)calculatePositionForComponentWithBlueprint:layout:unitConverter:margin:maximumY:layoutBlueprint:;
- (void)layoutBlueprint:(id)blueprint columnLayout:(id)layout description:(id)description shouldContinue:(BOOL *)continue;
@end

@implementation SXHorizontalStackLayouter

- (SXLayouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (id)initWithContainerComponent:(void *)component layouterFactory:(void *)factory columnCalculator:(void *)calculator layoutContextFactory:(void *)contextFactory unitConverterFactory:
{
  v18 = a2;
  componentCopy = component;
  factoryCopy = factory;
  calculatorCopy = calculator;
  contextFactoryCopy = contextFactory;
  if (self)
  {
    v19.receiver = self;
    v19.super_class = SXHorizontalStackLayouter;
    v16 = objc_msgSendSuper2(&v19, sel_init);
    self = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 2, a2);
      objc_storeStrong(self + 3, component);
      objc_storeStrong(self + 4, factory);
      objc_storeStrong(self + 5, calculator);
      objc_storeStrong(self + 6, contextFactory);
    }
  }

  return self;
}

- (void)layoutBlueprint:(id)blueprint columnLayout:(id)layout description:(id)description shouldContinue:(BOOL *)continue
{
  OUTLINED_FUNCTION_9_0();
  v198 = v6;
  v8 = v7;
  v10 = v9;
  v210 = v11;
  v245 = *MEMORY[0x1E69E9840];
  v13 = v12;
  v199 = v10;
  v200 = v8;
  v14 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    taskIdentifier = [v200 taskIdentifier];
    OUTLINED_FUNCTION_2_1(taskIdentifier, 3.8521e-34);
    _os_log_impl(&dword_1D825C000, v15, OS_LOG_TYPE_DEFAULT, "Starting horizontal stack layout, blueprint=%p, task-identifier=%{public}@", v244, 0x16u);
  }

  if (v210)
  {
    v17 = v210[2];
  }

  else
  {
    v17 = 0;
  }

  layoutBlueprint = [v17 layoutBlueprint];
  componentIdentifiers = [layoutBlueprint componentIdentifiers];
  v20 = [componentIdentifiers copy];

  if (v210)
  {
    v21 = v210[2];
  }

  else
  {
    v21 = 0;
  }

  componentLayout = [v21 componentLayout];
  if (v210)
  {
    v23 = v210[2];
  }

  else
  {
    v23 = 0;
  }

  componentSizer = [v23 componentSizer];
  v25 = [componentSizer shouldIgnoreMarginsForColumnLayout:v199];

  if (v210)
  {
    v26 = v210[2];
  }

  else
  {
    v26 = 0;
  }

  componentSizer2 = [v26 componentSizer];
  v28 = [componentSizer2 shouldIgnoreViewportPaddingForColumnLayout:v199];

  if (v210)
  {
    v29 = v210[2];
  }

  else
  {
    v29 = 0;
  }

  columnRange = [v29 columnRange];
  [v199 widthForColumnRange:columnRange ignoreMargin:v31 ignoreGutter:v25 ignoreViewportPadding:{objc_msgSend(componentLayout, "ignoreDocumentGutter"), v28}];
  v33 = v32;
  v197 = componentLayout;
  if (v210)
  {
    v34 = v210[6];
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  layoutOptions = [v13 layoutOptions];
  v201 = [v35 createUnitConverterWithComponentWidth:layoutOptions parentWidth:0.0 layoutOptions:v33];

  v207 = objc_alloc_init(SXHorizontalStackLayoutCalculator);
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v234 = 0u;
  v235 = 0u;
  v236 = 0u;
  v237 = 0u;
  v37 = v20;
  v38 = [v37 countByEnumeratingWithState:&v234 objects:v243 count:16];
  v213 = v13;
  if (v38)
  {
    v39 = v38;
    v40 = *v235;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v235 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v234 + 1) + 8 * i);
        v43 = [v13 componentBlueprintForComponentIdentifier:v42];
        [v43 component];
        objc_claimAutoreleasedReturnValue();
        v44 = OUTLINED_FUNCTION_7_0();
        v45 = OUTLINED_FUNCTION_6_0(v44);

        if (v45)
        {
          [(SXHorizontalStackLayoutCalculator *)v207 addFlexibleItemWithIdentifier:v42];
          [array addObject:v42];
        }

        else
        {
          columnRange = [v43 componentLayout];
          minimumWidth = [columnRange minimumWidth];
          [v201 convertValueToPoints:{minimumWidth, v47}];
          v49 = fmax(v48, 0.0);
          maximumWidth = [columnRange maximumWidth];
          [v201 convertValueToPoints:{maximumWidth, v51}];
          v53 = fmax(v52, 0.0);
          if (v53 >= 0.00000011920929)
          {
            v54 = v53;
          }

          else
          {
            v54 = v33;
          }

          [(SXHorizontalStackLayoutCalculator *)v207 addItemWithMinimumWidth:v42 maximumWidth:v49 identifier:v54];
          [array2 addObject:v42];
        }

        v13 = v213;
      }

      v39 = [v37 countByEnumeratingWithState:&v234 objects:v243 count:16];
    }

    while (v39);
  }

  v212 = [(SXHorizontalStackLayoutCalculator *)v207 layoutForComponentWidth:v33];
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  v55 = v37;
  v56 = [v55 countByEnumeratingWithState:&v230 objects:v242 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v231;
    do
    {
      for (j = 0; j != v57; ++j)
      {
        if (*v231 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = *(*(&v230 + 1) + 8 * j);
        [v212 widthForIdentifier:v60];
        if (v61 < 2.22044605e-16)
        {
          v62 = [v13 componentBlueprintForComponentIdentifier:v60];
          [v62 setHidden:1];
          [array removeObject:v60];
          [array2 removeObject:v60];
        }
      }

      v57 = [v55 countByEnumeratingWithState:&v230 objects:v242 count:16];
    }

    while (v57);
  }

  componentIdentifiers2 = [v13 componentIdentifiers];

  v64 = [[SXComponentDependencyResolver alloc] initWithComponentIdentifiers:componentIdentifiers2];
  [v13 setDependencySolver:v64];
  v228 = 0u;
  v229 = 0u;
  v226 = 0u;
  v227 = 0u;
  obj = componentIdentifiers2;
  v208 = [obj countByEnumeratingWithState:&v226 objects:v241 count:16];
  if (v208)
  {
    v204 = *v227;
    do
    {
      for (k = 0; k != v208; ++k)
      {
        if (*v227 != v204)
        {
          objc_enumerationMutation(obj);
        }

        v66 = *(*(&v226 + 1) + 8 * k);
        v67 = [v13 componentBlueprintForComponentIdentifier:v66];
        component = [v67 component];
        anchor = [component anchor];

        if (anchor)
        {
          component = [anchor targetComponentIdentifier];

          if (!component)
          {
            v224 = 0u;
            v225 = 0u;
            v222 = 0u;
            v223 = 0u;
            targetComponentIdentifier = array2;
            v79 = [targetComponentIdentifier countByEnumeratingWithState:&v222 objects:v240 count:16];
            if (v79)
            {
              v80 = v79;
              v81 = *v223;
              do
              {
                for (m = 0; m != v80; ++m)
                {
                  if (*v223 != v81)
                  {
                    objc_enumerationMutation(targetComponentIdentifier);
                  }

                  OUTLINED_FUNCTION_4_0();
                  v88 = SXComponentDependencyCreate(v83, v84, v85, v86, v87);
                  OUTLINED_FUNCTION_3_0(v88);
                }

                v80 = [targetComponentIdentifier countByEnumeratingWithState:&v222 objects:v240 count:16];
              }

              while (v80);
            }

            goto LABEL_55;
          }

          component = [anchor targetComponentIdentifier];
          v70 = [obj containsObject:component];

          if (v70)
          {
            component = [anchor targetComponentIdentifier];
            v71 = SXComponentDependencyCreate(v66, component, 1, 1, 0);
            [(SXComponentDependencyResolver *)v64 addDependency:v71];

            if ([anchor targetAnchorPosition] == 3 || objc_msgSend(anchor, "targetAnchorPosition") == 2)
            {
              targetComponentIdentifier = [anchor targetComponentIdentifier];
              OUTLINED_FUNCTION_4_0();
              v78 = SXComponentDependencyCreate(v73, v74, v75, v76, v77);
              OUTLINED_FUNCTION_3_0(v78);

LABEL_55:
            }
          }
        }

        [v67 component];
        objc_claimAutoreleasedReturnValue();
        v89 = OUTLINED_FUNCTION_7_0();
        v90 = OUTLINED_FUNCTION_6_0(v89);

        if (v90)
        {
          v220 = 0u;
          v221 = 0u;
          v218 = 0u;
          v219 = 0u;
          v91 = array2;
          v92 = [v91 countByEnumeratingWithState:&v218 objects:v239 count:16];
          if (v92)
          {
            v93 = v92;
            v94 = *v219;
            do
            {
              for (n = 0; n != v93; ++n)
              {
                if (*v219 != v94)
                {
                  objc_enumerationMutation(v91);
                }

                v96 = SXComponentDependencyCreate(v66, *(*(&v218 + 1) + 8 * n), 2, 2, 0);
                OUTLINED_FUNCTION_3_0(v96);
              }

              v93 = [v91 countByEnumeratingWithState:&v218 objects:v239 count:16];
            }

            while (v93);
          }

          OUTLINED_FUNCTION_4_0();
          v102 = SXComponentDependencyCreate(v97, v98, v99, v100, v101);
          OUTLINED_FUNCTION_3_0(v102);
        }

        v13 = v213;
      }

      v208 = [obj countByEnumeratingWithState:&v226 objects:v241 count:16];
    }

    while (v208);
  }

  [v13 startUpdatesForWidth:v33];
  [v199 minimumHeight];
  v104 = v103;
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  solvableOrder = [(SXComponentDependencyResolver *)v64 solvableOrder];
  v209 = [solvableOrder countByEnumeratingWithState:&v214 objects:v238 count:16];
  if (v209)
  {
    v205 = *v215;
    do
    {
      v105 = 0;
      do
      {
        if (*v215 != v205)
        {
          objc_enumerationMutation(solvableOrder);
        }

        v106 = *(*(&v214 + 1) + 8 * v105);
        text = [(SXFullscreenCaption *)v106 text];
        v108 = [v13 componentBlueprintForComponentIdentifier:text];
        componentSizer3 = [v108 componentSizer];
        [v108 suggestedSizeAfterInvalidation];
        [componentSizer3 setSuggestedSize:?];

        [v212 widthForIdentifier:text];
        v111 = v110;
        componentLayout2 = [v108 componentLayout];
        margin = [componentLayout2 margin];

        v114 = v210;
        if (v210)
        {
          v114 = v210[6];
        }

        v115 = v114;
        layoutOptions2 = [v13 layoutOptions];
        v117 = [v115 createUnitConverterWithComponentWidth:layoutOptions2 parentWidth:v111 layoutOptions:v33];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v118 = v108;
          layoutBlueprint2 = [v118 layoutBlueprint];
          if ([layoutBlueprint2 isComplete])
          {
            v120 = [v118 hasValidLayout] ^ 1;
          }

          else
          {
            v120 = 1;
          }
        }

        else
        {
          v120 = 0;
        }

        if ((![v108 hasValidPosition] || v120) && -[SXFullscreenCaption caption](v106) == 1)
        {
          v152 = SXLayoutLog;
          if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
          {
            v153 = v152;
            component2 = [v108 component];
            identifier = [component2 identifier];
            taskIdentifier2 = [v200 taskIdentifier];
            OUTLINED_FUNCTION_1_2(taskIdentifier2, v157, v158, v159, v160, v161, v162, v163, v164, v196, v197, v198, v199, v165);
            _os_log_impl(&dword_1D825C000, v153, OS_LOG_TYPE_DEFAULT, "Calculating position, component-identifier=%{public}@, task-identifier=%{public}@", v166, 0x16u);
          }

          v13 = v213;
          [SXHorizontalStackLayouter calculatePositionForComponentWithBlueprint:layout:unitConverter:margin:maximumY:layoutBlueprint:];
          [v213 updatePosition:text forComponentWithIdentifier:?];
        }

        else if (v120 & 1 | (([v108 hasValidSize] & 1) == 0))
        {
          v13 = v213;
          if ([(SXFullscreenCaption *)v106 caption]== 2)
          {
            v121 = SXLayoutLog;
            if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
            {
              v122 = v121;
              component3 = [v108 component];
              identifier2 = [component3 identifier];
              taskIdentifier3 = [v200 taskIdentifier];
              OUTLINED_FUNCTION_1_2(taskIdentifier3, v126, v127, v128, v129, v130, v131, v132, v133, v196, v197, v198, v199, v134);
              _os_log_impl(&dword_1D825C000, v122, OS_LOG_TYPE_DEFAULT, "Calculating size, component-identifier=%{public}@, task-identifier=%{public}@", v135, 0x16u);

              v13 = v213;
            }

            componentLayout3 = [v108 componentLayout];
            minimumHeight = [componentLayout3 minimumHeight];
            OUTLINED_FUNCTION_0_7(minimumHeight, v138);
            v140 = v139;

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v167 = [(SXHorizontalStackLayouter *)v210 childColumnLayoutForContainerComponentWidth:v108 componentWidth:v199 componentBlueprint:v117 columnLayout:v33 unitConverter:v111];
              [v167 setMinimumHeight:v140];
              if (v210)
              {
                v168 = v210[5];
              }

              else
              {
                v168 = 0;
              }

              v169 = [v168 createLayoutContextForColumnLayout:v167 unitConverter:v117];
              v170 = [(SXHorizontalStackLayouter *)v210 calculateSizeForContainerComponentWithBlueprint:v108 width:v169 layoutContext:v200 layoutDescription:v198 shouldContinue:v111];
              OUTLINED_FUNCTION_5_0(v170, v171);
              v172 = [margin top];
              OUTLINED_FUNCTION_0_7(v172, v173);
              v175 = v111 + v174;
              bottom = [margin bottom];
              OUTLINED_FUNCTION_0_7(bottom, v177);
              v179 = v175 + v178;
              if (v104 < v179)
              {
                v104 = v179;
              }
            }

            else
            {
              [v108 component];
              objc_claimAutoreleasedReturnValue();
              v141 = OUTLINED_FUNCTION_7_0();
              v142 = OUTLINED_FUNCTION_6_0(v141);

              if (v142)
              {
                [v108 component];
                objc_claimAutoreleasedReturnValue();
                v143 = OUTLINED_FUNCTION_7_0();
                v144 = OUTLINED_FUNCTION_6_0(v143);

                if (v144)
                {
                  v145 = [margin top];
                  OUTLINED_FUNCTION_0_7(v145, v146);
                  v148 = v104 - v147;
                  bottom2 = [margin bottom];
                  OUTLINED_FUNCTION_0_7(bottom2, v150);
                  [v13 updateSize:text forComponentWithIdentifier:{v111, fmax(v148 - v151, 0.0)}];
                }
              }

              else
              {
                if (v210)
                {
                  v180 = v210[5];
                }

                else
                {
                  v180 = 0;
                }

                v181 = [v180 createLayoutContextForColumnLayout:v199 unitConverter:v117];
                v182 = [(SXHorizontalStackLayouter *)v210 calculateSizeForComponentWithBlueprint:v108 width:v181 layoutContext:v111];
                OUTLINED_FUNCTION_5_0(v182, v183);
                v184 = [margin top];
                OUTLINED_FUNCTION_0_7(v184, v185);
                v187 = v111 + v186;
                bottom3 = [margin bottom];
                OUTLINED_FUNCTION_0_7(bottom3, v189);
                v191 = v187 + v190;
                if (v104 < v191)
                {
                  v104 = v191;
                }
              }
            }
          }
        }

        else
        {
          v13 = v213;
        }

        ++v105;
      }

      while (v209 != v105);
      v192 = [solvableOrder countByEnumeratingWithState:&v214 objects:v238 count:16];
      v209 = v192;
    }

    while (v192);
  }

  [v13 endUpdates];
  v193 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v194 = v193;
    taskIdentifier4 = [v200 taskIdentifier];
    OUTLINED_FUNCTION_2_1(taskIdentifier4, 3.8521e-34);
    _os_log_impl(&dword_1D825C000, v194, OS_LOG_TYPE_DEFAULT, "Finished horizontal stack layout, blueprint=%p, task-identifier=%{public}@", v244, 0x16u);
  }

  OUTLINED_FUNCTION_8_0();
}

- (void)calculatePositionForComponentWithBlueprint:layout:unitConverter:margin:maximumY:layoutBlueprint:
{
  OUTLINED_FUNCTION_9_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v7;
  v13 = v5;
  v14 = v3;
  v15 = v1;
  if (v9)
  {
    v16 = [v14 top];
    [v13 convertValueToPoints:{v16, v17}];
    component = [v11 component];
    identifier = [component identifier];
    [v12 positionForIdentifier:identifier];

    component2 = [v11 component];
    anchor = [component2 anchor];

    if (anchor)
    {
      targetComponentIdentifier = [anchor targetComponentIdentifier];
      if (!targetComponentIdentifier || (v23 = targetComponentIdentifier, [anchor targetComponentIdentifier], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(v9 + 16), "component"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "identifier"), v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v24, v23, v24 == v26))
      {
        [anchor targetAnchorPosition];
        [v11 frame];
        CGRectGetHeight(v40);
        [anchor originAnchorPosition];
      }

      else
      {
        targetComponentIdentifier2 = [anchor targetComponentIdentifier];
        [v12 widthForIdentifier:targetComponentIdentifier2];
        v29 = v28;

        if (v29 > 0.0)
        {
          targetComponentIdentifier3 = [anchor targetComponentIdentifier];
          v31 = [v15 componentBlueprintForComponentIdentifier:targetComponentIdentifier3];

          if ([anchor range] == 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend(v31, "component"), v32 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v32, (isKindOfClass & 1) == 0))
          {
            [v31 frame];
            CGRectGetMinY(v41);
            [v31 frame];
            CGRectGetHeight(v42);
            [anchor targetAnchorPosition];
          }

          else
          {
            componentSizer = [v31 componentSizer];
            [v31 frame];
            CGRectGetMinY(v39);
            range = [anchor range];
            [componentSizer verticalPositionForRange:{range, v36}];
          }

          [v11 frame];
          CGRectGetHeight(v43);
          [anchor originAnchorPosition];
        }
      }

      [v11 frame];
      CGRectGetHeight(v44);
      bottom = [v14 bottom];
      [v13 convertValueToPoints:{bottom, v38}];
    }
  }

  OUTLINED_FUNCTION_8_0();
}

- (id)childColumnLayoutForContainerComponentWidth:(void *)width componentWidth:(void *)componentWidth componentBlueprint:(double)blueprint columnLayout:(double)layout unitConverter:
{
  selfCopy = self;
  if (self)
  {
    componentWidthCopy = componentWidth;
    widthCopy = width;
    v13 = a2;
    v14 = [SXDocumentLayout alloc];
    gutter = [widthCopy gutter];

    v16 = [(SXDocumentLayout *)v14 initWithWidth:blueprint margin:0 gutter:gutter columns:1];
    componentSizer = [v13 componentSizer];

    [componentSizer contentInsetsWithUnitConverter:componentWidthCopy];
    v19 = v18;
    v21 = v20;

    selfCopy = [selfCopy[4] columnLayoutWithConstrainedViewportSize:v16 viewportSize:layout - (v19 + v21) documentLayout:layout - (v19 + v21) safeAreaInsets:{layout - (v19 + v21), layout - (v19 + v21), *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  }

  return selfCopy;
}

- (double)calculateSizeForContainerComponentWithBlueprint:(void *)blueprint width:(void *)width layoutContext:(uint64_t)context layoutDescription:(double)description shouldContinue:
{
  if (!self)
  {
    return 0.0;
  }

  widthCopy = width;
  blueprintCopy = blueprint;
  v13 = a2;
  layoutBlueprint = [v13 layoutBlueprint];
  v15 = self[3];
  delegate = [self delegate];
  v17 = [v15 layouterForContainerComponentBlueprint:v13 delegate:delegate];

  columnLayout = [blueprintCopy columnLayout];
  [v17 layoutBlueprint:layoutBlueprint columnLayout:columnLayout description:widthCopy shouldContinue:context];

  componentSizer = [v13 componentSizer];

  unitConverter = [blueprintCopy unitConverter];

  [componentSizer contentInsetsWithUnitConverter:unitConverter];
  [layoutBlueprint blueprintSize];

  return description;
}

- (double)calculateSizeForComponentWithBlueprint:(void *)blueprint width:(double)width layoutContext:
{
  if (!self)
  {
    return 0.0;
  }

  blueprintCopy = blueprint;
  v7 = a2;
  componentSizer = [v7 componentSizer];
  unitConverter = [blueprintCopy unitConverter];
  [componentSizer contentInsetsWithUnitConverter:unitConverter];
  v11 = v10;
  v13 = v12;

  componentSizer2 = [v7 componentSizer];

  [componentSizer2 calculateHeightForWidth:blueprintCopy layoutContext:{fmax(width - (v11 + v13), 0.0)}];
  return width;
}

@end