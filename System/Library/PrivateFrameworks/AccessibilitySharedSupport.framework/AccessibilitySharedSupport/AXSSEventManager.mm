@interface AXSSEventManager
- (AXSSEventManager)initWithActionManager:(id)manager;
- (AXSSEventManager)initWithActionManager:(id)manager commandMap:(id)map;
- (AXSSKeyFilterDelegate)filterDelegate;
- (BOOL)_handleCommand:(id)command event:(id)event;
- (BOOL)_handleEvent:(id)event forCaptureOnly:(BOOL)only;
- (BOOL)_performDownActionForCommand:(id)command info:(id)info;
- (BOOL)processKeyboardEvent:(id)event;
- (id)_tabbedKeyChordForKeyChord:(id)chord;
- (void)_handleTabComboEvent:(id)event;
- (void)_handleTabEvent:(id)event;
- (void)_handleTabRepeatOrUpWithCommand:(id)command;
@end

@implementation AXSSEventManager

- (AXSSEventManager)initWithActionManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_opt_new();
  v6 = [(AXSSEventManager *)self initWithActionManager:managerCopy commandMap:v5];

  return v6;
}

- (AXSSEventManager)initWithActionManager:(id)manager commandMap:(id)map
{
  v4 = MEMORY[0x1EEE9AC00](self, a2, manager, map);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v404[71] = *MEMORY[0x1E69E9840];
  v171 = v7;
  v170 = v6;
  v402.receiver = v9;
  v402.super_class = AXSSEventManager;
  val = [(AXSSEventManager *)&v402 init];
  if (val)
  {
    objc_storeStrong(&val->_actionManager, v8);
    objc_storeStrong(&val->_commandMap, v6);
    objc_initWeak(&v401, val);
    v403[0] = @"GoToNextElement";
    v398[0] = MEMORY[0x1E69E9820];
    v398[1] = 3221225472;
    v398[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke;
    v398[3] = &unk_1E8135B98;
    objc_copyWeak(&v400, &v401);
    v10 = v171;
    v399 = v10;
    v169 = [AXSSKeyboardCommandInfo infoWithHandler:v398];
    v404[0] = v169;
    v403[1] = @"GoToPreviousElement";
    v395[0] = MEMORY[0x1E69E9820];
    v395[1] = 3221225472;
    v395[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_2;
    v395[3] = &unk_1E8135B98;
    objc_copyWeak(&v397, &v401);
    v11 = v10;
    v396 = v11;
    v168 = [AXSSKeyboardCommandInfo infoWithHandler:v395];
    v404[1] = v168;
    v403[2] = @"EnterContainer";
    v392[0] = MEMORY[0x1E69E9820];
    v392[1] = 3221225472;
    v392[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_3;
    v392[3] = &unk_1E8135B98;
    objc_copyWeak(&v394, &v401);
    v12 = v11;
    v393 = v12;
    v167 = [AXSSKeyboardCommandInfo infoWithHandler:v392];
    v404[2] = v167;
    v403[3] = @"ExitContainer";
    v389[0] = MEMORY[0x1E69E9820];
    v389[1] = 3221225472;
    v389[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_4;
    v389[3] = &unk_1E8135B98;
    objc_copyWeak(&v391, &v401);
    v13 = v12;
    v390 = v13;
    v166 = [AXSSKeyboardCommandInfo infoWithHandler:v389];
    v404[3] = v166;
    v403[4] = @"GoToNextSection";
    v386[0] = MEMORY[0x1E69E9820];
    v386[1] = 3221225472;
    v386[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_5;
    v386[3] = &unk_1E8135B98;
    objc_copyWeak(&v388, &v401);
    v14 = v13;
    v387 = v14;
    v165 = [AXSSKeyboardCommandInfo infoWithHandler:v386];
    v404[4] = v165;
    v403[5] = @"GoToPreviousSection";
    v383[0] = MEMORY[0x1E69E9820];
    v383[1] = 3221225472;
    v383[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_6;
    v383[3] = &unk_1E8135B98;
    objc_copyWeak(&v385, &v401);
    v15 = v14;
    v384 = v15;
    v16 = [AXSSKeyboardCommandInfo infoWithHandler:v383];
    v404[5] = v16;
    v403[6] = @"PressAndLift";
    v381[0] = MEMORY[0x1E69E9820];
    v381[1] = 3221225472;
    v381[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_7;
    v381[3] = &unk_1E8134870;
    v382 = v15;
    v379[0] = MEMORY[0x1E69E9820];
    v379[1] = 3221225472;
    v379[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_8;
    v379[3] = &unk_1E8134870;
    v17 = v382;
    v380 = v17;
    [AXSSKeyboardCommandInfo infoWithDownHandler:v381 upHandler:v379];
    v164 = v163 = v16;
    v404[6] = v164;
    v403[7] = @"ActivateSiri";
    v376[0] = MEMORY[0x1E69E9820];
    v376[1] = 3221225472;
    v376[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_9;
    v376[3] = &unk_1E8135B98;
    objc_copyWeak(&v378, &v401);
    v18 = v17;
    v377 = v18;
    v162 = [AXSSKeyboardCommandInfo infoWithHandler:v376];
    v404[7] = v162;
    v403[8] = @"MoveLeft";
    v373[0] = MEMORY[0x1E69E9820];
    v373[1] = 3221225472;
    v373[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_10;
    v373[3] = &unk_1E8135B98;
    objc_copyWeak(&v375, &v401);
    v19 = v18;
    v374 = v19;
    v161 = [AXSSKeyboardCommandInfo infoWithHandler:v373];
    v404[8] = v161;
    v403[9] = @"GoToFirstElement";
    v370[0] = MEMORY[0x1E69E9820];
    v370[1] = 3221225472;
    v370[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_11;
    v370[3] = &unk_1E8135B98;
    objc_copyWeak(&v372, &v401);
    v20 = v19;
    v371 = v20;
    v21 = [AXSSKeyboardCommandInfo infoWithHandler:v370];
    v404[9] = v21;
    v403[10] = @"SwipeLeft";
    v368[0] = MEMORY[0x1E69E9820];
    v368[1] = 3221225472;
    v368[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_12;
    v368[3] = &unk_1E8134870;
    v369 = v20;
    v366[0] = MEMORY[0x1E69E9820];
    v366[1] = 3221225472;
    v366[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_13;
    v366[3] = &unk_1E8134870;
    v22 = v369;
    v367 = v22;
    v23 = [AXSSKeyboardCommandInfo infoWithDownHandler:v368 upHandler:v366];
    v404[10] = v23;
    v403[11] = @"TwoFingerSwipeLeft";
    v364[0] = MEMORY[0x1E69E9820];
    v364[1] = 3221225472;
    v364[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_14;
    v364[3] = &unk_1E8134870;
    v365 = v22;
    v362[0] = MEMORY[0x1E69E9820];
    v362[1] = 3221225472;
    v362[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_15;
    v362[3] = &unk_1E8134870;
    v24 = v365;
    v363 = v24;
    v25 = [AXSSKeyboardCommandInfo infoWithDownHandler:v364 upHandler:v362];
    v404[11] = v25;
    v403[12] = @"RotateLeft";
    v360[0] = MEMORY[0x1E69E9820];
    v360[1] = 3221225472;
    v360[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_16;
    v360[3] = &unk_1E8134870;
    v361 = v24;
    v358[0] = MEMORY[0x1E69E9820];
    v358[1] = 3221225472;
    v358[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_17;
    v358[3] = &unk_1E8134870;
    v26 = v361;
    v359 = v26;
    [AXSSKeyboardCommandInfo infoWithDownHandler:v360 upHandler:v358];
    v160 = v159 = v25;
    v157 = v23;
    v155 = v21;
    v404[12] = v160;
    v403[13] = @"MoveRight";
    v355[0] = MEMORY[0x1E69E9820];
    v355[1] = 3221225472;
    v355[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_18;
    v355[3] = &unk_1E8135B98;
    objc_copyWeak(&v357, &v401);
    v27 = v26;
    v356 = v27;
    v158 = [AXSSKeyboardCommandInfo infoWithHandler:v355];
    v404[13] = v158;
    v403[14] = @"GoToLastElement";
    v352[0] = MEMORY[0x1E69E9820];
    v352[1] = 3221225472;
    v352[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_19;
    v352[3] = &unk_1E8135B98;
    objc_copyWeak(&v354, &v401);
    v28 = v27;
    v353 = v28;
    v29 = [AXSSKeyboardCommandInfo infoWithHandler:v352];
    v404[14] = v29;
    v403[15] = @"SwipeRight";
    v350[0] = MEMORY[0x1E69E9820];
    v350[1] = 3221225472;
    v350[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_20;
    v350[3] = &unk_1E8134870;
    v351 = v28;
    v348[0] = MEMORY[0x1E69E9820];
    v348[1] = 3221225472;
    v348[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_21;
    v348[3] = &unk_1E8134870;
    v30 = v351;
    v349 = v30;
    v31 = [AXSSKeyboardCommandInfo infoWithDownHandler:v350 upHandler:v348];
    v404[15] = v31;
    v403[16] = @"TwoFingerSwipeRight";
    v346[0] = MEMORY[0x1E69E9820];
    v346[1] = 3221225472;
    v346[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_22;
    v346[3] = &unk_1E8134870;
    v347 = v30;
    v344[0] = MEMORY[0x1E69E9820];
    v344[1] = 3221225472;
    v344[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_23;
    v344[3] = &unk_1E8134870;
    v32 = v347;
    v345 = v32;
    v33 = [AXSSKeyboardCommandInfo infoWithDownHandler:v346 upHandler:v344];
    v404[16] = v33;
    v403[17] = @"RotateRight";
    v342[0] = MEMORY[0x1E69E9820];
    v342[1] = 3221225472;
    v342[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_24;
    v342[3] = &unk_1E8134870;
    v343 = v32;
    v340[0] = MEMORY[0x1E69E9820];
    v340[1] = 3221225472;
    v340[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_25;
    v340[3] = &unk_1E8134870;
    v34 = v343;
    v341 = v34;
    [AXSSKeyboardCommandInfo infoWithDownHandler:v342 upHandler:v340];
    v154 = v33;
    v152 = v31;
    v156 = v149 = v29;
    v404[17] = v156;
    v403[18] = @"MoveUp";
    v337[0] = MEMORY[0x1E69E9820];
    v337[1] = 3221225472;
    v337[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_26;
    v337[3] = &unk_1E8135B98;
    objc_copyWeak(&v339, &v401);
    v35 = v34;
    v338 = v35;
    v36 = [AXSSKeyboardCommandInfo infoWithHandler:v337];
    v404[18] = v36;
    v403[19] = @"SwipeUp";
    v335[0] = MEMORY[0x1E69E9820];
    v335[1] = 3221225472;
    v335[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_27;
    v335[3] = &unk_1E8134870;
    v336 = v35;
    v333[0] = MEMORY[0x1E69E9820];
    v333[1] = 3221225472;
    v333[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_28;
    v333[3] = &unk_1E8134870;
    v37 = v336;
    v334 = v37;
    v38 = [AXSSKeyboardCommandInfo infoWithDownHandler:v335 upHandler:v333];
    v404[19] = v38;
    v403[20] = @"TwoFingerSwipeUp";
    v331[0] = MEMORY[0x1E69E9820];
    v331[1] = 3221225472;
    v331[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_29;
    v331[3] = &unk_1E8134870;
    v332 = v37;
    v329[0] = MEMORY[0x1E69E9820];
    v329[1] = 3221225472;
    v329[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_30;
    v329[3] = &unk_1E8134870;
    v39 = v332;
    v330 = v39;
    v40 = [AXSSKeyboardCommandInfo infoWithDownHandler:v331 upHandler:v329];
    v404[20] = v40;
    v403[21] = @"PinchOut";
    v327[0] = MEMORY[0x1E69E9820];
    v327[1] = 3221225472;
    v327[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_31;
    v327[3] = &unk_1E8134870;
    v328 = v39;
    v325[0] = MEMORY[0x1E69E9820];
    v325[1] = 3221225472;
    v325[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_32;
    v325[3] = &unk_1E8134870;
    v41 = v328;
    v326 = v41;
    [AXSSKeyboardCommandInfo infoWithDownHandler:v327 upHandler:v325];
    v151 = v40;
    v148 = v38;
    v153 = v146 = v36;
    v404[21] = v153;
    v403[22] = @"MoveDown";
    v322[0] = MEMORY[0x1E69E9820];
    v322[1] = 3221225472;
    v322[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_33;
    v322[3] = &unk_1E8135B98;
    objc_copyWeak(&v324, &v401);
    v42 = v41;
    v323 = v42;
    v150 = [AXSSKeyboardCommandInfo infoWithHandler:v322];
    v404[22] = v150;
    v403[23] = @"MoveInsideNext";
    v319[0] = MEMORY[0x1E69E9820];
    v319[1] = 3221225472;
    v319[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_34;
    v319[3] = &unk_1E8135B98;
    objc_copyWeak(&v321, &v401);
    v43 = v42;
    v320 = v43;
    v147 = [AXSSKeyboardCommandInfo infoWithHandler:v319];
    v404[23] = v147;
    v403[24] = @"MoveInsidePrevious";
    v316[0] = MEMORY[0x1E69E9820];
    v316[1] = 3221225472;
    v316[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_35;
    v316[3] = &unk_1E8135B98;
    objc_copyWeak(&v318, &v401);
    v44 = v43;
    v317 = v44;
    v45 = [AXSSKeyboardCommandInfo infoWithHandler:v316];
    v404[24] = v45;
    v403[25] = @"SwipeDown";
    v314[0] = MEMORY[0x1E69E9820];
    v314[1] = 3221225472;
    v314[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_36;
    v314[3] = &unk_1E8134870;
    v315 = v44;
    v312[0] = MEMORY[0x1E69E9820];
    v312[1] = 3221225472;
    v312[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_37;
    v312[3] = &unk_1E8134870;
    v46 = v315;
    v313 = v46;
    v47 = [AXSSKeyboardCommandInfo infoWithDownHandler:v314 upHandler:v312];
    v404[25] = v47;
    v403[26] = @"TwoFingerSwipeDown";
    v310[0] = MEMORY[0x1E69E9820];
    v310[1] = 3221225472;
    v310[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_38;
    v310[3] = &unk_1E8134870;
    v311 = v46;
    v308[0] = MEMORY[0x1E69E9820];
    v308[1] = 3221225472;
    v308[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_39;
    v308[3] = &unk_1E8134870;
    v48 = v311;
    v309 = v48;
    v49 = [AXSSKeyboardCommandInfo infoWithDownHandler:v310 upHandler:v308];
    v404[26] = v49;
    v403[27] = @"PinchIn";
    v306[0] = MEMORY[0x1E69E9820];
    v306[1] = 3221225472;
    v306[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_40;
    v306[3] = &unk_1E8134870;
    v307 = v48;
    v304[0] = MEMORY[0x1E69E9820];
    v304[1] = 3221225472;
    v304[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_41;
    v304[3] = &unk_1E8134870;
    v50 = v307;
    v305 = v50;
    v51 = [AXSSKeyboardCommandInfo infoWithDownHandler:v306 upHandler:v304];
    v404[27] = v51;
    v403[28] = @"TwoFingerPressAndLift";
    v302[0] = MEMORY[0x1E69E9820];
    v302[1] = 3221225472;
    v302[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_42;
    v302[3] = &unk_1E8134870;
    v303 = v50;
    v300[0] = MEMORY[0x1E69E9820];
    v300[1] = 3221225472;
    v300[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_43;
    v300[3] = &unk_1E8134870;
    v52 = v303;
    v301 = v52;
    [AXSSKeyboardCommandInfo infoWithDownHandler:v302 upHandler:v300];
    v145 = v144 = v51;
    v142 = v49;
    v140 = v47;
    v138 = v45;
    v404[28] = v145;
    v403[29] = @"PerformDefaultAction";
    v297[0] = MEMORY[0x1E69E9820];
    v297[1] = 3221225472;
    v297[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_44;
    v297[3] = &unk_1E8135B98;
    objc_copyWeak(&v299, &v401);
    v53 = v52;
    v298 = v53;
    v143 = [AXSSKeyboardCommandInfo infoWithHandler:v297];
    v404[29] = v143;
    v403[30] = @"GoHome";
    v294[0] = MEMORY[0x1E69E9820];
    v294[1] = 3221225472;
    v294[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_45;
    v294[3] = &unk_1E8135B98;
    objc_copyWeak(&v296, &v401);
    v54 = v53;
    v295 = v54;
    v141 = [AXSSKeyboardCommandInfo infoWithHandler:v294];
    v404[30] = v141;
    v403[31] = @"OpenContextualMenu";
    v291[0] = MEMORY[0x1E69E9820];
    v291[1] = 3221225472;
    v291[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_46;
    v291[3] = &unk_1E8135B98;
    objc_copyWeak(&v293, &v401);
    v55 = v54;
    v292 = v55;
    v139 = [AXSSKeyboardCommandInfo infoWithHandler:v291];
    v404[31] = v139;
    v403[32] = @"ShowAccessibilityActions";
    v288[0] = MEMORY[0x1E69E9820];
    v288[1] = 3221225472;
    v288[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_47;
    v288[3] = &unk_1E8135B98;
    objc_copyWeak(&v290, &v401);
    v56 = v55;
    v289 = v56;
    v137 = [AXSSKeyboardCommandInfo infoWithHandler:v288];
    v404[32] = v137;
    v403[33] = @"ToggleAppSwitcher";
    v285[0] = MEMORY[0x1E69E9820];
    v285[1] = 3221225472;
    v285[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_48;
    v285[3] = &unk_1E8135B98;
    objc_copyWeak(&v287, &v401);
    v57 = v56;
    v286 = v57;
    v136 = [AXSSKeyboardCommandInfo infoWithHandler:v285];
    v404[33] = v136;
    v403[34] = @"ToggleAppLibrary";
    v282[0] = MEMORY[0x1E69E9820];
    v282[1] = 3221225472;
    v282[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_49;
    v282[3] = &unk_1E8135B98;
    objc_copyWeak(&v284, &v401);
    v58 = v57;
    v283 = v58;
    v135 = [AXSSKeyboardCommandInfo infoWithHandler:v282];
    v404[34] = v135;
    v403[35] = @"ToggleQuickNote";
    v279[0] = MEMORY[0x1E69E9820];
    v279[1] = 3221225472;
    v279[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_50;
    v279[3] = &unk_1E8135B98;
    objc_copyWeak(&v281, &v401);
    v59 = v58;
    v280 = v59;
    v134 = [AXSSKeyboardCommandInfo infoWithHandler:v279];
    v404[35] = v134;
    v403[36] = @"ActivateAccessibilityShortcut";
    v276[0] = MEMORY[0x1E69E9820];
    v276[1] = 3221225472;
    v276[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_51;
    v276[3] = &unk_1E8135B98;
    objc_copyWeak(&v278, &v401);
    v60 = v59;
    v277 = v60;
    v133 = [AXSSKeyboardCommandInfo infoWithHandler:v276];
    v404[36] = v133;
    v403[37] = @"ToggleControlCenter";
    v273[0] = MEMORY[0x1E69E9820];
    v273[1] = 3221225472;
    v273[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_52;
    v273[3] = &unk_1E8135B98;
    objc_copyWeak(&v275, &v401);
    v61 = v60;
    v274 = v61;
    v132 = [AXSSKeyboardCommandInfo infoWithHandler:v273];
    v404[37] = v132;
    v403[38] = @"ToggleDock";
    v270[0] = MEMORY[0x1E69E9820];
    v270[1] = 3221225472;
    v270[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_53;
    v270[3] = &unk_1E8135B98;
    objc_copyWeak(&v272, &v401);
    v62 = v61;
    v271 = v62;
    v131 = [AXSSKeyboardCommandInfo infoWithHandler:v270];
    v404[38] = v131;
    v403[39] = @"PerformEscape";
    v267[0] = MEMORY[0x1E69E9820];
    v267[1] = 3221225472;
    v267[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_54;
    v267[3] = &unk_1E8135B98;
    objc_copyWeak(&v269, &v401);
    v63 = v62;
    v268 = v63;
    v130 = [AXSSKeyboardCommandInfo infoWithHandler:v267];
    v404[39] = v130;
    v403[40] = @"PerformSysdiagnose";
    v264[0] = MEMORY[0x1E69E9820];
    v264[1] = 3221225472;
    v264[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_55;
    v264[3] = &unk_1E8135B98;
    objc_copyWeak(&v266, &v401);
    v64 = v63;
    v265 = v64;
    v129 = [AXSSKeyboardCommandInfo infoWithHandler:v264];
    v404[40] = v129;
    v403[41] = @"LockScreen";
    v261[0] = MEMORY[0x1E69E9820];
    v261[1] = 3221225472;
    v261[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_56;
    v261[3] = &unk_1E8135B98;
    objc_copyWeak(&v263, &v401);
    v65 = v64;
    v262 = v65;
    v128 = [AXSSKeyboardCommandInfo infoWithHandler:v261];
    v404[41] = v128;
    v403[42] = @"ToggleNotificationCenter";
    v258[0] = MEMORY[0x1E69E9820];
    v258[1] = 3221225472;
    v258[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_57;
    v258[3] = &unk_1E8135B98;
    objc_copyWeak(&v260, &v401);
    v66 = v65;
    v259 = v66;
    v127 = [AXSSKeyboardCommandInfo infoWithHandler:v258];
    v404[42] = v127;
    v403[43] = @"ArmApplePay";
    v255[0] = MEMORY[0x1E69E9820];
    v255[1] = 3221225472;
    v255[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_58;
    v255[3] = &unk_1E8135B98;
    objc_copyWeak(&v257, &v401);
    v67 = v66;
    v256 = v67;
    v126 = [AXSSKeyboardCommandInfo infoWithHandler:v255];
    v404[43] = v126;
    v403[44] = @"RotateDevice";
    v252[0] = MEMORY[0x1E69E9820];
    v252[1] = 3221225472;
    v252[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_59;
    v252[3] = &unk_1E8135B98;
    objc_copyWeak(&v254, &v401);
    v68 = v67;
    v253 = v68;
    v125 = [AXSSKeyboardCommandInfo infoWithHandler:v252];
    v404[44] = v125;
    v403[45] = @"RebootDevice";
    v249[0] = MEMORY[0x1E69E9820];
    v249[1] = 3221225472;
    v249[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_60;
    v249[3] = &unk_1E8135B98;
    objc_copyWeak(&v251, &v401);
    v69 = v68;
    v250 = v69;
    v124 = [AXSSKeyboardCommandInfo infoWithHandler:v249];
    v404[45] = v124;
    v403[46] = @"ToggleMenuBar";
    v246[0] = MEMORY[0x1E69E9820];
    v246[1] = 3221225472;
    v246[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_61;
    v246[3] = &unk_1E8135B98;
    objc_copyWeak(&v248, &v401);
    v70 = v69;
    v247 = v70;
    v123 = [AXSSKeyboardCommandInfo infoWithHandler:v246];
    v404[46] = v123;
    v403[47] = @"ActivateSOS";
    v243[0] = MEMORY[0x1E69E9820];
    v243[1] = 3221225472;
    v243[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_62;
    v243[3] = &unk_1E8135B98;
    objc_copyWeak(&v245, &v401);
    v71 = v70;
    v244 = v71;
    v122 = [AXSSKeyboardCommandInfo infoWithHandler:v243];
    v404[47] = v122;
    v403[48] = @"ActivateTypeahead";
    v240[0] = MEMORY[0x1E69E9820];
    v240[1] = 3221225472;
    v240[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_63;
    v240[3] = &unk_1E8135B98;
    objc_copyWeak(&v242, &v401);
    v72 = v71;
    v241 = v72;
    v121 = [AXSSKeyboardCommandInfo infoWithHandler:v240];
    v404[48] = v121;
    v403[49] = @"TogglePassthroughMode";
    v237[0] = MEMORY[0x1E69E9820];
    v237[1] = 3221225472;
    v237[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_64;
    v237[3] = &unk_1E8135B98;
    objc_copyWeak(&v239, &v401);
    v73 = v72;
    v238 = v73;
    v120 = [AXSSKeyboardCommandInfo infoWithHandler:v237];
    v404[49] = v120;
    v403[50] = @"Gestures";
    v234[0] = MEMORY[0x1E69E9820];
    v234[1] = 3221225472;
    v234[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_65;
    v234[3] = &unk_1E8135B98;
    objc_copyWeak(&v236, &v401);
    v74 = v73;
    v235 = v74;
    v119 = [AXSSKeyboardCommandInfo infoWithHandler:v234];
    v404[50] = v119;
    v403[51] = @"Help";
    v231[0] = MEMORY[0x1E69E9820];
    v231[1] = 3221225472;
    v231[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_66;
    v231[3] = &unk_1E8135B98;
    objc_copyWeak(&v233, &v401);
    v75 = v74;
    v232 = v75;
    v76 = [AXSSKeyboardCommandInfo infoWithHandler:v231];
    v404[51] = v76;
    v403[52] = @"3DTouch";
    v229[0] = MEMORY[0x1E69E9820];
    v229[1] = 3221225472;
    v229[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_67;
    v229[3] = &unk_1E8134870;
    v230 = v75;
    v227[0] = MEMORY[0x1E69E9820];
    v227[1] = 3221225472;
    v227[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_68;
    v227[3] = &unk_1E8134870;
    v77 = v230;
    v228 = v77;
    [AXSSKeyboardCommandInfo infoWithDownHandler:v229 upHandler:v227];
    v118 = v117 = v76;
    v404[52] = v118;
    v403[53] = @"MovePointerToFocus";
    v224[0] = MEMORY[0x1E69E9820];
    v224[1] = 3221225472;
    v224[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_69;
    v224[3] = &unk_1E8135B98;
    objc_copyWeak(&v226, &v401);
    v78 = v77;
    v225 = v78;
    v116 = [AXSSKeyboardCommandInfo infoWithHandler:v224];
    v404[53] = v116;
    v403[54] = @"WindowList";
    v221[0] = MEMORY[0x1E69E9820];
    v221[1] = 3221225472;
    v221[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_70;
    v221[3] = &unk_1E8135B98;
    objc_copyWeak(&v223, &v401);
    v79 = v78;
    v222 = v79;
    v115 = [AXSSKeyboardCommandInfo infoWithHandler:v221];
    v404[54] = v115;
    v403[55] = @"ApplicationList";
    v218[0] = MEMORY[0x1E69E9820];
    v218[1] = 3221225472;
    v218[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_71;
    v218[3] = &unk_1E8135B98;
    objc_copyWeak(&v220, &v401);
    v80 = v79;
    v219 = v80;
    v114 = [AXSSKeyboardCommandInfo infoWithHandler:v218];
    v404[55] = v114;
    v403[56] = @"NextButton";
    v215[0] = MEMORY[0x1E69E9820];
    v215[1] = 3221225472;
    v215[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_72;
    v215[3] = &unk_1E8135B98;
    objc_copyWeak(&v217, &v401);
    v81 = v80;
    v216 = v81;
    v113 = [AXSSKeyboardCommandInfo infoWithHandler:v215];
    v404[56] = v113;
    v403[57] = @"PreviousButton";
    v212[0] = MEMORY[0x1E69E9820];
    v212[1] = 3221225472;
    v212[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_73;
    v212[3] = &unk_1E8135B98;
    objc_copyWeak(&v214, &v401);
    v82 = v81;
    v213 = v82;
    v112 = [AXSSKeyboardCommandInfo infoWithHandler:v212];
    v404[57] = v112;
    v403[58] = @"NextCheckbox";
    v209[0] = MEMORY[0x1E69E9820];
    v209[1] = 3221225472;
    v209[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_74;
    v209[3] = &unk_1E8135B98;
    objc_copyWeak(&v211, &v401);
    v83 = v82;
    v210 = v83;
    v111 = [AXSSKeyboardCommandInfo infoWithHandler:v209];
    v404[58] = v111;
    v403[59] = @"PreviousCheckbox";
    v206[0] = MEMORY[0x1E69E9820];
    v206[1] = 3221225472;
    v206[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_75;
    v206[3] = &unk_1E8135B98;
    objc_copyWeak(&v208, &v401);
    v84 = v83;
    v207 = v84;
    v110 = [AXSSKeyboardCommandInfo infoWithHandler:v206];
    v404[59] = v110;
    v403[60] = @"NextTable";
    v203[0] = MEMORY[0x1E69E9820];
    v203[1] = 3221225472;
    v203[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_76;
    v203[3] = &unk_1E8135B98;
    objc_copyWeak(&v205, &v401);
    v85 = v84;
    v204 = v85;
    v109 = [AXSSKeyboardCommandInfo infoWithHandler:v203];
    v404[60] = v109;
    v403[61] = @"PreviousTable";
    v200[0] = MEMORY[0x1E69E9820];
    v200[1] = 3221225472;
    v200[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_77;
    v200[3] = &unk_1E8135B98;
    objc_copyWeak(&v202, &v401);
    v86 = v85;
    v201 = v86;
    v108 = [AXSSKeyboardCommandInfo infoWithHandler:v200];
    v404[61] = v108;
    v403[62] = @"NextImage";
    v197[0] = MEMORY[0x1E69E9820];
    v197[1] = 3221225472;
    v197[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_78;
    v197[3] = &unk_1E8135B98;
    objc_copyWeak(&v199, &v401);
    v87 = v86;
    v198 = v87;
    v107 = [AXSSKeyboardCommandInfo infoWithHandler:v197];
    v404[62] = v107;
    v403[63] = @"PreviousImage";
    v194[0] = MEMORY[0x1E69E9820];
    v194[1] = 3221225472;
    v194[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_79;
    v194[3] = &unk_1E8135B98;
    objc_copyWeak(&v196, &v401);
    v88 = v87;
    v195 = v88;
    v106 = [AXSSKeyboardCommandInfo infoWithHandler:v194];
    v404[63] = v106;
    v403[64] = @"NextLink";
    v191[0] = MEMORY[0x1E69E9820];
    v191[1] = 3221225472;
    v191[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_80;
    v191[3] = &unk_1E8135B98;
    objc_copyWeak(&v193, &v401);
    v89 = v88;
    v192 = v89;
    v90 = [AXSSKeyboardCommandInfo infoWithHandler:v191];
    v404[64] = v90;
    v403[65] = @"PreviousLink";
    v188[0] = MEMORY[0x1E69E9820];
    v188[1] = 3221225472;
    v188[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_81;
    v188[3] = &unk_1E8135B98;
    objc_copyWeak(&v190, &v401);
    v91 = v89;
    v189 = v91;
    v92 = [AXSSKeyboardCommandInfo infoWithHandler:v188];
    v404[65] = v92;
    v403[66] = @"NextHeading";
    v185[0] = MEMORY[0x1E69E9820];
    v185[1] = 3221225472;
    v185[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_82;
    v185[3] = &unk_1E8135B98;
    objc_copyWeak(&v187, &v401);
    v93 = v91;
    v186 = v93;
    v94 = [AXSSKeyboardCommandInfo infoWithHandler:v185];
    v404[66] = v94;
    v403[67] = @"PreviousHeading";
    v182[0] = MEMORY[0x1E69E9820];
    v182[1] = 3221225472;
    v182[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_83;
    v182[3] = &unk_1E8135B98;
    objc_copyWeak(&v184, &v401);
    v95 = v93;
    v183 = v95;
    v96 = [AXSSKeyboardCommandInfo infoWithHandler:v182];
    v404[67] = v96;
    v403[68] = @"NextTextField";
    v179[0] = MEMORY[0x1E69E9820];
    v179[1] = 3221225472;
    v179[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_84;
    v179[3] = &unk_1E8135B98;
    objc_copyWeak(&v181, &v401);
    v97 = v95;
    v180 = v97;
    v98 = [AXSSKeyboardCommandInfo infoWithHandler:v179];
    v404[68] = v98;
    v403[69] = @"PreviousTextField";
    v176[0] = MEMORY[0x1E69E9820];
    v176[1] = 3221225472;
    v176[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_85;
    v176[3] = &unk_1E8135B98;
    objc_copyWeak(&v178, &v401);
    v99 = v97;
    v177 = v99;
    v100 = [AXSSKeyboardCommandInfo infoWithHandler:v176];
    v404[69] = v100;
    v403[70] = @"Escape";
    v173[0] = MEMORY[0x1E69E9820];
    v173[1] = 3221225472;
    v173[2] = __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_86;
    v173[3] = &unk_1E8135B98;
    objc_copyWeak(&v175, &v401);
    v174 = v99;
    v101 = [AXSSKeyboardCommandInfo infoWithHandler:v173];
    v404[70] = v101;
    v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v404 forKeys:v403 count:71];
    commandInfos = val->__commandInfos;
    val->__commandInfos = v102;

    _AXSKeyRepeatDelay();
    val->_minimumDelayUntilRepeat = v104;

    objc_destroyWeak(&v175);
    objc_destroyWeak(&v178);

    objc_destroyWeak(&v181);
    objc_destroyWeak(&v184);

    objc_destroyWeak(&v187);
    objc_destroyWeak(&v190);

    objc_destroyWeak(&v193);
    objc_destroyWeak(&v196);

    objc_destroyWeak(&v199);
    objc_destroyWeak(&v202);

    objc_destroyWeak(&v205);
    objc_destroyWeak(&v208);

    objc_destroyWeak(&v211);
    objc_destroyWeak(&v214);

    objc_destroyWeak(&v217);
    objc_destroyWeak(&v220);

    objc_destroyWeak(&v223);
    objc_destroyWeak(&v226);

    objc_destroyWeak(&v233);
    objc_destroyWeak(&v236);

    objc_destroyWeak(&v239);
    objc_destroyWeak(&v242);

    objc_destroyWeak(&v245);
    objc_destroyWeak(&v248);

    objc_destroyWeak(&v251);
    objc_destroyWeak(&v254);

    objc_destroyWeak(&v257);
    objc_destroyWeak(&v260);

    objc_destroyWeak(&v263);
    objc_destroyWeak(&v266);

    objc_destroyWeak(&v269);
    objc_destroyWeak(&v272);

    objc_destroyWeak(&v275);
    objc_destroyWeak(&v278);

    objc_destroyWeak(&v281);
    objc_destroyWeak(&v284);

    objc_destroyWeak(&v287);
    objc_destroyWeak(&v290);

    objc_destroyWeak(&v293);
    objc_destroyWeak(&v296);

    objc_destroyWeak(&v299);
    objc_destroyWeak(&v318);

    objc_destroyWeak(&v321);
    objc_destroyWeak(&v324);

    objc_destroyWeak(&v339);
    objc_destroyWeak(&v354);

    objc_destroyWeak(&v357);
    objc_destroyWeak(&v372);

    objc_destroyWeak(&v375);
    objc_destroyWeak(&v378);

    objc_destroyWeak(&v385);
    objc_destroyWeak(&v388);

    objc_destroyWeak(&v391);
    objc_destroyWeak(&v394);

    objc_destroyWeak(&v397);
    objc_destroyWeak(&v400);
    objc_destroyWeak(&v401);
  }

  return val;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"GoToNextElement"];
  [*(a1 + 32) goToNextElementOfType:{objc_msgSend(WeakRetained, "searchType")}];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"GoToNextElement"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"GoToPreviousElement"];
  [*(a1 + 32) goToPreviousElementOfType:{objc_msgSend(WeakRetained, "searchType")}];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"GoToPreviousElement"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"EnterContainer"];
  [*(a1 + 32) enterContainer];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"EnterContainer"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ExitContainer"];
  [*(a1 + 32) exitContainer];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ExitContainer"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"GoToNextSection"];
  [*(a1 + 32) goToNextSection];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"GoToNextSection"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"GoToPreviousSection"];
  [*(a1 + 32) goToPreviousSection];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"GoToPreviousSection"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PressAndLift"];
  v2 = *(a1 + 32);

  return [v2 press];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) lift];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"PressAndLift"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ActivateSiri"];
  [*(a1 + 32) activateSiri];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ActivateSiri"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"MoveLeft"];
  [*(a1 + 32) moveLeft];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"MoveLeft"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"GoToFirstElement"];
  [*(a1 + 32) goToFirstElement];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"GoToFirstElement"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_12(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"SwipeLeft"];
  v2 = *(a1 + 32);

  return [v2 beginSwipeLeft];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_13(uint64_t a1)
{
  [*(a1 + 32) endSwipe];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"SwipeLeft"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_14(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"TwoFingerSwipeLeft"];
  v2 = *(a1 + 32);

  return [v2 beginTwoFingerSwipeLeft];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_15(uint64_t a1)
{
  [*(a1 + 32) endSwipe];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"TwoFingerSwipeLeft"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_16(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"RotateLeft"];
  v2 = *(a1 + 32);

  return [v2 beginRotateLeft];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_17(uint64_t a1)
{
  [*(a1 + 32) endRotate];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"RotateLeft"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"MoveRight"];
  [*(a1 + 32) moveRight];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"MoveRight"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_19(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"GoToLastElement"];
  [*(a1 + 32) goToLastElement];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"GoToLastElement"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_20(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"SwipeRight"];
  v2 = *(a1 + 32);

  return [v2 beginSwipeRight];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_21(uint64_t a1)
{
  [*(a1 + 32) endSwipe];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"SwipeRight"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_22(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"TwoFingerSwipeRight"];
  v2 = *(a1 + 32);

  return [v2 beginTwoFingerSwipeRight];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_23(uint64_t a1)
{
  [*(a1 + 32) endSwipe];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"TwoFingerSwipeRight"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_24(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"RotateRight"];
  v2 = *(a1 + 32);

  return [v2 beginRotateRight];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_25(uint64_t a1)
{
  [*(a1 + 32) endRotate];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"RotateRight"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"MoveUp"];
  [*(a1 + 32) moveUp];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"MoveUp"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_27(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"SwipeUp"];
  v2 = *(a1 + 32);

  return [v2 beginSwipeUp];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_28(uint64_t a1)
{
  [*(a1 + 32) endSwipe];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"SwipeUp"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_29(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"TwoFingerSwipeUp"];
  v2 = *(a1 + 32);

  return [v2 beginTwoFingerSwipeUp];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_30(uint64_t a1)
{
  [*(a1 + 32) endSwipe];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"TwoFingerSwipeUp"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_31(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PinchOut"];
  v2 = *(a1 + 32);

  return [v2 beginPinchOut];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_32(uint64_t a1)
{
  [*(a1 + 32) endPinch];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"PinchOut"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_33(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"MoveDown"];
  [*(a1 + 32) moveDown];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"MoveDown"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"MoveInsideNext"];
  [*(a1 + 32) moveInsideNext];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"MoveInsideNext"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_35(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"MoveInsidePrevious"];
  [*(a1 + 32) moveInsidePrevious];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"MoveInsidePrevious"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_36(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"SwipeDown"];
  v2 = *(a1 + 32);

  return [v2 beginSwipeDown];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_37(uint64_t a1)
{
  [*(a1 + 32) endSwipe];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"SwipeDown"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_38(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"TwoFingerSwipeDown"];
  v2 = *(a1 + 32);

  return [v2 beginTwoFingerSwipeDown];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_39(uint64_t a1)
{
  [*(a1 + 32) endSwipe];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"TwoFingerSwipeDown"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_40(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PinchIn"];
  v2 = *(a1 + 32);

  return [v2 beginPinchIn];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_41(uint64_t a1)
{
  [*(a1 + 32) endPinch];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"PinchIn"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_42(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"TwoFingerPressAndLift"];
  v2 = *(a1 + 32);

  return [v2 twoFingerPress];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_43(uint64_t a1)
{
  [*(a1 + 32) twoFingerLift];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"TwoFingerPressAndLift"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PerformDefaultAction"];
  [*(a1 + 32) performDefaultAction];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PerformDefaultAction"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_45(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"GoHome"];
  [*(a1 + 32) goHome];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"GoHome"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_46(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"OpenContextualMenu"];
  [*(a1 + 32) openContextualMenu];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"OpenContextualMenu"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_47(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ShowAccessibilityActions"];
  [*(a1 + 32) showAccessibilityActions];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ShowAccessibilityActions"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ToggleAppSwitcher"];
  [*(a1 + 32) toggleAppSwitcher];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ToggleAppSwitcher"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_49(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ToggleAppLibrary"];
  [*(a1 + 32) toggleAppLibrary];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ToggleAppLibrary"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ToggleQuickNote"];
  [*(a1 + 32) toggleQuickNote];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ToggleQuickNote"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_51(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ActivateAccessibilityShortcut"];
  [*(a1 + 32) activateAccessibilityShortcut];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ActivateAccessibilityShortcut"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_52(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ToggleControlCenter"];
  [*(a1 + 32) toggleControlCenter];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ToggleControlCenter"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_53(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ToggleDock"];
  [*(a1 + 32) toggleDock];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ToggleDock"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PerformEscape"];
  [*(a1 + 32) performEscape];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PerformEscape"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_55(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PerformSysdiagnose"];
  [*(a1 + 32) performSysdiagnose];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PerformSysdiagnose"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_56(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"LockScreen"];
  [*(a1 + 32) lockScreen];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"LockScreen"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_57(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ToggleNotificationCenter"];
  [*(a1 + 32) toggleNotificationCenter];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ToggleNotificationCenter"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ArmApplePay"];
  [*(a1 + 32) armApplePay];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ArmApplePay"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_59(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"RotateDevice"];
  [*(a1 + 32) rotateDevice];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"RotateDevice"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"RebootDevice"];
  [*(a1 + 32) rebootDevice];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"RebootDevice"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_61(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ToggleMenuBar"];
  [*(a1 + 32) toggleMenuBar];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ToggleMenuBar"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_62(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ActivateSOS"];
  [*(a1 + 32) activateSOS];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ActivateSOS"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_63(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ActivateTypeahead"];
  [*(a1 + 32) activateTypeahead];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ActivateTypeahead"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"TogglePassthroughMode"];
  [*(a1 + 32) togglePassthroughMode];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"TogglePassthroughMode"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_65(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"Gestures"];
  [*(a1 + 32) toggleGesturesMode];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"Gestures"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_66(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"Help"];
  [*(a1 + 32) toggleHelp];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"Help"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_67(uint64_t a1)
{
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"3DTouch"];
  v2 = *(a1 + 32);

  return [v2 begin3DTouch];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_68(uint64_t a1)
{
  [*(a1 + 32) end3DTouch];
  v2 = *(a1 + 32);

  return [v2 didPerformStandardCommandWithIdentifier:@"3DTouch"];
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_69(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"MovePointerToFocus"];
  [*(a1 + 32) movePointerToFocus];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"MovePointerToFocus"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"WindowList"];
  [*(a1 + 32) toggleWindowList];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"WindowList"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_71(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"ApplicationList"];
  [*(a1 + 32) toggleApplicationList];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"ApplicationList"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_72(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"NextButton"];
  [*(a1 + 32) nextButton];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"NextButton"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_73(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PreviousButton"];
  [*(a1 + 32) previousButton];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PreviousButton"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"NextCheckbox"];
  [*(a1 + 32) nextCheckbox];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"NextCheckbox"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_75(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PreviousCheckbox"];
  [*(a1 + 32) previousCheckbox];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PreviousCheckbox"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_76(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"NextTable"];
  [*(a1 + 32) nextTable];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"NextTable"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_77(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PreviousTable"];
  [*(a1 + 32) previousTable];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PreviousTable"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"NextImage"];
  [*(a1 + 32) nextImage];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"NextImage"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_79(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PreviousImage"];
  [*(a1 + 32) previousImage];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PreviousImage"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"NextLink"];
  [*(a1 + 32) nextLink];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"NextLink"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_81(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PreviousLink"];
  [*(a1 + 32) previousLink];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PreviousLink"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_82(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"NextHeading"];
  [*(a1 + 32) nextHeading];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"NextHeading"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_83(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PreviousHeading"];
  [*(a1 + 32) previousHeading];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PreviousHeading"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"NextTextField"];
  [*(a1 + 32) nextTextField];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"NextTextField"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_85(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"PreviousTextField"];
  [*(a1 + 32) previousTextField];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"PreviousTextField"];

  return 1;
}

uint64_t __53__AXSSEventManager_initWithActionManager_commandMap___block_invoke_86(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) willPerformStandardCommandWithIdentifier:@"Escape"];
  v3 = [*(a1 + 32) handleEscapeKey];
  [*(a1 + 32) didPerformStandardCommandWithIdentifier:@"Escape"];

  return v3;
}

- (BOOL)processKeyboardEvent:(id)event
{
  eventCopy = event;
  v5 = [(AXSSEventManager *)self shouldCaptureEvent:eventCopy];
  if (v5)
  {
    [(AXSSEventManager *)self handleFKAEvent:eventCopy];
  }

  return v5;
}

- (BOOL)_performDownActionForCommand:(id)command info:(id)info
{
  commandCopy = command;
  infoCopy = info;
  if ([(AXSSEventManager *)self shouldSuppressCommands])
  {
    actionManager = [(AXSSEventManager *)self actionManager];
    [actionManager didSuppressCommand:commandCopy];

    v9 = 0;
  }

  else if ([infoCopy handlesBothDownAndUp])
  {
    downHandler = [infoCopy downHandler];
    downHandler[2]();

    [(AXSSEventManager *)self set_lastDownAndUpCommandInfo:infoCopy];
    v9 = 1;
  }

  else
  {
    handler = [infoCopy handler];
    v9 = handler[2]();
  }

  return v9;
}

- (BOOL)_handleEvent:(id)event forCaptureOnly:(BOOL)only
{
  onlyCopy = only;
  eventCopy = event;
  if (!onlyCopy)
  {
    _lastDownAndUpCommandInfo = [(AXSSEventManager *)self _lastDownAndUpCommandInfo];
    if (_lastDownAndUpCommandInfo)
    {
      v8 = _lastDownAndUpCommandInfo;
      isDownEvent = [eventCopy isDownEvent];

      if ((isDownEvent & 1) == 0)
      {
        _lastDownAndUpCommandInfo2 = [(AXSSEventManager *)self _lastDownAndUpCommandInfo];
        upHandler = [_lastDownAndUpCommandInfo2 upHandler];
        upHandler[2]();

        [(AXSSEventManager *)self set_lastDownAndUpCommandInfo:0];
      }
    }
  }

  keyCode = [eventCopy keyCode];
  modifierMask = [eventCopy modifierMask];
  if (keyCode != 43 || (v14 = modifierMask, [(AXSSEventManager *)self isPassthroughModeEnabled]))
  {
    if ([(AXSSEventManager *)self _tabKeyPressed])
    {
      if (!onlyCopy && [eventCopy isDownEvent])
      {
        [(AXSSEventManager *)self _handleTabComboEvent:eventCopy];
      }

      goto LABEL_19;
    }

    keyChord = [eventCopy keyChord];
    if (keyChord)
    {
      commandMap = [(AXSSEventManager *)self commandMap];
      v17 = [commandMap commandForKeyChord:keyChord];

      if (v17)
      {
        if (onlyCopy)
        {
          goto LABEL_14;
        }
      }

      else
      {
        commandMap2 = [(AXSSEventManager *)self commandMap];
        backupKeyChord = [eventCopy backupKeyChord];
        v17 = [commandMap2 commandForKeyChord:backupKeyChord];

        if (onlyCopy)
        {
LABEL_14:
          if ([(AXSSEventManager *)self isPassthroughModeEnabled])
          {
            standardCommandIdentifier = [v17 standardCommandIdentifier];
            v19 = [standardCommandIdentifier isEqualToString:@"TogglePassthroughMode"];
          }

          else
          {
            v19 = v17 != 0;
          }

LABEL_27:

          goto LABEL_28;
        }
      }

      if ([eventCopy isDownEvent])
      {
        [(AXSSEventManager *)self _handleCommand:v17 event:eventCopy];
      }

      v19 = 0;
      goto LABEL_27;
    }

    v19 = 0;
LABEL_28:

    goto LABEL_29;
  }

  if (!onlyCopy)
  {
    [(AXSSEventManager *)self _handleTabEvent:eventCopy];
    v19 = 0;
    goto LABEL_29;
  }

  if (v14)
  {
    commandMap3 = [(AXSSEventManager *)self commandMap];
    keyChord2 = [eventCopy keyChord];
    keyChord = [commandMap3 commandForKeyChord:keyChord2];

    v19 = keyChord != 0;
    goto LABEL_28;
  }

LABEL_19:
  v19 = 1;
LABEL_29:

  return v19;
}

- (void)_handleTabRepeatOrUpWithCommand:(id)command
{
  commandCopy = command;
  if (commandCopy)
  {
    v11 = commandCopy;
    if ([(AXSSEventManager *)self shouldSuppressCommands])
    {
      actionManager = [(AXSSEventManager *)self actionManager];
      [actionManager didSuppressCommand:v11];
    }

    else
    {
      type = [v11 type];
      v7 = [type isEqualToString:@"Standard"];

      if (v7)
      {
        _commandInfos = [(AXSSEventManager *)self _commandInfos];
        standardCommandIdentifier = [v11 standardCommandIdentifier];
        actionManager = [_commandInfos objectForKeyedSubscript:standardCommandIdentifier];

        if (actionManager && ([actionManager handlesBothDownAndUp] & 1) == 0)
        {
          handler = [actionManager handler];
          handler[2]();
        }
      }

      else
      {
        actionManager = [(AXSSEventManager *)self actionManager];
        [actionManager handleCommand:v11];
      }
    }

    commandCopy = v11;
  }
}

- (void)_handleTabEvent:(id)event
{
  eventCopy = event;
  keyChord = [eventCopy keyChord];
  commandMap = [(AXSSEventManager *)self commandMap];
  v6 = [commandMap commandForKeyChord:keyChord];

  isDownEvent = [eventCopy isDownEvent];
  isRepeatEvent = [eventCopy isRepeatEvent];
  v9 = isRepeatEvent;
  if (isDownEvent && (isRepeatEvent & 1) == 0)
  {
    [(AXSSEventManager *)self set_lastTabPressTime:CFAbsoluteTimeGetCurrent()];
    [(AXSSEventManager *)self set_tabKeyPressed:1];
  }

  if ([eventCopy modifierMask])
  {
    if (isDownEvent)
    {
      if (![(AXSSEventManager *)self _handleCommand:v6 event:eventCopy])
      {
        goto LABEL_19;
      }

      v10 = 1;
      goto LABEL_18;
    }

LABEL_17:
    [(AXSSEventManager *)self set_tabKeyPressed:0];
    v10 = 0;
LABEL_18:
    [(AXSSEventManager *)self set_performedActionWhileTabComboPressed:v10];
    goto LABEL_19;
  }

  if ([(AXSSEventManager *)self _performedActionWhileTabComboPressed]|| !v6)
  {
LABEL_16:
    if (isDownEvent)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v9)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(AXSSEventManager *)self _lastTabPressTime];
    v13 = Current - v12;
    [(AXSSEventManager *)self minimumDelayUntilRepeat];
    if (v13 <= v14)
    {
      goto LABEL_16;
    }
  }

  else if (isDownEvent)
  {
    goto LABEL_19;
  }

  filterDelegate = [(AXSSEventManager *)self filterDelegate];
  v16 = [filterDelegate eventManager:self shouldRepostEvent:eventCopy];

  if (v16)
  {
    filterDelegate2 = [(AXSSEventManager *)self filterDelegate];
    [filterDelegate2 eventManager:self repostEvent:eventCopy];

    goto LABEL_16;
  }

  [(AXSSEventManager *)self _handleTabRepeatOrUpWithCommand:v6];
  if ((isDownEvent & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
}

- (id)_tabbedKeyChordForKeyChord:(id)chord
{
  if (chord)
  {
    v3 = MEMORY[0x1E695DF70];
    keys = [chord keys];
    v5 = [v3 arrayWithArray:keys];

    [v5 addObject:@"⇥"];
    v6 = [AXSSKeyChord keyChordWithKeys:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_handleTabComboEvent:(id)event
{
  eventCopy = event;
  keyChord = [eventCopy keyChord];
  if (!keyChord || (-[AXSSEventManager _tabbedKeyChordForKeyChord:](self, "_tabbedKeyChordForKeyChord:", keyChord), v5 = objc_claimAutoreleasedReturnValue(), -[AXSSEventManager commandMap](self, "commandMap"), v6 = objc_claimAutoreleasedReturnValue(), [v6 commandForKeyChord:v5], v7 = objc_claimAutoreleasedReturnValue(), v6, v5, !v7))
  {
    backupKeyChord = [eventCopy backupKeyChord];
    if (!backupKeyChord)
    {
      v7 = 0;
      goto LABEL_8;
    }

    v9 = backupKeyChord;
    v10 = [(AXSSEventManager *)self _tabbedKeyChordForKeyChord:backupKeyChord];
    commandMap = [(AXSSEventManager *)self commandMap];
    v7 = [commandMap commandForKeyChord:v10];

    if (!v7)
    {
      goto LABEL_8;
    }
  }

  if ([(AXSSEventManager *)self _handleCommand:v7 event:0])
  {
    [(AXSSEventManager *)self set_performedActionWhileTabComboPressed:1];
  }

LABEL_8:
}

- (BOOL)_handleCommand:(id)command event:(id)event
{
  commandCopy = command;
  eventCopy = event;
  if (!commandCopy)
  {
    goto LABEL_6;
  }

  type = [commandCopy type];
  v9 = [type isEqualToString:@"Standard"];

  if (v9)
  {
    if (eventCopy)
    {
      filterDelegate = [(AXSSEventManager *)self filterDelegate];
      v11 = [filterDelegate eventManager:self shouldRepostEvent:eventCopy];

      if (v11)
      {
        filterDelegate2 = [(AXSSEventManager *)self filterDelegate];
        [filterDelegate2 eventManager:self repostEvent:eventCopy];

LABEL_6:
        v13 = 0;
        goto LABEL_21;
      }
    }

    _commandInfos = [(AXSSEventManager *)self _commandInfos];
    standardCommandIdentifier = [commandCopy standardCommandIdentifier];
    v19 = [_commandInfos objectForKeyedSubscript:standardCommandIdentifier];

    if (v19)
    {
      if ([(AXSSEventManager *)self _performDownActionForCommand:commandCopy info:v19])
      {
        v13 = 1;
LABEL_20:

        goto LABEL_21;
      }

      standardCommandIdentifier2 = [commandCopy standardCommandIdentifier];
      v22 = [standardCommandIdentifier2 isEqualToString:@"Escape"];

      if (v22)
      {
        filterDelegate3 = [(AXSSEventManager *)self filterDelegate];
        [filterDelegate3 eventManager:self repostEvent:eventCopy];
      }
    }

    else
    {
      v20 = FKALogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [AXSSEventManager _handleCommand:commandCopy event:v20];
      }
    }

    v13 = 0;
    goto LABEL_20;
  }

  shouldSuppressCommands = [(AXSSEventManager *)self shouldSuppressCommands];
  actionManager = [(AXSSEventManager *)self actionManager];
  v16 = actionManager;
  if (shouldSuppressCommands)
  {
    [actionManager didSuppressCommand:commandCopy];
  }

  else
  {
    [actionManager handleCommand:commandCopy];
  }

  v13 = 1;
LABEL_21:

  return v13;
}

- (AXSSKeyFilterDelegate)filterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_filterDelegate);

  return WeakRetained;
}

- (void)_handleCommand:(uint64_t)a1 event:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_ERROR, "Found standard command with no info: %@", &v2, 0xCu);
}

@end