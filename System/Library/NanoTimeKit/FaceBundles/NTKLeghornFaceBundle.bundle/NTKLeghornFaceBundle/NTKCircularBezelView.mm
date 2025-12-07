@interface NTKCircularBezelView
+ (void)drawSnapshotInContext:(CGContext *)context hiVizComplicationStyle:(unint64_t)style colorPalette:(id)palette poiFilter:(id)filter forDevice:(id)device;
- (CGRect)_dirtyRectFromSeconds:(double)seconds toSeconds:(double)toSeconds;
- (NTKCircularBezelView)initWithFrame:(CGRect)frame forDevice:(id)device withDisplayMode:(unint64_t)mode;
- (__CTLine)radiusLabelCTLineForRadius:(double)radius;
- (id)_accessibilityStringForCurrentHeading;
- (id)_accessibilityStringForCurrentWaypointRadius;
- (id)_accessibilityStringForDistanceAccuracyToWaypoint:(id)waypoint;
- (id)_accessibilityStringForRelativeBearingToTargetWaypoint;
- (id)_initWithFrame:(CGRect)frame layoutConstants:(id *)constants forDevice:(id)device withDisplayMode:(unint64_t)mode;
- (id)accessibilityLabel;
- (id)attributedStringForCardinalDirectionLabel:(double)label;
- (id)attributedStringForDistanceAccuracyToWaypoint:(id)waypoint;
- (id)attributedStringForTargetWaypoint:(id)waypoint;
- (id)initForDevice:(id)device frame:(CGRect)frame displayMode:(unint64_t)mode;
- (unint64_t)hiVizComplicationStyle;
- (void)_addConstraintsForDevice:(id)device;
- (void)_addSubViews;
- (void)_drawCircularCompassBezelInContext:(CGContext *)context tritiumProgress:(double)progress backgroundAlpha:(double)alpha compassAlpha:(double)compassAlpha waypointsAlpha:(double)waypointsAlpha secondsAlpha:(double)secondsAlpha;
- (void)_invalidateRadiusLabelCTLine;
- (void)_labelVShiftForDevice:(id)device nameLabel:(double *)label distanceLabel:(double *)distanceLabel;
- (void)_setHeading:(double)heading duration:(double)duration completion:(id)completion;
- (void)_updateLabelsFromDisplayMode:(unint64_t)mode toDislayMode:(unint64_t)dislayMode progress:(double)progress onlyUpdateDistanceLabel:(BOOL)label;
- (void)_updateLabelsIfNeeded;
- (void)_updateWaypointAhead;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)radiusLabelColor:(id)color;
- (void)seTtritiumMedialColor:(id)color;
- (void)setBackgroundAlpha:(double)alpha;
- (void)setColorPalette:(id)palette;
- (void)setCompassAlpha:(double)alpha;
- (void)setCompassBackgroundColor:(id)color;
- (void)setCompassCardinalColor:(id)color;
- (void)setCompassMajorTickColor:(id)color;
- (void)setCompassMedialTickColor:(id)color;
- (void)setCompassMinorTickColor:(id)color;
- (void)setCompassNorthColor:(id)color;
- (void)setCompassOrientingArrowColor:(id)color;
- (void)setFromBackgroundStyle:(unint64_t)style toBackgroundStyle:(unint64_t)backgroundStyle fraction:(double)fraction;
- (void)setFromDisplayMode:(unint64_t)mode toDisplayMode:(unint64_t)displayMode fraction:(double)fraction;
- (void)setFromHiVizComplicationStyle:(unint64_t)style toHiVizComplicationStyle:(unint64_t)complicationStyle fraction:(double)fraction;
- (void)setFromTargetWaypoint:(id)waypoint toTargetWaypoint:(id)targetWaypoint fraction:(double)fraction;
- (void)setFromWaypointRadius:(double)radius toWaypointRadius:(double)waypointRadius fraction:(double)fraction;
- (void)setFromWaypointsState:(unint64_t)state toWaypointsState:(unint64_t)waypointsState fraction:(double)fraction;
- (void)setHeading:(double)heading animated:(BOOL)animated;
- (void)setLiveSecondsInTritium:(BOOL)tritium;
- (void)setLocation:(id)location;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)setPreserveColorsInTritium:(BOOL)tritium;
- (void)setPrimaryBackgroundColor:(id)color;
- (void)setSecondaryBackgroundColor:(id)color;
- (void)setSeconds:(double)seconds;
- (void)setSecondsAlpha:(double)alpha;
- (void)setSecondsInactiveMajorTickColor:(id)color;
- (void)setSecondsInactiveMedialTickColor:(id)color;
- (void)setSecondsInactiveMinorTickColor:(id)color;
- (void)setSecondsMajorTickColor:(id)color;
- (void)setSecondsMedialTickColor:(id)color;
- (void)setSecondsMinorTickColor:(id)color;
- (void)setTertiaryBackgroundColor:(id)color;
- (void)setToSnapshotValuesWithPOIFilter:(id)filter;
- (void)setTritiumMajorColor:(id)color;
- (void)setTritiumMinorColor:(id)color;
- (void)setTritiumProgress:(double)progress;
- (void)setUsePOIDerivedColors:(BOOL)colors;
- (void)setWaypointActiveConeColor:(id)color;
- (void)setWaypointAheadColor:(id)color;
- (void)setWaypointColor:(id)color;
- (void)setWaypointInactiveConeColor:(id)color;
- (void)setWaypointLabelPrimaryColor:(id)color;
- (void)setWaypointLabelSecondaryColor:(id)color;
- (void)setWaypointRingColor:(id)color;
- (void)setWaypointTargetRingColor:(id)color;
- (void)setWaypoints:(id)waypoints;
- (void)setWaypointsAlpha:(double)alpha;
- (void)setsecondsCompassRingColor:(id)color;
@end

@implementation NTKCircularBezelView

- (NTKCircularBezelView)initWithFrame:(CGRect)frame forDevice:(id)device withDisplayMode:(unint64_t)mode
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  sub_23BECF628(deviceCopy, v15);
  v13 = objc_msgSend__initWithFrame_layoutConstants_forDevice_withDisplayMode_(self, v12, v15, deviceCopy, mode, x, y, width, height);

  return v13;
}

- (id)initForDevice:(id)device frame:(CGRect)frame displayMode:(unint64_t)mode
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  memset(__src, 0, 512);
  deviceCopy = device;
  v12 = sub_23BECF75C(deviceCopy, __src, 0.0, 0.0, width, height);
  objc_msgSend_sizeClass(deviceCopy, v13, v14, v12);

  *&__src[21] = 0x3FE0000000000000;
  *(&__src[21] + 1) = *(&__src[19] + 1) + 4.0;
  __src[20] = xmmword_23BEED230;
  __asm { FMOV            V0.2D, #1.0 }

  __src[22] = _Q0;
  __src[23] = _Q0;
  __asm { FMOV            V2.2D, #3.0 }

  __src[24] = _Q2;
  *&__src[19] = 0x401A000000000000;
  *&__src[25] = 0x3FFC000000000000;
  *(&__src[25] + 1) = *(&__src[19] + 1) + -7.0;
  *(&__src[33] + 1) = 0x3FF0000000000000;
  __src[34] = _Q0;
  __src[35] = xmmword_23BEED240;
  *&__src[36] = 0x4008000000000000;
  memcpy(v24, __src, sizeof(v24));
  v22 = objc_msgSend__initWithFrame_layoutConstants_forDevice_withDisplayMode_(self, v21, v24, deviceCopy, mode, x, y, width, height);

  return v22;
}

- (id)_initWithFrame:(CGRect)frame layoutConstants:(id *)constants forDevice:(id)device withDisplayMode:(unint64_t)mode
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v173 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v166.receiver = self;
  v166.super_class = NTKCircularBezelView;
  height = [(NTKCircularBezelView *)&v166 initWithFrame:x, y, width, height];
  v17 = height;
  if (height)
  {
    modeCopy = mode;
    p_dirtyRect = &height->_dirtyRect;
    objc_msgSend_bounds(height, v15, v16);
    *&p_dirtyRect->origin.x = v19;
    v17->_dirtyRect.origin.y = v20;
    v17->_dirtyRect.size.width = v21;
    v17->_dirtyRect.size.height = v22;
    v25 = objc_msgSend_clearColor(MEMORY[0x277D75348], v23, v24);
    objc_msgSend_setBackgroundColor_(v17, v26, v25);

    memcpy(&v17->_layoutConstants, constants, sizeof(v17->_layoutConstants));
    v27 = v17->_layoutConstants.bezelCircularOuterRadius * 6.28318531;
    v17->_pixelsPerDegree = v27 / 360.0;
    v17->_pixelsPerSecond = v27 / 60.0;
    v163 = deviceCopy;
    objc_msgSend_screenScale(deviceCopy, v28, v29);
    obj = &v17->_layoutConstants.bezelOuterRect.origin.x;
    v162 = v17;
    v17->_pixelsPerVisibleChange = 1.0 / (v30 * 4.0);
    v33 = objc_msgSend_foghornCompassBezelCardinalFontOfSize_(MEMORY[0x277CBBB08], v31, v32, v17->_layoutConstants.bezelCircularCompassCardinalFontSize);
    v36 = objc_msgSend_systemPinkColor(MEMORY[0x277D75348], v34, v35);
    v38 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v37, 4);
    v39 = 0;
    v164 = *MEMORY[0x277D740C0];
    v40 = *MEMORY[0x277D740A8];
    v41 = *MEMORY[0x277D74118];
    do
    {
      v42 = NTKFoghornFaceLocalizedString(off_278BA1268[v39]);
      v43 = objc_alloc_init(MEMORY[0x277D74240]);
      objc_msgSend_setAlignment_(v43, v44, 1);
      v167 = v164;
      v168 = v40;
      v170 = v36;
      v171 = v33;
      v169 = v41;
      v172 = v43;
      v46 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v45, &v170, &v167, 3);
      v47 = objc_alloc(MEMORY[0x277CCA898]);
      v49 = objc_msgSend_initWithString_attributes_(v47, v48, v42, v46);
      objc_msgSend_setObject_atIndexedSubscript_(v38, v50, v49, v39);

      ++v39;
    }

    while (v39 != 4);
    v53 = objc_msgSend_copy(v38, v51, v52);

    v17 = v162;
    circularCompassLabels = v162->_circularCompassLabels;
    v162->_circularCompassLabels = v53;

    v162->_circularCompassTextLines = sub_23BEC66A4(v162->_circularCompassLabels);
    v57 = objc_msgSend_foghornCompassBezelCardinalFontOfSize_(MEMORY[0x277CBBB08], v55, v56, obj[80]);
    v60 = objc_msgSend_systemPinkColor(MEMORY[0x277D75348], v58, v59);
    v62 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v61, 1);
    v63 = NTKFoghornFaceLocalizedString(@"LEGHORN_LOCATION_UNAVAILABLE");
    v64 = objc_alloc_init(MEMORY[0x277D74240]);
    objc_msgSend_setAlignment_(v64, v65, 1);
    v167 = v164;
    v168 = v40;
    v170 = v60;
    v171 = v57;
    v169 = v41;
    v172 = v64;
    v67 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v66, &v170, &v167, 3);
    v68 = objc_alloc(MEMORY[0x277CCA898]);
    v70 = objc_msgSend_initWithString_attributes_(v68, v69, v63, v67);
    objc_msgSend_setObject_atIndexedSubscript_(v62, v71, v70, 0);

    v165 = objc_msgSend_copy(v62, v72, v73);
    v162->_informationLabelLines = sub_23BEC66A4(v165);
    v162->_displayMode = modeCopy;
    v162->_transitoryDisplayMode = modeCopy;
    v162->_transitoryDisplayModeProgress = 1.0;
    targetWaypoint = v162->_targetWaypoint;
    v162->_targetWaypoint = 0;

    waypoints = v162->_waypoints;
    v162->_waypoints = MEMORY[0x277CBEBF8];

    location = v162->_location;
    v162->_location = 0;

    objc_msgSend_defaultWaypointRadius(NTKLeghornFace, v77, v78);
    v162->_waypointRadius = v79;
    v162->_transitoryWaypointRadius = v79;
    v162->_transitoryWaypointRadiusProgress = 1.0;
    v162->_preserveColorsInTritium = 1;
    v162->_waypointsConeDynamicBreadthEnabled = 0;
    v162->_waypointsConeWaypointTrackingEnabled = 0;
    v80 = *MEMORY[0x277D74410];
    v83 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277CBBB08], v81, v82, obj[82], *MEMORY[0x277D74410]);
    waypointLabelPrimaryFont = v162->_waypointLabelPrimaryFont;
    v162->_waypointLabelPrimaryFont = v83;

    v85 = *MEMORY[0x277D74420];
    v88 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277CBBB08], v86, v87, obj[83], *MEMORY[0x277D74420]);
    waypointLabelSecondaryFont = v162->_waypointLabelSecondaryFont;
    v162->_waypointLabelSecondaryFont = v88;

    v92 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277CBBB08], v90, v91, obj[84], v85);
    waypointLabelSecondarySmallcapsFont = v162->_waypointLabelSecondarySmallcapsFont;
    v162->_waypointLabelSecondarySmallcapsFont = v92;

    v96 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277CBBB08], v94, v95, obj[85], v80);
    waypointLabelHeadingFont = v162->_waypointLabelHeadingFont;
    v162->_waypointLabelHeadingFont = v96;

    v100 = objc_msgSend_monospacedDigitSystemFontOfSize_weight_(MEMORY[0x277D74300], v98, v99, obj[85], v80);
    waypointLabelHeadingMonospacedFont = v162->_waypointLabelHeadingMonospacedFont;
    v162->_waypointLabelHeadingMonospacedFont = v100;

    v104 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v102, v103, 1.0, 0.682352941, 0.803921569, 1.0);
    obja = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v105, v106, 0.729411765, 0.31372549, 0.552941176, 1.0);
    v109 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v107, v108, 0.556862745, 0.352941176, 0.439215686, 1.0);
    v112 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v110, v111, 0.4, 0.274509804, 0.321568627, 1.0);
    v115 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v113, v114, 0.117647059, 0.0274509804, 0.0784313725, 1.0);
    v159 = objc_msgSend_grayColor(MEMORY[0x277D75348], v116, v117);
    v120 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v118, v119, 0.662745098, 0.447058824, 0.552941176, 1.0);
    v123 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v121, v122, 0.850980392, 0.537254902, 0.678431373, 1.0);
    v126 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v124, v125, 0.376470588, 0.258823529, 0.321568627, 1.0);
    v129 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v127, v128, 0.466666667, 0.352941176, 0.415686275, 1.0);
    v155 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v130, v131);
    primaryBackgroundColor = v162->_primaryBackgroundColor;
    v162->_primaryBackgroundColor = v129;
    v157 = v129;

    v162->_fractionBezelBackgroundOn = 0.0;
    objc_storeStrong(&v162->_compassOrientingArrowColor, v104);
    objc_storeStrong(&v162->_compassNorthColor, v104);
    objc_storeStrong(&v162->_compassCardinalColor, v104);
    objc_storeStrong(&v162->_compassMajorTickColor, v104);
    objc_storeStrong(&v162->_compassMedialTickColor, v104);
    compassMinorTickColor = v162->_compassMinorTickColor;
    v162->_compassMinorTickColor = v109;
    v156 = v109;

    compassBackgroundColor = v162->_compassBackgroundColor;
    v162->_compassBackgroundColor = v115;
    v135 = v115;

    objc_storeStrong(&v162->_waypointColor, v104);
    objc_storeStrong(&v162->_waypointAheadColor, v104);
    waypointRingColor = v162->_waypointRingColor;
    v162->_waypointRingColor = v120;
    v137 = v120;

    waypointTargetRingColor = v162->_waypointTargetRingColor;
    v162->_waypointTargetRingColor = v123;
    v139 = v123;

    objc_storeStrong(&v162->_waypointActiveConeColor, v104);
    waypointInactiveConeColor = v162->_waypointInactiveConeColor;
    v162->_waypointInactiveConeColor = v126;
    v141 = v126;

    objc_storeStrong(&v162->_secondsMajorTickColor, v104);
    objc_storeStrong(&v162->_secondsMedialTickColor, v104);
    objc_storeStrong(&v162->_secondsMinorTickColor, v104);
    objc_storeStrong(&v162->_secondsInactiveMajorTickColor, v112);
    objc_storeStrong(&v162->_secondsInactiveMedialTickColor, v112);
    secondsInactiveMinorTickColor = v162->_secondsInactiveMinorTickColor;
    v162->_secondsInactiveMinorTickColor = v112;
    v143 = v112;

    waypointLabelPrimaryColor = v162->_waypointLabelPrimaryColor;
    v162->_waypointLabelPrimaryColor = v104;
    v145 = v104;

    objc_storeStrong(&v162->_waypointLabelSecondaryColor, obja);
    waypointLabelTertiaryColor = v162->_waypointLabelTertiaryColor;
    v162->_waypointLabelTertiaryColor = v155;
    v147 = v155;

    radiusLabelColor = v162->_radiusLabelColor;
    v162->_radiusLabelColor = obja;
    v149 = obja;

    objc_storeStrong(&v162->_tritiumMajorColor, v159);
    objc_storeStrong(&v162->_tritiumMedialColor, v159);
    tritiumMinorColor = v162->_tritiumMinorColor;
    v162->_tritiumMinorColor = v159;

    v162->_compassAlpha = 1.0;
    v162->_waypointsAlpha = 1.0;
    v162->_secondsAlpha = 1.0;
    v162->_backgroundAlpha = 1.0;
    v162->_seconds = 0.0;
    v162->_heading = 0.0;
    v162->_secondsTritiumAnimationStyle = 3;
    v162->_secondsEndOfMinuteAnimationStyle = 3;
    v162->_secondsEndOfMinuteAnimationDuration = 0.5;
    objc_msgSend__addSubViews(v162, v151, v152);
    deviceCopy = v163;
    objc_msgSend__addConstraintsForDevice_(v162, v153, v163);
  }

  return v17;
}

