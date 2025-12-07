@interface DividedMonthDayTransitionView
- (void)animateToDayWithCompletion:(id)completion;
- (void)animateToMonthWithCompletion:(id)completion;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation DividedMonthDayTransitionView

- (void)animateToMonthWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(MonthDayTransitionView *)self animating])
  {
    [(MonthDayTransitionView *)self _haltAnimations];
  }

  v200 = completionCopy;
  [(DividedMonthDayTransitionView *)self setCompletion:completionCopy];
  paletteView = [(MonthDayTransitionView *)self paletteView];
  [paletteView layoutSubviews];

  monthViewController = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController viewWillLayoutSubviews];

  monthViewController2 = [(MonthDayTransitionView *)self monthViewController];
  view = [monthViewController2 view];
  [view layoutSubviews];

  monthViewController3 = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController3 viewDidLayoutSubviews];

  monthViewController4 = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController4 forceUpdateListView];

  monthViewController5 = [(MonthDayTransitionView *)self monthViewController];
  view2 = [monthViewController5 view];
  [view2 frame];
  v14 = v13;
  v198 = v15;

  monthViewController6 = [(MonthDayTransitionView *)self monthViewController];
  view3 = [monthViewController6 view];
  [(MonthDayTransitionView *)self monthScrubberFrame];
  [view3 convertRect:self fromView:?];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  monthViewController7 = [(MonthDayTransitionView *)self monthViewController];
  view4 = [monthViewController7 view];
  [(MonthDayTransitionView *)self dayScrubberFrame];
  [view4 convertPoint:self fromView:?];
  v29 = v28;

  monthViewController8 = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController8 frameOfListView];
  v196 = CGRectGetMinY(v241) - v29;

  monthViewController9 = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController9 enterAnimationSplitStateWithCutOutArea:v19 topBoundary:{v21, v23, v25, v29}];

  [(MonthDayTransitionView *)self dayScrubberFrame];
  v33 = v29 + v32;
  monthViewController10 = [(MonthDayTransitionView *)self monthViewController];
  view5 = [monthViewController10 view];
  [view5 frame];
  v37 = v36;
  v39 = v38;

  monthViewController11 = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController11 frameOfListView];
  v42 = v33 - v41;

  monthViewController12 = [(MonthDayTransitionView *)self monthViewController];
  view6 = [monthViewController12 view];
  [view6 setFrame:{0.0, v42, v37, v39}];

  bottomView = [(MonthDayTransitionView *)self bottomView];
  [bottomView setHidden:1];

  bottomView2 = [(MonthDayTransitionView *)self bottomView];
  [bottomView2 frame];
  v48 = v47;
  v50 = v49;

  [(MonthDayTransitionView *)self dayViewDayLocation];
  v52 = v51;
  v54 = v53;
  bottomView3 = [(MonthDayTransitionView *)self bottomView];
  [bottomView3 setFrame:{v52, v54, v48, v50}];

  allDayView = [(MonthDayTransitionView *)self allDayView];
  [allDayView setAlpha:1.0];

  monthViewController13 = [(MonthDayTransitionView *)self monthViewController];
  view7 = [monthViewController13 view];
  [view7 setAlpha:1.0];

  monthViewController14 = [(MonthDayTransitionView *)self monthViewController];
  view8 = [monthViewController14 view];
  v61 = captureImageFromView();

  v199 = v61;
  v62 = [[UIImageView alloc] initWithImage:v61];
  paletteView2 = [(MonthDayTransitionView *)self paletteView];
  paletteView3 = [(MonthDayTransitionView *)self paletteView];
  subviews = [paletteView3 subviews];
  firstObject = [subviews firstObject];
  [paletteView2 insertSubview:v62 belowSubview:firstObject];

  paletteView4 = [(MonthDayTransitionView *)self paletteView];
  layer = [paletteView4 layer];
  [layer setMasksToBounds:0];

  paletteView5 = [(MonthDayTransitionView *)self paletteView];
  [(MonthDayTransitionView *)self dayScrubberFrame];
  [paletteView5 convertRect:self fromView:?];
  v71 = v70;
  v73 = v72;

  [v62 setAlpha:0.0];
  [v62 frame];
  [v62 setFrame:{v71, v73 - v21}];
  [v62 setAutoresizingMask:0];
  topView = [(MonthDayTransitionView *)self topView];
  [topView bounds];
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  topView2 = [(MonthDayTransitionView *)self topView];
  [(DividedMonthDayTransitionView *)self convertRect:topView2 fromView:v76, v78, v80, v82];

  [(MonthDayTransitionView *)self monthScrubberFrame];
  [(MonthDayTransitionView *)self _topExtensionHeight];
  bottomView4 = [(MonthDayTransitionView *)self bottomView];
  v85 = [bottomView4 snapshotViewAfterScreenUpdates:0];

  bottomView5 = [(MonthDayTransitionView *)self bottomView];
  [(DividedMonthDayTransitionView *)self insertSubview:v85 aboveSubview:bottomView5];

  bottomView6 = [(MonthDayTransitionView *)self bottomView];
  [bottomView6 convertPoint:self toView:{CGPointZero.x, CGPointZero.y}];
  v89 = v88;
  v91 = v90;

  v194 = v85;
  [v85 frame];
  [v85 setFrame:{v89, v91}];
  paletteView6 = [(MonthDayTransitionView *)self paletteView];
  dayInitialsHeaderView = [paletteView6 dayInitialsHeaderView];
  [dayInitialsHeaderView frame];
  v95 = v94;
  v97 = v96;

  paletteView7 = [(MonthDayTransitionView *)self paletteView];
  [paletteView7 bounds];
  v100 = v99;

  v101 = [[UIView alloc] initWithFrame:{0.0, v95, v100, v97}];
  v102 = +[UIColor systemBackgroundColor];
  [v101 setBackgroundColor:v102];

  paletteView8 = [(MonthDayTransitionView *)self paletteView];
  paletteView9 = [(MonthDayTransitionView *)self paletteView];
  dayInitialsHeaderView2 = [paletteView9 dayInitialsHeaderView];
  [paletteView8 insertSubview:v101 belowSubview:dayInitialsHeaderView2];

  paletteView10 = [(MonthDayTransitionView *)self paletteView];
  [paletteView10 bounds];
  v108 = v107;
  [v101 frame];
  v109 = CGRectGetMaxY(v242) + 500.0;

  v110 = [[UIView alloc] initWithFrame:{0.0, -500.0, v108, v109}];
  v111 = +[DividedMonthDayTransitionView dividedMonthPaletteBackgroundColor];
  [v110 setBackgroundColor:v111];

  paletteView11 = [(MonthDayTransitionView *)self paletteView];
  [paletteView11 insertSubview:v110 belowSubview:v101];

  v113 = [[UIView alloc] initWithFrame:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];
  v243.origin.x = 0.0;
  v243.origin.y = v95;
  v243.size.width = v100;
  v243.size.height = v97;
  Height = CGRectGetHeight(v243);
  v115 = v95 + Height - 1.0 / EKUIScaleFactor();
  v116 = 1.0 / EKUIScaleFactor();
  [(DividedMonthDayTransitionView *)self bounds];
  [v113 setFrame:{0.0, v115, CGRectGetWidth(v244), v116}];
  [v113 setAlpha:0.0];
  v117 = +[UIColor separatorColor];
  [v113 setBackgroundColor:v117];

  [v101 addSubview:v113];
  [(MonthDayTransitionView *)self setAnimating:1];
  paletteView12 = [(MonthDayTransitionView *)self paletteView];
  [(MonthDayTransitionView *)self monthScrubberFrame];
  [paletteView12 convertRect:self fromView:?];
  v120 = v119;

  v121 = v120 - v21;
  scrubber = [(MonthDayTransitionView *)self scrubber];
  [scrubber setHidden:0];

  v123 = +[DividedMonthDayTransitionView dividedMonthPaletteBackgroundColor];
  scrubber2 = [(MonthDayTransitionView *)self scrubber];
  [scrubber2 setBackgroundColor:v123];

  paletteView13 = [(MonthDayTransitionView *)self paletteView];
  dayScrubberController = [paletteView13 dayScrubberController];
  view9 = [dayScrubberController view];
  [view9 setHidden:1];

  scrubber3 = [(MonthDayTransitionView *)self scrubber];
  [scrubber3 setVerticallyCompressedState:1];

  scrubber4 = [(MonthDayTransitionView *)self scrubber];
  [scrubber4 layoutIfNeeded];

  scrubber5 = [(MonthDayTransitionView *)self scrubber];
  [scrubber5 animateToMonthLayout];

  springAnimationDuration();
  v132 = v131;
  v133 = +[SpringFactory sharedFactory];
  v233 = _NSConcreteStackBlock;
  v234 = 3221225472;
  v235 = sub_100070900;
  v236 = &unk_10020FC18;
  v237 = v101;
  v195 = v113;
  v238 = v195;
  selfCopy = self;
  v240 = v196;
  v134 = navigationAnimationsPreferringFRR();
  v230[0] = _NSConcreteStackBlock;
  v230[1] = 3221225472;
  v230[2] = sub_1000709DC;
  v230[3] = &unk_10020EB28;
  v230[4] = self;
  v197 = v237;
  v231 = v197;
  v135 = v110;
  v232 = v135;
  [UIView _animateWithDuration:393216 delay:v133 options:v134 factory:v230 animations:v132 completion:0.0];

  paletteView14 = [(MonthDayTransitionView *)self paletteView];
  dateLabel = [paletteView14 dateLabel];
  [dateLabel setAlpha:0.0];

  [(MonthDayTransitionView *)self weekDayInitialsDay];
  v139 = v138;
  v141 = v140;
  v143 = v142;
  v145 = v144;
  paletteView15 = [(MonthDayTransitionView *)self paletteView];
  dayInitialsHeaderView3 = [paletteView15 dayInitialsHeaderView];
  [dayInitialsHeaderView3 setFrame:{v139, v141, v143, v145}];

  springAnimationDuration();
  v149 = v148;
  v150 = +[SpringFactory sharedFactory];
  v225 = _NSConcreteStackBlock;
  v226 = 3221225472;
  v227 = sub_100070A4C;
  v228 = &unk_10020EB00;
  selfCopy2 = self;
  v151 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v150 options:v151 factory:0 animations:v149 completion:0.0];

  monthViewController15 = [(MonthDayTransitionView *)self monthViewController];
  view10 = [monthViewController15 view];
  [view10 setHidden:1];

  springAnimationDuration();
  v155 = v154;
  v156 = +[SpringFactory sharedFactory];
  v215 = _NSConcreteStackBlock;
  v216 = 3221225472;
  v217 = sub_100070B18;
  v218 = &unk_10020FC40;
  selfCopy3 = self;
  v221 = v14;
  v222 = v198;
  v220 = v62;
  v223 = v14;
  v224 = v121;
  v157 = navigationAnimationsPreferringFRR();
  v212[0] = _NSConcreteStackBlock;
  v212[1] = 3221225472;
  v212[2] = sub_100070C14;
  v212[3] = &unk_10020F7A8;
  v158 = v220;
  v213 = v158;
  selfCopy4 = self;
  [UIView _animateWithDuration:393216 delay:v156 options:v157 factory:v212 animations:v155 completion:0.0];

  monthViewController16 = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController16 frameOfListView];
  v161 = v160;
  v163 = v162;
  v165 = v164;
  v167 = v166;
  monthViewController17 = [(MonthDayTransitionView *)self monthViewController];
  view11 = [monthViewController17 view];
  [(DividedMonthDayTransitionView *)self convertRect:view11 fromView:v161, v163, v165, v167];
  v171 = v170;
  v173 = v172;
  v175 = v174;
  v177 = v176;

  springAnimationDuration();
  v179 = v178;
  v180 = +[SpringFactory sharedFactory];
  v203 = _NSConcreteStackBlock;
  v204 = 3221225472;
  v205 = sub_100070C80;
  v206 = &unk_10020ED88;
  v207 = v194;
  v208 = v171;
  v209 = v173;
  v210 = v175;
  v211 = v177;
  v181 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v180 options:v181 factory:0 animations:v179 completion:0.0];

  springAnimationDuration();
  v183 = v182;
  v184 = +[SpringFactory sharedFactory];
  block[10] = _NSConcreteStackBlock;
  block[11] = 3221225472;
  block[12] = sub_100070C90;
  block[13] = &unk_10020EB00;
  v185 = v207;
  v202 = v185;
  v186 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v184 options:v186 factory:0 animations:v183 completion:0.0];

  bottomView7 = [(MonthDayTransitionView *)self bottomView];
  [(MonthDayTransitionView *)self dayViewMonthLocation];
  v188 = [(MonthDayTransitionView *)self _animateView:bottomView7 toPosition:1 setDelegate:?];

  block[5] = _NSConcreteStackBlock;
  block[6] = 3221225472;
  block[7] = sub_100070C9C;
  block[8] = &unk_10020EB00;
  block[9] = self;
  v189 = navigationAnimationsPreferringFRR();
  [UIView animateWithDuration:327680 delay:v189 options:0 animations:0.25 completion:0.0];

  UIAnimationDragCoefficient();
  if (v190 <= 1.5)
  {
    v192 = 600000000;
  }

  else
  {
    UIAnimationDragCoefficient();
    v192 = (v191 * 0.91 * 1000000000.0);
  }

  v193 = dispatch_time(0, v192);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100070CE4;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_after(v193, &_dispatch_main_q, block);
}

