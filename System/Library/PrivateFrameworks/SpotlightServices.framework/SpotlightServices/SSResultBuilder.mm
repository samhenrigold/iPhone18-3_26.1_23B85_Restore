@interface SSResultBuilder
+ (BOOL)isSearchToolClient;
+ (BOOL)isSpotlight;
+ (BOOL)supportsResult:(id)result;
+ (CGSize)defaultThumbnailSizeIsCompact:(BOOL)compact;
+ (Class)resultBuilderClassForResult:(id)result preferAppVendedView:(BOOL)view;
+ (id)fetchAttributes;
+ (id)getWhitespaceCharacterAtIndex:(unint64_t)index ofString:(id)string;
+ (id)resultBuilderForItem:(id)item;
+ (id)resultBuilderWithResult:(id)result preferAppVendedView:(BOOL)view;
+ (id)richTextsFromStrings:(id)strings;
+ (id)stringForSFRichText:(id)text;
+ (id)whiteSpaceCondensedStringForString:(id)string;
+ (void)condenseWhiteSpaceForDescriptions:(id)descriptions;
+ (void)condenseWhiteSpaceForRichText:(id)text;
+ (void)setDefaultSizeForThumbnail:(id)thumbnail isCompact:(BOOL)compact;
- (BOOL)buildSecondaryTitleIsDetached;
- (BOOL)isToolParameterFilling;
- (BOOL)supportsClearingBackendData;
- (SSResultBuilder)initWithResult:(id)result;
- (id)buildAction;
- (id)buildAppEntityAnnotation;
- (id)buildAppTopHitEntityCardSection;
- (id)buildBadgingImageWithThumbnail:(id)thumbnail;
- (id)buildCommand;
- (id)buildCompactCard;
- (id)buildCompactCardSection;
- (id)buildCompactCardSections;
- (id)buildDescriptions;
- (id)buildDetailedRowCardSection;
- (id)buildFillToolParameterCommand;
- (id)buildFootnote;
- (id)buildHighlightedMatchedTextWithTitle:(id)title headTruncation:(BOOL)truncation;
- (id)buildHighlightedTextWithString:(id)string includeQuotes:(BOOL)quotes;
- (id)buildHorizontallyScrollingCardSection;
- (id)buildInlineCard;
- (id)buildInlineCardSection;
- (id)buildInlineCardSections;
- (id)buildPreviewButtonItems;
- (id)buildPunchouts;
- (id)buildResult;
- (id)buildSecondaryTitle;
- (id)buildSecondaryTitleImage;
- (id)buildThumbnail;
- (id)buildTitle;
- (id)bundleIdentifierForAppIconBadgeImage;
- (id)resultAppBundleId;
- (unint64_t)numberOfLinesForDescriptions;
- (void)buildDefaultPropertiesForCardSection:(id)section;
- (void)setMaxLinesForDescriptions:(id)descriptions;
@end

@implementation SSResultBuilder

+ (id)resultBuilderForItem:(id)item
{
  itemCopy = item;
  bundleID = [itemCopy bundleID];
  v5 = +[SSResultBuilder fetchAttributes];
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  protection = [itemCopy protection];
  attributeSet = [itemCopy attributeSet];
  attributeDictionary = [attributeSet attributeDictionary];
  v10 = [attributeDictionary mutableCopy];

  attributeSet2 = [itemCopy attributeSet];

  customAttributeDictionary = [attributeSet2 customAttributeDictionary];
  [v10 addEntriesFromDictionary:customAttributeDictionary];

  v13 = [[SFSearchResult_SpotlightExtras alloc] initWithIdentifier:uniqueIdentifier bundleIdentifier:bundleID protectionClass:protection attributes:v10 type:2 completion:0];
  v14 = [SSResultBuilder resultBuilderWithResult:v13];

  return v14;
}

+ (Class)resultBuilderClassForResult:(id)result preferAppVendedView:(BOOL)view
{
  viewCopy = view;
  v31[43] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v31[2] = objc_opt_class();
  v31[3] = objc_opt_class();
  v31[4] = objc_opt_class();
  v31[5] = objc_opt_class();
  v31[6] = objc_opt_class();
  v31[7] = objc_opt_class();
  v31[8] = objc_opt_class();
  v31[9] = objc_opt_class();
  v31[10] = objc_opt_class();
  v31[11] = objc_opt_class();
  v31[12] = objc_opt_class();
  v31[13] = objc_opt_class();
  v31[14] = objc_opt_class();
  v31[15] = objc_opt_class();
  v31[16] = objc_opt_class();
  v31[17] = objc_opt_class();
  v31[18] = objc_opt_class();
  v31[19] = objc_opt_class();
  v31[20] = objc_opt_class();
  v31[21] = objc_opt_class();
  v31[22] = objc_opt_class();
  v31[23] = objc_opt_class();
  v31[24] = objc_opt_class();
  v31[25] = objc_opt_class();
  v31[26] = objc_opt_class();
  v31[27] = objc_opt_class();
  v31[28] = objc_opt_class();
  v31[29] = objc_opt_class();
  v31[30] = objc_opt_class();
  v31[31] = objc_opt_class();
  v31[32] = objc_opt_class();
  v31[33] = objc_opt_class();
  v31[34] = objc_opt_class();
  v31[35] = objc_opt_class();
  v31[36] = objc_opt_class();
  v31[37] = objc_opt_class();
  v31[38] = objc_opt_class();
  v31[39] = objc_opt_class();
  v31[40] = objc_opt_class();
  v31[41] = objc_opt_class();
  v31[42] = objc_opt_class();
  [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:43];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      if ([v11 supportsResult:{resultCopy, v18}])
      {
        if (v11 != objc_opt_class() || viewCopy)
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v30 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_11:
  }

  v11 = objc_opt_class();
LABEL_14:
  v12 = SSGeneralLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    contentType = [resultCopy contentType];
    v16 = contentType;
    v17 = @"NO";
    *buf = 138478595;
    v23 = resultCopy;
    v24 = 2112;
    if (viewCopy)
    {
      v17 = @"YES";
    }

    v25 = contentType;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v17;
    _os_log_debug_impl(&dword_1D9F69000, v12, OS_LOG_TYPE_DEBUG, "SSResultBuilder result: %{private}@ withContentType: %@ resolved to class: %@ preferringAppVendedView: %@", buf, 0x2Au);
  }

  v13 = v11;
  return v11;
}

+ (id)resultBuilderWithResult:(id)result preferAppVendedView:(BOOL)view
{
  viewCopy = view;
  resultCopy = result;
  v7 = [objc_alloc(objc_msgSend(self resultBuilderClassForResult:resultCopy preferAppVendedView:{viewCopy)), "initWithResult:", resultCopy}];

  return v7;
}