- (void)dealloc
{
  circularCompassTextLines = self->_circularCompassTextLines;
  if (circularCompassTextLines)
  {
    CFRelease(circularCompassTextLines);
    self->_circularCompassTextLines = 0;
  }

  informationLabelLines = self->_informationLabelLines;
  if (informationLabelLines)
  {
    CFRelease(informationLabelLines);
    self->_informationLabelLines = 0;
  }

  objc_msgSend__invalidateRadiusLabelCTLine(self, a2, v2);
  v6.receiver = self;
  v6.super_class = NTKCircularBezelView;
  [(NTKCircularBezelView *)&v6 dealloc];
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_dirtyRect = &self->_dirtyRect;
  v9 = self->_dirtyRect.origin.x;
  v10 = self->_dirtyRect.origin.y;
  v11 = self->_dirtyRect.size.width;
  v12 = self->_dirtyRect.size.height;
  v18.origin.x = v9;
  v18.origin.y = v10;
  v18.size.width = v11;
  v18.size.height = v12;
  if (CGRectIsEmpty(v18))
  {
    v13 = height;
    v14 = width;
    v15 = y;
    v16 = x;
  }

  else
  {
    v19.origin.x = v9;
    v19.origin.y = v10;
    v19.size.width = v11;
    v19.size.height = v12;
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    *&v16 = CGRectUnion(v19, v20);
  }

  p_dirtyRect->origin.x = v16;
  p_dirtyRect->origin.y = v15;
  p_dirtyRect->size.width = v14;
  p_dirtyRect->size.height = v13;
  v17.receiver = self;
  v17.super_class = NTKCircularBezelView;
  [(NTKCircularBezelView *)&v17 setNeedsDisplayInRect:x, y, width, height];
}

- (void)setNeedsDisplay
{
  p_dirtyRect = &self->_dirtyRect;
  objc_msgSend_bounds(self, a2, v2);
  p_dirtyRect->origin.x = v5;
  p_dirtyRect->origin.y = v6;
  p_dirtyRect->size.width = v7;
  p_dirtyRect->size.height = v8;
  v9.receiver = self;
  v9.super_class = NTKCircularBezelView;
  [(NTKCircularBezelView *)&v9 setNeedsDisplay];
}

- (void)_addSubViews
{
  if ((self->_displayMode | 2) != 3)
  {
    v4 = objc_opt_new();
    v7 = objc_msgSend_systemPinkColor(MEMORY[0x277D75348], v5, v6);
    objc_msgSend_setTextColor_(v4, v8, v7);

    objc_msgSend_setNumberOfLines_(v4, v9, 1);
    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v4, v10, 0);
    objc_msgSend_setLineBreakMode_(v4, v11, 4);
    objc_msgSend_setTextAlignment_(v4, v12, 1);
    v13 = *MEMORY[0x277D74410];
    v16 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277D74300], v14, v15, 14.0, *MEMORY[0x277D74410]);
    objc_msgSend_setFont_(v4, v17, v16);

    v20 = objc_msgSend_greenColor(MEMORY[0x277D75348], v18, v19);
    objc_msgSend_setTextColor_(v4, v21, v20);

    objc_msgSend_setText_(v4, v22, @"TENT");
    objc_msgSend_addSubview_(self, v23, v4);
    circularPOIInformationPrimaryLabel = self->_circularPOIInformationPrimaryLabel;
    self->_circularPOIInformationPrimaryLabel = v4;
    v25 = v4;

    v26 = objc_opt_new();
    v29 = objc_msgSend_systemPinkColor(MEMORY[0x277D75348], v27, v28);
    objc_msgSend_setTextColor_(v26, v30, v29);

    objc_msgSend_setNumberOfLines_(v26, v31, 1);
    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v26, v32, 0);
    objc_msgSend_setLineBreakMode_(v26, v33, 4);
    objc_msgSend_setTextAlignment_(v26, v34, 1);
    v37 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277D74300], v35, v36, 9.0, v13);
    objc_msgSend_setFont_(v26, v38, v37);

    v41 = objc_msgSend_yellowColor(MEMORY[0x277D75348], v39, v40);
    objc_msgSend_setTextColor_(v26, v42, v41);

    objc_msgSend_setText_(v26, v43, @"385FT - 3MIN AGO");
    objc_msgSend_addSubview_(self, v44, v26);
    circularPOIInformationSecondaryLabel = self->_circularPOIInformationSecondaryLabel;
    self->_circularPOIInformationSecondaryLabel = v26;
    v46 = v26;
  }
}

- (void)_labelVShiftForDevice:(id)device nameLabel:(double *)label distanceLabel:(double *)distanceLabel
{
  v7 = objc_msgSend_sizeClass(device, a2, device);
  UICeilToViewScale();
  v9 = v8;
  if (v7 == 9)
  {
    UIFloorToViewScale();
  }

  v21 = NTKFoghornFaceLocalizedString(@"LEGHORN_DISTANCE_LABEL_VSPACING_PIXELS");
  if ((objc_msgSend_isEqualToString_(v21, v10, @"LEGHORN_DISTANCE_LABEL_VSPACING_PIXELS") & 1) != 0 || (objc_msgSend_floatValue(v21, v11, v12), v13 <= 0.0))
  {
    v14 = NTKFoghornFaceLocalizedString(@"LEGHORN_DISTANCE_LABEL_VSPACING");
    if ((objc_msgSend_isEqualToString_(v14, v15, @"LEGHORN_DISTANCE_LABEL_VSPACING") & 1) == 0)
    {
      objc_msgSend_BOOLValue(v14, v16, v17);
    }
  }

  UIFloorToViewScale();
  if (v18 >= v9)
  {
    v18 = v9;
  }

  v19 = fmax(v18, 0.0);
  UICeilToViewScale();
  if (label)
  {
    *label = v20;
  }

  if (distanceLabel)
  {
    *distanceLabel = v19;
  }
}

- (void)_addConstraintsForDevice:(id)device
{
  v81[6] = *MEMORY[0x277D85DE8];
  p_layoutConstants = &self->_layoutConstants;
  bezelCircularSecondsActiveTickWidth = self->_layoutConstants.bezelCircularSecondsActiveTickWidth;
  bezelCircularSecondsTickMinorLength = self->_layoutConstants.bezelCircularSecondsTickMinorLength;
  bezelCircularSecondsOutsideRadius = self->_layoutConstants.bezelCircularSecondsOutsideRadius;
  bezelLabelBaseRadius = self->_layoutConstants.bezelLabelBaseRadius;
  bezelLabelTopRadius = self->_layoutConstants.bezelLabelTopRadius;
  v79 = 0.0;
  v80 = 0.0;
  objc_msgSend__labelVShiftForDevice_nameLabel_distanceLabel_(self, a2, device, &v80, &v79);
  v8 = v79;
  v7 = v80;
  v9 = p_layoutConstants->bezelLabelBaseRadius;
  poiInformationLabelFontSize = p_layoutConstants->poiInformationLabelFontSize;
  objc_msgSend_bounds(self, v11, v12);
  v14 = v13;
  v15 = p_layoutConstants->poiInformationLabelFontSize;
  objc_msgSend_bounds(self, v16, v17);
  if (self->_circularPOIInformationPrimaryLabel)
  {
    circularPOIInformationSecondaryLabel = self->_circularPOIInformationSecondaryLabel;
    if (circularPOIInformationSecondaryLabel)
    {
      v22 = bezelLabelTopRadius + v7;
      v23 = bezelCircularSecondsOutsideRadius - bezelCircularSecondsTickMinorLength - bezelCircularSecondsActiveTickWidth;
      v24 = v14 * 0.5 - sqrt(v23 * v23 - (v22 + poiInformationLabelFontSize) * (v22 + poiInformationLabelFontSize));
      v25 = v20 * 0.5 - sqrt(v23 * v23 - (v9 + v15) * (v9 + v15));
      v68 = MEMORY[0x277CCAAD0];
      v78 = objc_msgSend_firstBaselineAnchor(circularPOIInformationSecondaryLabel, v18, v19);
      v76 = objc_msgSend_centerYAnchor(self, v26, v27);
      v74 = objc_msgSend_constraintEqualToAnchor_constant_(v78, v28, v76, -(bezelLabelBaseRadius - v8));
      v81[0] = v74;
      v72 = objc_msgSend_leadingAnchor(self->_circularPOIInformationSecondaryLabel, v29, v30);
      v71 = objc_msgSend_leadingAnchor(self, v31, v32);
      v70 = objc_msgSend_constraintEqualToAnchor_constant_(v72, v33, v71, v25);
      v81[1] = v70;
      v69 = objc_msgSend_trailingAnchor(self->_circularPOIInformationSecondaryLabel, v34, v35);
      v67 = objc_msgSend_trailingAnchor(self, v36, v37);
      v66 = objc_msgSend_constraintEqualToAnchor_constant_(v69, v38, v67, -v25);
      v81[2] = v66;
      v41 = objc_msgSend_lastBaselineAnchor(self->_circularPOIInformationPrimaryLabel, v39, v40);
      v44 = objc_msgSend_centerYAnchor(self, v42, v43);
      v46 = objc_msgSend_constraintEqualToAnchor_constant_(v41, v45, v44, -v22);
      v81[3] = v46;
      v49 = objc_msgSend_leadingAnchor(self->_circularPOIInformationPrimaryLabel, v47, v48);
      v52 = objc_msgSend_leadingAnchor(self, v50, v51);
      v54 = objc_msgSend_constraintEqualToAnchor_constant_(v49, v53, v52, v24);
      v81[4] = v54;
      v57 = objc_msgSend_trailingAnchor(self->_circularPOIInformationPrimaryLabel, v55, v56);
      v60 = objc_msgSend_trailingAnchor(self, v58, v59);
      v62 = objc_msgSend_constraintEqualToAnchor_constant_(v57, v61, v60, -v24);
      v81[5] = v62;
      v64 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v63, v81, 6);
      objc_msgSend_activateConstraints_(v68, v65, v64);
    }
  }
}

- (__CTLine)radiusLabelCTLineForRadius:(double)radius
{
  p_layoutConstants = &self->_layoutConstants;
  v6 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], a2, v3);
  v8 = objc_msgSend_objectForKey_(v6, v7, *MEMORY[0x277CBE718]);
  v11 = objc_msgSend_BOOLValue(v8, v9, v10);

  v14 = objc_msgSend_foghornDepthBezelLabelFontOfSize_(MEMORY[0x277CBBB08], v12, v13, p_layoutConstants->bezelRadiusLabelFontSize);
  v17 = objc_msgSend_foghornDepthBezelLabelFontOfSize_(MEMORY[0x277CBBB08], v15, v16, p_layoutConstants->bezelRadiusLabelFontSize * 0.8);
  v20 = objc_msgSend_cyanColor(MEMORY[0x277D75348], v18, v19);
  v22 = objc_msgSend__attributedStringForRadius_useMetric_formatPrefix_valueFont_valueColor_unitFont_unitColor_(MEMORY[0x277CCA898], v21, v11, @"LEGHORN_RADIUS", v14, v20, v17, v20, radius);
  v23 = CTLineCreateWithAttributedString(v22);

  return v23;
}

- (void)_drawCircularCompassBezelInContext:(CGContext *)context tritiumProgress:(double)progress backgroundAlpha:(double)alpha compassAlpha:(double)compassAlpha waypointsAlpha:(double)waypointsAlpha secondsAlpha:(double)secondsAlpha
{
  selfCopy = self;
  v867 = *MEMORY[0x277D85DE8];
  preserveColorsInTritium = self->_preserveColorsInTritium;
  liveSecondsInTritium = self->_liveSecondsInTritium;
  transitoryDisplayMode = self->_transitoryDisplayMode;
  displayMode = self->_displayMode;
  transitoryDisplayModeProgress = self->_transitoryDisplayModeProgress;
  heading = self->_heading;
  seconds = self->_seconds;
  v704 = self->_tritiumMajorColor;
  v703 = selfCopy->_tritiumMedialColor;
  v717 = selfCopy->_tritiumMinorColor;
  x = selfCopy->_compassOrientingArrowColor;
  v730 = selfCopy->_compassNorthColor;
  v731 = selfCopy->_compassCardinalColor;
  v732 = selfCopy->_compassMedialTickColor;
  v733 = selfCopy->_compassMinorTickColor;
  v734 = selfCopy->_secondsCompassRingColor;
  fractionUsePOIDerivedColors = selfCopy->_fractionUsePOIDerivedColors;
  v727 = selfCopy->_waypointColor;
  v728 = selfCopy->_waypointAheadColor;
  v735 = selfCopy->_waypointRingColor;
  v726 = selfCopy->_waypointTargetRingColor;
  v738 = selfCopy->_waypointActiveConeColor;
  v14 = selfCopy->_waypointInactiveConeColor;
  v737 = selfCopy->_waypointOutOfRangeColor;
  v739 = selfCopy->_secondsMajorTickColor;
  v15 = selfCopy->_secondsMinorTickColor;
  v743 = selfCopy->_secondsInactiveMajorTickColor;
  v742 = selfCopy->_secondsInactiveMinorTickColor;
  v716 = selfCopy->_radiusLabelColor;
  v740 = selfCopy->_primaryBackgroundColor;
  v16 = selfCopy->_secondaryBackgroundColor;
  v17 = selfCopy->_tertiaryBackgroundColor;
  v699 = 0.0;
  v818 = transitoryDisplayModeProgress;
  CLKInterpolateBetweenFloatsClipped();
  if (fabs(v18) >= 0.00000011920929)
  {
    v699 = v18;
    if (fabs(v18 + -1.0) < 0.00000011920929)
    {
      v699 = 1.0;
    }
  }

  CLKInterpolateBetweenFloatsClipped();
  v20 = 0.0;
  if (fabs(v19) >= 0.00000011920929)
  {
    v20 = v19;
    if (fabs(v19 + -1.0) < 0.00000011920929)
    {
      v20 = 1.0;
    }
  }

  v710 = v20;
  CLKInterpolateBetweenFloatsClipped();
  v22 = 0.0;
  v23 = 0.0;
  if (fabs(v21) >= 0.00000011920929)
  {
    v23 = v21;
    if (fabs(v21 + -1.0) < 0.00000011920929)
    {
      v23 = 1.0;
    }
  }

  v798 = v23;
  CLKInterpolateBetweenFloatsClipped();
  if (fabs(v24) >= 0.00000011920929)
  {
    v22 = v24;
    if (fabs(v24 + -1.0) < 0.00000011920929)
    {
      v22 = 1.0;
    }
  }

  v25 = 0.0;
  CLKInterpolateBetweenFloatsClipped();
  v707 = 0.0;
  if (fabs(v26) >= 0.00000011920929)
  {
    v707 = v26;
    if (fabs(v26 + -1.0) < 0.00000011920929)
    {
      v707 = 1.0;
    }
  }

  CLKInterpolateBetweenFloatsClipped();
  if (fabs(v27) >= 0.00000011920929)
  {
    v25 = v27;
    if (fabs(v27 + -1.0) < 0.00000011920929)
    {
      v25 = 1.0;
    }
  }

  CLKInterpolateBetweenFloatsClipped();
  v29 = 0.0;
  v30 = 0.0;
  if (fabs(v28) >= 0.00000011920929)
  {
    v30 = v28;
    if (fabs(v28 + -1.0) < 0.00000011920929)
    {
      v30 = 1.0;
    }
  }

  CLKInterpolateBetweenFloatsClipped();
  if (fabs(v33) >= 0.00000011920929)
  {
    v29 = v33;
    if (fabs(v33 + -1.0) < 0.00000011920929)
    {
      v29 = 1.0;
    }
  }

  v34 = fabs(progress + -1.0);
  v720 = selfCopy;
  v816 = transitoryDisplayMode;
  v815 = displayMode;
  v698 = v34;
  if (progress > 1.0 || v34 < 0.00000011920929)
  {
    j = 0.0;
    if (heading < 345.0)
    {
      j = round(heading / 30.0) * 30.0;
    }

    v67 = objc_msgSend_clearColor(MEMORY[0x277D75348], v31, v32);

    v68 = v67;
    v69 = v68;

    if (preserveColorsInTritium)
    {
      v744 = v15;
      v72 = objc_msgSend_clearColor(MEMORY[0x277D75348], v70, v71);

      v73 = v72;
      v74 = v73;

      v75 = v74;
      v66 = v75;
      v737 = v66;
      v738 = v66;
      v705 = 0.0;
      v76 = v69;
      v45 = v69;
      v727 = v66;
      v728 = v66;
    }

    else
    {
      v77 = v704;

      v78 = v77;
      v79 = v78;

      v80 = v79;
      v81 = v717;

      v82 = v703;
      v85 = objc_msgSend_clearColor(MEMORY[0x277D75348], v83, v84);

      v86 = v85;
      v87 = v69;
      v88 = v86;

      v89 = v81;
      v90 = v82;

      v91 = v80;
      v66 = objc_msgSend_clearColor(MEMORY[0x277D75348], v92, v93);

      v94 = v91;
      v95 = v90;

      v96 = v89;
      v97 = v96;

      v14 = v716;
      v705 = 0.0;
      v735 = v97;
      v737 = v88;
      v738 = v94;
      v739 = v94;
      v742 = v97;
      v743 = v97;
      v716 = v95;
      v76 = v87;
      v45 = v87;
      v726 = v716;
      v727 = v88;
      v728 = v88;
      x = v94;
      v69 = v87;
      v744 = v716;
      v733 = v97;
      v734 = v716;
      v731 = v94;
      v732 = v94;
      v730 = v94;
    }
  }

  else
  {
    v744 = v15;
    v705 = v29 * waypointsAlpha;
    if (progress <= 0.0 || fabs(progress) < 0.00000011920929)
    {
      goto LABEL_50;
    }

    v35 = 0.0;
    if (heading < 345.0)
    {
      v35 = round(heading / 30.0) * 30.0;
    }

      ;
    }

      ;
    }

      ;
    }

    while (j < 0.0)
    {
      j = j + 360.0;
    }

    v705 = (1.0 - progress) * v705;
    v38 = objc_msgSend_clearColor(MEMORY[0x277D75348], v31, v32);
    v794 = MEMORY[0x23EEC10C0](v740, v38, progress);

    v41 = objc_msgSend_clearColor(MEMORY[0x277D75348], v39, v40);
    v790 = MEMORY[0x23EEC10C0](v16, v41, progress);

    v44 = objc_msgSend_clearColor(MEMORY[0x277D75348], v42, v43);
    v45 = MEMORY[0x23EEC10C0](v17, v44, progress);

    if (preserveColorsInTritium)
    {
      v48 = objc_msgSend_clearColor(MEMORY[0x277D75348], v46, v47);
      v49 = MEMORY[0x23EEC10C0](v727, v48, progress);

      v52 = objc_msgSend_clearColor(MEMORY[0x277D75348], v50, v51);
      v53 = MEMORY[0x23EEC10C0](v728, v52, progress);

      v56 = objc_msgSend_clearColor(MEMORY[0x277D75348], v54, v55);
      MEMORY[0x23EEC10C0](v737, v56, progress);
      v58 = v57 = v14;

      v61 = objc_msgSend_clearColor(MEMORY[0x277D75348], v59, v60);
      v62 = MEMORY[0x23EEC10C0](v738, v61, progress);

      v65 = objc_msgSend_clearColor(MEMORY[0x277D75348], v63, v64);
      v66 = MEMORY[0x23EEC10C0](v57, v65, progress);

      v737 = v58;
      v738 = v62;
      v14 = v65;
      v727 = v49;
      v728 = v53;
    }

    else
    {
      v98 = MEMORY[0x23EEC10C0](x, v704, progress);

      v786 = MEMORY[0x23EEC10C0](v730, v704, progress);

      v780 = MEMORY[0x23EEC10C0](v731, v704, progress);

      v776 = MEMORY[0x23EEC10C0](v732, v704, progress);

      theArrayc = MEMORY[0x23EEC10C0](v733, v717, progress);

      v764 = MEMORY[0x23EEC10C0](v734, v703, progress);

      v101 = objc_msgSend_clearColor(MEMORY[0x277D75348], v99, v100);
      v759 = MEMORY[0x23EEC10C0](v727, v101, progress);

      v104 = objc_msgSend_clearColor(MEMORY[0x277D75348], v102, v103);
      v754 = MEMORY[0x23EEC10C0](v728, v104, progress);

      v107 = objc_msgSend_clearColor(MEMORY[0x277D75348], v105, v106);
      v749 = MEMORY[0x23EEC10C0](v737, v107, progress);

      v108 = MEMORY[0x23EEC10C0](v735, v717, progress);

      v741 = MEMORY[0x23EEC10C0](v726, v703, progress);

      v736 = MEMORY[0x23EEC10C0](v738, v704, progress);

      v111 = objc_msgSend_clearColor(MEMORY[0x277D75348], v109, v110);
      v66 = MEMORY[0x23EEC10C0](v14, v111, progress);

      v112 = MEMORY[0x23EEC10C0](v739, v704, progress);

      v113 = MEMORY[0x23EEC10C0](v744, v703, progress);

      v114 = MEMORY[0x23EEC10C0](v743, v717, progress);

      v115 = MEMORY[0x23EEC10C0](v742, v717, progress);

      MEMORY[0x23EEC10C0](v716, v703, progress);
      v739 = v112;
      v743 = v114;
      v744 = v113;
      v14 = v716;
      v716 = v742 = v115;
      v737 = v749;
      v738 = v736;
      v728 = v754;
      x = v98;
      v726 = v741;
      v727 = v759;
      v734 = v764;
      v735 = v108;
      v732 = v776;
      v733 = theArrayc;
      v730 = v786;
      v731 = v780;
    }

    selfCopy = v720;
    v76 = v790;
    v69 = v794;
  }

  v14 = v66;
  v740 = v69;
  v16 = v76;
  v17 = v45;
  heading = j;