- (void)animateToDayWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(MonthDayTransitionView *)self animating])
  {
    [(MonthDayTransitionView *)self _haltAnimations];
  }

  v194 = completionCopy;
  [(DividedMonthDayTransitionView *)self setCompletion:completionCopy];
  monthViewController = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController forceUpdateListView];

  topView = [(MonthDayTransitionView *)self topView];
  [topView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  topView2 = [(MonthDayTransitionView *)self topView];
  [(DividedMonthDayTransitionView *)self convertRect:topView2 fromView:v8, v10, v12, v14];

  [(MonthDayTransitionView *)self monthScrubberFrame];
  [(MonthDayTransitionView *)self _topExtensionHeight];
  monthViewController2 = [(MonthDayTransitionView *)self monthViewController];
  view = [monthViewController2 view];
  [(MonthDayTransitionView *)self monthScrubberFrame];
  [view convertRect:self fromView:?];
  v19 = v18;
  v192 = v18;
  v21 = v20;
  v189 = v20;
  v23 = v22;
  v25 = v24;

  monthViewController3 = [(MonthDayTransitionView *)self monthViewController];
  view2 = [monthViewController3 view];
  [(MonthDayTransitionView *)self dayScrubberFrame];
  [view2 convertPoint:self fromView:?];
  v29 = v28;

  v227.origin.x = v19;
  v227.origin.y = v21;
  v227.size.width = v23;
  v227.size.height = v25;
  v191 = CGRectGetMinY(v227) - v29;
  monthViewController4 = [(MonthDayTransitionView *)self monthViewController];
  view3 = [monthViewController4 view];
  paletteView = [(MonthDayTransitionView *)self paletteView];
  [paletteView bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  paletteView2 = [(MonthDayTransitionView *)self paletteView];
  [view3 convertRect:paletteView2 fromView:{v34, v36, v38, v40}];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  monthViewController5 = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController5 frameOfListView];
  MinY = CGRectGetMinY(v228);
  v229.origin.x = v43;
  v229.origin.y = v45;
  v229.size.width = v47;
  v229.size.height = v49;
  v52 = MinY - CGRectGetMaxY(v229);

  monthViewController6 = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController6 enterAnimationSplitStateWithCutOutArea:v192 topBoundary:{v189, v23, v25, v29}];

  monthViewController7 = [(MonthDayTransitionView *)self monthViewController];
  view4 = [monthViewController7 view];
  [view4 setAlpha:1.0];

  monthViewController8 = [(MonthDayTransitionView *)self monthViewController];
  view5 = [monthViewController8 view];
  v58 = captureImageFromView();

  v193 = v58;
  v59 = [[UIImageView alloc] initWithImage:v58];
  paletteView3 = [(MonthDayTransitionView *)self paletteView];
  paletteView4 = [(MonthDayTransitionView *)self paletteView];
  subviews = [paletteView4 subviews];
  firstObject = [subviews firstObject];
  [paletteView3 insertSubview:v59 belowSubview:firstObject];

  paletteView5 = [(MonthDayTransitionView *)self paletteView];
  layer = [paletteView5 layer];
  [layer setMasksToBounds:0];

  paletteView6 = [(MonthDayTransitionView *)self paletteView];
  [paletteView6 setExtraPaletteHeight:v52];

  paletteView7 = [(MonthDayTransitionView *)self paletteView];
  [paletteView7 layoutSubviews];

  paletteView8 = [(MonthDayTransitionView *)self paletteView];
  monthViewController9 = [(MonthDayTransitionView *)self monthViewController];
  view6 = [monthViewController9 view];
  [paletteView8 convertPoint:view6 fromView:{CGPointZero.x, CGPointZero.y}];
  v72 = v71;
  v74 = v73;

  [v59 frame];
  [v59 setFrame:{v72, v74}];
  [(MonthDayTransitionView *)self weekDayInitialsMonth];
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  paletteView9 = [(MonthDayTransitionView *)self paletteView];
  dayInitialsHeaderView = [paletteView9 dayInitialsHeaderView];
  [dayInitialsHeaderView setFrame:{v76, v78, v80, v82}];

  paletteView10 = [(MonthDayTransitionView *)self paletteView];
  dayInitialsHeaderView2 = [paletteView10 dayInitialsHeaderView];
  [dayInitialsHeaderView2 frame];
  v88 = v87;
  v90 = v89;

  paletteView11 = [(MonthDayTransitionView *)self paletteView];
  [paletteView11 bounds];
  v93 = v92;

  v94 = [[UIView alloc] initWithFrame:{0.0, v88, v93, v90}];
  v95 = +[DividedMonthDayTransitionView dividedMonthPaletteBackgroundColor];
  [v94 setBackgroundColor:v95];

  paletteView12 = [(MonthDayTransitionView *)self paletteView];
  paletteView13 = [(MonthDayTransitionView *)self paletteView];
  dayInitialsHeaderView3 = [paletteView13 dayInitialsHeaderView];
  [paletteView12 insertSubview:v94 belowSubview:dayInitialsHeaderView3];

  paletteView14 = [(MonthDayTransitionView *)self paletteView];
  [paletteView14 bounds];
  v101 = v100;
  [v94 frame];
  v102 = CGRectGetMaxY(v230) + 500.0;

  v103 = [[UIView alloc] initWithFrame:{0.0, -500.0, v101, v102}];
  v104 = +[DividedMonthDayTransitionView dividedMonthPaletteBackgroundColor];
  [v103 setBackgroundColor:v104];

  paletteView15 = [(MonthDayTransitionView *)self paletteView];
  [paletteView15 insertSubview:v103 aboveSubview:v59];

  v106 = [[UIView alloc] initWithFrame:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];
  v231.origin.x = 0.0;
  v231.origin.y = v88;
  v231.size.width = v93;
  v231.size.height = v90;
  Height = CGRectGetHeight(v231);
  v108 = v88 + Height - 1.0 / EKUIScaleFactor();
  v109 = 1.0 / EKUIScaleFactor();
  [(DividedMonthDayTransitionView *)self bounds];
  [v106 setFrame:{0.0, v108, CGRectGetWidth(v232), v109}];
  [v106 setAlpha:1.0];
  v110 = +[UIColor separatorColor];
  [v106 setBackgroundColor:v110];

  [v94 addSubview:v106];
  [(MonthDayTransitionView *)self setAnimating:1];
  paletteView16 = [(MonthDayTransitionView *)self paletteView];
  dayScrubberController = [paletteView16 dayScrubberController];
  view7 = [dayScrubberController view];
  [view7 setHidden:1];

  scrubber = [(MonthDayTransitionView *)self scrubber];
  [scrubber setHidden:0];

  scrubber2 = [(MonthDayTransitionView *)self scrubber];
  [scrubber2 setAlpha:1.0];

  scrubber3 = [(MonthDayTransitionView *)self scrubber];
  [scrubber3 setVerticallyCompressedState:1];

  scrubber4 = [(MonthDayTransitionView *)self scrubber];
  [scrubber4 layoutIfNeeded];

  v118 = +[CompactMonthViewController dividedModeBackgroundColor];
  scrubber5 = [(MonthDayTransitionView *)self scrubber];
  [scrubber5 setBackgroundColor:v118];

  scrubber6 = [(MonthDayTransitionView *)self scrubber];
  [scrubber6 animateToDayLayout];

  springAnimationDuration();
  v122 = v121;
  v123 = +[SpringFactory sharedFactory];
  v221 = _NSConcreteStackBlock;
  v222 = 3221225472;
  v223 = sub_100071CD4;
  v224 = &unk_10020EC68;
  v190 = v106;
  v225 = v190;
  selfCopy = self;
  v124 = navigationAnimationsPreferringFRR();
  v218[0] = _NSConcreteStackBlock;
  v218[1] = 3221225472;
  v218[2] = sub_100071D6C;
  v218[3] = &unk_10020F7A8;
  v188 = v94;
  v219 = v188;
  v187 = v103;
  v220 = v187;
  [UIView _animateWithDuration:393216 delay:v123 options:v124 factory:v218 animations:v122 completion:0.0];

  [(MonthDayTransitionView *)self weekDayInitialsMonth];
  v126 = v125;
  v128 = v127;
  v130 = v129;
  v132 = v131;
  paletteView17 = [(MonthDayTransitionView *)self paletteView];
  dayInitialsHeaderView4 = [paletteView17 dayInitialsHeaderView];
  [dayInitialsHeaderView4 setFrame:{v126, v128, v130, v132}];

  paletteView18 = [(MonthDayTransitionView *)self paletteView];
  animatableDateLabel = [paletteView18 animatableDateLabel];
  [animatableDateLabel setAlpha:1.0];

  springAnimationDuration();
  v138 = v137;
  v139 = +[SpringFactory sharedFactory];
  v213 = _NSConcreteStackBlock;
  v214 = 3221225472;
  v215 = sub_100071DA8;
  v216 = &unk_10020EB00;
  selfCopy2 = self;
  v140 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v139 options:v140 factory:0 animations:v138 completion:0.0];

  springAnimationDuration();
  v142 = v141;
  v208 = _NSConcreteStackBlock;
  v209 = 3221225472;
  v210 = sub_100071E74;
  v211 = &unk_10020EB00;
  selfCopy3 = self;
  v143 = navigationAnimationsPreferringFRR();
  [UIView _animateUsingSpringWithDuration:0 delay:v143 options:0 mass:v142 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:400.0 completion:0.0];

  monthViewController10 = [(MonthDayTransitionView *)self monthViewController];
  view8 = [monthViewController10 view];
  [view8 setHidden:1];

  springAnimationDuration();
  v147 = v146;
  v148 = +[SpringFactory sharedFactory];
  v202 = _NSConcreteStackBlock;
  v203 = 3221225472;
  v204 = sub_100071EE0;
  v205 = &unk_10020EE00;
  v206 = v59;
  v207 = v191;
  v149 = navigationAnimationsPreferringFRR();
  v200[0] = _NSConcreteStackBlock;
  v200[1] = 3221225472;
  v200[2] = sub_100071F40;
  v200[3] = &unk_10020F7A8;
  v200[4] = self;
  v150 = v206;
  v201 = v150;
  [UIView _animateWithDuration:393216 delay:v148 options:v149 factory:v200 animations:v147 completion:0.0];

  [(DividedMonthDayTransitionView *)self bounds];
  MaxY = CGRectGetMaxY(v233);
  bottomView = [(MonthDayTransitionView *)self bottomView];
  [bottomView frame];
  v153 = MaxY - CGRectGetHeight(v234);
  monthViewController11 = [(MonthDayTransitionView *)self monthViewController];
  navigationController = [monthViewController11 navigationController];
  toolbar = [navigationController toolbar];
  [toolbar frame];
  v157 = v153 - CGRectGetHeight(v235);

  monthViewController12 = [(MonthDayTransitionView *)self monthViewController];
  [monthViewController12 frameOfListView];
  v159 = CGRectGetMinY(v236);
  monthViewController13 = [(MonthDayTransitionView *)self monthViewController];
  view9 = [monthViewController13 view];
  [view9 frame];
  v162 = v159 / CGRectGetHeight(v237);

  bottomView2 = [(MonthDayTransitionView *)self bottomView];
  [bottomView2 frame];
  v164 = CGRectGetHeight(v238);
  CATransform3DMakeTranslation(&a, 0.0, v164 * 0.5, 0.0);
  CATransform3DMakeScale(&b, 1.0, v162, 1.0);
  CATransform3DConcat(&v199, &a, &b);
  bottomView3 = [(MonthDayTransitionView *)self bottomView];
  layer2 = [bottomView3 layer];
  a = v199;
  [layer2 setTransform:&a];

  bottomView4 = [(MonthDayTransitionView *)self bottomView];
  [bottomView4 setAlpha:0.0];

  bottomView5 = [(MonthDayTransitionView *)self bottomView];
  [bottomView5 setHidden:0];

  bottomView6 = [(MonthDayTransitionView *)self bottomView];
  [bottomView6 frame];
  v171 = v170;
  v173 = v172;

  bottomView7 = [(MonthDayTransitionView *)self bottomView];
  [bottomView7 setFrame:{0.0, v157, v171, v173}];

  springAnimationDuration();
  v176 = v175;
  v177 = +[SpringFactory sharedFactory];
  v196[5] = _NSConcreteStackBlock;
  v196[6] = 3221225472;
  v196[7] = sub_100071FA8;
  v196[8] = &unk_10020EB00;
  v196[9] = self;
  v178 = navigationAnimationsPreferringFRR();
  v196[0] = _NSConcreteStackBlock;
  v196[1] = 3221225472;
  v196[2] = sub_100072094;
  v196[3] = &unk_10020EB98;
  v196[4] = self;
  [UIView _animateWithDuration:393216 delay:v177 options:v178 factory:v196 animations:v176 completion:0.0];

  UIAnimationDragCoefficient();
  if (v179 <= 1.5)
  {
    v181 = 600000000;
  }

  else
  {
    UIAnimationDragCoefficient();
    v181 = (v180 * 0.91 * 1000000000.0);
  }

  v182 = dispatch_time(0, v181);
  springAnimationDuration();
  v184 = v183;
  v185 = +[SpringFactory sharedFactory];
  block[5] = _NSConcreteStackBlock;
  block[6] = 3221225472;
  block[7] = sub_1000720A4;
  block[8] = &unk_10020EB00;
  block[9] = self;
  v186 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v185 options:v186 factory:&stru_10020FC80 animations:v184 completion:0.0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000720F0;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_after(v182, &_dispatch_main_q, block);
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v12.receiver = self;
  v12.super_class = DividedMonthDayTransitionView;
  [(MonthDayTransitionView *)&v12 animationDidStop:stop finished:finished];
  bottomView = [(MonthDayTransitionView *)self bottomView];
  layer = [bottomView layer];
  v7 = *&CATransform3DIdentity.m33;
  v11[4] = *&CATransform3DIdentity.m31;
  v11[5] = v7;
  v8 = *&CATransform3DIdentity.m43;
  v11[6] = *&CATransform3DIdentity.m41;
  v11[7] = v8;
  v9 = *&CATransform3DIdentity.m13;
  v11[0] = *&CATransform3DIdentity.m11;
  v11[1] = v9;
  v10 = *&CATransform3DIdentity.m23;
  v11[2] = *&CATransform3DIdentity.m21;
  v11[3] = v10;
  [layer setTransform:v11];
}

@end