+ (id)fetchAttributes
{
  v281 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6964AE8];
  v35[0] = *MEMORY[0x1E6963BC0];
  v35[1] = v2;
  v3 = *MEMORY[0x1E6964750];
  v35[2] = *MEMORY[0x1E6964C38];
  v35[3] = v3;
  v4 = *MEMORY[0x1E69647A8];
  v35[4] = *MEMORY[0x1E6964768];
  v35[5] = v4;
  v5 = *MEMORY[0x1E6964800];
  v36 = *MEMORY[0x1E69647F0];
  v37 = v5;
  v6 = *MEMORY[0x1E6964848];
  v38 = *MEMORY[0x1E6964818];
  v39 = v6;
  v7 = *MEMORY[0x1E6964708];
  v40 = *MEMORY[0x1E6964878];
  v41 = v7;
  v8 = *MEMORY[0x1E6964710];
  v42 = *MEMORY[0x1E6964718];
  v43 = v8;
  v9 = *MEMORY[0x1E6963BF8];
  v44 = *MEMORY[0x1E6963BD0];
  v45 = v9;
  v10 = *MEMORY[0x1E6963C60];
  v46 = *MEMORY[0x1E6963C08];
  v47 = v10;
  v11 = *MEMORY[0x1E6963C78];
  v48 = *MEMORY[0x1E6963C68];
  v49 = v11;
  v12 = *MEMORY[0x1E6963C80];
  v50 = *MEMORY[0x1E6963C58];
  v51 = v12;
  v13 = *MEMORY[0x1E6963C88];
  v52 = *MEMORY[0x1E6963C70];
  v53 = v13;
  v14 = *MEMORY[0x1E6963C98];
  v54 = *MEMORY[0x1E6963C90];
  v55 = v14;
  v15 = *MEMORY[0x1E6963CA8];
  v56 = *MEMORY[0x1E6963CA0];
  v57 = v15;
  v16 = *MEMORY[0x1E6963CF8];
  v58 = *MEMORY[0x1E6963CE8];
  v59 = v16;
  v17 = *MEMORY[0x1E6963D18];
  v60 = *MEMORY[0x1E6963D00];
  v61 = v17;
  v18 = *MEMORY[0x1E6963D60];
  v62 = *MEMORY[0x1E6963D28];
  v63 = v18;
  v19 = *MEMORY[0x1E6963E40];
  v64 = *MEMORY[0x1E6963E30];
  v65 = v19;
  v20 = *MEMORY[0x1E6963E78];
  v66 = *MEMORY[0x1E6963E58];
  v67 = v20;
  v21 = *MEMORY[0x1E6963E88];
  v68 = *MEMORY[0x1E6964290];
  v69 = v21;
  v22 = *MEMORY[0x1E6963EA8];
  v70 = *MEMORY[0x1E6963EA0];
  v71 = v22;
  v23 = *MEMORY[0x1E6963EB8];
  v72 = *MEMORY[0x1E6963EB0];
  v73 = v23;
  v24 = *MEMORY[0x1E6963F28];
  v74 = @"SSAttributeDefinitions";
  v75 = v24;
  v25 = *MEMORY[0x1E6963F98];
  v76 = *MEMORY[0x1E6963F48];
  v77 = v25;
  v26 = *MEMORY[0x1E6963FE8];
  v78 = *MEMORY[0x1E6963FA0];
  v79 = v26;
  v27 = *MEMORY[0x1E6964338];
  v80 = *MEMORY[0x1E69642B8];
  v81 = v27;
  v28 = *MEMORY[0x1E6964330];
  v82 = *MEMORY[0x1E6964328];
  v83 = v28;
  v29 = *MEMORY[0x1E69643E0];
  v84 = *MEMORY[0x1E6964340];
  v85 = v29;
  v86 = *MEMORY[0x1E6964440];
  v87 = @"SSAttributeCalculatorInput";
  v30 = *MEMORY[0x1E69644B0];
  v88 = *MEMORY[0x1E6964490];
  v89 = v30;
  v90 = @"SSAttributeIsCalculation";
  v91 = @"SSAttributeIsCurrencyConversion";
  v31 = *MEMORY[0x1E6964548];
  v92 = *MEMORY[0x1E6964528];
  v93 = v31;
  v94 = *MEMORY[0x1E6964550];
  v95 = *MEMORY[0x1E6964590];
  v96 = *MEMORY[0x1E6964598];
  v97 = *MEMORY[0x1E6964600];
  v98 = *MEMORY[0x1E6964628];
  v99 = @"SSAttributeCalculatorOutput";
  v100 = *MEMORY[0x1E69645D0];
  v101 = *MEMORY[0x1E69646F0];
  v102 = *MEMORY[0x1E6964720];
  v103 = *MEMORY[0x1E6963FC8];
  v104 = *MEMORY[0x1E6964950];
  v105 = *MEMORY[0x1E6964990];
  v106 = *MEMORY[0x1E69649F8];
  v107 = *MEMORY[0x1E69649E8];
  v108 = *MEMORY[0x1E69649F0];
  v109 = *MEMORY[0x1E6964A28];
  v110 = *MEMORY[0x1E6964A20];
  v111 = *MEMORY[0x1E6964A90];
  v112 = *MEMORY[0x1E6964A70];
  v113 = *MEMORY[0x1E6964A98];
  v114 = *MEMORY[0x1E6964AB0];
  v115 = *MEMORY[0x1E6964AC8];
  v116 = *MEMORY[0x1E6964AD0];
  v117 = *MEMORY[0x1E6964AA0];
  v118 = *MEMORY[0x1E6964A78];
  v119 = *MEMORY[0x1E6964AC0];
  v120 = *MEMORY[0x1E6964A88];
  v121 = *MEMORY[0x1E6964AF8];
  v122 = *MEMORY[0x1E6964B00];
  v123 = *MEMORY[0x1E6963CF0];
  v124 = *MEMORY[0x1E69648E8];
  v125 = *MEMORY[0x1E6964B18];
  v126 = *MEMORY[0x1E6964B28];
  v127 = *MEMORY[0x1E6964B30];
  v128 = *MEMORY[0x1E6964B58];
  v32 = *MEMORY[0x1E6964B98];
  v130 = @"SSAttributeTopMatchedStrings";
  v131 = *MEMORY[0x1E6964BF0];
  v132 = *MEMORY[0x1E6964BF8];
  v133 = *MEMORY[0x1E6964C00];
  v134 = *MEMORY[0x1E6964C08];
  v135 = *MEMORY[0x1E6963F08];
  v136 = *MEMORY[0x1E6964C28];
  v137 = *MEMORY[0x1E6964C48];
  v138 = *MEMORY[0x1E6964C80];
  v139 = *MEMORY[0x1E6964C88];
  v140 = *MEMORY[0x1E6964400];
  v129 = v32;
  v141 = *MEMORY[0x1E6964530];
  v142 = *MEMORY[0x1E69643E8];
  v143 = v32;
  v144 = *MEMORY[0x1E6964B90];
  v145 = *MEMORY[0x1E6964C68];
  v146 = *MEMORY[0x1E6963F88];
  v147 = *MEMORY[0x1E6963BE0];
  v148 = *MEMORY[0x1E6963E08];
  v149 = *MEMORY[0x1E6963ED8];
  v150 = *MEMORY[0x1E6963EE8];
  v151 = *MEMORY[0x1E6963D48];
  v152 = v80;
  v153 = *MEMORY[0x1E6964370];
  v154 = *MEMORY[0x1E69643F0];
  v155 = *MEMORY[0x1E6964498];
  v156 = v36;
  v157 = *MEMORY[0x1E69648E0];
  v158 = *MEMORY[0x1E6964900];
  v159 = *MEMORY[0x1E69649E0];
  v160 = v108;
  v161 = v158;
  v162 = v125;
  v163 = *MEMORY[0x1E6964B40];
  v164 = v158;
  v165 = *MEMORY[0x1E6964BB0];
  v166 = *MEMORY[0x1E69645D8];
  v167 = *MEMORY[0x1E69644A8];
  v168 = *MEMORY[0x1E69646C0];
  v169 = *MEMORY[0x1E69646C8];
  v170 = *MEMORY[0x1E6964D78];
  v171 = *MEMORY[0x1E6964D48];
  v172 = *MEMORY[0x1E6964D40];
  v173 = *MEMORY[0x1E6964D88];
  v174 = *MEMORY[0x1E6964278];
  v175 = *MEMORY[0x1E6964118];
  v176 = *MEMORY[0x1E6964120];
  v177 = *MEMORY[0x1E69640B0];
  v178 = *MEMORY[0x1E6964098];
  v179 = *MEMORY[0x1E69640A0];
  v180 = *MEMORY[0x1E69640A8];
  v181 = *MEMORY[0x1E6964088];
  v182 = *MEMORY[0x1E6964110];
  v183 = *MEMORY[0x1E6964040];
  v184 = *MEMORY[0x1E6964058];
  v185 = *MEMORY[0x1E69640C8];
  v186 = *MEMORY[0x1E69640E0];
  v187 = *MEMORY[0x1E69640B8];
  v188 = *MEMORY[0x1E6964080];
  v189 = *MEMORY[0x1E6964108];
  v190 = *MEMORY[0x1E6964038];
  v191 = *MEMORY[0x1E6964050];
  v192 = *MEMORY[0x1E6964068];
  v193 = *MEMORY[0x1E6964048];
  v194 = *MEMORY[0x1E69640C0];
  v195 = *MEMORY[0x1E69640D8];
  v196 = *MEMORY[0x1E69640F0];
  v197 = *MEMORY[0x1E69640D0];
  v198 = *MEMORY[0x1E69641B8];
  v199 = *MEMORY[0x1E69641C8];
  v200 = *MEMORY[0x1E69641C0];
  v201 = *MEMORY[0x1E6964168];
  v202 = *MEMORY[0x1E69641A0];
  v203 = *MEMORY[0x1E69641B0];
  v204 = *MEMORY[0x1E6964218];
  v205 = *MEMORY[0x1E69645A8];
  v206 = *MEMORY[0x1E6963C28];
  v207 = *MEMORY[0x1E6963C40];
  v208 = *MEMORY[0x1E6963C38];
  v209 = *MEMORY[0x1E69641E0];
  v210 = *MEMORY[0x1E69642C0];
  v211 = *MEMORY[0x1E6964230];
  v212 = *MEMORY[0x1E6964008];
  v213 = *MEMORY[0x1E6964228];
  v214 = *MEMORY[0x1E6964208];
  v215 = *MEMORY[0x1E69641E8];
  v216 = *MEMORY[0x1E6964250];
  v217 = *MEMORY[0x1E6964248];
  v218 = *MEMORY[0x1E6964020];
  v219 = *MEMORY[0x1E6964018];
  v220 = *MEMORY[0x1E6964260];
  v221 = *MEMORY[0x1E6964268];
  v222 = *MEMORY[0x1E69642D8];
  v223 = *MEMORY[0x1E69642F8];
  v224 = *MEMORY[0x1E69642E0];
  v225 = *MEMORY[0x1E6964308];
  v226 = *MEMORY[0x1E6964300];
  v227 = *MEMORY[0x1E69642C8];
  v228 = *MEMORY[0x1E69642E8];
  v229 = *MEMORY[0x1E69642F0];
  v230 = *MEMORY[0x1E69642D0];
  v231 = *MEMORY[0x1E6964310];
  v232 = *MEMORY[0x1E6964210];
  v233 = *MEMORY[0x1E6963DE8];
  v234 = *MEMORY[0x1E6963DF0];
  v235 = *MEMORY[0x1E6963D78];
  v236 = *MEMORY[0x1E6963E50];
  v237 = *MEMORY[0x1E6964580];
  v238 = *MEMORY[0x1E6964578];
  v239 = *MEMORY[0x1E6964B38];
  v240 = *MEMORY[0x1E6963FF0];
  v241 = *MEMORY[0x1E6964C10];
  v242 = *MEMORY[0x1E6964DD0];
  v243 = *MEMORY[0x1E6963F30];
  v244 = *MEMORY[0x1E6964090];
  v245 = *MEMORY[0x1E69641F8];
  v246 = *MEMORY[0x1E6964010];
  v247 = *MEMORY[0x1E6964220];
  v248 = *MEMORY[0x1E69641F0];
  v249 = *MEMORY[0x1E6964200];
  v250 = *MEMORY[0x1E6964270];
  v251 = *MEMORY[0x1E6964280];
  v252 = *MEMORY[0x1E6964258];
  v253 = *MEMORY[0x1E6964028];
  v254 = *MEMORY[0x1E6964588];
  v255 = *MEMORY[0x1E6963D30];
  v256 = *MEMORY[0x1E6963BE8];
  v257 = *MEMORY[0x1E6963D50];
  v258 = *MEMORY[0x1E6963DD0];
  v259 = *MEMORY[0x1E6963DF8];
  v260 = *MEMORY[0x1E6963DC0];
  v261 = *MEMORY[0x1E6963DA0];
  v262 = *MEMORY[0x1E6963DB0];
  v263 = *MEMORY[0x1E6963D90];
  v264 = *MEMORY[0x1E6963DB8];
  v265 = *MEMORY[0x1E6963DD8];
  v266 = *MEMORY[0x1E6963D88];
  v267 = *MEMORY[0x1E6963D80];
  v268 = *MEMORY[0x1E6963ED0];
  v269 = *MEMORY[0x1E6963EC8];
  v270 = *MEMORY[0x1E6963EF8];
  v271 = *MEMORY[0x1E6964000];
  v272 = *MEMORY[0x1E69648A8];
  v273 = *MEMORY[0x1E6964C40];
  v274 = *MEMORY[0x1E6964A00];
  v275 = *MEMORY[0x1E6964570];
  v276 = *MEMORY[0x1E69646B8];
  v277 = *MEMORY[0x1E6964288];
  v278 = *MEMORY[0x1E69644B8];
  v279 = *MEMORY[0x1E6964D70];
  v280 = *MEMORY[0x1E6964D68];
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:251];

  return v33;
}