LABEL_50:
  fractionBezelBackgroundOn = selfCopy->_fractionBezelBackgroundOn;
  v117 = fractionBezelBackgroundOn <= 1.0 && fractionBezelBackgroundOn > 0.0;
  v706 = heading;
  if (fractionBezelBackgroundOn < 1.0 && v117)
  {
    v118 = objc_msgSend_clearColor(MEMORY[0x277D75348], v31, v32);
    v119 = MEMORY[0x23EEC10C0](v118, v740, fractionBezelBackgroundOn);

    v122 = objc_msgSend_clearColor(MEMORY[0x277D75348], v120, v121);
    v123 = MEMORY[0x23EEC10C0](v122, v16, fractionBezelBackgroundOn);

    v126 = objc_msgSend_clearColor(MEMORY[0x277D75348], v124, v125);
    v127 = MEMORY[0x23EEC10C0](v126, v17, fractionBezelBackgroundOn);

    v740 = v119;
    v16 = v123;
    v17 = v127;
  }

  v713 = v16;
  v714 = v17;
  v718 = v14;
  v128 = v30 * alpha;
  waypointRadius = selfCopy->_waypointRadius;
  v129 = selfCopy->_waypoints;
  v715 = selfCopy->_location;
  if (v129 && !selfCopy->_sortedWaypoints)
  {
    v832[0] = MEMORY[0x277D85DD0];
    v832[1] = 3221225472;
    v832[2] = sub_23BECB49C;
    v832[3] = &unk_278BA1220;
    v833 = v715;
    v131 = objc_msgSend_sortedArrayUsingComparator_(v129, v130, v832);
    objc_storeStrong(&selfCopy->_sortedWaypoints, v131);
  }

  v702 = selfCopy->_sortedWaypoints;

  v712 = selfCopy->_targetWaypoint;
  v701 = selfCopy->_waypointAhead;
  CGContextSaveGState(context);
  progressCopy = progress;
  if (v128 <= 0.0)
  {
    v181 = v744;
  }

  else
  {
    if (v128 < 1.0)
    {
      v134 = objc_msgSend_colorWithAlphaComponent_(v740, v132, v133, v128);

      v137 = objc_msgSend_colorWithAlphaComponent_(v16, v135, v136, v128);

      v140 = objc_msgSend_colorWithAlphaComponent_(v17, v138, v139, v128);

      v740 = v134;
      v713 = v137;
      v714 = v140;
    }

    if (v117)
    {
      fromHiVizComplicationStyle = selfCopy->_fromHiVizComplicationStyle;
      toHiVizComplicationStyle = selfCopy->_toHiVizComplicationStyle;
      fractionHiVizComplicationStyle = selfCopy->_fractionHiVizComplicationStyle;
      bezelCircularOuterRadius = selfCopy->_layoutConstants.bezelCircularOuterRadius;
      v144 = v740;
      v145 = v714;
      v146 = v713;
      v149 = objc_msgSend_CGColor(v740, v147, v148);
      v150 = -CGRectGetMinX(selfCopy->_layoutConstants.bezelOuterRect);
      v151 = -CGRectGetMinY(selfCopy->_layoutConstants.bezelOuterRect);
      v869 = CGRectInset(selfCopy->_layoutConstants.bezelOuterRect, v150, v151);
      v152 = v869.origin.x;
      v153 = v869.origin.y;
      v154 = v869.size.width;
      height = v869.size.height;
      CGContextAddRect(context, v869);
      v870.origin.x = v152;
      v870.origin.y = v153;
      v870.size.width = v154;
      v870.size.height = height;
      v156 = CGRectGetMidX(v870) - bezelCircularOuterRadius;
      v871.origin.x = v152;
      v871.origin.y = v153;
      v871.size.width = v154;
      v871.size.height = height;
      v872.origin.y = CGRectGetMidY(v871) - bezelCircularOuterRadius;
      v872.size.width = bezelCircularOuterRadius + bezelCircularOuterRadius;
      v872.origin.x = v156;
      v872.size.height = bezelCircularOuterRadius + bezelCircularOuterRadius;
      CGContextAddEllipseInRect(context, v872);
      CGContextSetFillColorWithColor(context, v149);
      CGContextEOFillPath(context);
      v157 = selfCopy->_layoutConstants.bezelCircularOuterRadius;
      bezelCircularWaypointOuterRingRadius = selfCopy->_layoutConstants.bezelCircularWaypointOuterRingRadius;
      v159 = v146;
      v162 = objc_msgSend_CGColor(v159, v160, v161);
      v713 = v146;

      MidX = CGRectGetMidX(selfCopy->_layoutConstants.bezelOuterRect);
      MidY = CGRectGetMidY(selfCopy->_layoutConstants.bezelOuterRect);
      v873.origin.x = MidX - v157;
      v873.origin.y = MidY - v157;
      v873.size.width = v157 + v157;
      v873.size.height = v157 + v157;
      CGContextAddEllipseInRect(context, v873);
      v874.origin.x = MidX - bezelCircularWaypointOuterRingRadius;
      v874.origin.y = MidY - bezelCircularWaypointOuterRingRadius;
      v874.size.width = bezelCircularWaypointOuterRingRadius + bezelCircularWaypointOuterRingRadius;
      v874.size.height = bezelCircularWaypointOuterRingRadius + bezelCircularWaypointOuterRingRadius;
      CGContextAddEllipseInRect(context, v874);
      CGContextSetFillColorWithColor(context, v162);
      CGContextEOFillPath(context);
      bezelCircularWaypointInnerRingRadius = selfCopy->_layoutConstants.bezelCircularWaypointInnerRingRadius;
      v166 = v145;
      v169 = objc_msgSend_CGColor(v166, v167, v168);
      v714 = v145;

      v170 = CGRectGetMidX(selfCopy->_layoutConstants.bezelOuterRect);
      v171 = CGRectGetMidY(selfCopy->_layoutConstants.bezelOuterRect);
      v875.origin.x = v170 - bezelCircularWaypointInnerRingRadius;
      v875.origin.y = v171 - bezelCircularWaypointInnerRingRadius;
      v875.size.width = bezelCircularWaypointInnerRingRadius + bezelCircularWaypointInnerRingRadius;
      v875.size.height = bezelCircularWaypointInnerRingRadius + bezelCircularWaypointInnerRingRadius;
      CGContextAddEllipseInRect(context, v875);
      v847.b = 0.0;
      v847.a = 0.0;
      v845 = 0.0;
      NTKCircularBezelViewHiVizComplicationCenterAndScaleFromHiVizStyleToHiVizStyle(fromHiVizComplicationStyle, toHiVizComplicationStyle, &v847.a, &v845, selfCopy->_layoutConstants.bezelCircularSecondsHiVizCenterOffset.x, selfCopy->_layoutConstants.bezelCircularSecondsHiVizCenterOffset.y, fractionHiVizComplicationStyle);
      if (v845 <= 0.0)
      {
        v176 = *MEMORY[0x277CBF3A0];
        v177 = *(MEMORY[0x277CBF3A0] + 8);
        v178 = *(MEMORY[0x277CBF3A0] + 16);
        v179 = *(MEMORY[0x277CBF3A0] + 24);
        v173 = *MEMORY[0x277CBF3A0];
        v174 = v177;
        v175 = v178;
        v180 = v179;
      }

      else
      {
        v172 = v845 * (selfCopy->_layoutConstants.bezelCircularSecondsHiVizRadius + selfCopy->_layoutConstants.bezelCircularSecondsHiVizPlatterPadding);
        v173 = v847.a - v172;
        v174 = v847.b - v172;
        v175 = v172 + v172;
        v176 = *MEMORY[0x277CBF3A0];
        v177 = *(MEMORY[0x277CBF3A0] + 8);
        v178 = *(MEMORY[0x277CBF3A0] + 16);
        v179 = *(MEMORY[0x277CBF3A0] + 24);
        v180 = v172 + v172;
      }

      v876.origin.x = v173;
      v876.origin.y = v174;
      v876.size.width = v175;
      v876.size.height = v180;
      selfCopy = v720;
      v181 = v744;
      if (!CGRectEqualToRect(v876, *&v176))
      {
        v877.origin.x = v170 + v173;
        v877.origin.y = v171 + v174;
        v877.size.width = v175;
        v877.size.height = v180;
        CGContextAddEllipseInRect(context, v877);
      }

      CGContextSetFillColorWithColor(context, v169);
      CGContextFillPath(context);
    }

    else
    {
      v181 = v744;
    }
  }

  p_x = &selfCopy->_layoutConstants.bezelOuterRect.origin.x;
  v183 = CGRectGetMidX(selfCopy->_layoutConstants.bezelOuterRect);
  v184 = CGRectGetMidY(selfCopy->_layoutConstants.bezelOuterRect);
  CGContextTranslateCTM(context, v183, v184);
  v185 = selfCopy->_fromHiVizComplicationStyle;
  v186 = selfCopy->_toHiVizComplicationStyle;
  v187 = selfCopy->_fractionHiVizComplicationStyle;
  v847.b = 0.0;
  v847.a = 0.0;
  v845 = 0.0;
  NTKCircularBezelViewHiVizComplicationCenterAndScaleFromHiVizStyleToHiVizStyle(v185, v186, &v847.a, &v845, selfCopy->_layoutConstants.bezelCircularSecondsHiVizCenterOffset.x, selfCopy->_layoutConstants.bezelCircularSecondsHiVizCenterOffset.y, v187);
  v188 = v816;
  CLKInterpolateBetweenFloatsClipped();
  v190 = 0.0;
  contextCopy10 = context;
  if (fabs(v189) >= 0.00000011920929)
  {
    v190 = v189;
    if (fabs(v189 + -1.0) < 0.00000011920929)
    {
      v190 = 1.0;
    }
  }

  if (v190 * v845 <= 0.0)
  {
    v196 = *MEMORY[0x277CBF3A0];
    v197 = *(MEMORY[0x277CBF3A0] + 8);
    v198 = *(MEMORY[0x277CBF3A0] + 16);
    v199 = *(MEMORY[0x277CBF3A0] + 24);
    v193 = *MEMORY[0x277CBF3A0];
    v194 = v197;
    v195 = v198;
    v200 = v199;
  }

  else
  {
    v192 = v190 * v845 * (selfCopy->_layoutConstants.bezelCircularSecondsHiVizRadius + selfCopy->_layoutConstants.bezelCircularSecondsHiVizPlatterPadding);
    v193 = v847.a - v192;
    v194 = v847.b - v192;
    v195 = v192 + v192;
    v196 = *MEMORY[0x277CBF3A0];
    v197 = *(MEMORY[0x277CBF3A0] + 8);
    v198 = *(MEMORY[0x277CBF3A0] + 16);
    v199 = *(MEMORY[0x277CBF3A0] + 24);
    v200 = v192 + v192;
  }

  v201 = v22 * waypointsAlpha;
  v878.origin.x = v193;
  v878.origin.y = v194;
  v878.size.width = v195;
  v878.size.height = v200;
  if (!CGRectEqualToRect(v878, *&v196))
  {
    v879.origin.x = *p_x;
    v879.origin.y = selfCopy->_layoutConstants.bezelOuterRect.origin.y;
    v879.size.width = selfCopy->_layoutConstants.bezelOuterRect.size.width;
    v879.size.height = selfCopy->_layoutConstants.bezelOuterRect.size.height;
    v204 = -CGRectGetMidX(v879);
    v880.origin.x = *p_x;
    v880.origin.y = selfCopy->_layoutConstants.bezelOuterRect.origin.y;
    v880.size.width = selfCopy->_layoutConstants.bezelOuterRect.size.width;
    v880.size.height = selfCopy->_layoutConstants.bezelOuterRect.size.height;
    v205 = -CGRectGetMidY(v880);
    v881.origin.x = *p_x;
    v881.origin.y = selfCopy->_layoutConstants.bezelOuterRect.origin.y;
    v881.size.width = selfCopy->_layoutConstants.bezelOuterRect.size.width;
    v881.size.height = selfCopy->_layoutConstants.bezelOuterRect.size.height;
    v882 = CGRectInset(v881, v204, v205);
    CGContextAddRect(context, v882);
    v883.origin.x = v193;
    v883.origin.y = v194;
    v883.size.width = v195;
    v883.size.height = v200;
    CGContextAddEllipseInRect(context, v883);
    CGContextEOClip(context);
  }

  v206 = v798 * compassAlpha;
  v207 = progressCopy;
  if (v201 > 0.0)
  {
    v208 = v734;
    v209 = v735;
    v210 = sub_23BECFD10(v209, v208, v816);
    v211 = sub_23BECFD10(v209, v208, v815);

    v212 = MEMORY[0x23EEC10C0](v210, v211, v818);

    if (v201 < 1.0)
    {
      v215 = objc_msgSend_colorWithAlphaComponent_(v212, v213, v214, v201);

      v212 = v215;
    }

    sub_23BECFDA0(p_x, v816);
    sub_23BECFDA0(p_x, v815);
    v216 = v212;
    CLKInterpolateBetweenFloatsClipped();
    v218 = fabs(v217);
    if (fabs(v217 + -1.0) < 0.00000011920929)
    {
      v217 = 1.0;
    }

    if (v218 >= 0.00000011920929)
    {
      v219 = v217;
    }

    else
    {
      v219 = 0.0;
    }

    v220 = sub_23BECB538(selfCopy->_layoutConstants.bezelCircularWaypointOuterRingWidth, selfCopy->_layoutConstants.bezelCircularWaypointOuterRingWidthTritium, progressCopy);
    v221 = v219 + (selfCopy->_layoutConstants.bezelCircularWaypointOuterRingWidth - v220) * 0.5;
    v222 = -v221;
    v223 = v221 + v221;
    CGContextSetLineWidth(context, v220);
    v224 = v216;
    v227 = objc_msgSend_CGColor(v224, v225, v226);

    CGContextSetStrokeColorWithColor(context, v227);
    v884.origin.x = v222;
    v884.origin.y = v222;
    v884.size.width = v223;
    v884.size.height = v223;
    CGContextStrokeEllipseInRect(context, v884);
  }

  v228 = v25 * secondsAlpha;
  p_layoutConstants = &selfCopy->_layoutConstants;
  if (v206 > 0.0)
  {
    if (v206 >= 1.0)
    {
      v241 = v733;
      v244 = v734;
      v235 = v731;
      v238 = v732;
      v229 = x;
      v232 = v730;
    }

    else
    {
      v229 = objc_msgSend_colorWithAlphaComponent_(x, v202, v203, v206);

      v232 = objc_msgSend_colorWithAlphaComponent_(v730, v230, v231, v206);

      v235 = objc_msgSend_colorWithAlphaComponent_(v731, v233, v234, v206);

      v238 = objc_msgSend_colorWithAlphaComponent_(v732, v236, v237, v206);

      v241 = objc_msgSend_colorWithAlphaComponent_(v733, v239, v240, v206);

      v244 = objc_msgSend_colorWithAlphaComponent_(v734, v242, v243, v206);
    }

    theArray = selfCopy->_circularCompassTextLines;
    v245 = v229;
    v246 = v232;
    v247 = v235;
    v248 = v238;
    v249 = v241;
    v250 = v244;
    v251 = p_layoutConstants;
    v799 = *(p_layoutConstants + 384);
    v791 = *(p_layoutConstants + 392);
    widtha = sub_23BECB538(*(p_layoutConstants + 352), *(p_layoutConstants + 368), progressCopy);
    v787 = sub_23BECB538(v251[45], v251[47], progressCopy);
    v252 = *(p_layoutConstants + 312);
    v253 = *(p_layoutConstants + 408);
    v781 = *(p_layoutConstants + 400);
    v777 = sub_23BECB538(v251[53], v251[55], progressCopy);
    v254 = v252 - v253;
    CLKInterpolateBetweenFloatsClipped();
    v256 = 0.0;
    if (fabs(v255) >= 0.00000011920929)
    {
      v256 = v255;
      if (fabs(v255 + -1.0) < 0.00000011920929)
      {
        v256 = 1.0;
      }
    }

    v694 = v228;
    v734 = v250;
    v257 = v256 + *(p_layoutConstants + 344) - *(p_layoutConstants + 408);
    v750 = v256;
    v796 = v254 + v256;
    v258 = v248;
    v732 = v248;
    v261 = objc_msgSend_CGColor(v258, v259, v260);
    v262 = v249;
    v733 = v249;
    v267 = objc_msgSend_CGColor(v262, v263, v264);
    v730 = v246;
    v731 = v247;
    if (fabs(progressCopy) < 2.22044605e-16 || v698 < 2.22044605e-16)
    {
      v292 = v246;
      v295 = objc_msgSend_CGColor(v292, v293, v294);
      v296 = v247;
      v291 = objc_msgSend_CGColor(v296, v297, v298);
      v755 = v291;
      v760 = v295;
      v765 = v295;
    }

    else
    {
      objc_msgSend_colorWithAlphaComponent_(v246, v265, v266, 1.0 - progressCopy, v698);
      v269 = v268 = v245;
      v272 = objc_msgSend_colorWithAlphaComponent_(v247, v270, v271, 1.0 - progressCopy);
      v275 = objc_msgSend_colorWithAlphaComponent_(v246, v273, v274, progressCopy);
      v278 = objc_msgSend_colorWithAlphaComponent_(v247, v276, v277, progressCopy);
      v279 = v269;
      v765 = objc_msgSend_CGColor(v279, v280, v281);
      v282 = v272;
      v755 = objc_msgSend_CGColor(v282, v283, v284);
      v285 = v275;
      v760 = objc_msgSend_CGColor(v285, v286, v287);
      v288 = v278;
      v291 = objc_msgSend_CGColor(v288, v289, v290);

      contextCopy10 = context;
      v245 = v268;
    }

    CGContextSaveGState(contextCopy10);
    v299 = *(p_layoutConstants + 328);
    v300 = *(p_layoutConstants + 336);
    v301 = v299 + v300 * -2.0;
    v302 = v257 - v299 * 0.5;
    v303 = (*(p_layoutConstants + 320) + v300 * -2.0) * 0.5;
    v304 = atan2(v301, v303);
    v305 = 0.0;
    v306 = v301 * 0.5;
    v307 = v302 + v301 * 0.5;
    ye = v302 - v306;
    v308 = -v304;
    v309 = v245;
    CGContextAddArc(contextCopy10, v303 + 0.0, v307, v300, -v304, 1.57079633, 0);
    v310 = v304 + 3.14159265;
    CGContextAddArc(contextCopy10, 0.0 - v303, v307, v300, 1.57079633, v310, 0);
    CGContextAddArc(contextCopy10, 0.0, ye, v300, v310, v308, 0);
    CGContextClosePath(contextCopy10);
    v311 = v309;
    v314 = objc_msgSend_CGColor(v311, v312, v313);
    x = v309;

    CGContextSetFillColorWithColor(contextCopy10, v314);
    CGContextFillPath(contextCopy10);
    CGContextSetShouldSubpixelPositionFonts(contextCopy10, 1);
    CGContextSetShouldSubpixelQuantizeFonts(contextCopy10, 0);
    CGContextSetShouldAntialias(contextCopy10, 1);
    CGContextSetShouldSmoothFonts(contextCopy10, 1);
    CGContextSetLineCap(contextCopy10, kCGLineCapRound);
    CGContextSetLineWidth(contextCopy10, *(p_layoutConstants + 80));
    v315 = *(MEMORY[0x277CBF2C0] + 16);
    *&v847.a = *MEMORY[0x277CBF2C0];
    *&v847.c = v315;
    *&v847.tx = *(MEMORY[0x277CBF2C0] + 32);
    CGContextSetTextMatrix(contextCopy10, &v847);
    CGContextSetShouldSmoothFonts(contextCopy10, 1);
    v316 = v796 - v750;
    CGContextSetLineWidth(contextCopy10, widtha);
    CGContextSetLineCap(contextCopy10, kCGLineCapRound);
    v317 = 0;
    v751 = v781 + v750;
    v778 = v777 * 0.5;
    v782 = v316;
    v724 = v796 - (v316 - v799 - v778) * 0.5;
    radius = v724 - v799;
    while (1)
    {
      v318 = fmod(v706 * 3.14159265 / -180.0 + 6.28318531 + v305, 6.28318531);
      v319 = -v318;
      if (v317 % 0x12u)
      {
        v320 = v799;
        if (v317 % 6u)
        {
          v320 = v791;
          v321 = v787;
        }

        else
        {
          v321 = widtha;
        }

        if (v317 % 6u)
        {
          v322 = v267;
        }

        else
        {
          v322 = v261;
        }

        v323 = v796 + (v782 - v320 - v778) * -0.5;
        v324 = v323 - v320;
        v325 = cos(v318);
        v326 = sin(v319);
        v327 = v326 * v323;
        v328 = v325 * v324;
        v329 = v326 * v324;
        contextCopy4 = context;
        v331 = v325 * v323;
        v332 = v322;
        v333 = v321;
      }

      else
      {
        if (progressCopy < 1.0)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v317 / 0x12u);
          if (v317)
          {
            v335 = v755;
          }

          else
          {
            v335 = v765;
          }

          CGContextSetFillColorWithColor(context, v335);
          sub_23BECFE88(context, ValueAtIndex, 0, v319, 0.0, 0.0, v751, 0.5);
        }

        if (progressCopy <= 0.0)
        {
          goto LABEL_119;
        }

        if (v317)
        {
          v336 = v291;
        }

        else
        {
          v336 = v760;
        }

        v337 = cos(v318);
        v338 = sin(v319);
        v327 = v724 * v338;
        v328 = radius * v337;
        v329 = radius * v338;
        contextCopy4 = context;
        v331 = v724 * v337;
        v332 = v336;
        v333 = widtha;
      }

      sub_23BECFDF8(contextCopy4, v332, v331, v327, v328, v329, v333);