+ (BOOL)supportsResult:(id)result
{
  sectionBundleIdentifier = [result sectionBundleIdentifier];
  bundleId = [self bundleId];
  v6 = [sectionBundleIdentifier isEqual:bundleId];

  return v6;
}

+ (id)richTextsFromStrings:(id)strings
{
  v17 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = stringsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x1E69CA3A0] textWithString:{*(*(&v12 + 1) + 8 * i), v12}];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (CGSize)defaultThumbnailSizeIsCompact:(BOOL)compact
{
  compactCopy = compact;
  v4 = isMacOS();
  v5 = 36.0;
  if (compactCopy)
  {
    v5 = 20.0;
  }

  v6 = 64.0;
  if (compactCopy)
  {
    v6 = 28.0;
  }

  if (!v4)
  {
    v5 = v6;
  }

  v7 = v5;
  result.height = v7;
  result.width = v5;
  return result;
}

+ (void)setDefaultSizeForThumbnail:(id)thumbnail isCompact:(BOOL)compact
{
  compactCopy = compact;
  thumbnailCopy = thumbnail;
  [thumbnailCopy size];
  if (v7 == 0.0 && v6 == 0.0)
  {
    [self defaultThumbnailSizeIsCompact:compactCopy];
    [thumbnailCopy setSize:?];
  }
}

+ (id)getWhitespaceCharacterAtIndex:(unint64_t)index ofString:(id)string
{
  v4 = [string characterAtIndex:index];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  if ([whitespaceCharacterSet characterIsMember:v4])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", v4];
  }

  else
  {
    v6 = &stru_1F556FE60;
  }

  return v6;
}

+ (id)whiteSpaceCondensedStringForString:(id)string
{
  stringCopy = string;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  if ([stringCopy length] && objc_msgSend(stringCopy, "rangeOfCharacterFromSet:", whitespaceAndNewlineCharacterSet) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [stringCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
    v8 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_45];
    v9 = [v7 filteredArrayUsingPredicate:v8];

    v10 = [self getWhitespaceCharacterAtIndex:0 ofString:stringCopy];
    v11 = [self getWhitespaceCharacterAtIndex:objc_msgSend(stringCopy ofString:{"length") - 1, stringCopy}];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v9 componentsJoinedByString:@" "];
    v6 = [v12 stringWithFormat:@"%@%@%@", v10, v13, v11];
  }

  else
  {
    v6 = stringCopy;
  }

  return v6;
}

+ (void)condenseWhiteSpaceForRichText:(id)text
{
  v23 = *MEMORY[0x1E69E9840];
  textCopy = text;
  formattedTextPieces = [textCopy formattedTextPieces];

  if (formattedTextPieces)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    formattedTextPieces2 = [textCopy formattedTextPieces];
    v6 = [formattedTextPieces2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(formattedTextPieces2);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = objc_opt_class();
          text = [v10 text];
          v13 = [v11 whiteSpaceCondensedStringForString:text];
          [v10 setText:v13];
        }

        v7 = [formattedTextPieces2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    goto LABEL_12;
  }

  text2 = [textCopy text];
  v15 = [text2 length];

  if (v15)
  {
    v16 = objc_opt_class();
    formattedTextPieces2 = [textCopy text];
    v17 = [v16 whiteSpaceCondensedStringForString:formattedTextPieces2];
    [textCopy setText:v17];

LABEL_12:
  }
}

+ (void)condenseWhiteSpaceForDescriptions:(id)descriptions
{
  v14 = *MEMORY[0x1E69E9840];
  descriptionsCopy = descriptions;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [descriptionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(descriptionsCopy);
        }

        [self condenseWhiteSpaceForRichText:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [descriptionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (SSResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v31.receiver = self;
  v31.super_class = SSResultBuilder;
  v5 = [(SSResultBuilder *)&v31 init];
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = isMacOS();
  v7 = *MEMORY[0x1E6964DD0];
  if (!v6)
  {
    v7 = @"SSAttributeTopMatchedStrings";
  }

  v8 = v7;
  v9 = [resultCopy valueForAttribute:v8 withType:objc_opt_class()];
  [(SSResultBuilder *)v5 setResult:resultCopy];
  firstObject = [v9 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  [(SSResultBuilder *)v5 setMatchedStrings:v11];

  if ([objc_opt_class() isCoreSpotlightResult])
  {
    v12 = [resultCopy valueForAttribute:*MEMORY[0x1E69642B8] withType:objc_opt_class()];
    [(SSResultBuilder *)v5 setCoreSpotlightId:v12];
  }

  else
  {
    [(SSResultBuilder *)v5 setCoreSpotlightId:0];
  }

  if ([resultCopy hasTextContentMatch])
  {
    [(SSResultBuilder *)v5 setHasTextContentMatch:1];
  }

  else
  {
    v13 = [resultCopy valueForAttribute:*MEMORY[0x1E6964DC8] withType:objc_opt_class()];
    -[SSResultBuilder setHasTextContentMatch:](v5, "setHasTextContentMatch:", [v13 BOOLValue]);
  }

  result = [(SSResultBuilder *)v5 result];
  relatedAppIdentifier = [result relatedAppIdentifier];
  if (relatedAppIdentifier)
  {
    [(SSResultBuilder *)v5 setRelatedAppBundleIdentifier:relatedAppIdentifier];
  }

  else
  {
    v16 = [resultCopy valueForAttribute:*MEMORY[0x1E6964A20] withType:objc_opt_class()];
    [(SSResultBuilder *)v5 setRelatedAppBundleIdentifier:v16];
  }

  result2 = [(SSResultBuilder *)v5 result];
  lastUsedDate = [result2 lastUsedDate];
  if (lastUsedDate)
  {
    [(SSResultBuilder *)v5 setLastUsedDate:lastUsedDate];
  }

  else
  {
    v19 = [resultCopy valueForAttribute:*MEMORY[0x1E6964548] withType:objc_opt_class()];
    [(SSResultBuilder *)v5 setLastUsedDate:v19];
  }

  result3 = [(SSResultBuilder *)v5 result];
  contentType = [result3 contentType];

  if (contentType)
  {
    result4 = [(SSResultBuilder *)v5 result];
    uniformContentType = [result4 uniformContentType];
    [(SSResultBuilder *)v5 setUniformType:uniformContentType];
  }

  if (_os_feature_enabled_impl())
  {
    uniformType = [(SSResultBuilder *)v5 uniformType];
    if (uniformType)
    {
LABEL_25:

      goto LABEL_26;
    }

    sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
    v26 = [sectionBundleIdentifier isEqualToString:@"com.apple.spotlight.events"];

    if (v26)
    {
      uniformType = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.spotlight.events"];
      [(SSResultBuilder *)v5 setUniformType:uniformType];
      goto LABEL_25;
    }
  }

LABEL_26:
  v27 = [resultCopy valueForAttribute:*MEMORY[0x1E6963D20] withType:objc_opt_class()];
  unsignedIntValue = [v27 unsignedIntValue];

  if (unsignedIntValue)
  {
    v29 = objc_opt_new();
    [v29 setBlueComponent:unsignedIntValue / 255.0];
    [v29 setGreenComponent:BYTE1(unsignedIntValue) / 255.0];
    [v29 setRedComponent:BYTE2(unsignedIntValue) / 255.0];
    [(SSResultBuilder *)v5 setBackgroundColor:v29];
  }

LABEL_29:
  return v5;
}

- (unint64_t)numberOfLinesForDescriptions
{
  if (isMacOS())
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)setMaxLinesForDescriptions:(id)descriptions
{
  v16 = *MEMORY[0x1E69E9840];
  descriptionsCopy = descriptions;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [descriptionsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(descriptionsCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        maxLines = [v9 maxLines];
        if (!maxLines)
        {
          maxLines = [(SSResultBuilder *)self numberOfLinesForDescriptions];
        }

        [v9 setMaxLines:maxLines];
      }

      v6 = [descriptionsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)resultAppBundleId
{
  result = [(SSResultBuilder *)self result];
  applicationBundleIdentifier = [result applicationBundleIdentifier];
  v4 = applicationBundleIdentifier;
  if (applicationBundleIdentifier)
  {
    bundleId = applicationBundleIdentifier;
  }

  else
  {
    bundleId = [objc_opt_class() bundleId];
  }

  v6 = bundleId;

  return v6;
}

- (id)buildResult
{
  buildPreviewButtonItems = [(SSResultBuilder *)self buildPreviewButtonItems];
  buildAppEntityAnnotation = [(SSResultBuilder *)self buildAppEntityAnnotation];
  result = [(SSResultBuilder *)self result];
  v6 = result;
  if (result)
  {
    v7 = result;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  buildInlineCard = [(SSResultBuilder *)self buildInlineCard];
  [v8 setInlineCard:buildInlineCard];

  inlineCard = [v8 inlineCard];
  cardSections = [inlineCard cardSections];
  firstObject = [cardSections firstObject];
  [firstObject setPreviewButtonItems:buildPreviewButtonItems];

  inlineCard2 = [v8 inlineCard];
  cardSections2 = [inlineCard2 cardSections];
  firstObject2 = [cardSections2 firstObject];
  [firstObject2 setAppEntityAnnotation:buildAppEntityAnnotation];

  if ((SSSpotlightUIPlusEnabled(v16, v17) & 1) == 0)
  {
    buildCompactCard = [(SSResultBuilder *)self buildCompactCard];
    [v8 setCompactCard:buildCompactCard];

    compactCard = [v8 compactCard];
    cardSections3 = [compactCard cardSections];
    firstObject3 = [cardSections3 firstObject];
    [firstObject3 setPreviewButtonItems:buildPreviewButtonItems];

    compactCard2 = [v8 compactCard];
    cardSections4 = [compactCard2 cardSections];
    firstObject4 = [cardSections4 firstObject];
    [firstObject4 setAppEntityAnnotation:buildAppEntityAnnotation];
  }

  return v8;
}

- (id)buildCompactCard
{
  buildCompactCardSections = [(SSResultBuilder *)self buildCompactCardSections];
  if (buildCompactCardSections)
  {
    v3 = objc_opt_new();
    [v3 setCardSections:buildCompactCardSections];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)buildInlineCard
{
  v19 = *MEMORY[0x1E69E9840];
  buildInlineCardSections = [(SSResultBuilder *)self buildInlineCardSections];
  if (buildInlineCardSections)
  {
    v4 = objc_opt_new();
    [v4 setCardSections:buildInlineCardSections];
    isTopHit = [(SSResultBuilder *)self isTopHit];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = buildInlineCardSections;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (isTopHit)
          {
            [(SSResultBuilder *)self buildBackgroundColor];
          }

          else
          {
            [*(*(&v14 + 1) + 8 * i) backgroundColor];
          }
          v12 = ;
          [v11 setBackgroundColor:{v12, v14}];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)buildCompactCardSections
{
  v12[1] = *MEMORY[0x1E69E9840];
  buildCompactCardSection = [(SSResultBuilder *)self buildCompactCardSection];
  descriptions = [buildCompactCardSection descriptions];
  [(SSResultBuilder *)self setMaxLinesForDescriptions:descriptions];

  v5 = objc_opt_class();
  descriptions2 = [buildCompactCardSection descriptions];
  [v5 condenseWhiteSpaceForDescriptions:descriptions2];

  thumbnail = [buildCompactCardSection thumbnail];
  badgingImage = [thumbnail badgingImage];

  thumbnail2 = [buildCompactCardSection thumbnail];
  [thumbnail2 setBadgingImage:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [buildCompactCardSection setThumbnail:badgingImage];
  }

  if (buildCompactCardSection)
  {
    v12[0] = buildCompactCardSection;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)buildInlineCardSections
{
  v9[1] = *MEMORY[0x1E69E9840];
  buildInlineCardSection = [(SSResultBuilder *)self buildInlineCardSection];
  descriptions = [buildInlineCardSection descriptions];
  [(SSResultBuilder *)self setMaxLinesForDescriptions:descriptions];

  v5 = objc_opt_class();
  descriptions2 = [buildInlineCardSection descriptions];
  [v5 condenseWhiteSpaceForDescriptions:descriptions2];

  if (buildInlineCardSection)
  {
    v9[0] = buildInlineCardSection;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)buildCompactCardSection
{
  buildDetailedRowCardSection = [(SSResultBuilder *)self buildDetailedRowCardSection];
  [buildDetailedRowCardSection setShouldUseCompactDisplay:1];
  v3 = objc_opt_class();
  thumbnail = [buildDetailedRowCardSection thumbnail];
  [v3 setDefaultSizeForThumbnail:thumbnail isCompact:1];

  return buildDetailedRowCardSection;
}

- (id)buildInlineCardSection
{
  buildDetailedRowCardSection = [(SSResultBuilder *)self buildDetailedRowCardSection];
  v3 = objc_opt_class();
  thumbnail = [buildDetailedRowCardSection thumbnail];
  [v3 setDefaultSizeForThumbnail:thumbnail isCompact:0];

  return buildDetailedRowCardSection;
}

- (id)buildHorizontallyScrollingCardSection
{
  subclassBuildHorizontallyScrollingCardSection = [(SSResultBuilder *)self subclassBuildHorizontallyScrollingCardSection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    thumbnail = [subclassBuildHorizontallyScrollingCardSection thumbnail];
    [v4 setDefaultSizeForThumbnail:thumbnail isCompact:0];
  }

  [(SSResultBuilder *)self buildDefaultPropertiesForCardSection:subclassBuildHorizontallyScrollingCardSection];

  return subclassBuildHorizontallyScrollingCardSection;
}

- (id)buildAppTopHitEntityCardSection
{
  v3 = objc_opt_new();
  buildTitle = [(SSResultBuilder *)self buildTitle];
  [v3 setTitle:buildTitle];

  title = [v3 title];
  [title setMaxLines:2];

  buildThumbnail = [(SSResultBuilder *)self buildThumbnail];
  [v3 setThumbnail:buildThumbnail];

  thumbnail = [v3 thumbnail];
  [thumbnail setBadgingImage:0];

  buildFootnote = [(SSResultBuilder *)self buildFootnote];
  [v3 setFootnote:buildFootnote];

  footnote = [v3 footnote];
  [footnote setMaxLines:1];

  if ([(SSResultBuilder *)self isToolParameterFilling])
  {
    [(SSResultBuilder *)self buildFillToolParameterCommand];
  }

  else
  {
    [(SSResultBuilder *)self buildCommand];
  }
  v10 = ;
  [v3 setCommand:v10];

  [v3 setUseAppIconMetrics:1];
  buildAppEntityAnnotation = [(SSResultBuilder *)self buildAppEntityAnnotation];
  [v3 setAppEntityAnnotation:buildAppEntityAnnotation];

  return v3;
}

- (void)buildDefaultPropertiesForCardSection:(id)section
{
  sectionCopy = section;
  if ([(SSResultBuilder *)self isToolParameterFilling])
  {
    buildFillToolParameterCommand = [(SSResultBuilder *)self buildFillToolParameterCommand];
    [sectionCopy setCommand:buildFillToolParameterCommand];

    [sectionCopy setSecondaryCommand:0];
    goto LABEL_18;
  }

  queryContext = [(SSResultBuilder *)self queryContext];
  queryKind = [queryContext queryKind];

  buildSecondaryCommand = [(SSResultBuilder *)self buildSecondaryCommand];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    queryContext2 = [(SSResultBuilder *)self queryContext];
    searchStringForScopedSearch = [queryContext2 searchStringForScopedSearch];

    if (searchStringForScopedSearch)
    {
      queryContext3 = [(SSResultBuilder *)self queryContext];
      searchStringForScopedSearch2 = [queryContext3 searchStringForScopedSearch];
      [buildSecondaryCommand setSearchString:searchStringForScopedSearch2];
    }
  }

  command = [sectionCopy command];
  v13 = command;
  if (command || queryKind == 16)
  {
    if (command)
    {
      v15 = command;
    }

    else
    {
      v15 = buildSecondaryCommand;
    }

    [sectionCopy setCommand:v15];

    if (queryKind == 16)
    {
      goto LABEL_17;
    }
  }

  else
  {
    buildCommand = [(SSResultBuilder *)self buildCommand];
    [sectionCopy setCommand:buildCommand];
  }

  secondaryCommand = [sectionCopy secondaryCommand];
  v17 = secondaryCommand;
  if (secondaryCommand)
  {
    v18 = secondaryCommand;
  }

  else
  {
    v18 = buildSecondaryCommand;
  }

  [sectionCopy setSecondaryCommand:v18];

LABEL_17:
LABEL_18:
  previewCommand = [sectionCopy previewCommand];
  if (previewCommand)
  {
    [sectionCopy setPreviewCommand:previewCommand];
  }

  else
  {
    buildPreviewCommand = [(SSResultBuilder *)self buildPreviewCommand];
    [sectionCopy setPreviewCommand:buildPreviewCommand];
  }
}

- (id)buildDetailedRowCardSection
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  buildPunchouts = [(SSResultBuilder *)self buildPunchouts];
  [v4 setPunchoutOptions:buildPunchouts];

  buildThumbnail = [(SSResultBuilder *)self buildThumbnail];
  [v4 setThumbnail:buildThumbnail];

  thumbnail = [v4 thumbnail];
  v8 = [(SSResultBuilder *)self buildBadgingImageWithThumbnail:thumbnail];
  thumbnail2 = [v4 thumbnail];
  [thumbnail2 setBadgingImage:v8];

  buildTrailingThumbnail = [(SSResultBuilder *)self buildTrailingThumbnail];
  [v4 setTrailingThumbnail:buildTrailingThumbnail];

  buildTitle = [(SSResultBuilder *)self buildTitle];
  [v4 setTitle:buildTitle];

  buildSecondaryTitle = [(SSResultBuilder *)self buildSecondaryTitle];
  [v4 setSecondaryTitle:buildSecondaryTitle];

  secondaryTitle = [v4 secondaryTitle];
  maxLines = [secondaryTitle maxLines];
  if (maxLines <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = maxLines;
  }

  secondaryTitle2 = [v4 secondaryTitle];
  [secondaryTitle2 setMaxLines:v15];

  buildSecondaryTitleImage = [(SSResultBuilder *)self buildSecondaryTitleImage];
  [v4 setSecondaryTitleImage:buildSecondaryTitleImage];

  [v4 setIsSecondaryTitleDetached:{-[SSResultBuilder buildSecondaryTitleIsDetached](self, "buildSecondaryTitleIsDetached")}];
  selfCopy = self;
  buildDescriptions = [(SSResultBuilder *)self buildDescriptions];
  v58 = objc_opt_new();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v19 = buildDescriptions;
  v20 = [v19 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v60;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v60 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v59 + 1) + 8 * i);
        text = [v24 text];
        title = [v4 title];
        text2 = [title text];
        v27 = [text isEqualToString:text2];

        if ((v27 & 1) == 0)
        {
          [v58 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v21);
  }

  if (objc_msgSend_count(v58))
  {
    v28 = v58;
  }

  else
  {
    v28 = 0;
  }

  [v4 setDescriptions:v28];
  title2 = [v4 title];
  maxLines2 = [title2 maxLines];
  v31 = maxLines2;
  if (!maxLines2)
  {
    text = [v4 descriptions];
    if (text)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2;
    }
  }

  title3 = [v4 title];
  [title3 setMaxLines:v31];

  if (!maxLines2)
  {
  }

  buildFootnote = [(SSResultBuilder *)selfCopy buildFootnote];
  [v4 setFootnote:buildFootnote];

  footnote = [v4 footnote];
  maxLines3 = [footnote maxLines];
  if (maxLines3)
  {
    v36 = maxLines3;
  }

  else
  {
    v36 = 2;
  }

  footnote2 = [v4 footnote];
  [footnote2 setMaxLines:v36];

  buildTrailingTopText = [(SSResultBuilder *)selfCopy buildTrailingTopText];
  [v4 setTrailingTopText:buildTrailingTopText];

  trailingTopText = [v4 trailingTopText];
  maxLines4 = [trailingTopText maxLines];
  if (maxLines4 <= 1)
  {
    v41 = 1;
  }

  else
  {
    v41 = maxLines4;
  }

  trailingTopText2 = [v4 trailingTopText];
  [trailingTopText2 setMaxLines:v41];

  buildTrailingMiddleText = [(SSResultBuilder *)selfCopy buildTrailingMiddleText];
  [v4 setTrailingMiddleText:buildTrailingMiddleText];

  trailingMiddleText = [v4 trailingMiddleText];
  maxLines5 = [trailingMiddleText maxLines];
  if (maxLines5 <= 1)
  {
    v46 = 1;
  }

  else
  {
    v46 = maxLines5;
  }

  trailingMiddleText2 = [v4 trailingMiddleText];
  [trailingMiddleText2 setMaxLines:v46];

  buildTrailingBottomText = [(SSResultBuilder *)selfCopy buildTrailingBottomText];
  [v4 setTrailingBottomText:buildTrailingBottomText];

  trailingBottomText = [v4 trailingBottomText];
  maxLines6 = [trailingBottomText maxLines];
  if (maxLines6 <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = maxLines6;
  }

  trailingBottomText2 = [v4 trailingBottomText];
  [trailingBottomText2 setMaxLines:v51];

  if ([(SSResultBuilder *)selfCopy isToolParameterFilling])
  {
    [v4 setAction:0];
  }

  else
  {
    buildAction = [(SSResultBuilder *)selfCopy buildAction];
    [v4 setAction:buildAction];
  }

  if ([(SSResultBuilder *)selfCopy isToolParameterFilling])
  {
    [v4 setButtonItems:0];
  }

  else
  {
    buildButtonItems = [(SSResultBuilder *)selfCopy buildButtonItems];
    [v4 setButtonItems:buildButtonItems];
  }

  [v4 setPreventThumbnailImageScaling:{-[SSResultBuilder buildPreventThumbnailImageScaling](selfCopy, "buildPreventThumbnailImageScaling")}];
  [v4 setButtonItemsAreTrailing:{-[SSResultBuilder buildButtonItemsAreTrailing](selfCopy, "buildButtonItemsAreTrailing")}];
  descriptions = [v4 descriptions];
  [(SSResultBuilder *)selfCopy setMaxLinesForDescriptions:descriptions];

  [(SSResultBuilder *)selfCopy buildDefaultPropertiesForCardSection:v4];

  return v4;
}

- (id)buildBadgingImageWithThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  bundleIdentifierForAppIconBadgeImage = [(SSResultBuilder *)self bundleIdentifierForAppIconBadgeImage];
  v6 = bundleIdentifierForAppIconBadgeImage;
  if (!bundleIdentifierForAppIconBadgeImage || ([bundleIdentifierForAppIconBadgeImage isEqualToString:@"com.apple.MobileAddressBook"] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(thumbnailCopy, "bundleIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", v6), v8, (v9 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_opt_new();
    [v7 setBundleIdentifier:v6];
  }

  return v7;
}

- (id)bundleIdentifierForAppIconBadgeImage
{
  result = [(SSResultBuilder *)self result];
  applicationBundleIdentifier = [result applicationBundleIdentifier];
  v4 = applicationBundleIdentifier;
  if (applicationBundleIdentifier)
  {
    bundleId = applicationBundleIdentifier;
  }

  else
  {
    bundleId = [objc_opt_class() bundleId];
  }

  v6 = bundleId;

  return v6;
}

- (id)buildPreviewButtonItems
{
  v29[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  result = [(SSResultBuilder *)self result];
  applicationBundleIdentifier = [result applicationBundleIdentifier];

  result2 = [(SSResultBuilder *)self result];
  applicationBundleIdentifier2 = [result2 applicationBundleIdentifier];

  coreSpotlightId = [(SSResultBuilder *)self coreSpotlightId];
  result3 = [(SSResultBuilder *)self result];
  v9 = [result3 valueForAttribute:*MEMORY[0x1E6963BC0] withType:objc_opt_class()];

  if (objc_msgSend_count(v9))
  {
    v10 = objc_opt_new();
    [v10 setActionItemTypes:v9];
    [v10 setApplicationBundleIdentifier:applicationBundleIdentifier];
    [v10 setCoreSpotlightIdentifier:coreSpotlightId];
    [v3 addObject:v10];
  }

  result4 = [(SSResultBuilder *)self result];
  itemProviderDataTypes = [result4 itemProviderDataTypes];

  result5 = [(SSResultBuilder *)self result];
  itemProviderFileTypes = [result5 itemProviderFileTypes];

  result6 = [(SSResultBuilder *)self result];
  v16 = [result6 valueForAttribute:*MEMORY[0x1E6964AE8] withType:objc_opt_class()];

  v29[0] = @"com.apple.mobilemail";
  v29[1] = @"com.apple.mobilenotes";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v18 = [v17 containsObject:applicationBundleIdentifier];

  if (itemProviderDataTypes || itemProviderFileTypes || v16)
  {
    if ((v18 & 1) != 0 || SSSectionIsSyndicatedPhotos(applicationBundleIdentifier2))
    {
      v19 = objc_opt_new();
      v20 = objc_opt_new();
      [v20 setApplicationBundleIdentifier:applicationBundleIdentifier];
      [v20 setCoreSpotlightIdentifier:coreSpotlightId];
      [v20 setDataProviderTypeIdentifiers:itemProviderDataTypes];
      [v20 setFileProviderTypeIdentifiers:itemProviderFileTypes];
      if (!itemProviderFileTypes && v16)
      {
        v28 = v16;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
        [v20 setFileProviderTypeIdentifiers:v21];
      }

      [v19 setCopyableItem:v20];
      v22 = objc_opt_new();
      [v22 setCommand:v19];
      [v3 addObject:v22];
    }

    if (v16)
    {
      v23 = objc_opt_new();
      v24 = objc_opt_new();
      [v24 setShareProviderTypeIdentifier:v16];
      [v24 setApplicationBundleIdentifier:applicationBundleIdentifier];
      [v24 setCoreSpotlightIdentifier:coreSpotlightId];
      [v24 setShareProviderTypeIdentifier:v16];
      [v23 setShareItem:v24];
      v25 = objc_opt_new();
      [v25 setCommand:v23];
      [v3 addObject:v25];
    }
  }

  return v3;
}

- (id)buildPunchouts
{
  v16[1] = *MEMORY[0x1E69E9840];
  result = [(SSResultBuilder *)self result];
  v4 = [result valueForAttribute:*MEMORY[0x1E6964950] withType:objc_opt_class()];
  v5 = [result valueForAttribute:*MEMORY[0x1E6963D28] withType:objc_opt_class()];
  bOOLValue = [v5 BOOLValue];

  v7 = [result valueForAttribute:*MEMORY[0x1E6963EB0] withType:objc_opt_class()];
  v8 = v7;
  if (!v4 && (bOOLValue & 1) == 0 && !v7)
  {
    goto LABEL_12;
  }

  v9 = objc_opt_new();
  [v9 setLabel:v4];
  [v9 setIsRunnableInBackground:bOOLValue];
  if (v8)
  {
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v8];
    v11 = v10;
    if (v10)
    {
      v16[0] = v10;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      [v9 setUrls:v12];
    }

    else
    {
      v12 = SSGeneralLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(SSResultBuilder *)self buildPunchouts];
      }
    }
  }

  if (v9)
  {
    v15 = v9;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  }

  else
  {
LABEL_12:
    v13 = 0;
  }

  return v13;
}

- (id)buildThumbnail
{
  result = [(SSResultBuilder *)self result];
  v4 = [result valueForAttribute:*MEMORY[0x1E6964BF8] withType:objc_opt_class()];
  v5 = [result valueForAttribute:*MEMORY[0x1E6964BF0] withType:objc_opt_class()];
  v36 = [result valueForAttribute:*MEMORY[0x1E6964BE0] withType:objc_opt_class()];
  v6 = [result valueForAttribute:*MEMORY[0x1E6964BE8] withType:objc_opt_class()];
  v37 = [result valueForAttribute:*MEMORY[0x1E6964C00] withType:objc_opt_class()];
  v7 = [result urlValueForAttribute:*MEMORY[0x1E6964C08]];
  v39 = [result urlValueForAttribute:*MEMORY[0x1E6963F08]];
  thumbnail = [result thumbnail];
  applicationBundleIdentifier = [result applicationBundleIdentifier];
  v10 = applicationBundleIdentifier;
  v35 = thumbnail;
  if (applicationBundleIdentifier)
  {
    bundleId = applicationBundleIdentifier;
  }

  else
  {
    bundleId = [objc_opt_class() bundleId];
  }

  *(&v38 + 1) = bundleId;

  *&v38 = [(SSResultBuilder *)self relatedAppBundleIdentifier];
  result2 = [(SSResultBuilder *)self result];
  applicationBundleIdentifier2 = [result2 applicationBundleIdentifier];
  if ([applicationBundleIdentifier2 isEqualToString:@"com.apple.mobilecal"])
  {
    result3 = [(SSResultBuilder *)self result];
    [result3 userActivityRequiredString];
    v15 = v5;
    v17 = v16 = v4;
    v18 = [v17 containsString:@"com.apple.calendarUIKit.userActivity.tomorrow"];

    v4 = v16;
    v5 = v15;

    v19 = v36;
    if (v18)
    {
      v20 = objc_alloc(MEMORY[0x1E69C9EF0]);
      v21 = +[SSDateFormatManager tomorrow];
      v22 = [v20 initWithDate:v21];

      v23 = v6;
      v24 = v37;
      v25 = v7;
LABEL_14:
      v26 = v39;
      goto LABEL_15;
    }
  }

  else
  {

    v19 = v36;
  }

  v25 = v7;
  v26 = v39;
  v23 = v6;
  v24 = v37;
  if (v7 | v39)
  {
    v22 = [objc_alloc(MEMORY[0x1E69CA548]) initWithURL:v7];
    [v22 setDarkUrlValue:v39];
LABEL_15:
    v30 = v35;
LABEL_16:
    v31 = v38;
    goto LABEL_17;
  }

  if (v5)
  {
    v22 = [MEMORY[0x1E69CA138] imageWithData:v5];
    goto LABEL_15;
  }

  if (v4)
  {
    v27 = objc_alloc(MEMORY[0x1E69CA548]);
    v28 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4 isDirectory:0];
    v29 = v27;
    v25 = v7;
    v22 = [v29 initWithURL:v28];

    goto LABEL_14;
  }

  if (v23 | v19)
  {
    v22 = objc_opt_new();
    [v22 setContentType:v23];
    [v22 setBundleIdentifier:v19];
    goto LABEL_15;
  }

  v30 = v35;
  if (v37)
  {
    v22 = objc_opt_new();
    [v22 setIsTemplate:1];
    [v22 setSymbolName:v37];
    [v22 setPunchThroughBackground:1];
    goto LABEL_16;
  }

  if (v35)
  {
    v22 = [v35 copy];
    goto LABEL_16;
  }

  v31 = v38;
  if (v38 != 0)
  {
    v33 = objc_opt_new();
    v22 = v33;
    if (v38)
    {
      v34 = v38;
    }

    else
    {
      v34 = *(&v38 + 1);
    }

    [v33 setBundleIdentifier:{v34, 0}];
    goto LABEL_16;
  }

  v22 = 0;
LABEL_17:

  return v22;
}

- (id)buildTitle
{
  result = [(SSResultBuilder *)self result];
  v3 = [result valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
  v4 = [result valueForAttribute:*MEMORY[0x1E6964C28] withType:objc_opt_class()];
  v5 = [result valueForAttribute:*MEMORY[0x1E6964B58] withType:objc_opt_class()];
  title = [result title];
  text = [title text];

  if ([v3 length])
  {
    v8 = v3;
    goto LABEL_7;
  }

  if ([v4 length])
  {
    v8 = v4;
    goto LABEL_7;
  }

  if ([v5 length])
  {
    v8 = v5;
LABEL_7:
    v9 = v8;
    if (v8)
    {
LABEL_8:
      v10 = MEMORY[0x1E69CA3A0];
      v11 = [objc_opt_class() whiteSpaceCondensedStringForString:v9];
      v12 = [v10 textWithString:v11];

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (text)
  {
    v9 = text;
    goto LABEL_8;
  }

  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v13 localizedStringForKey:@"NO_TITLE" value:&stru_1F556FE60 table:@"SpotlightServices"];

  if (v9)
  {
    goto LABEL_8;
  }

LABEL_12:
  v12 = 0;
LABEL_13:

  return v12;
}

- (id)buildSecondaryTitle
{
  result = [(SSResultBuilder *)self result];
  secondaryTitle = [result secondaryTitle];
  if (secondaryTitle)
  {
    v5 = MEMORY[0x1E69CA0F0];
    result2 = [(SSResultBuilder *)self result];
    secondaryTitle2 = [result2 secondaryTitle];
    v8 = [v5 textWithString:secondaryTitle2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)buildSecondaryTitleIsDetached
{
  result = [(SSResultBuilder *)self result];
  isSecondaryTitleDetached = [result isSecondaryTitleDetached];

  return isSecondaryTitleDetached;
}

- (id)buildSecondaryTitleImage
{
  result = [(SSResultBuilder *)self result];
  secondaryTitleImage = [result secondaryTitleImage];

  return secondaryTitleImage;
}

- (id)buildDescriptions
{
  result = [(SSResultBuilder *)self result];
  v3 = [result valueForAttribute:*MEMORY[0x1E6964B18] withType:objc_opt_class()];
  v4 = [result valueForAttribute:*MEMORY[0x1E6963F28] withType:objc_opt_class()];
  descriptions = [result descriptions];
  v6 = objc_opt_new();
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v3;
  }

  if (v7)
  {
    v8 = [MEMORY[0x1E69CA3A0] textWithString:?];
    [v6 addObject:v8];
  }

  else if (objc_msgSend_count(descriptions))
  {
    [v6 addObjectsFromArray:descriptions];
  }

  if (objc_msgSend_count(v6))
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (id)buildFootnote
{
  result = [(SSResultBuilder *)self result];
  footnote = [result footnote];
  if (footnote)
  {
    v5 = MEMORY[0x1E69CA3A0];
    result2 = [(SSResultBuilder *)self result];
    footnote2 = [result2 footnote];
    v8 = [v5 textWithString:footnote2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)buildAction
{
  result = [(SSResultBuilder *)self result];
  sectionBundleIdentifier = [result sectionBundleIdentifier];
  v4 = MEMORY[0x1E695DFD8];
  contentTypeTree = [result contentTypeTree];
  v6 = [v4 setWithArray:contentTypeTree];

  identifier = [*MEMORY[0x1E6982CD8] identifier];
  v34 = v6;
  if ([v6 containsObject:identifier])
  {
    v8 = 1;
  }

  else
  {
    identifier2 = [*MEMORY[0x1E6982F50] identifier];
    v8 = [v6 containsObject:identifier2];
  }

  if ([sectionBundleIdentifier isEqual:@"com.apple.Music"])
  {
    v10 = 1;
  }

  else
  {
    v10 = [sectionBundleIdentifier isEqual:@"com.apple.TV"];
  }

  v35 = sectionBundleIdentifier;
  v11 = [result valueForAttribute:*MEMORY[0x1E6964C48] withType:objc_opt_class()];
  v12 = v11;
  if ((v8 & v10) != 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = v14;
  if (v14)
  {
    v16 = [v14 hasPrefix:@"x-media-library://"] ^ 1;
  }

  else
  {
    v16 = 1;
  }

  v17 = [result valueForAttribute:*MEMORY[0x1E6964720] withType:objc_opt_class()];
  firstObject = [v17 firstObject];

  v19 = [result valueForAttribute:*MEMORY[0x1E6964B88] withType:objc_opt_class()];
  bOOLValue = [v19 BOOLValue];

  v21 = [result valueForAttribute:*MEMORY[0x1E6964550] withType:objc_opt_class()];
  v22 = [result valueForAttribute:*MEMORY[0x1E6964598] withType:objc_opt_class()];
  v23 = [result valueForAttribute:*MEMORY[0x1E6964B80] withType:objc_opt_class()];
  bOOLValue2 = [v23 BOOLValue];

  action = [result action];
  if (![v15 length] || (v16 & 1) != 0)
  {
    if ((([firstObject length] != 0) & bOOLValue) == 1)
    {
      v26 = objc_opt_new();
      [v26 setPhoneNumber:firstObject];
    }

    else
    {
      v26 = 0;
    }

    if (v21)
    {
      v28 = v22 == 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = !v28;
    v27 = v35;
    if ((v29 & bOOLValue2) == 1)
    {
      v30 = objc_opt_new();
      [v21 floatValue];
      [v30 setLat:v31];
      [v22 floatValue];
      [v30 setLng:v32];
      if (!v26)
      {
        v26 = objc_opt_new();
      }

      [v26 setLocation:v30];
    }
  }

  else
  {
    v26 = objc_opt_new();
    [v26 setLocalMediaIdentifier:v15];
    v27 = v35;
  }

  if (!v26 && action)
  {
    v26 = action;
  }

  return v26;
}

- (id)buildHighlightedMatchedTextWithTitle:(id)title headTruncation:(BOOL)truncation
{
  truncationCopy = truncation;
  v24 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  queryContext = [(SSResultBuilder *)self queryContext];
  searchString = [queryContext searchString];
  v9 = [searchString length];

  if (v9)
  {
    queryContext2 = [(SSResultBuilder *)self queryContext];
    evaluator = [queryContext2 evaluator];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    matchedStrings = [(SSResultBuilder *)self matchedStrings];
    v13 = [matchedStrings countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(matchedStrings);
          }

          v17 = getHighlightedRichText(*(*(&v19 + 1) + 8 * i), evaluator, titleCopy, truncationCopy);
          if (v17)
          {
            v9 = v17;
            goto LABEL_12;
          }
        }

        v14 = [matchedStrings countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_12:
  }

  return v9;
}

- (id)buildHighlightedTextWithString:(id)string includeQuotes:(BOOL)quotes
{
  quotesCopy = quotes;
  v41[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  queryContext = [(SSResultBuilder *)self queryContext];
  searchString = [queryContext searchString];
  precomposedStringWithCompatibilityMapping = [searchString precomposedStringWithCompatibilityMapping];
  v10 = precomposedStringWithCompatibilityMapping;
  v11 = &stru_1F556FE60;
  if (precomposedStringWithCompatibilityMapping)
  {
    v11 = precomposedStringWithCompatibilityMapping;
  }

  v12 = v11;

  matchedStrings = [(SSResultBuilder *)self matchedStrings];
  if ([matchedStrings containsObject:stringCopy])
  {
    v14 = 1;
  }

  else
  {
    precomposedStringWithCompatibilityMapping2 = [stringCopy precomposedStringWithCompatibilityMapping];
    v14 = [precomposedStringWithCompatibilityMapping2 localizedStandardContainsString:v12];
  }

  v16 = MEMORY[0x1E69CA3A0];
  if (quotesCopy)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"QUOTED_TRANSCRIPT_FORMAT" value:&stru_1F556FE60 table:@"SpotlightServices"];
    stringCopy = [v17 stringWithFormat:v19, stringCopy];
    v21 = [v16 textWithString:stringCopy];

    if (!v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E69CA3A0] textWithString:stringCopy];
    if (!v14)
    {
      goto LABEL_16;
    }
  }

  if ([(__CFString *)v12 length]>= 4)
  {
    queryContext2 = [(SSResultBuilder *)self queryContext];
    evaluator = [queryContext2 evaluator];

    v24 = getHighlightedRichText(stringCopy, evaluator, 0, 1);
    formattedTextPieces = [v24 formattedTextPieces];
    v26 = objc_msgSend_count(formattedTextPieces);

    if (v26)
    {
      v27 = v24;

      if (quotesCopy)
      {
        v28 = MEMORY[0x1E69CA0F0];
        v40 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v39 = [v40 localizedStringForKey:@"OPEN_QUOTE" value:&stru_1F556FE60 table:@"SpotlightServices"];
        v38 = [v28 textWithString:v39];
        v41[0] = v38;
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
        formattedTextPieces2 = [v27 formattedTextPieces];
        v29 = [v37 arrayByAddingObjectsFromArray:formattedTextPieces2];
        v30 = MEMORY[0x1E69CA0F0];
        v31 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v32 = [v31 localizedStringForKey:@"CLOSED_QUOTE" value:&stru_1F556FE60 table:@"SpotlightServices"];
        v33 = [v30 textWithString:v32];
        v34 = [v29 arrayByAddingObject:v33];
        [v27 setFormattedTextPieces:v34];
      }
    }

    else
    {
      v27 = v21;
    }

    v21 = v27;
  }

LABEL_16:

  return v21;
}

- (id)buildCommand
{
  result = [(SSResultBuilder *)self result];
  v4 = [result valueForAttribute:*MEMORY[0x1E6964A90] withType:objc_opt_class()];

  result2 = [(SSResultBuilder *)self result];
  v6 = [result2 valueForAttribute:*MEMORY[0x1E6964C80] withType:objc_opt_class()];

  if (v4)
  {
    filePath = objc_opt_new();
    [filePath setIntentMessageData:v4];
    [filePath setIsRunnableWorkflow:1];
    result3 = [(SSResultBuilder *)self result];
    v9 = [result3 valueForAttribute:*MEMORY[0x1E6964A78] withType:objc_opt_class()];
    [filePath setCommandDetail:v9];

    result4 = [(SSResultBuilder *)self result];
    applicationBundleIdentifier = [result4 valueForAttribute:*MEMORY[0x1E6964A88] withType:objc_opt_class()];
    [filePath setBiomeStreamIdentifier:applicationBundleIdentifier];
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  result5 = [(SSResultBuilder *)self result];
  contentType = [result5 contentType];
  v14 = [contentType isEqualToString:@"com.apple.siri.interaction"];

  if (v14)
  {
    filePath = objc_opt_new();
    result4 = [(SSResultBuilder *)self result];
    applicationBundleIdentifier = [result4 valueForAttribute:*MEMORY[0x1E69642B8] withType:objc_opt_class()];
    [filePath setVoiceShortcutIdentifier:applicationBundleIdentifier];
    goto LABEL_7;
  }

  if (v6)
  {
    filePath = objc_opt_new();
    [filePath setUserActivityRequiredString:v6];
    result4 = [(SSResultBuilder *)self result];
    applicationBundleIdentifier = [result4 applicationBundleIdentifier];
    [filePath setApplicationBundleIdentifier:applicationBundleIdentifier];
    goto LABEL_7;
  }

  coreSpotlightId = [(SSResultBuilder *)self coreSpotlightId];
  if (coreSpotlightId)
  {
    v17 = coreSpotlightId;
    resultAppBundleId = [(SSResultBuilder *)self resultAppBundleId];
    if (resultAppBundleId)
    {
      v19 = resultAppBundleId;
      resultAppBundleId2 = [(SSResultBuilder *)self resultAppBundleId];
      v21 = [resultAppBundleId2 isEqualToString:@"com.apple.CalendarUI"];

      if ((v21 & 1) == 0)
      {
        filePath = objc_opt_new();
        coreSpotlightId2 = [(SSResultBuilder *)self coreSpotlightId];
        [filePath setCoreSpotlightIdentifier:coreSpotlightId2];

        result4 = [(SSResultBuilder *)self resultAppBundleId];
        [filePath setApplicationBundleIdentifier:result4];
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  filePath = [(SSResultBuilder *)self filePath];

  if (filePath)
  {
    v23 = MEMORY[0x1E69CA320];
    v24 = MEMORY[0x1E695DFF8];
    filePath2 = [(SSResultBuilder *)self filePath];
    v26 = [v24 fileURLWithPath:filePath2];
    result4 = [v23 punchoutWithURL:v26];

    filePath = objc_opt_new();
    [filePath setPunchout:result4];
    goto LABEL_8;
  }

LABEL_9:

  return filePath;
}

- (BOOL)isToolParameterFilling
{
  queryContext = [(SSResultBuilder *)self queryContext];
  v3 = [queryContext queryKind] == 15;

  return v3;
}

- (id)buildFillToolParameterCommand
{
  buildAppEntityAnnotation = [(SSResultBuilder *)self buildAppEntityAnnotation];
  if (buildAppEntityAnnotation)
  {
    v3 = objc_opt_new();
    [v3 setEntity:buildAppEntityAnnotation];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)buildAppEntityAnnotation
{
  result = [(SSResultBuilder *)self result];
  v4 = [result valueForAttribute:*MEMORY[0x1E6963C40] withType:objc_opt_class()];

  result2 = [(SSResultBuilder *)self result];
  v6 = [result2 valueForAttribute:*MEMORY[0x1E6963C28] withType:objc_opt_class()];

  if ([v4 length] && objc_msgSend(v6, "length"))
  {
    v7 = objc_opt_new();
    [v7 setTypeIdentifer:v4];
    [v7 setEntityIdentifer:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)supportsClearingBackendData
{
  queryContext = [(SSResultBuilder *)self queryContext];
  if (queryContext)
  {
    queryContext2 = [(SSResultBuilder *)self queryContext];
    retainBackendData = [queryContext2 retainBackendData];

    v6 = retainBackendData ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (id)stringForSFRichText:(id)text
{
  v21 = *MEMORY[0x1E69E9840];
  textCopy = text;
  text = [textCopy text];
  v5 = [text mutableCopy];

  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v6 = objc_opt_new();

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    formattedTextPieces = [textCopy formattedTextPieces];
    v8 = [formattedTextPieces countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(formattedTextPieces);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          text2 = [v12 text];
          if ([text2 length])
          {
            text3 = [v12 text];
            [v6 appendString:text3];
          }
        }

        v9 = [formattedTextPieces countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

+ (BOOL)isSpotlight
{
  if (isSpotlight_onceToken != -1)
  {
    +[SSResultBuilder isSpotlight];
  }

  return isSpotlight_isSpotlight;
}

void __30__SSResultBuilder_isSpotlight__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  isSpotlight_isSpotlight = [v0 isEqualToString:@"com.apple.Spotlight"];
}

+ (BOOL)isSearchToolClient
{
  if (isSearchToolClient_onceToken != -1)
  {
    +[SSResultBuilder isSearchToolClient];
  }

  return isSearchToolClient_isSearchToolClient;
}

void __37__SSResultBuilder_isSearchToolClient__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  isSearchToolClient_isSearchToolClient = [v0 hasPrefix:@"com.apple.omniSearch"];
}

@end