LABEL_119:
      v305 = v305 + 0.0872664626;
      if (++v317 == 72)
      {
        contextCopy10 = context;
        CGContextRestoreGState(context);

        selfCopy = v720;
        v181 = v744;
        v207 = progressCopy;
        v188 = v816;
        p_x = p_layoutConstants;
        v228 = v694;
        break;
      }
    }
  }

  v339 = v710;
  if (v228 > 0.0)
  {
    if (v228 < 1.0)
    {
      v340 = objc_msgSend_colorWithAlphaComponent_(v739, v202, v203, v228);

      v343 = objc_msgSend_colorWithAlphaComponent_(v181, v341, v342, v228);

      v346 = objc_msgSend_colorWithAlphaComponent_(v743, v344, v345, v228);

      v349 = objc_msgSend_colorWithAlphaComponent_(v742, v347, v348, v228);

      v739 = v340;
      v181 = v343;
      v742 = v349;
      v743 = v346;
    }

    *&v835 = sub_23BECB538(p_x[67], p_x[69], v207);
    v350 = sub_23BECB538(p_x[68], p_x[70], v207);
    secondsEndOfMinuteAnimationDuration = selfCopy->_secondsEndOfMinuteAnimationDuration;
    if (v207 <= 0.0 || liveSecondsInTritium)
    {
      if (seconds <= 60.0 - secondsEndOfMinuteAnimationDuration)
      {
        v357 = v207;
        v358 = v739;
LABEL_131:
        v360 = *&v835;
        v361 = seconds;
        v362 = selfCopy->_fromHiVizComplicationStyle;
        v363 = selfCopy->_toHiVizComplicationStyle;
        v364 = selfCopy->_fractionHiVizComplicationStyle;
        v365 = v358;
        v366 = v181;
        v367 = v743;
        v368 = v742;
        *&__y = 0;
        v369 = modf(v361, &__y);
        v370 = *&__y;
        CGContextSaveGState(contextCopy10);
        v371 = v365;
        v739 = v365;
        v374 = objc_msgSend_CGColor(v371, v372, v373);
        v375 = v366;
        v745 = v366;
        v378 = objc_msgSend_CGColor(v375, v376, v377);
        v379 = v367;
        v743 = v367;
        v382 = objc_msgSend_CGColor(v379, v380, v381);
        v383 = v368;
        v742 = v368;
        v386 = objc_msgSend_CGColor(v383, v384, v385);
        CGContextSetStrokeColorWithColor(contextCopy10, v374);
        CGContextSetLineCap(contextCopy10, kCGLineCapRound);
        CGContextSetLineWidth(contextCopy10, v360);
        v849 = 0u;
        v848 = 0u;
        memset(&v847, 0, sizeof(v847));
        sub_23BED01D0(p_layoutConstants, v362, v363, &v847, v364);
        v387 = 0;
        y = v370 % 0x3C;
        v388 = v370 % 0x3C + 1;
        do
        {
          v846 = 0.0;
          v845 = 0.0;
          if (5 * (v387 / 5) == v387)
          {
            v389 = v374;
          }

          else
          {
            v389 = v378;
          }

          v844 = 0.0;
          v843 = 0.0;
          sub_23BED02E8(p_layoutConstants, &v847, v387, &v843, &v845);
          sub_23BECFDF8(contextCopy10, v389, v843, v844, v845, v846, v360);
          ++v387;
        }

        while (v388 != v387);
        v390 = y + 1;
        if (v369 > 0.0)
        {
          CLKInterpolateBetweenFloatsClipped();
          v392 = v391;
          CGContextSetLineWidth(contextCopy10, v391);
          v393 = v743;
          if (v390 == 5 * (v390 / 5))
          {
            v394 = v739;
          }

          else
          {
            v393 = v742;
            v394 = v745;
          }

          v395 = v393;
          v396 = v394;
          v397 = MEMORY[0x23EEC10C0](v395, v396, v369);
          v398 = v397;
          v401 = objc_msgSend_CGColor(v398, v399, v400);
          v846 = 0.0;
          v845 = 0.0;
          v844 = 0.0;
          v843 = 0.0;
          sub_23BED02E8(p_layoutConstants, &v847, v390, &v843, &v845);
          sub_23BECFDF8(contextCopy10, v401, v843, v844, v845, v846, v392);
          v390 = y + 2;
        }

        selfCopy = v720;
        v339 = v710;
        v207 = v357;
        CGContextSetLineWidth(contextCopy10, v350);
        if (v390 <= 0x3B)
        {
          do
          {
            v846 = 0.0;
            v845 = 0.0;
            if (-858993459 * v390 >= 0x33333334)
            {
              v402 = v386;
            }

            else
            {
              v402 = v382;
            }

            v844 = 0.0;
            v843 = 0.0;
            sub_23BED02E8(p_layoutConstants, &v847, v390, &v843, &v845);
            sub_23BECFDF8(contextCopy10, v402, v843, v844, v845, v846, v350);
            ++v390;
          }

          while (v390 != 60);
        }

        CGContextRestoreGState(contextCopy10);

        v181 = v745;
        v188 = v816;
        goto LABEL_147;
      }

      secondsEndOfMinuteAnimationStyle = selfCopy->_secondsEndOfMinuteAnimationStyle;
      v353 = v739;
      v829 = v739;
      v828 = v181;
      v354 = &v829;
      v355 = &v828;
      sub_23BECB57C(v739, v181, v743, v742, secondsEndOfMinuteAnimationStyle, &seconds, &v829, &v828, seconds, *&v835, v350, (seconds - (60.0 - secondsEndOfMinuteAnimationDuration)) / secondsEndOfMinuteAnimationDuration, &v835);
    }

    else
    {
      secondsTritiumAnimationStyle = selfCopy->_secondsTritiumAnimationStyle;
      v353 = v739;
      v831 = v739;
      v830 = v181;
      v354 = &v831;
      v355 = &v830;
      sub_23BECB57C(v739, v181, v743, v742, secondsTritiumAnimationStyle, &seconds, &v831, &v830, seconds, *&v835, v350, v207, &v835);
    }

    v357 = v207;
    v358 = *v354;

    v359 = *v355;
    v181 = v359;
    goto LABEL_131;
  }

LABEL_147:
  v403 = v707 * waypointsAlpha;
  if (v339 > 0.0)
  {
    v404 = v726;
    v405 = v738;
    v406 = v718;
    v407 = v717;
    v408 = v737;
    v411 = v735;
    v746 = v181;
    if (v339 >= 1.0)
    {
      v788 = v407;
      v792 = v406;
    }

    else
    {
      v412 = objc_msgSend_colorWithAlphaComponent_(v404, v409, v410, v339);

      v415 = objc_msgSend_colorWithAlphaComponent_(v405, v413, v414, v339);

      v418 = objc_msgSend_colorWithAlphaComponent_(v406, v416, v417, v339);

      v421 = objc_msgSend_colorWithAlphaComponent_(v407, v419, v420, v339);

      v424 = objc_msgSend_colorWithAlphaComponent_(v408, v422, v423, v339);

      v427 = objc_msgSend_colorWithAlphaComponent_(v411, v425, v426, v339);

      v404 = v412;
      v405 = v415;
      v788 = v421;
      v792 = v418;
      contextCopy10 = context;
      v408 = v424;
      v411 = v427;
    }

    v428 = v715;
    v429 = v712;
    v430 = v404;
    v431 = v405;
    v432 = v408;
    v433 = v411;
    v434 = v429;
    v435 = v430;
    v436 = v431;
    v437 = v433;
    ya = _fractionFromToDisplayMode(3, v816, v815, v818);
    v438 = *(p_layoutConstants + 408) - *(p_layoutConstants + 416);
    v439 = sub_23BED041C(p_layoutConstants, v816, v815, v818);
    v440 = (v439 + v439 + v438) * 0.5;
    v441 = *(p_layoutConstants + 424);
    v442 = *(p_layoutConstants + 432);
    v443 = v439 + v438 - v441 * 0.5;
    v444 = v439 + v442 * 0.5;
    recta = v441;
    v783 = v442;
    v752 = v442 + v444;
    radiusa = v443 - v441;
    v445 = v443 - v441 - (v442 + v444);
    v885.origin.x = -v443;
    v885.size.width = v443 + v443;
    v756 = -v443;
    v761 = v443 + v443;
    v885.origin.y = -v443;
    v885.size.height = v443 + v443;
    CGContextAddEllipseInRect(contextCopy10, v885);
    v886.origin.x = -v444;
    v766 = -v444;
    v886.origin.y = -v444;
    v886.size.width = v444 + v444;
    v886.size.height = v444 + v444;
    CGContextAddEllipseInRect(contextCopy10, v886);
    theArraya = v444 + v444;
    if (v434)
    {
      v448 = objc_msgSend_waypointLocation(v434, v446, v447);
      objc_msgSend_ntk_bearingTo_(v428, v449, v448);
      v451 = v450;

        ;
      }

        ;
      }
    }

    else
    {
      k = 0.0;
    }

    widthb = v445 * 0.5;
    v453 = 1.57079633 - k;
    v454 = __sincos_stret(1.57079633 - k);
    v455 = (1.57079633 - k + -1.57079633) * (1.0 - ya) + 1.57079633;
    v458 = __sincos_stret(v455);
    v797 = v440 * v458.__sinval;
    v800 = v440 * v458.__cosval;
    v459 = (v443 - v444 + (recta + v783) * -2.0) * 0.5;
    yb = -v459;
    rectb = v440 - v459;
    v460 = v459 + v459;
    v207 = progressCopy;
    if (progressCopy < 1.0)
    {
      v697 = v440 * v454.__cosval;
      v708 = v440 * v454.__sinval;
      if (progressCopy <= 0.0)
      {
        v784 = v459 + v459;
        v464 = v435;
        v462 = -v459;
        v463 = rectb;
      }

      else
      {
        v461 = objc_msgSend_clearColor(MEMORY[0x277D75348], v456, v457);
        v464 = MEMORY[0x23EEC10C0](v435, v461, progressCopy);

        v887.origin.x = -v459;
        v887.origin.y = v440 - v459;
        v887.size.width = v459 + v459;
        v887.size.height = v459 + v459;
        v888 = CGRectInset(v887, v459 * progressCopy, v459 * progressCopy);
        v462 = v888.origin.x;
        v463 = v888.origin.y;
        v460 = v888.size.width;
        v784 = v888.size.height;
      }

      v465 = k > 0.0;
      CGContextAddArc(contextCopy10, v800, v797, widthb, v455 + 3.14159265, v455, v465);
      CGContextAddArc(contextCopy10, 0.0, 0.0, radiusa, v455, v453, v465);
      CGContextAddArc(contextCopy10, v697, v708, widthb, v453, v453 + 3.14159265, v465);
      CGContextAddArc(contextCopy10, 0.0, 0.0, v752, v453, v455, k <= 0.0);
      CGContextClosePath(contextCopy10);
      yb = v462;
      v889.origin.x = v462;
      rectb = v463;
      v889.origin.y = v463;
      v889.size.width = v460;
      v889.size.height = v784;
      CGContextAddEllipseInRect(contextCopy10, v889);
      v466 = v464;
      v469 = objc_msgSend_CGColor(v466, v467, v468);
      CGContextSetFillColorWithColor(contextCopy10, v469);
      CGContextEOFillPath(contextCopy10);
      v207 = progressCopy;
    }

    else
    {
      v784 = v459 + v459;
      v464 = v435;
    }

    if (v207 > 0.0)
    {
      v470 = MEMORY[0x23EEC10C0](v464, v437, v207);
      v471 = *(p_layoutConstants + 440);
      v472 = *(p_layoutConstants + 448);
      v890.origin.x = v756;
      v890.size.width = v761;
      v890.origin.y = v756;
      v890.size.height = v761;
      v891 = CGRectInset(v890, v471 * 0.5, v471 * 0.5);
      v473 = v891.origin.x;
      v474 = v891.origin.y;
      v475 = v891.size.width;
      v476 = v891.size.height;
      v891.origin.x = v766;
      v891.size.width = theArraya;
      v891.origin.y = v766;
      v891.size.height = theArraya;
      v892 = CGRectInset(v891, v472 * -0.5, v472 * -0.5);
      v767 = v892.origin.y;
      theArrayd = v892.origin.x;
      v757 = v892.size.height;
      v762 = v892.size.width;
      CGContextSetLineWidth(context, v471);
      v477 = v470;
      v480 = objc_msgSend_CGColor(v477, v478, v479);
      CGContextSetStrokeColorWithColor(context, v480);
      v893.origin.x = v473;
      v893.origin.y = v474;
      v893.size.width = v475;
      v893.size.height = v476;
      CGContextStrokeEllipseInRect(context, v893);
      CGContextSetLineWidth(context, v472);
      v481 = v470;
      v484 = objc_msgSend_CGColor(v481, v482, v483);
      CGContextSetStrokeColorWithColor(context, v484);
      v894.origin.y = v767;
      v894.origin.x = theArrayd;
      v207 = progressCopy;
      v894.size.height = v757;
      v894.size.width = v762;
      CGContextStrokeEllipseInRect(context, v894);

      contextCopy10 = context;
    }

    CGContextSaveGState(contextCopy10);
    CGContextAddArc(contextCopy10, v800, v797, widthb, -3.14159265, 3.14159265, 0);
    CGContextClip(contextCopy10);
    if (v207 < 1.0)
    {
      v487 = objc_msgSend_fillColor(v434, v485, v486);
      v488 = sub_23BECC594(v487, v464, preserveColorsInTritium, v436, v207, fractionUsePOIDerivedColors);

      if (v207 > 0.0)
      {
        v491 = objc_msgSend_clearColor(MEMORY[0x277D75348], v489, v490);
        v492 = MEMORY[0x23EEC10C0](v488, v491, v207);

        v488 = v492;
      }

      v493 = v488;
      v496 = objc_msgSend_CGColor(v493, v494, v495);
      CGContextSetFillColorWithColor(context, v496);
      v895.origin.x = yb;
      v895.origin.y = rectb;
      v895.size.width = v460;
      v895.size.height = v784;
      CGContextFillEllipseInRect(context, v895);

      contextCopy10 = context;
    }

    CGContextRestoreGState(contextCopy10);

    v497 = *(p_layoutConstants + 408);
    v498 = *(p_layoutConstants + 416);
    v501 = sub_23BED041C(p_layoutConstants, v816, v815, v818);
    selfCopy = v720;
    if (v434)
    {
      v502 = v501 + v501 + v497 - v498;
      v503 = objc_msgSend_waypointLocation(v434, v499, v500);
      objc_msgSend_ntk_bearingTo_(v428, v504, v503);
      v506 = v505;

        ;
      }

      v508 = v502 * 0.5;
      if (m >= -3.14159265)
      {
        v509 = v710;
      }

      else
      {
        v509 = v710;
        do
        {
          m = m + 6.28318531;
        }

        while (m < -3.14159265);
      }

      v510 = __sincos_stret(1.57079633 - m);
      sub_23BED0510(contextCopy10, p_layoutConstants, v434, v816, v815, v434, v434, 1u, v508 * v510.__cosval, v508 * v510.__sinval, v818, 1.0, 1.0, fractionUsePOIDerivedColors, v207, v509, 1u, 0, v436, v436, preserveColorsInTritium, v436, v432);
    }

    v181 = v746;
    v188 = v816;
  }

  if (v403 <= 0.0)
  {
    v515 = v718;
LABEL_293:
    v655 = v714;
    goto LABEL_296;
  }

  if (v699 * waypointsAlpha >= 1.0)
  {
    v515 = v718;
  }

  else
  {
    v511 = objc_msgSend_colorWithAlphaComponent_(v738, v202, v203, v699 * waypointsAlpha);

    v514 = objc_msgSend_colorWithAlphaComponent_(v718, v512, v513, v699 * waypointsAlpha);

    v515 = v514;
    v738 = v511;
  }

  v516 = v735;
  if (v403 < 1.0)
  {
    v517 = objc_msgSend_colorWithAlphaComponent_(v735, v202, v203, v403);

    v520 = objc_msgSend_colorWithAlphaComponent_(v737, v518, v519, v403);

    v737 = v520;
    v516 = v517;
  }

  v521 = v516;
  v522 = sub_23BED041C(p_layoutConstants, v188, v815, v818);
  v523 = sub_23BECB538(*(p_layoutConstants + 432), *(p_layoutConstants + 448), v207);
  v524 = v522 + (*(p_layoutConstants + 432) - v523) * -0.5;
  v525 = -v524;
  v526 = v524 + v524;
  CGContextSetLineWidth(contextCopy10, v523);
  v527 = v521;
  v530 = objc_msgSend_CGColor(v527, v528, v529);
  v735 = v521;

  CGContextSetStrokeColorWithColor(contextCopy10, v530);
  v896.origin.x = v525;
  v896.origin.y = v525;
  v896.size.width = v526;
  v896.size.height = v526;
  CGContextStrokeEllipseInRect(contextCopy10, v896);
  if (_fractionFromToDisplayMode(0, v188, v815, v818) <= 0.0)
  {
    v535 = 0.0;
    v531 = 1.0;
    goto LABEL_202;
  }

  CLKInterpolateBetweenFloatsClipped();
  CLKInterpolateBetweenFloatsClipped();
  sub_23BECB710(selfCopy->_transitoryWaypointsState, selfCopy->_waypointsState, selfCopy->_transitoryWaypointsStateProgress);
  v531 = 0.0;
  CLKInterpolateBetweenFloatsClipped();
  v533 = 0.0;
  if (fabs(v532) >= 0.00000011920929)
  {
    v533 = v532;
    if (fabs(v532 + -1.0) < 0.00000011920929)
    {
      v533 = 1.0;
    }
  }

  CLKInterpolateBetweenFloatsClipped();
  if (fabs(v534) >= 0.00000011920929)
  {
    v531 = v534;
    if (fabs(v534 + -1.0) < 0.00000011920929)
    {
      v531 = 1.0;
    }
  }

  v535 = 0.0;
  CLKInterpolateBetweenFloatsClipped();
  if (fabs(v536) >= 0.00000011920929)
  {
    v535 = v536;
    if (fabs(v536 + -1.0) < 0.00000011920929)
    {
      v535 = 1.0;
    }
  }

  if (v533 > 0.0)
  {
    v537 = v515;
    v538 = CFArrayGetValueAtIndex(selfCopy->_informationLabelLines, 0);
    v539 = *(p_layoutConstants + 648);
    v540 = *(p_layoutConstants + 408) - *(p_layoutConstants + 416);
    v541 = v537;
    v542 = sub_23BED041C(p_layoutConstants, v188, v815, v818);
    v543 = v539 + (v542 + v540 + v542) * 0.5;
    v544 = v541;
    v547 = objc_msgSend_CGColor(v544, v545, v546);

    CGContextSetFillColorWithColor(contextCopy10, v547);
    sub_23BECFE88(contextCopy10, v538, 0, 0.0, 0.0, 0.0, v543, 0.5);
  }

  if (v531 > 0.0)
  {
LABEL_202:
    transitoryWaypointRadiusProgress = selfCopy->_transitoryWaypointRadiusProgress;
    transitoryWaypointRadius = selfCopy->_transitoryWaypointRadius;
    transitoryTargetWaypoint = selfCopy->_transitoryTargetWaypoint;
    transitoryTargetWaypointProgress = selfCopy->_transitoryTargetWaypointProgress;
    waypointsConeWaypointTrackingEnabled = selfCopy->_waypointsConeWaypointTrackingEnabled;
    waypointsConeDynamicBreadthEnabled = selfCopy->_waypointsConeDynamicBreadthEnabled;
    radiusb = v702;
    v550 = v701;
    rectc = transitoryTargetWaypoint;
    widthc = v712;
    v551 = v715;
    v768 = v727;
    v552 = v728;
    v801 = v738;
    v719 = v515;
    v700 = v515;
    v553 = v737;
    v554 = v717;
    v555 = *(p_layoutConstants + 408) - *(p_layoutConstants + 416);
    v695 = sub_23BED041C(p_layoutConstants, v188, v815, v818);
    v556 = v695 + v695 + v555;
    v709 = _fractionFromToDisplayMode(0, v188, v815, v818);
    if (_fractionFromToDisplayMode(2, v188, v815, v818) <= 0.0)
    {
      v558 = 0;
      v557 = 0;
    }

    else if (transitoryTargetWaypointProgress >= 0.5)
    {
      v557 = rectc;
      v558 = widthc;
    }

    else
    {
      v557 = widthc;
      v558 = rectc;
      transitoryTargetWaypointProgress = 1.0 - transitoryTargetWaypointProgress;
    }

    v559 = v709;
    v779 = v403 * v531;
    v560 = v556 * 0.5;
    yc = v706 * 3.14159265 / 180.0;
    v711 = v550;
    if (v709 <= 0.0)
    {
      v561 = 0;
      v565 = 0.0;
      v758 = 0.0;
      v562 = p_layoutConstants;
    }

    else
    {
      v561 = v550;
      v562 = p_layoutConstants;
      v563 = *(p_layoutConstants + 488) * 0.5;
      v564 = atan2(*(p_layoutConstants + 456), v560);
      v758 = v563 + v564;
      v565 = v563 - v564;
    }

    *&v847.a = MEMORY[0x277D85DD0];
    *&v847.b = 3221225472;
    *&v847.c = sub_23BED1338;
    *&v847.d = &unk_278BA1248;
    v566 = v551;
    *&v847.tx = v566;
    v852 = v706 * 3.14159265 / 180.0;
    v853 = v560;
    v854 = transitoryWaypointRadius;
    v855 = waypointRadius;
    contextCopy9 = context;
    v857 = v562;
    v858 = v816;
    v859 = v815;
    v860 = v818;
    v567 = v557;
    *&v847.ty = v567;
    v568 = v558;
    *&v848 = v568;
    v861 = transitoryTargetWaypointProgress;
    v862 = transitoryWaypointRadiusProgress;
    v569 = v561;
    *(&v848 + 1) = v569;
    v863 = fractionUsePOIDerivedColors;
    v753 = v552;
    *&v849 = v753;
    v864 = progressCopy;
    v785 = v554;
    *(&v849 + 1) = v785;
    v866 = preserveColorsInTritium;
    v865 = v403 * v531;
    v802 = v801;
    v850 = v802;
    v775 = v553;
    v851 = v775;
    v570 = MEMORY[0x23EEC15B0](&v847);
    v573 = v570;
    *&theArrayb = v560;
    if (progressCopy < 1.0)
    {
      v692 = v570;
      v747 = v181;
      v841 = 0u;
      v842 = 0u;
      __y = 0u;
      v840 = 0u;
      v574 = radiusb;
      v576 = objc_msgSend_countByEnumeratingWithState_objects_count_(v574, v575, &__y, &v845, 16);
      if (v576)
      {
        v579 = v576;
        v580 = *v840;
        do
        {
          for (n = 0; n != v579; ++n)
          {
            if (*v840 != v580)
            {
              objc_enumerationMutation(v574);
            }

            v582 = *(*(&__y + 1) + 8 * n);
            if (v582 != v567 && v582 != v568)
            {
              v584 = objc_msgSend_waypointLocation(*(*(&__y + 1) + 8 * n), v577, v578);
              objc_msgSend_ntk_bearingTo_(v566, v585, v584);
              v587 = v586;

                ;
              }

              while (ii < -3.14159265)
              {
                ii = ii + 6.28318531;
              }

              if (fabs(ii) >= v565)
              {
                v589 = 1.57079633 - ii;
                v590 = objc_msgSend_waypointLocation(v582, v577, v578);
                objc_msgSend_distanceFromLocation_(v566, v591, v590);
                v593 = v592;

                v594 = __sincos_stret(v589);
                sub_23BED0510(context, p_layoutConstants, v582, v816, v815, rectc, widthc, v593 <= transitoryWaypointRadius, v560 * v594.__cosval, v560 * v594.__sinval, v818, transitoryTargetWaypointProgress, transitoryWaypointRadiusProgress, fractionUsePOIDerivedColors, progressCopy, v779, v593 <= waypointRadius, 0, v768, v785, preserveColorsInTritium, v802, v775);
              }
            }
          }

          v579 = objc_msgSend_countByEnumeratingWithState_objects_count_(v574, v577, &__y, &v845, 16);
        }

        while (v579);
      }

      v181 = v747;
      v573 = v692;
      v559 = v709;
    }

    v515 = v719;
    v595 = v711;
    if (v559 > 0.0)
    {
      if (v711)
      {
        if (waypointsConeWaypointTrackingEnabled)
        {
          v596 = objc_msgSend_waypointLocation(v711, v571, v572);
          objc_msgSend_ntk_bearingTo_(v566, v597, v596);
          v599 = v598;

          if (v599 >= 180.0)
          {
            v600 = v706;
            do
            {
              v599 = v599 + -360.0;
            }

            while (v599 >= 180.0);
          }

          else
          {
            v600 = v706;
          }

            ;
          }

            ;
          }

            ;
          }

          v601 = jj * 3.14159265 / 180.0 + 1.57079633;
        }

        else
        {
          v601 = 1.57079633;
        }

        if (waypointsConeDynamicBreadthEnabled)
        {
          v604 = objc_msgSend_waypointLocation(v711, v571, v572);
          objc_msgSend_distanceFromLocation_(v566, v605, v604);

          CLKInterpolateBetweenFloatsClipped();
        }

        v602 = v802;
      }

      else
      {
        v601 = 1.57079633;
        v602 = v700;
      }

      v606 = v602;
      v607 = v695 + *(p_layoutConstants + 408) - *(p_layoutConstants + 416) + *(p_layoutConstants + 424) * 0.5;
      v725 = v695 - *(p_layoutConstants + 432) * 0.5;
      v608 = v606;
      CLKInterpolateBetweenFloatsClipped();
      v610 = v609 * 0.5;
      v611 = v601 - v610;
      v612 = v601 + v610;
      CGContextAddArc(context, 0.0, 0.0, v607, v601 - v610, v601 + v610, 0);
      CGContextAddArc(context, 0.0, 0.0, v725, v612, v611, 1);
      CGContextClosePath(context);
      v613 = v608;
      v616 = objc_msgSend_CGColor(v613, v614, v615);
      v763 = v608;

      CGContextSetFillColorWithColor(context, v616);
      CGContextFillPath(context);
      if (progressCopy >= 1.0 || v698 < 2.22044605e-16)
      {

        v595 = v711;
        v207 = progressCopy;
LABEL_284:

        contextCopy10 = context;
        selfCopy = v720;
        v188 = v816;
        goto LABEL_285;
      }

      v693 = v573;
      v748 = v181;
      CGContextSaveGState(context);
      v617 = v695 + *(p_layoutConstants + 408) - *(p_layoutConstants + 416);
      v618 = tan(*(p_layoutConstants + 488) * 0.5);
      CGContextMoveToPoint(context, 0.0, 0.0);
      CGContextAddLineToPoint(context, -(v617 * v618), v617);
      CGContextAddLineToPoint(context, v617 * v618, v617);
      CGContextClosePath(context);
      CGContextClip(context);
      v837 = 0u;
      v838 = 0u;
      v835 = 0u;
      v836 = 0u;
      v619 = radiusb;
      v621 = objc_msgSend_countByEnumeratingWithState_objects_count_(v619, v620, &v835, &v843, 16);
      if (v621)
      {
        v624 = v621;
        v625 = *v836;
        do
        {
          for (kk = 0; kk != v624; ++kk)
          {
            if (*v836 != v625)
            {
              objc_enumerationMutation(v619);
            }

            v627 = *(*(&v835 + 1) + 8 * kk);
            if (v627 != v568 && v627 != v569 && v627 != v567)
            {
              v630 = objc_msgSend_waypointLocation(*(*(&v835 + 1) + 8 * kk), v622, v623);
              objc_msgSend_ntk_bearingTo_(v566, v631, v630);
              v633 = v632;

                ;
              }

              while (mm < -3.14159265)
              {
                mm = mm + 6.28318531;
              }

              if (fabs(mm) <= v758)
              {
                v635 = 1.57079633 - mm;
                v636 = objc_msgSend_waypointLocation(v627, v622, v623);
                objc_msgSend_distanceFromLocation_(v566, v637, v636);
                v639 = v638;

                v640 = __sincos_stret(v635);
                sub_23BED0510(context, p_layoutConstants, v627, v816, v815, rectc, widthc, v639 <= transitoryWaypointRadius, *&theArrayb * v640.__cosval, *&theArrayb * v640.__sinval, v818, transitoryTargetWaypointProgress, transitoryWaypointRadiusProgress, fractionUsePOIDerivedColors, progressCopy, v779, v639 <= waypointRadius, v627, v753, v785, preserveColorsInTritium, v802, v775);
              }
            }
          }

          v624 = objc_msgSend_countByEnumeratingWithState_objects_count_(v619, v622, &v835, &v843, 16);
        }

        while (v624);
      }

      v573 = v693;
      if (v569)
      {
        (v693)[2](v693, v569);
      }

      CGContextRestoreGState(context);

      v515 = v719;
      v181 = v748;
      v595 = v711;
    }

    if (v567 && v567 != v569)
    {
      (v573)[2](v573, v567);
    }

    v207 = progressCopy;
    if (v568 != v567 && v568 && v568 != v569)
    {
      (v573)[2](v573, v568);
    }

    goto LABEL_284;
  }

LABEL_285:
  if (v535 <= 0.0)
  {
    goto LABEL_293;
  }

  v641 = seconds;
  v642 = v726;
  if (v207 >= 1.0 || (v645 = v403 * v535, v403 * v535 <= 0.0))
  {
    v655 = v714;
  }

  else
  {
    *v643.i64 = v641 / 6.0;
    *v644.i64 = v641 / 6.0 - trunc(v641 / 6.0);
    v646.f64[0] = NAN;
    v646.f64[1] = NAN;
    *&ca = vbslq_s8(vnegq_f64(v646), v644, v643).u64[0];
    v647 = *(p_layoutConstants + 408) - *(p_layoutConstants + 416);
    v650 = sub_23BED041C(p_layoutConstants, v188, v815, v818);
    v651 = v650 + v647;
    v652 = *(p_layoutConstants + 424);
    yd = *(p_layoutConstants + 432);
    v653 = 1.0 - v207;
    if (v207 <= 0.0)
    {
      v653 = 1.0;
    }

    if (v653 * v645 < 1.0)
    {
      v654 = objc_msgSend_colorWithAlphaComponent_(v642, v648, v649);

      v642 = v654;
    }

    v655 = v714;
    v656 = *MEMORY[0x277CBF348];
    v657 = *(MEMORY[0x277CBF348] + 8);
    v658 = ca * -6.28318531 + 1.04719755;
    CGContextSaveGState(contextCopy10);
    CGContextAddArc(contextCopy10, v656, v657, v651 - v652 * 0.5, ca * -6.28318531, v658, 0);
    CGContextAddArc(contextCopy10, v656, v657, v650 + yd * 0.5, v658, ca * -6.28318531, 1);
    CGContextClip(contextCopy10);
    CGContextClosePath(contextCopy10);
    *&v847.a = xmmword_23BEED430;
    v659 = v642;
    *&v662 = COERCE_DOUBLE(objc_msgSend_CGColor(v659, v660, v661));
    v665 = objc_msgSend_clearColor(MEMORY[0x277D75348], v663, v664);
    v666 = v665;
    *&v669 = COERCE_DOUBLE(objc_msgSend_CGColor(v666, v667, v668));

    v845 = *&v662;
    v846 = *&v669;
    v671 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v670, &v845, 2);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v673 = CGGradientCreateWithColors(DeviceRGB, v671, &v847.a);
    v868.x = v656;
    v868.y = v657;
    CGContextDrawConicGradient(contextCopy10, v673, v868, ca * -6.28318531);
    CGGradientRelease(v673);
    CGColorSpaceRelease(DeviceRGB);
    CGContextRestoreGState(contextCopy10);
  }

LABEL_296:
  if (v705 <= 0.0)
  {
    v677 = v716;
  }

  else
  {
    if (v705 < 1.0)
    {
      v674 = objc_msgSend_colorWithAlphaComponent_(v716, v202, v203, v705);

      v716 = v674;
    }

    radiusLabelCTLine = selfCopy->_radiusLabelCTLine;
    if (!radiusLabelCTLine)
    {
      radiusLabelCTLine = objc_msgSend_radiusLabelCTLineForRadius_(selfCopy, v202, v203, waypointRadius);
      selfCopy->_radiusLabelCTLine = radiusLabelCTLine;
    }

    v676 = *(p_layoutConstants + 528) - *(p_layoutConstants + 568) - *(p_layoutConstants + 536) - *(p_layoutConstants + 632);
    v677 = v716;
    CLKInterpolateBetweenFloatsClipped();
    v679 = v678;
    CLKInterpolateBetweenFloatsClipped();
    v681 = v680;
    CLKInterpolateBetweenFloatsClipped();
    v683 = v682;
    CLKInterpolateBetweenFloatsClipped();
    v685 = v684;
    v686 = v677;
    v689 = objc_msgSend_CGColor(v686, v687, v688);

    CGContextSetFillColorWithColor(contextCopy10, v689);
    sub_23BECFE88(contextCopy10, radiusLabelCTLine, 1, v681 * 3.14159265 / 180.0, v679 * 3.14159265 / 180.0, v683 * 3.14159265 / 180.0, v676, v685);
  }

  CGContextRestoreGState(contextCopy10);
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  objc_msgSend_bounds(self, v5, v6);
  v16.origin.x = v7;
  v16.origin.y = v8;
  v16.size.width = v9;
  v11 = v10;
  p_dirtyRect = &self->_dirtyRect;
  v16.size.height = v10;
  if (!CGRectContainsRect(self->_dirtyRect, v16))
  {
    v15.origin.x = p_dirtyRect->origin.x;
    v15.origin.y = self->_dirtyRect.origin.y;
    v15.size.width = self->_dirtyRect.size.width;
    v15.size.height = self->_dirtyRect.size.height;
    CGContextClipToRect(CurrentContext, v15);
  }

  CGContextTranslateCTM(CurrentContext, 0.0, v11);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  objc_msgSend__drawCircularCompassBezelInContext_tritiumProgress_backgroundAlpha_compassAlpha_waypointsAlpha_secondsAlpha_(self, v13, CurrentContext, self->_tritiumProgress, self->_backgroundAlpha, self->_compassAlpha, self->_waypointsAlpha, self->_secondsAlpha);
  v14 = *(MEMORY[0x277CBF3A0] + 16);
  p_dirtyRect->origin = *MEMORY[0x277CBF3A0];
  self->_dirtyRect.size = v14;
}

- (void)setToSnapshotValuesWithPOIFilter:(id)filter
{
  filterCopy = filter;
  objc_msgSend_setSeconds_(self, v5, v6, 45.0);
  objc_msgSend_setHeading_(self, v7, v8, 0.0);
  v11 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v9, v10);
  v13 = objc_msgSend_objectForKey_(v11, v12, *MEMORY[0x277CBE718]);
  v16 = objc_msgSend_BOOLValue(v13, v14, v15);

  v30 = objc_msgSend_testAppleParkLocation(NTKLeghornWaypoint, v17, v18);
  v20 = objc_msgSend_demoPOIsFromDataSet_relativeToLocation_filterBy_filterRadius_ensureNorthPOI_useMetric_userGuides_(NTKLeghornDemoPOIDataSource, v19, NTKLeghornPOIDataSetSnapshots, v30, filterCopy, 1, v16, 0, 0.0);

  objc_msgSend_setWaypoints_(self, v21, v20);
  objc_msgSend_setTargetWaypoint_(self, v22, 0);
  objc_msgSend_setLocation_(self, v23, v30);
  objc_msgSend_defaultWaypointRadius(NTKLeghornFace, v24, v25);
  objc_msgSend_setWaypointRadius_(self, v26, v27);
  objc_msgSend_setDisplayMode_(self, v28, 0);
  objc_msgSend_setWaypointsState_(self, v29, 2);
}

+ (void)drawSnapshotInContext:(CGContext *)context hiVizComplicationStyle:(unint64_t)style colorPalette:(id)palette poiFilter:(id)filter forDevice:(id)device
{
  deviceCopy = device;
  filterCopy = filter;
  paletteCopy = palette;
  v14 = [NTKCircularBezelView alloc];
  objc_msgSend_screenBounds(deviceCopy, v15, v16);
  v25 = objc_msgSend_initWithFrame_forDevice_(v14, v17, deviceCopy);

  objc_msgSend_setColorPalette_(v25, v18, paletteCopy);
  objc_msgSend_setHiVizComplicationStyle_(v25, v19, style);
  objc_msgSend_setToSnapshotValuesWithPOIFilter_(v25, v20, filterCopy);

  v23 = objc_msgSend_layer(v25, v21, v22);
  objc_msgSend_renderInContext_(v23, v24, context);
}

- (void)setPreserveColorsInTritium:(BOOL)tritium
{
  if (self->_preserveColorsInTritium != tritium)
  {
    self->_preserveColorsInTritium = tritium;
    objc_msgSend_setNeedsDisplay(self, a2, tritium);
  }
}

- (void)setLiveSecondsInTritium:(BOOL)tritium
{
  if (self->_liveSecondsInTritium != tritium)
  {
    self->_liveSecondsInTritium = tritium;
    objc_msgSend_setNeedsDisplay(self, a2, tritium);
  }
}

- (void)setTritiumProgress:(double)progress
{
  if (self->_tritiumProgress != progress)
  {
    self->_tritiumProgress = progress;
    objc_msgSend__updateLabels(self, a2, v3);

    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (CGRect)_dirtyRectFromSeconds:(double)seconds toSeconds:(double)toSeconds
{
  if (seconds <= toSeconds)
  {
    secondsCopy = toSeconds;
  }

  else
  {
    secondsCopy = seconds;
  }

  if (seconds <= toSeconds)
  {
    toSecondsCopy2 = seconds;
  }

  else
  {
    toSecondsCopy2 = toSeconds;
  }

  sub_23BECBCCC(&self->_layoutConstants, self->_fromHiVizComplicationStyle, self->_toHiVizComplicationStyle, secondsCopy, self->_fractionHiVizComplicationStyle);
  x = v9;
  y = v11;
  width = v13;
  for (i = v15; ; i = v34.size.height)
  {
    secondsCopy = secondsCopy + -1.0;
    if (secondsCopy <= toSecondsCopy2)
    {
      break;
    }

    sub_23BECBCCC(&self->_layoutConstants, self->_fromHiVizComplicationStyle, self->_toHiVizComplicationStyle, secondsCopy, self->_fractionHiVizComplicationStyle);
    v38.origin.x = v17;
    v38.origin.y = v18;
    v38.size.width = v19;
    v38.size.height = v20;
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = i;
    v34 = CGRectUnion(v33, v38);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
  }

  objc_msgSend_bounds(self, v7, v8);
  v22 = v21;
  v24 = v23 * 0.5;
  v25 = v21 * 0.5;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = i;
  v36 = CGRectOffset(v35, v24, v25);
  v26 = v36.origin.x;
  v27 = v36.size.width;
  height = v36.size.height;
  v29 = v22 - CGRectGetMaxY(v36);
  v30 = v26;
  v31 = v27;
  v32 = height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v29;
  result.origin.x = v30;
  return result;
}

- (void)setSeconds:(double)seconds
{
  if (objc_msgSend__needUpdateForDeltaSeconds_(self, a2, v3, seconds - self->_seconds))
  {
    seconds = self->_seconds;
    self->_seconds = seconds;
    if ((objc_msgSend__secondsParasitesNeedsDisplay(self, v6, v7) & 1) != 0 || vabdd_f64(seconds, seconds) > 1.0 || 60.0 - self->_secondsEndOfMinuteAnimationDuration < seconds)
    {
      objc_msgSend_setNeedsDisplay(self, v9, v10);
    }

    else
    {
      objc_msgSend__dirtyRectFromSeconds_toSeconds_(self, v9, v10, seconds, seconds);
      objc_msgSend_setNeedsDisplayInRect_(self, v13, v14);
    }

    if (modf(seconds + seconds, &__y) < 0.133333333)
    {
      objc_msgSend__updateLabelsIfNeeded(self, v11, v12);
    }
  }
}

- (void)_setHeading:(double)heading duration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  objc_msgSend_setHeading_(self, v7, v8, heading);
  completionCopy[2](completionCopy, 1);
}

- (void)_updateWaypointAhead
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = self->_location;
  v4 = self->_waypoints;
  v7 = v4;
  v8 = 0.0;
  if (v3)
  {
    v9 = v4 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || (heading = self->_heading, !objc_msgSend_count(v4, v5, v6)))
  {
    v34 = 0;
  }

  else
  {
    v11 = v7;
    v40 = v3;
    v12 = v3;
    v13 = self->_layoutConstants.bezelCircularWaypointAheadMaximumArc * 0.5;
      ;
    }

    v16 = v13 + i;
      ;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v38 = v16 * 180.0;
    v39 = j / 3.14159265;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v41, v45, 16);
    if (v18)
    {
      v21 = v18;
      v22 = 0;
      v23 = *v42;
      v24 = 720.0;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v42 != v23)
          {
            objc_enumerationMutation(v11);
          }

          v26 = *(*(&v41 + 1) + 8 * k);
          v27 = objc_msgSend_waypointLocation(v26, v19, v20);
          objc_msgSend_ntk_bearingTo_(v12, v28, v27);
          v30 = v29;

          while (v30 >= 180.0)
          {
            v30 = v30 + -360.0;
          }

          while (v30 < -180.0)
          {
            v30 = v30 + 360.0;
          }

            ;
          }

          while (m < -180.0)
          {
            m = m + 360.0;
          }

          v32 = fabs(m);
          if (v32 < v24)
          {
            v33 = v26;

            v24 = v32;
            v22 = v33;
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v19, &v41, v45, 16);
      }

      while (v21);
    }

    else
    {
      v22 = 0;
      v24 = 720.0;
    }

    v8 = 1.0;
    v35 = v38 / 3.14159265;
    if (v24 > v39)
    {
      if (v24 < v35)
      {
        v8 = (v35 - v24) / (v35 - v39);
      }

      else
      {
        v8 = 0.0;
      }
    }

    if (v24 >= v35)
    {
      v34 = 0;
    }

    else
    {
      v34 = v22;
    }

    v3 = v40;
  }

  waypointAhead = self->_waypointAhead;
  self->_waypointAhead = v34;
  v37 = v34;

  self->_waypointAheadProgress = v8;
}

- (id)attributedStringForDistanceAccuracyToWaypoint:(id)waypoint
{
  v54[2] = *MEMORY[0x277D85DE8];
  waypointCopy = waypoint;
  fractionUsePOIDerivedColors = self->_fractionUsePOIDerivedColors;
  v6 = self->_waypointLabelSecondaryColor;
  v9 = objc_msgSend_labelColor(waypointCopy, v7, v8);
  tritiumProgress = self->_tritiumProgress;
  v45 = objc_msgSend_clearColor(MEMORY[0x277D75348], v11, v12);
  v47 = v9;
  v49 = v6;
  v13 = sub_23BECC594(v9, v45, 1, v6, tritiumProgress, fractionUsePOIDerivedColors);
  v14 = self->_waypointLabelSecondaryFont;
  v15 = self->_waypointLabelSecondarySmallcapsFont;
  v17 = *MEMORY[0x277D740A8];
  v53[0] = *MEMORY[0x277D740C0];
  v16 = v53[0];
  v53[1] = v17;
  v54[0] = v13;
  v54[1] = v14;
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v54, v53, 2);
  v51[0] = v16;
  v51[1] = v17;
  v52[0] = v13;
  v52[1] = v15;
  v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v52, v51, 2);
  v24 = self->_location;
  if (v24)
  {
    v25 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v22, v23, v45, v47, v49);
    v27 = objc_msgSend_objectForKey_(v25, v26, *MEMORY[0x277CBE718]);
    v30 = objc_msgSend_BOOLValue(v27, v28, v29);

    v33 = objc_msgSend_waypointLocation(waypointCopy, v31, v32);
    objc_msgSend_distanceFromLocation_(v24, v34, v33);
    v36 = v35;

    if (v36 < 0.0)
    {
      v36 = 0.0;
    }

    v39 = objc_msgSend_timestamp(v24, v37, v38);
    v41 = objc_msgSend__attributedStringForDistance_lastUpdatedDate_useMetric_distanceAttributes_distanceUnitAttributes_durationAttributes_durationUnitAttributes_(MEMORY[0x277CCA898], v40, v39, v30, v19, v21, v19, v21, v36);
  }

  else
  {
    v42 = objc_alloc(MEMORY[0x277CCA898]);
    v41 = objc_msgSend_initWithString_attributes_(v42, v43, @" ", v19, v45, v47, v49);
  }

  return v41;
}

- (id)attributedStringForTargetWaypoint:(id)waypoint
{
  v18[2] = *MEMORY[0x277D85DE8];
  waypointLabelTertiaryColor = self->_waypointLabelTertiaryColor;
  v5 = self->_waypointLabelPrimaryFont;
  v6 = waypointLabelTertiaryColor;
  v9 = objc_msgSend_labelText(waypoint, v7, v8);
  v10 = *MEMORY[0x277D740A8];
  v17[0] = *MEMORY[0x277D740C0];
  v17[1] = v10;
  v18[0] = v6;
  v18[1] = v5;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v18, v17, 2);

  v13 = objc_alloc(MEMORY[0x277CCA898]);
  v15 = objc_msgSend_initWithString_attributes_(v13, v14, v9, v12);

  return v15;
}

- (id)attributedStringForCardinalDirectionLabel:(double)label
{
    ;
  }

  while (i < 0.0)
  {
    i = i + 360.0;
  }

  waypointLabelPrimaryColor = self->_waypointLabelPrimaryColor;
  waypointLabelTertiaryColor = self->_waypointLabelTertiaryColor;
  waypointLabelHeadingMonospacedFont = self->_waypointLabelHeadingMonospacedFont;
  v7 = MEMORY[0x277CCA898];
  v8 = self->_waypointLabelHeadingFont;
  v9 = waypointLabelTertiaryColor;
  v10 = waypointLabelPrimaryColor;
  v12 = objc_msgSend__attributedStringForDirection_directionFont_directionColor_cardinalFont_cardinalColor_(v7, v11, waypointLabelHeadingMonospacedFont, v9, v8, v10, i);

  return v12;
}

- (void)_updateLabelsFromDisplayMode:(unint64_t)mode toDislayMode:(unint64_t)dislayMode progress:(double)progress onlyUpdateDistanceLabel:(BOOL)label
{
  tritiumProgress = self->_tritiumProgress;
  waypointsAlpha = self->_waypointsAlpha;
  v13 = CLKInterpolateBetweenFloatsClipped();
  v15.n128_f64[0] = fabs(v14.n128_f64[0]);
  v16 = 0.0;
  if (v15.n128_f64[0] >= 0.00000011920929)
  {
    v15.n128_f64[0] = fabs(v14.n128_f64[0] + -1.0);
    v16 = v14.n128_f64[0];
    if (v15.n128_f64[0] < 0.00000011920929)
    {
      v16 = 1.0;
    }
  }

  if (mode != 3 && mode)
  {
    if (dislayMode)
    {
      mode = -1;
    }

    else
    {
      mode = 0;
    }

    if (dislayMode == 3)
    {
      goto LABEL_18;
    }
  }

  else if (dislayMode == 3 || !dislayMode)
  {
    v14.n128_u64[0] = 0.5;
    if (progress > 0.5)
    {
      mode = dislayMode;
    }
  }

  if (mode == 3)
  {
LABEL_18:
    v13 = self->_targetWaypoint;
    v17 = v13;
    v18 = 0;
    v14.n128_u64[0] = 1.0;
    goto LABEL_19;
  }

  if (mode)
  {
    v17 = 0;
    if (label)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v13 = self->_waypointAhead;
  v17 = v13;
  v14.n128_u64[0] = *&self->_waypointAheadProgress;
  v18 = 1;
LABEL_19:
  v15.n128_f64[0] = fmax(fmin(1.0 - tritiumProgress, 1.0), 0.0);
  if (v17)
  {
    v19 = v14.n128_f64[0] < 0.5;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    if (label)
    {
      goto LABEL_47;
    }

    if (v18)
    {
      v20 = 1.0;
      v21 = v15.n128_f64[0] * (waypointsAlpha * v16) * fmax(fmin(0.5 - v14.n128_f64[0] + 0.5 - v14.n128_f64[0], 1.0), 0.0);
      v58 = v17;
      if (v21 < 1.0 && fabs(v21 + -1.0) >= 2.22044605e-16)
      {
        if (fabs(v21) >= 2.22044605e-16 && v21 > 0.0)
        {
          v20 = v21;
        }

        else
        {
          v20 = 0.0;
        }
      }

      objc_msgSend_setText_(self->_circularPOIInformationPrimaryLabel, v17, &stru_284EA8F68);
      objc_msgSend_setHidden_(self->_circularPOIInformationPrimaryLabel, v23, 1);
      objc_msgSend_setAccessibilityLabel_(self->_circularPOIInformationPrimaryLabel, v24, &stru_284EA8F68);
      v27 = objc_msgSend_attributedStringForCardinalDirectionLabel_(self, v25, v26, self->_heading);
      objc_msgSend_setAttributedText_(self->_circularPOIInformationSecondaryLabel, v28, v27);

      objc_msgSend_setHidden_(self->_circularPOIInformationSecondaryLabel, v29, 0);
      objc_msgSend_setAlpha_(self->_circularPOIInformationSecondaryLabel, v30, v31, v20);
      v13 = objc_msgSend_setAccessibilityLabel_(self->_circularPOIInformationSecondaryLabel, v32, &stru_284EA8F68);
      goto LABEL_46;
    }

LABEL_45:
    v58 = v17;
    objc_msgSend_setText_(self->_circularPOIInformationPrimaryLabel, v17, &stru_284EA8F68, v14.n128_f64[0], v15.n128_f64[0]);
    objc_msgSend_setHidden_(self->_circularPOIInformationPrimaryLabel, v53, 1);
    objc_msgSend_setAccessibilityLabel_(self->_circularPOIInformationPrimaryLabel, v54, &stru_284EA8F68);
    objc_msgSend_setText_(self->_circularPOIInformationSecondaryLabel, v55, &stru_284EA8F68);
    objc_msgSend_setHidden_(self->_circularPOIInformationSecondaryLabel, v56, 1);
    v13 = objc_msgSend_setAccessibilityLabel_(self->_circularPOIInformationSecondaryLabel, v57, &stru_284EA8F68);
LABEL_46:
    v17 = v58;
    goto LABEL_47;
  }

  v33 = 1.0;
  v34 = v15.n128_f64[0] * (waypointsAlpha * v16) * fmax(fmin(v14.n128_f64[0] + -0.5 + v14.n128_f64[0] + -0.5, 1.0), 0.0);
  if (v34 < 1.0 && fabs(v34 + -1.0) >= 2.22044605e-16)
  {
    if (fabs(v34) >= 2.22044605e-16 && v34 > 0.0)
    {
      v33 = v34;
    }

    else
    {
      v33 = 0.0;
    }
  }

  v59 = v17;
  v36 = objc_msgSend_attributedStringForTargetWaypoint_(self, v17, v17);
  objc_msgSend_setAttributedText_(self->_circularPOIInformationPrimaryLabel, v37, v36);

  objc_msgSend_setHidden_(self->_circularPOIInformationPrimaryLabel, v38, 0);
  objc_msgSend_setAlpha_(self->_circularPOIInformationPrimaryLabel, v39, v40, v33);
  objc_msgSend_setAccessibilityLabel_(self->_circularPOIInformationPrimaryLabel, v41, 0);
  v43 = objc_msgSend_attributedStringForDistanceAccuracyToWaypoint_(self, v42, v59);
  objc_msgSend_setAttributedText_(self->_circularPOIInformationSecondaryLabel, v44, v43);

  objc_msgSend_setHidden_(self->_circularPOIInformationSecondaryLabel, v45, 0);
  objc_msgSend_setAlpha_(self->_circularPOIInformationSecondaryLabel, v46, v47, v33);
  v49 = objc_msgSend__accessibilityStringForDistanceAccuracyToWaypoint_(self, v48, v59);
  objc_msgSend_setAccessibilityLabel_(self->_circularPOIInformationSecondaryLabel, v50, v49);

  v13 = objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v51, v52);
  v17 = v59;
  *&self->_lastTimeLabelsUpdated = v14.n128_u64[0];
LABEL_47:

  MEMORY[0x2821F96F8](v13, v17, v14, v15);
}

- (void)_updateLabelsIfNeeded
{
  if (self->_tritiumProgress <= 0.0)
  {
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], a2, v2);
    v5 = v4;
    v6 = v4 - self->_lastTimeLabelsUpdated;
    v9 = objc_msgSend_timestamp(self->_location, v7, v8);
    objc_msgSend_timeIntervalSinceReferenceDate(v9, v10, v11);
    v13 = v5 - v12;

    if (v13 <= 86400.0)
    {
      if (v13 <= 3600.0)
      {
        v14 = 30.0;
        if (v13 <= 60.0)
        {
          v14 = 0.5;
          if (v13 > 20.0)
          {
            v14 = 5.0;
          }
        }
      }

      else
      {
        v14 = 1800.0;
      }
    }

    else
    {
      v14 = 43200.0;
    }

    if (v6 > v14)
    {
      displayMode = self->_displayMode;

      MEMORY[0x2821F9670](self, sel__updateLabelsFromDisplayMode_toDislayMode_progress_onlyUpdateDistanceLabel_, displayMode);
    }
  }
}

- (void)setHeading:(double)heading animated:(BOOL)animated
{
  animatedCopy = animated;
  headingCopy = heading;
  if (heading >= 360.0)
  {
    v4 = -360.0;
    do
    {
      headingCopy = headingCopy + -360.0;
    }

    while (headingCopy >= 360.0);
  }

  while (headingCopy < 0.0)
  {
    headingCopy = headingCopy + 360.0;
  }

  if (objc_msgSend__needUpdateForDeltaHeading_(self, a2, animated, headingCopy - self->_heading, v4))
  {
    if (animatedCopy)
    {

      MEMORY[0x2821F9670](self, sel__setHeading_duration_completion_, 0);
    }

    else
    {
      self->_heading = headingCopy;
      objc_msgSend_setNeedsDisplay(self, v8, v9);
      if (!self->_displayMode)
      {
        objc_msgSend__updateWaypointAhead(self, v10, v11);

        objc_msgSend__updateLabels(self, v12, v13);
      }
    }
  }
}

- (void)setFromDisplayMode:(unint64_t)mode toDisplayMode:(unint64_t)displayMode fraction:(double)fraction
{
  if (self->_transitoryDisplayMode != mode || self->_displayMode != displayMode || self->_transitoryDisplayModeProgress != fraction)
  {
    self->_transitoryDisplayMode = mode;
    self->_displayMode = displayMode;
    self->_transitoryDisplayModeProgress = fraction;
    objc_msgSend_setNeedsDisplay(self, a2, mode);
    objc_msgSend__updateWaypointAhead(self, v7, v8);

    MEMORY[0x2821F9670](self, sel__updateLabelsFromDisplayMode_toDislayMode_progress_, mode);
  }
}

- (void)setFromWaypointsState:(unint64_t)state toWaypointsState:(unint64_t)waypointsState fraction:(double)fraction
{
  if (self->_transitoryWaypointsState != state || self->_waypointsState != waypointsState || self->_transitoryWaypointsStateProgress != fraction)
  {
    self->_transitoryWaypointsState = state;
    self->_waypointsState = waypointsState;
    self->_transitoryWaypointsStateProgress = fraction;
    objc_msgSend_setNeedsDisplay(self, a2, state);
  }
}

- (void)setFromHiVizComplicationStyle:(unint64_t)style toHiVizComplicationStyle:(unint64_t)complicationStyle fraction:(double)fraction
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = NTKFoghornFaceBundleLogObject(self, a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = NTKLeghornHiVizComplicationStyleString(style);
    v13 = NTKLeghornHiVizComplicationStyleString(complicationStyle);
    v14 = 136315906;
    v15 = "[NTKCircularBezelView setFromHiVizComplicationStyle:toHiVizComplicationStyle:fraction:]";
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2048;
    fractionCopy = fraction;
    _os_log_debug_impl(&dword_23BEB1000, v9, OS_LOG_TYPE_DEBUG, "%s: fromHiVizComplicationStyle: %@ to: %@ fraction: %f", &v14, 0x2Au);
  }

  if (self->_fromHiVizComplicationStyle != style || self->_toHiVizComplicationStyle != complicationStyle || self->_fractionHiVizComplicationStyle != fraction)
  {
    self->_fromHiVizComplicationStyle = style;
    self->_toHiVizComplicationStyle = complicationStyle;
    self->_fractionHiVizComplicationStyle = fraction;
    objc_msgSend_setNeedsDisplay(self, v10, v11);
  }
}

- (unint64_t)hiVizComplicationStyle
{
  v2 = &OBJC_IVAR___NTKCircularBezelView__fromHiVizComplicationStyle;
  if (self->_fractionHiVizComplicationStyle > 0.5)
  {
    v2 = &OBJC_IVAR___NTKCircularBezelView__toHiVizComplicationStyle;
  }

  return *(&self->super.super.super.isa + *v2);
}

- (void)setFromBackgroundStyle:(unint64_t)style toBackgroundStyle:(unint64_t)backgroundStyle fraction:(double)fraction
{
  CLKInterpolateBetweenFloatsClipped();
  if (self->_fractionBezelBackgroundOn != v8)
  {
    self->_fractionBezelBackgroundOn = v8;

    objc_msgSend__setBackgroundNeedsDisplay(self, v6, v7);
  }
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  objc_storeStrong(&self->_location, location);
  if (!locationCopy)
  {
    goto LABEL_5;
  }

  lastSignificantLocation = self->_lastSignificantLocation;
  if (!lastSignificantLocation || objc_msgSend_ntk_significantlyDiffersFromLocation_(locationCopy, v5, lastSignificantLocation))
  {
    v7 = objc_msgSend_copy(locationCopy, v5, lastSignificantLocation);
    v8 = self->_lastSignificantLocation;
    self->_lastSignificantLocation = v7;

LABEL_5:
    sortedWaypoints = self->_sortedWaypoints;
    self->_sortedWaypoints = 0;

    objc_msgSend_setNeedsDisplay(self, v10, v11);
    objc_msgSend__updateWaypointAhead(self, v12, v13);
    objc_msgSend__updateLabels(self, v14, v15);
  }
}

- (void)_invalidateRadiusLabelCTLine
{
  radiusLabelCTLine = self->_radiusLabelCTLine;
  if (radiusLabelCTLine)
  {
    CFRelease(radiusLabelCTLine);
    self->_radiusLabelCTLine = 0;
  }
}

- (void)setFromWaypointRadius:(double)radius toWaypointRadius:(double)waypointRadius fraction:(double)fraction
{
  if (self->_transitoryWaypointRadius != radius || self->_waypointRadius != waypointRadius || self->_transitoryWaypointRadiusProgress != fraction)
  {
    self->_transitoryWaypointRadius = radius;
    self->_waypointRadius = waypointRadius;
    self->_transitoryWaypointRadiusProgress = fraction;
    objc_msgSend__invalidateRadiusLabelCTLine(self, a2, v5);

    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  if ((objc_msgSend_isEqual_(waypointsCopy, v5, self->_waypoints) & 1) == 0)
  {
    objc_storeStrong(&self->_waypoints, waypoints);
    sortedWaypoints = self->_sortedWaypoints;
    self->_sortedWaypoints = 0;

    objc_msgSend_setNeedsDisplay(self, v7, v8);
    objc_msgSend__updateWaypointAhead(self, v9, v10);
    objc_msgSend__updateLabels(self, v11, v12);
  }
}

- (void)setFromTargetWaypoint:(id)waypoint toTargetWaypoint:(id)targetWaypoint fraction:(double)fraction
{
  waypointCopy = waypoint;
  targetWaypointCopy = targetWaypoint;
  if (self->_transitoryTargetWaypoint != waypointCopy || self->_targetWaypoint != targetWaypointCopy || self->_transitoryTargetWaypointProgress != fraction)
  {
    objc_storeStrong(&self->_transitoryTargetWaypoint, waypoint);
    objc_storeStrong(&self->_targetWaypoint, targetWaypoint);
    self->_transitoryTargetWaypointProgress = fraction;
    objc_msgSend_setNeedsDisplay(self, v10, v11);
    objc_msgSend__updateWaypointAhead(self, v12, v13);
    objc_msgSend__updateLabels(self, v14, v15);
  }
}

- (void)setPrimaryBackgroundColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_primaryBackgroundColor) & 1) == 0)
  {
    objc_storeStrong(&self->_primaryBackgroundColor, color);
    objc_msgSend__setBackgroundNeedsDisplay(self, v6, v7);
  }
}

- (void)setSecondaryBackgroundColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_secondaryBackgroundColor) & 1) == 0)
  {
    objc_storeStrong(&self->_secondaryBackgroundColor, color);
    objc_msgSend__setBackgroundNeedsDisplay(self, v6, v7);
  }
}

- (void)setTertiaryBackgroundColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_tertiaryBackgroundColor) & 1) == 0)
  {
    objc_storeStrong(&self->_tertiaryBackgroundColor, color);
    objc_msgSend__setBackgroundNeedsDisplay(self, v6, v7);
  }
}

- (void)setCompassOrientingArrowColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_compassOrientingArrowColor) & 1) == 0)
  {
    objc_storeStrong(&self->_compassOrientingArrowColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setCompassNorthColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_compassNorthColor) & 1) == 0)
  {
    objc_storeStrong(&self->_compassNorthColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setCompassCardinalColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_compassCardinalColor) & 1) == 0)
  {
    objc_storeStrong(&self->_compassCardinalColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setCompassMajorTickColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_compassMajorTickColor) & 1) == 0)
  {
    objc_storeStrong(&self->_compassMajorTickColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setCompassMedialTickColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_compassMedialTickColor) & 1) == 0)
  {
    objc_storeStrong(&self->_compassMedialTickColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setCompassMinorTickColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_compassMinorTickColor) & 1) == 0)
  {
    objc_storeStrong(&self->_compassMinorTickColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setCompassBackgroundColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_compassBackgroundColor) & 1) == 0)
  {
    objc_storeStrong(&self->_compassBackgroundColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setsecondsCompassRingColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_secondsCompassRingColor) & 1) == 0)
  {
    objc_storeStrong(&self->_secondsCompassRingColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setWaypointColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_waypointColor) & 1) == 0)
  {
    objc_storeStrong(&self->_waypointColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setWaypointAheadColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_waypointAheadColor) & 1) == 0)
  {
    objc_storeStrong(&self->_waypointAheadColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setWaypointRingColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_waypointRingColor) & 1) == 0)
  {
    objc_storeStrong(&self->_waypointRingColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setWaypointTargetRingColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_waypointTargetRingColor) & 1) == 0)
  {
    objc_storeStrong(&self->_waypointTargetRingColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setWaypointActiveConeColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_waypointActiveConeColor) & 1) == 0)
  {
    objc_storeStrong(&self->_waypointActiveConeColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setWaypointInactiveConeColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_waypointInactiveConeColor) & 1) == 0)
  {
    objc_storeStrong(&self->_waypointInactiveConeColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setSecondsMajorTickColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_secondsMajorTickColor) & 1) == 0)
  {
    objc_storeStrong(&self->_secondsMajorTickColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setSecondsMedialTickColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_secondsMedialTickColor) & 1) == 0)
  {
    objc_storeStrong(&self->_secondsMedialTickColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setSecondsMinorTickColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_secondsMinorTickColor) & 1) == 0)
  {
    objc_storeStrong(&self->_secondsMinorTickColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setSecondsInactiveMajorTickColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_secondsInactiveMajorTickColor) & 1) == 0)
  {
    objc_storeStrong(&self->_secondsInactiveMajorTickColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setSecondsInactiveMedialTickColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_secondsInactiveMedialTickColor) & 1) == 0)
  {
    objc_storeStrong(&self->_secondsInactiveMedialTickColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setSecondsInactiveMinorTickColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_secondsInactiveMinorTickColor) & 1) == 0)
  {
    objc_storeStrong(&self->_secondsInactiveMinorTickColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setWaypointLabelPrimaryColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_waypointLabelPrimaryColor) & 1) == 0)
  {
    objc_storeStrong(&self->_waypointLabelPrimaryColor, color);
    objc_msgSend__updateLabels(self, v6, v7);
  }
}

- (void)setWaypointLabelSecondaryColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_waypointLabelSecondaryColor) & 1) == 0)
  {
    objc_storeStrong(&self->_waypointLabelSecondaryColor, color);
    objc_msgSend__updateLabels(self, v6, v7);
  }
}

- (void)radiusLabelColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_radiusLabelColor) & 1) == 0)
  {
    objc_storeStrong(&self->_radiusLabelColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setTritiumMajorColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_tritiumMajorColor) & 1) == 0)
  {
    objc_storeStrong(&self->_tritiumMajorColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)seTtritiumMedialColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_tritiumMedialColor) & 1) == 0)
  {
    objc_storeStrong(&self->_tritiumMedialColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setTritiumMinorColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, self->_tritiumMinorColor) & 1) == 0)
  {
    objc_storeStrong(&self->_tritiumMinorColor, color);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setWaypointsAlpha:(double)alpha
{
  if (self->_waypointsAlpha != alpha)
  {
    self->_waypointsAlpha = alpha;
    objc_msgSend__updateLabels(self, a2, v3);

    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setCompassAlpha:(double)alpha
{
  if (self->_compassAlpha != alpha)
  {
    self->_compassAlpha = alpha;
    objc_msgSend_setNeedsDisplay(self, a2, v3);
  }
}

- (void)setSecondsAlpha:(double)alpha
{
  if (self->_secondsAlpha != alpha)
  {
    self->_secondsAlpha = alpha;
    objc_msgSend_setNeedsDisplay(self, a2, v3);
  }
}

- (void)setBackgroundAlpha:(double)alpha
{
  if (self->_backgroundAlpha != alpha)
  {
    self->_backgroundAlpha = alpha;
    objc_msgSend__setBackgroundNeedsDisplay(self, a2, v3);
  }
}

- (void)setUsePOIDerivedColors:(BOOL)colors
{
  v3 = 0.0;
  if (colors)
  {
    v3 = 1.0;
  }

  if (self->_fractionUsePOIDerivedColors != v3)
  {
    self->_fractionUsePOIDerivedColors = v3;
    objc_msgSend_setNeedsDisplay(self, a2, colors);
  }
}

- (void)setColorPalette:(id)palette
{
  paletteCopy = palette;
  v7 = objc_msgSend_isNightModeF(paletteCopy, v5, v6);
  objc_msgSend_doubleValue(v7, v8, v9);
  v11 = 1.0 - v10;

  v14 = objc_msgSend_isMulticolorF(paletteCopy, v12, v13);
  objc_msgSend_doubleValue(v14, v15, v16);
  v18 = v17;

  v145 = objc_msgSend_bezelDepthLimitMajorTickColor(paletteCopy, v19, v20);
  v23 = objc_msgSend_clearColor(MEMORY[0x277D75348], v21, v22);
  v26 = objc_msgSend_primaryBackgroundColor(paletteCopy, v24, v25);
  objc_msgSend_setPrimaryBackgroundColor_(self, v27, v26);

  v30 = objc_msgSend_secondaryBackgroundColor(paletteCopy, v28, v29);
  objc_msgSend_setSecondaryBackgroundColor_(self, v31, v30);

  v34 = objc_msgSend_tertiaryBackgroundColor(paletteCopy, v32, v33);
  objc_msgSend_setTertiaryBackgroundColor_(self, v35, v34);

  v38 = objc_msgSend_compassOrientingArrowColor(paletteCopy, v36, v37);
  objc_msgSend_setCompassOrientingArrowColor_(self, v39, v38);

  v42 = objc_msgSend_compassNorthColor(paletteCopy, v40, v41);
  objc_msgSend_setCompassNorthColor_(self, v43, v42);

  v46 = objc_msgSend_compassCardinalColor(paletteCopy, v44, v45);
  objc_msgSend_setCompassCardinalColor_(self, v47, v46);

  v50 = objc_msgSend_compassMajorTickColor(paletteCopy, v48, v49);
  objc_msgSend_setCompassMajorTickColor_(self, v51, v50);

  v54 = objc_msgSend_compassMedialTickColor(paletteCopy, v52, v53);
  objc_msgSend_setCompassMedialTickColor_(self, v55, v54);

  v58 = objc_msgSend_compassMinorTickColor(paletteCopy, v56, v57);
  objc_msgSend_setCompassMinorTickColor_(self, v59, v58);

  objc_msgSend_setCompassBackgroundColor_(self, v60, v23);
  v63 = objc_msgSend_secondsCompassRingColor(paletteCopy, v61, v62);
  objc_msgSend_setSecondsCompassRingColor_(self, v64, v63);

  v67 = objc_msgSend_waypointAheadColor(paletteCopy, v65, v66);
  objc_msgSend_setWaypointAheadColor_(self, v68, v67);

  v71 = objc_msgSend_waypointRingColor(paletteCopy, v69, v70);
  objc_msgSend_setWaypointRingColor_(self, v72, v71);

  v75 = objc_msgSend_waypointTargetRingColor(paletteCopy, v73, v74);
  objc_msgSend_setWaypointTargetRingColor_(self, v76, v75);

  v79 = objc_msgSend_waypointActiveConeColor(paletteCopy, v77, v78);
  objc_msgSend_setWaypointActiveConeColor_(self, v80, v79);

  v83 = objc_msgSend_waypointInactiveConeColor(paletteCopy, v81, v82);
  objc_msgSend_setWaypointInactiveConeColor_(self, v84, v83);

  v87 = objc_msgSend_waypointColor(paletteCopy, v85, v86);
  objc_msgSend_setWaypointColor_(self, v88, v87);

  v91 = objc_msgSend_waypointOutOfRangeColor(paletteCopy, v89, v90);
  objc_msgSend_setWaypointOutOfRangeColor_(self, v92, v91);

  self->_fractionUsePOIDerivedColors = fmax(fmin(v11 * v18, 1.0), 0.0);
  v95 = objc_msgSend_secondsMajorTickColor(paletteCopy, v93, v94);
  objc_msgSend_setSecondsMajorTickColor_(self, v96, v95);

  v99 = objc_msgSend_secondsMajorTickColor(paletteCopy, v97, v98);
  objc_msgSend_setSecondsMedialTickColor_(self, v100, v99);

  v103 = objc_msgSend_secondsMinorTickColor(paletteCopy, v101, v102);
  objc_msgSend_setSecondsMinorTickColor_(self, v104, v103);

  v107 = objc_msgSend_secondsInactiveMajorTickColor(paletteCopy, v105, v106);
  objc_msgSend_setSecondsInactiveMajorTickColor_(self, v108, v107);

  v111 = objc_msgSend_secondsInactiveMajorTickColor(paletteCopy, v109, v110);
  objc_msgSend_setSecondsInactiveMedialTickColor_(self, v112, v111);

  v115 = objc_msgSend_secondsInactiveMinorTickColor(paletteCopy, v113, v114);
  objc_msgSend_setSecondsInactiveMinorTickColor_(self, v116, v115);

  v119 = objc_msgSend_waypointLabelPrimaryColor(paletteCopy, v117, v118);
  objc_msgSend_setWaypointLabelPrimaryColor_(self, v120, v119);

  v123 = objc_msgSend_waypointLabelSecondaryColor(paletteCopy, v121, v122);
  objc_msgSend_setWaypointLabelSecondaryColor_(self, v124, v123);

  v127 = objc_msgSend_waypointLabelTertiaryColor(paletteCopy, v125, v126);
  objc_msgSend_setWaypointLabelTertiaryColor_(self, v128, v127);

  v131 = objc_msgSend_radiusLabelColor(paletteCopy, v129, v130);
  objc_msgSend_setRadiusLabelColor_(self, v132, v131);

  objc_msgSend_setTritiumMajorColor_(self, v133, v145);
  objc_msgSend_setTritiumMedialColor_(self, v134, v145);
  objc_msgSend_setTritiumMinorColor_(self, v135, v145);
  v138 = objc_msgSend_isFullScreen(paletteCopy, v136, v137);
  objc_msgSend_doubleValue(v138, v139, v140);
  v142 = v141;

  objc_msgSend_setFromBackgroundStyle_toBackgroundStyle_fraction_(self, v143, 0, 1, v142);
  colorPalette = self->_colorPalette;
  self->_colorPalette = paletteCopy;
}

- (id)accessibilityLabel
{
  v4 = objc_msgSend_accessibilityLabel(self->_circularPOIInformationPrimaryLabel, a2, v2);
  v7 = objc_msgSend__accessibilityStringForRelativeBearingToTargetWaypoint(self, v5, v6);
  v10 = objc_msgSend_accessibilityLabel(self->_circularPOIInformationSecondaryLabel, v8, v9);
  v13 = objc_msgSend__accessibilityStringForCurrentHeading(self, v11, v12);
  v18 = objc_msgSend__accessibilityStringForCurrentWaypointRadius(self, v14, v15);
  v16 = __UIAXStringForVariables();

  return v16;
}

- (id)_accessibilityStringForCurrentHeading
{
    ;
  }

  while (i < 0.0)
  {
    i = i + 360.0;
  }

  return (MEMORY[0x2821F9670])(MEMORY[0x277CCA898], sel__accessibilityStringForDirection_);
}

- (id)_accessibilityStringForCurrentWaypointRadius
{
  v3 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, *MEMORY[0x277CBE718]);
  v8 = objc_msgSend_BOOLValue(v5, v6, v7);

  v9 = MEMORY[0x277CCA898];

  return MEMORY[0x2821F9670](v9, sel__accessibilityStringForRadius_useMetric_formatPrefix_, v8);
}

- (id)_accessibilityStringForDistanceAccuracyToWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  v6 = 0;
  if (waypointCopy && IsVoiceOverRunning)
  {
    location = self->_location;
    if (location)
    {
      v8 = MEMORY[0x277CBEAF8];
      v9 = location;
      v12 = objc_msgSend_currentLocale(v8, v10, v11);
      v14 = objc_msgSend_objectForKey_(v12, v13, *MEMORY[0x277CBE718]);
      v17 = objc_msgSend_BOOLValue(v14, v15, v16);

      v20 = objc_msgSend_waypointLocation(waypointCopy, v18, v19);
      objc_msgSend_distanceFromLocation_(v9, v21, v20);
      v23 = v22;

      if (v23 < 0.0)
      {
        v23 = 0.0;
      }

      v26 = objc_msgSend_timestamp(v9, v24, v25);

      v6 = objc_msgSend__accessibilityStringForDistance_lastUpdatedDate_useMetric_(MEMORY[0x277CCA898], v27, v26, v17, v23);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_accessibilityStringForRelativeBearingToTargetWaypoint
{
  if (self->_displayMode != 3)
  {
    v8 = 0;
    goto LABEL_23;
  }

  v3 = self->_targetWaypoint;
  v6 = self->_location;
  if (v6)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    heading = self->_heading;
    v10 = objc_msgSend_waypointLocation(v3, v4, v5);
    objc_msgSend_ntk_bearingTo_(v6, v11, v10);
    v13 = v12;

      ;
    }

      ;
    }

    v15 = fabs(i);
    if (v15 >= 30.0)
    {
      if (v15 <= 150.0)
      {
        v17 = v15;
        v18 = MEMORY[0x277CCACA8];
        v19 = NTKFoghornFaceLocalizedString(@"LEGHORN_DEGREE_FORMAT_ACCESSIBILITY");
        v21 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v20, v17);
        v23 = objc_msgSend_stringWithFormat_(v18, v22, v19, v21);

        v24 = MEMORY[0x277CCACA8];
        if (i <= 0.0)
        {
          v25 = @"LEGHORN_TARGET_MODE_LEFT_ACCESSIBILITY";
        }

        else
        {
          v25 = @"LEGHORN_TARGET_MODE_RIGHT_ACCESSIBILITY";
        }

        v26 = NTKFoghornFaceLocalizedString(v25);
        v8 = objc_msgSend_stringWithFormat_(v24, v27, v26, v23);

        goto LABEL_22;
      }

      v16 = @"LEGHORN_TARGET_MODE_BEHIND_ACCESSIBILITY";
    }

    else
    {
      v16 = @"LEGHORN_TARGET_MODE_AHEAD_ACCESSIBILITY";
    }

    v8 = NTKFoghornFaceLocalizedString(v16);
  }

LABEL_22:

LABEL_23:

  return v8;
}

@end