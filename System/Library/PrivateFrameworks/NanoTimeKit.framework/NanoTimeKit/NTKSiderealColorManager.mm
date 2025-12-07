@interface NTKSiderealColorManager
+ (id)sharedInstance;
- (id)_createElementsFromDict:(id)dict;
- (id)_init;
- (id)astronomicalTwilightColorCurve;
- (id)astronomicalTwilightCurveP3;
- (id)civilTwilightColorCurve;
- (id)civilTwilightCurveP3;
- (id)dayDiskBloomColorCurve;
- (id)dayGradientColorCurves;
- (id)dayGradientCurveP3;
- (id)dialBackgroundColorCurve;
- (id)dialBackgroundCurveP3;
- (id)innerComplicationColorCurve;
- (id)nauticalTwilightColorCurve;
- (id)nauticalTwilightCurveP3;
- (id)outerComplicationColorCurve;
- (void)_notifyHandlers;
- (void)addColorUpdateHandler:(id)handler;
- (void)dealloc;
@end

@implementation NTKSiderealColorManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[NTKSiderealColorManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_1;

  return v3;
}

void __41__NTKSiderealColorManager_sharedInstance__block_invoke()
{
  v0 = [[NTKSiderealColorManager alloc] _init];
  v1 = sharedInstance___sharedInstance_1;
  sharedInstance___sharedInstance_1 = v0;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = NTKSiderealColorManager;
  v2 = [(NTKSiderealColorManager *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    updateHandlers = v2->_updateHandlers;
    v2->_updateHandlers = array;
  }

  return v2;
}

- (void)dealloc
{
  updateHandlers = self->_updateHandlers;
  self->_updateHandlers = 0;

  v4.receiver = self;
  v4.super_class = NTKSiderealColorManager;
  [(NTKSiderealColorManager *)&v4 dealloc];
}

- (void)addColorUpdateHandler:(id)handler
{
  updateHandlers = self->_updateHandlers;
  v4 = _Block_copy(handler);
  [(NSMutableArray *)updateHandlers addObject:v4];
}

- (void)_notifyHandlers
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_updateHandlers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v6) + 16))(*(*(&v7 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_createElementsFromDict:(id)dict
{
  dictCopy = dict;
  v4 = objc_opt_new();
  allKeys = [dictCopy allKeys];
  v6 = [allKeys sortedArrayUsingComparator:&__block_literal_global_6];

  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [dictCopy objectForKeyedSubscript:v7];
    [v7 floatValue];
    v10.n128_f64[0] = v9;
    NTKSunriseAltitudeToSolarDayPercentage(v10);
    v12 = v11;
    [v8 objectAtIndexedSubscript:0];
    [objc_claimAutoreleasedReturnValue() floatValue];
    v14 = v13;
    [v8 objectAtIndexedSubscript:1];
    [objc_claimAutoreleasedReturnValue() floatValue];
    v16 = v15;
    [v8 objectAtIndexedSubscript:2];
    [objc_claimAutoreleasedReturnValue() floatValue];
    NTKCubicColorCurveElementCreate(v12, v14, v16, v17);
  }

  v18 = [v6 count] - 2;
  if (v18 >= 0)
  {
    v19 = [v6 objectAtIndexedSubscript:v18];
    v20 = [dictCopy objectForKeyedSubscript:v19];
    [v19 floatValue];
    v22.n128_f64[0] = v21;
    NTKSunsetAltitudeToSolarDayPercentage(v22);
    v24 = v23;
    [v20 objectAtIndexedSubscript:0];
    [objc_claimAutoreleasedReturnValue() floatValue];
    v26 = v25;
    [v20 objectAtIndexedSubscript:1];
    [objc_claimAutoreleasedReturnValue() floatValue];
    v28 = v27;
    [v20 objectAtIndexedSubscript:2];
    [objc_claimAutoreleasedReturnValue() floatValue];
    NTKCubicColorCurveElementCreate(v24, v26, v28, v29);
  }

  return v4;
}

- (id)civilTwilightCurveP3
{
  v11[13] = *MEMORY[0x277D85DE8];
  civilTwilightCurve_p3 = self->_civilTwilightCurve_p3;
  if (civilTwilightCurve_p3)
  {
    v3 = civilTwilightCurve_p3;
  }

  else
  {
    v10[0] = &unk_2841821D0;
    v10[1] = &unk_2841821E8;
    v11[0] = &unk_28418A210;
    v11[1] = &unk_28418A228;
    v10[2] = &unk_284182200;
    v10[3] = &unk_284182218;
    v11[2] = &unk_28418A240;
    v11[3] = &unk_28418A258;
    v10[4] = &unk_284182230;
    v10[5] = &unk_284182248;
    v11[4] = &unk_28418A270;
    v11[5] = &unk_28418A288;
    v10[6] = &unk_284182260;
    v10[7] = &unk_284182278;
    v11[6] = &unk_28418A2A0;
    v11[7] = &unk_28418A2B8;
    v10[8] = &unk_284182290;
    v10[9] = &unk_2841822A8;
    v11[8] = &unk_28418A2D0;
    v11[9] = &unk_28418A2E8;
    v10[10] = &unk_2841822C0;
    v10[11] = &unk_2841822D8;
    v11[10] = &unk_28418A300;
    v11[11] = &unk_28418A318;
    v10[12] = &unk_2841822F0;
    v11[12] = &unk_28418A330;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:13];
    v6 = [(NTKSiderealColorManager *)self _createElementsFromDict:v5];

    v7 = [(NTKCubicColorCurve *)[NTKAltitudeColorCurve alloc] initWithCubicColorCurveElements:v6];
    v8 = self->_civilTwilightCurve_p3;
    self->_civilTwilightCurve_p3 = v7;

    v3 = self->_civilTwilightCurve_p3;
  }

  return v3;
}

- (id)nauticalTwilightCurveP3
{
  v11[13] = *MEMORY[0x277D85DE8];
  nauticalTwilightCurve_p3 = self->_nauticalTwilightCurve_p3;
  if (nauticalTwilightCurve_p3)
  {
    v3 = nauticalTwilightCurve_p3;
  }

  else
  {
    v10[0] = &unk_2841821D0;
    v10[1] = &unk_2841821E8;
    v11[0] = &unk_28418A348;
    v11[1] = &unk_28418A360;
    v10[2] = &unk_284182200;
    v10[3] = &unk_284182218;
    v11[2] = &unk_28418A378;
    v11[3] = &unk_28418A390;
    v10[4] = &unk_284182230;
    v10[5] = &unk_284182248;
    v11[4] = &unk_28418A3A8;
    v11[5] = &unk_28418A3C0;
    v10[6] = &unk_284182260;
    v10[7] = &unk_284182278;
    v11[6] = &unk_28418A3D8;
    v11[7] = &unk_28418A3F0;
    v10[8] = &unk_284182290;
    v10[9] = &unk_2841822A8;
    v11[8] = &unk_28418A408;
    v11[9] = &unk_28418A420;
    v10[10] = &unk_2841822C0;
    v10[11] = &unk_2841822D8;
    v11[10] = &unk_28418A438;
    v11[11] = &unk_28418A450;
    v10[12] = &unk_2841822F0;
    v11[12] = &unk_28418A468;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:13];
    v6 = [(NTKSiderealColorManager *)self _createElementsFromDict:v5];

    v7 = [(NTKCubicColorCurve *)[NTKAltitudeColorCurve alloc] initWithCubicColorCurveElements:v6];
    v8 = self->_nauticalTwilightCurve_p3;
    self->_nauticalTwilightCurve_p3 = v7;

    v3 = self->_nauticalTwilightCurve_p3;
  }

  return v3;
}

- (id)astronomicalTwilightCurveP3
{
  v11[13] = *MEMORY[0x277D85DE8];
  astronomicalTwilightCurve_p3 = self->_astronomicalTwilightCurve_p3;
  if (astronomicalTwilightCurve_p3)
  {
    v3 = astronomicalTwilightCurve_p3;
  }

  else
  {
    v10[0] = &unk_2841821D0;
    v10[1] = &unk_2841821E8;
    v11[0] = &unk_28418A480;
    v11[1] = &unk_28418A498;
    v10[2] = &unk_284182200;
    v10[3] = &unk_284182218;
    v11[2] = &unk_28418A4B0;
    v11[3] = &unk_28418A4C8;
    v10[4] = &unk_284182230;
    v10[5] = &unk_284182248;
    v11[4] = &unk_28418A4E0;
    v11[5] = &unk_28418A4F8;
    v10[6] = &unk_284182260;
    v10[7] = &unk_284182278;
    v11[6] = &unk_28418A510;
    v11[7] = &unk_28418A528;
    v10[8] = &unk_284182290;
    v10[9] = &unk_2841822A8;
    v11[8] = &unk_28418A540;
    v11[9] = &unk_28418A558;
    v10[10] = &unk_2841822C0;
    v10[11] = &unk_2841822D8;
    v11[10] = &unk_28418A570;
    v11[11] = &unk_28418A588;
    v10[12] = &unk_2841822F0;
    v11[12] = &unk_28418A5A0;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:13];
    v6 = [(NTKSiderealColorManager *)self _createElementsFromDict:v5];

    v7 = [(NTKCubicColorCurve *)[NTKAltitudeColorCurve alloc] initWithCubicColorCurveElements:v6];
    v8 = self->_astronomicalTwilightCurve_p3;
    self->_astronomicalTwilightCurve_p3 = v7;

    v3 = self->_astronomicalTwilightCurve_p3;
  }

  return v3;
}

- (id)dayGradientCurveP3
{
  v23[13] = *MEMORY[0x277D85DE8];
  dayGradientCurve_p3 = self->_dayGradientCurve_p3;
  if (dayGradientCurve_p3)
  {
    v3 = dayGradientCurve_p3;
  }

  else
  {
    v22[0] = &unk_2841821D0;
    v22[1] = &unk_2841821E8;
    v23[0] = &unk_28418A5B8;
    v23[1] = &unk_28418A5D0;
    v22[2] = &unk_284182200;
    v22[3] = &unk_284182218;
    v23[2] = &unk_28418A5E8;
    v23[3] = &unk_28418A600;
    v22[4] = &unk_284182230;
    v22[5] = &unk_284182248;
    v23[4] = &unk_28418A618;
    v23[5] = &unk_28418A630;
    v22[6] = &unk_284182260;
    v22[7] = &unk_284182278;
    v23[6] = &unk_28418A648;
    v23[7] = &unk_28418A660;
    v22[8] = &unk_284182290;
    v22[9] = &unk_2841822A8;
    v23[8] = &unk_28418A678;
    v23[9] = &unk_28418A690;
    v22[10] = &unk_2841822C0;
    v22[11] = &unk_2841822D8;
    v23[10] = &unk_28418A6A8;
    v23[11] = &unk_28418A6C0;
    v22[12] = &unk_2841822F0;
    v23[12] = &unk_28418A6D8;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:13];
    v16 = [(NTKSiderealColorManager *)self _createElementsFromDict:v5];

    v15 = [(NTKCubicColorCurve *)[NTKAltitudeColorCurve alloc] initWithCubicColorCurveElements:v16];
    v20[0] = &unk_2841821D0;
    v20[1] = &unk_2841821E8;
    v21[0] = &unk_28418A6F0;
    v21[1] = &unk_28418A708;
    v20[2] = &unk_284182200;
    v20[3] = &unk_284182218;
    v21[2] = &unk_28418A720;
    v21[3] = &unk_28418A738;
    v20[4] = &unk_284182230;
    v20[5] = &unk_284182248;
    v21[4] = &unk_28418A750;
    v21[5] = &unk_28418A768;
    v20[6] = &unk_284182260;
    v20[7] = &unk_284182278;
    v21[6] = &unk_28418A780;
    v21[7] = &unk_28418A798;
    v20[8] = &unk_284182290;
    v20[9] = &unk_2841822A8;
    v21[8] = &unk_28418A7B0;
    v21[9] = &unk_28418A7C8;
    v20[10] = &unk_2841822C0;
    v20[11] = &unk_2841822D8;
    v21[10] = &unk_28418A7E0;
    v21[11] = &unk_28418A7F8;
    v20[12] = &unk_2841822F0;
    v21[12] = &unk_28418A810;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:13];
    v7 = [(NTKSiderealColorManager *)self _createElementsFromDict:v6];

    v8 = [(NTKCubicColorCurve *)[NTKAltitudeColorCurve alloc] initWithCubicColorCurveElements:v7];
    v18[0] = &unk_2841821D0;
    v18[1] = &unk_2841821E8;
    v19[0] = &unk_28418A828;
    v19[1] = &unk_28418A840;
    v18[2] = &unk_284182200;
    v18[3] = &unk_284182218;
    v19[2] = &unk_28418A858;
    v19[3] = &unk_28418A870;
    v18[4] = &unk_284182230;
    v18[5] = &unk_284182248;
    v19[4] = &unk_28418A888;
    v19[5] = &unk_28418A8A0;
    v18[6] = &unk_284182260;
    v18[7] = &unk_284182278;
    v19[6] = &unk_28418A8B8;
    v19[7] = &unk_28418A8D0;
    v18[8] = &unk_284182290;
    v18[9] = &unk_2841822A8;
    v19[8] = &unk_28418A8E8;
    v19[9] = &unk_28418A900;
    v18[10] = &unk_2841822C0;
    v18[11] = &unk_2841822D8;
    v19[10] = &unk_28418A918;
    v19[11] = &unk_28418A930;
    v18[12] = &unk_2841822F0;
    v19[12] = &unk_28418A948;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:13];
    v10 = [(NTKSiderealColorManager *)self _createElementsFromDict:v9];

    v11 = [(NTKCubicColorCurve *)[NTKAltitudeColorCurve alloc] initWithCubicColorCurveElements:v10];
    v17[0] = v15;
    v17[1] = v8;
    v17[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
    v13 = self->_dayGradientCurve_p3;
    self->_dayGradientCurve_p3 = v12;

    v3 = self->_dayGradientCurve_p3;
  }

  return v3;
}

- (id)dialBackgroundCurveP3
{
  v11[13] = *MEMORY[0x277D85DE8];
  dialBackgroundCurve_p3 = self->_dialBackgroundCurve_p3;
  if (dialBackgroundCurve_p3)
  {
    v3 = dialBackgroundCurve_p3;
  }

  else
  {
    v10[0] = &unk_2841821D0;
    v10[1] = &unk_2841821E8;
    v11[0] = &unk_28418A960;
    v11[1] = &unk_28418A978;
    v10[2] = &unk_284182200;
    v10[3] = &unk_284182218;
    v11[2] = &unk_28418A990;
    v11[3] = &unk_28418A9A8;
    v10[4] = &unk_284182230;
    v10[5] = &unk_284182248;
    v11[4] = &unk_28418A9C0;
    v11[5] = &unk_28418A9D8;
    v10[6] = &unk_284182260;
    v10[7] = &unk_284182278;
    v11[6] = &unk_28418A9F0;
    v11[7] = &unk_28418AA08;
    v10[8] = &unk_284182290;
    v10[9] = &unk_2841822A8;
    v11[8] = &unk_28418AA20;
    v11[9] = &unk_28418AA38;
    v10[10] = &unk_2841822C0;
    v10[11] = &unk_2841822D8;
    v11[10] = &unk_28418AA50;
    v11[11] = &unk_28418AA68;
    v10[12] = &unk_2841822F0;
    v11[12] = &unk_28418AA80;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:13];
    v6 = [(NTKSiderealColorManager *)self _createElementsFromDict:v5];

    v7 = [(NTKCubicColorCurve *)[NTKAltitudeColorCurve alloc] initWithCubicColorCurveElements:v6];
    v8 = self->_dialBackgroundCurve_p3;
    self->_dialBackgroundCurve_p3 = v7;

    v3 = self->_dialBackgroundCurve_p3;
  }

  return v3;
}

- (id)dialBackgroundColorCurve
{
  v79[23] = *MEMORY[0x277D85DE8];
  dialBackground = self->_dialBackground;
  if (!dialBackground)
  {
    v74 = [NTKAltitudeColorCurve alloc];
    v4.n128_u64[0] = 0xC056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v4);
    v78 = _elementWithColorAtAltitude(224.0, 80.0, 24.0, v5);
    v79[0] = v78;
    v6.n128_u64[0] = 0xC04E000000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v6);
    v77 = _elementWithColorAtAltitude(224.0, 80.0, 24.0, v7);
    v79[1] = v77;
    v8.n128_u64[0] = -30.0;
    NTKSunriseAltitudeToSolarDayPercentage(v8);
    v76 = _elementWithColorAtAltitude(224.0, 80.0, 24.0, v9);
    v79[2] = v76;
    v10.n128_u64[0] = -18.0;
    NTKSunriseAltitudeToSolarDayPercentage(v10);
    v75 = _elementWithColorAtAltitude(218.0, 83.0, 24.0, v11);
    v79[3] = v75;
    v12.n128_u64[0] = -12.0;
    NTKSunriseAltitudeToSolarDayPercentage(v12);
    v73 = _elementWithColorAtAltitude(212.0, 92.0, 22.0, v13);
    v79[4] = v73;
    v14.n128_u64[0] = -6.0;
    NTKSunriseAltitudeToSolarDayPercentage(v14);
    v72 = _elementWithColorAtAltitude(206.0, 95.0, 21.0, v15);
    v79[5] = v72;
    v16.n128_u64[0] = 0;
    NTKSunriseAltitudeToSolarDayPercentage(v16);
    v71 = _elementWithColorAtAltitude(202.0, 100.0, 20.0, v17);
    v79[6] = v71;
    v18.n128_u64[0] = 6.0;
    NTKSunriseAltitudeToSolarDayPercentage(v18);
    v70 = _elementWithColorAtAltitude(200.0, 100.0, 20.0, v19);
    v79[7] = v70;
    v20.n128_u64[0] = 30.0;
    NTKSunriseAltitudeToSolarDayPercentage(v20);
    v69 = _elementWithColorAtAltitude(200.0, 100.0, 20.0, v21);
    v79[8] = v69;
    v22.n128_u64[0] = 0x404E000000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v22);
    v68 = _elementWithColorAtAltitude(204.0, 100.0, 20.0, v23);
    v79[9] = v68;
    v24.n128_u64[0] = 0x4056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v24);
    v67 = _elementWithColorAtAltitude(206.0, 100.0, 24.0, v25);
    v79[10] = v67;
    v26.n128_u64[0] = 0x404E000000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v26);
    v66 = _elementWithColorAtAltitude(217.0, 100.0, 24.0, v27);
    v79[11] = v66;
    v28.n128_u64[0] = 30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v28);
    v65 = _elementWithColorAtAltitude(217.0, 100.0, 24.0, v29);
    v79[12] = v65;
    v30.n128_u64[0] = 18.0;
    NTKSunsetAltitudeToSolarDayPercentage(v30);
    v64 = _elementWithColorAtAltitude(220.0, 95.0, 24.0, v31);
    v79[13] = v64;
    v32.n128_u64[0] = 12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v32);
    v63 = _elementWithColorAtAltitude(223.0, 89.0, 25.0, v33);
    v79[14] = v63;
    v34.n128_u64[0] = 6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v34);
    v36 = _elementWithColorAtAltitude(225.0, 85.0, 26.0, v35);
    v79[15] = v36;
    v37.n128_u64[0] = 0;
    NTKSunsetAltitudeToSolarDayPercentage(v37);
    v39 = _elementWithColorAtAltitude(229.0, 85.0, 26.0, v38);
    v79[16] = v39;
    v40.n128_u64[0] = -6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v40);
    v42 = _elementWithColorAtAltitude(233.0, 85.0, 26.0, v41);
    v79[17] = v42;
    v43.n128_u64[0] = -12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v43);
    v45 = _elementWithColorAtAltitude(233.0, 85.0, 26.0, v44);
    v79[18] = v45;
    v46.n128_u64[0] = -18.0;
    NTKSunsetAltitudeToSolarDayPercentage(v46);
    v48 = _elementWithColorAtAltitude(233.0, 84.0, 26.0, v47);
    v79[19] = v48;
    v49.n128_u64[0] = -30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v49);
    v51 = _elementWithColorAtAltitude(224.0, 80.0, 24.0, v50);
    v79[20] = v51;
    v52.n128_u64[0] = 0xC04E000000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v52);
    v54 = _elementWithColorAtAltitude(224.0, 80.0, 24.0, v53);
    v79[21] = v54;
    v55.n128_u64[0] = 0xC056800000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v55);
    v57 = _elementWithColorAtAltitude(224.0, 80.0, 24.0, v56);
    v79[22] = v57;
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:23];
    v59 = [(NTKCubicColorCurve *)v74 initWithColorCurveElements:v58];
    v60 = self->_dialBackground;
    self->_dialBackground = v59;

    dialBackground = self->_dialBackground;
  }

  v61 = dialBackground;

  return v61;
}

- (id)dayGradientColorCurves
{
  v245[25] = *MEMORY[0x277D85DE8];
  dayGradient = self->_dayGradient;
  if (dayGradient)
  {
    v3 = dayGradient;
  }

  else
  {
    v237 = [NTKAltitudeColorCurve alloc];
    v4.n128_u64[0] = 0xC056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v4);
    v227 = _elementWithColorAtAltitude(237.0, 87.0, 24.0, v5);
    v245[0] = v227;
    v6.n128_u64[0] = 0xC04E000000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v6);
    v221 = _elementWithColorAtAltitude(237.0, 87.0, 24.0, v7);
    v245[1] = v221;
    v8.n128_u64[0] = -30.0;
    NTKSunriseAltitudeToSolarDayPercentage(v8);
    v217 = _elementWithColorAtAltitude(237.0, 87.0, 24.0, v9);
    v245[2] = v217;
    v10.n128_u64[0] = -18.0;
    NTKSunriseAltitudeToSolarDayPercentage(v10);
    v215 = _elementWithColorAtAltitude(235.0, 80.0, 25.0, v11);
    v245[3] = v215;
    v12.n128_u64[0] = -12.0;
    NTKSunriseAltitudeToSolarDayPercentage(v12);
    v212 = _elementWithColorAtAltitude(225.0, 64.0, 53.0, v13);
    v245[4] = v212;
    v14.n128_u64[0] = -6.0;
    NTKSunriseAltitudeToSolarDayPercentage(v14);
    v207 = _elementWithColorAtAltitude(224.0, 62.0, 61.0, v15);
    v245[5] = v207;
    v16.n128_u64[0] = 0;
    NTKSunriseAltitudeToSolarDayPercentage(v16);
    v205 = _elementWithColorAtAltitude(222.0, 60.0, 74.0, v17);
    v245[6] = v205;
    v18.n128_u64[0] = 6.0;
    NTKSunriseAltitudeToSolarDayPercentage(v18);
    v203 = _elementWithColorAtAltitude(216.0, 63.0, 76.0, v19);
    v245[7] = v203;
    v20.n128_u64[0] = 12.0;
    NTKSunriseAltitudeToSolarDayPercentage(v20);
    v201 = _elementWithColorAtAltitude(215.0, 69.0, 78.0, v21);
    v245[8] = v201;
    v22.n128_u64[0] = 18.0;
    NTKSunriseAltitudeToSolarDayPercentage(v22);
    v199 = _elementWithColorAtAltitude(214.0, 74.0, 80.0, v23);
    v245[9] = v199;
    v24.n128_u64[0] = 30.0;
    NTKSunriseAltitudeToSolarDayPercentage(v24);
    v198 = _elementWithColorAtAltitude(213.0, 86.0, 86.0, v25);
    v245[10] = v198;
    v26.n128_u64[0] = 0x404E000000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v26);
    v196 = _elementWithColorAtAltitude(212.0, 66.0, 88.0, v27);
    v245[11] = v196;
    v28.n128_u64[0] = 0x4056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v28);
    v194 = _elementWithColorAtAltitude(204.0, 19.0, 96.0, v29);
    v245[12] = v194;
    v30.n128_u64[0] = 0x404E000000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v30);
    v192 = _elementWithColorAtAltitude(212.0, 58.0, 87.0, v31);
    v245[13] = v192;
    v32.n128_u64[0] = 30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v32);
    v190 = _elementWithColorAtAltitude(213.0, 78.0, 83.0, v33);
    v245[14] = v190;
    v34.n128_u64[0] = 18.0;
    NTKSunsetAltitudeToSolarDayPercentage(v34);
    v188 = _elementWithColorAtAltitude(217.0, 76.0, 67.0, v35);
    v245[15] = v188;
    v36.n128_u64[0] = 12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v36);
    v38 = _elementWithColorAtAltitude(220.0, 76.0, 60.0, v37);
    v245[16] = v38;
    v39.n128_u64[0] = 6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v39);
    v41 = _elementWithColorAtAltitude(223.0, 75.0, 55.0, v40);
    v245[17] = v41;
    v42.n128_u64[0] = 0;
    NTKSunsetAltitudeToSolarDayPercentage(v42);
    v44 = _elementWithColorAtAltitude(228.0, 73.0, 47.0, v43);
    v245[18] = v44;
    v45.n128_u64[0] = -6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v45);
    v47 = _elementWithColorAtAltitude(231.0, 78.0, 38.0, v46);
    v245[19] = v47;
    v48.n128_u64[0] = -12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v48);
    v50 = _elementWithColorAtAltitude(233.0, 82.0, 33.0, v49);
    v245[20] = v50;
    v51.n128_u64[0] = -18.0;
    NTKSunsetAltitudeToSolarDayPercentage(v51);
    v53 = _elementWithColorAtAltitude(240.0, 96.0, 22.0, v52);
    v245[21] = v53;
    v54.n128_u64[0] = -30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v54);
    v56 = _elementWithColorAtAltitude(237.0, 87.0, 24.0, v55);
    v245[22] = v56;
    v57.n128_u64[0] = 0xC04E000000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v57);
    v59 = _elementWithColorAtAltitude(237.0, 87.0, 24.0, v58);
    v245[23] = v59;
    v60.n128_u64[0] = 0xC056800000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v60);
    v62 = _elementWithColorAtAltitude(237.0, 87.0, 24.0, v61);
    v245[24] = v62;
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v245 count:25];
    v238 = [(NTKCubicColorCurve *)v237 initWithColorCurveElements:v63];

    v206 = [NTKAltitudeColorCurve alloc];
    v64.n128_u64[0] = 0xC056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v64);
    v222 = _elementWithColorAtAltitude(225.0, 70.0, 27.0, v65);
    v244[0] = v222;
    v66.n128_u64[0] = 0xC04E000000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v66);
    v218 = _elementWithColorAtAltitude(225.0, 70.0, 27.0, v67);
    v244[1] = v218;
    v68.n128_u64[0] = -30.0;
    NTKSunriseAltitudeToSolarDayPercentage(v68);
    v213 = _elementWithColorAtAltitude(225.0, 70.0, 27.0, v69);
    v244[2] = v213;
    v70.n128_u64[0] = -18.0;
    NTKSunriseAltitudeToSolarDayPercentage(v70);
    v210 = _elementWithColorAtAltitude(214.0, 74.0, 22.0, v71);
    v244[3] = v210;
    v72.n128_u64[0] = -12.0;
    NTKSunriseAltitudeToSolarDayPercentage(v72);
    v208 = _elementWithColorAtAltitude(209.0, 30.0, 51.0, v73);
    v244[4] = v208;
    v74.n128_u64[0] = -6.0;
    NTKSunriseAltitudeToSolarDayPercentage(v74);
    v204 = _elementWithColorAtAltitude(207.0, 25.0, 60.0, v75);
    v244[5] = v204;
    v76.n128_u64[0] = 0;
    NTKSunriseAltitudeToSolarDayPercentage(v76);
    v202 = _elementWithColorAtAltitude(203.0, 21.0, 72.0, v77);
    v244[6] = v202;
    v78.n128_u64[0] = 6.0;
    NTKSunriseAltitudeToSolarDayPercentage(v78);
    v209 = _elementWithColorAtAltitude(212.0, 23.0, 82.0, v79);
    v244[7] = v209;
    v80.n128_u64[0] = 12.0;
    NTKSunriseAltitudeToSolarDayPercentage(v80);
    v200 = _elementWithColorAtAltitude(208.0, 31.0, 80.0, v81);
    v244[8] = v200;
    v82.n128_u64[0] = 18.0;
    NTKSunriseAltitudeToSolarDayPercentage(v82);
    v225 = _elementWithColorAtAltitude(205.0, 40.0, 80.0, v83);
    v244[9] = v225;
    v84.n128_u64[0] = 30.0;
    NTKSunriseAltitudeToSolarDayPercentage(v84);
    v197 = _elementWithColorAtAltitude(202.0, 62.0, 75.0, v85);
    v244[10] = v197;
    v86.n128_u64[0] = 0x404E000000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v86);
    v195 = _elementWithColorAtAltitude(201.0, 59.0, 77.0, v87);
    v244[11] = v195;
    v88.n128_u64[0] = 0x4056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v88);
    v193 = _elementWithColorAtAltitude(199.0, 53.0, 82.0, v89);
    v244[12] = v193;
    v90.n128_u64[0] = 0x404E000000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v90);
    v191 = _elementWithColorAtAltitude(202.0, 67.0, 77.0, v91);
    v244[13] = v191;
    v92.n128_u64[0] = 30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v92);
    v189 = _elementWithColorAtAltitude(203.0, 74.0, 75.0, v93);
    v244[14] = v189;
    v94.n128_u64[0] = 18.0;
    NTKSunsetAltitudeToSolarDayPercentage(v94);
    v219 = _elementWithColorAtAltitude(210.0, 57.0, 67.0, v95);
    v244[15] = v219;
    v96.n128_u64[0] = 12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v96);
    v98 = _elementWithColorAtAltitude(215.0, 49.0, 64.0, v97);
    v244[16] = v98;
    v99.n128_u64[0] = 6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v99);
    v101 = _elementWithColorAtAltitude(221.0, 42.0, 61.0, v100);
    v244[17] = v101;
    v102.n128_u64[0] = 0;
    NTKSunsetAltitudeToSolarDayPercentage(v102);
    v104 = _elementWithColorAtAltitude(237.0, 30.0, 57.0, v103);
    v244[18] = v104;
    v105.n128_u64[0] = -6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v105);
    v107 = _elementWithColorAtAltitude(236.0, 38.0, 48.0, v106);
    v244[19] = v107;
    v108.n128_u64[0] = -12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v108);
    v110 = _elementWithColorAtAltitude(236.0, 46.0, 42.0, v109);
    v244[20] = v110;
    v111.n128_u64[0] = -18.0;
    NTKSunsetAltitudeToSolarDayPercentage(v111);
    v113 = _elementWithColorAtAltitude(235.0, 68.0, 31.0, v112);
    v244[21] = v113;
    v114.n128_u64[0] = -30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v114);
    v116 = _elementWithColorAtAltitude(225.0, 70.0, 27.0, v115);
    v244[22] = v116;
    v117.n128_u64[0] = 0xC04E000000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v117);
    v119 = _elementWithColorAtAltitude(225.0, 70.0, 27.0, v118);
    v244[23] = v119;
    v120.n128_u64[0] = 0xC056800000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v120);
    v122 = _elementWithColorAtAltitude(225.0, 70.0, 27.0, v121);
    v244[24] = v122;
    v123 = [MEMORY[0x277CBEA60] arrayWithObjects:v244 count:25];
    v240 = [(NTKCubicColorCurve *)v206 initWithColorCurveElements:v123];

    v124 = [NTKAltitudeColorCurve alloc];
    v125.n128_u64[0] = 0xC056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v125);
    v231 = _elementWithColorAtAltitude(227.0, 70.0, 48.0, v126);
    v243[0] = v231;
    v127.n128_u64[0] = 0xC04E000000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v127);
    v228 = _elementWithColorAtAltitude(227.0, 70.0, 48.0, v128);
    v243[1] = v228;
    v129.n128_u64[0] = -30.0;
    NTKSunriseAltitudeToSolarDayPercentage(v129);
    v226 = _elementWithColorAtAltitude(227.0, 70.0, 48.0, v130);
    v243[2] = v226;
    v131.n128_u64[0] = -18.0;
    NTKSunriseAltitudeToSolarDayPercentage(v131);
    v230 = _elementWithColorAtAltitude(230.0, 60.0, 55.0, v132);
    v243[3] = v230;
    v133.n128_u64[0] = -12.0;
    NTKSunriseAltitudeToSolarDayPercentage(v133);
    v229 = _elementWithColorAtAltitude(21.0, 19.0, 61.0, v134);
    v243[4] = v229;
    v135.n128_u64[0] = -6.0;
    NTKSunriseAltitudeToSolarDayPercentage(v135);
    v224 = _elementWithColorAtAltitude(30.0, 29.0, 74.0, v136);
    v243[5] = v224;
    v137.n128_u64[0] = 0;
    NTKSunriseAltitudeToSolarDayPercentage(v137);
    v223 = _elementWithColorAtAltitude(35.0, 44.0, 94.0, v138);
    v243[6] = v223;
    v139.n128_u64[0] = 6.0;
    NTKSunriseAltitudeToSolarDayPercentage(v139);
    v220 = _elementWithColorAtAltitude(40.0, 28.0, 98.0, v140);
    v243[7] = v220;
    v141.n128_u64[0] = 12.0;
    NTKSunriseAltitudeToSolarDayPercentage(v141);
    v234 = _elementWithColorAtAltitude(54.0, 12.0, 86.0, v142);
    v243[8] = v234;
    v143.n128_u64[0] = 18.0;
    NTKSunriseAltitudeToSolarDayPercentage(v143);
    v216 = _elementWithColorAtAltitude(171.0, 8.0, 82.0, v144);
    v243[9] = v216;
    v145.n128_u64[0] = 30.0;
    NTKSunriseAltitudeToSolarDayPercentage(v145);
    v214 = _elementWithColorAtAltitude(206.0, 50.0, 94.0, v146);
    v243[10] = v214;
    v147.n128_u64[0] = 0x404E000000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v147);
    v211 = _elementWithColorAtAltitude(208.0, 58.0, 95.0, v148);
    v243[11] = v211;
    v149.n128_u64[0] = 0x4056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v149);
    v241 = _elementWithColorAtAltitude(210.0, 77.0, 96.0, v150);
    v243[12] = v241;
    v151.n128_u64[0] = 0x404E000000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v151);
    v233 = _elementWithColorAtAltitude(208.0, 58.0, 95.0, v152);
    v243[13] = v233;
    v153.n128_u64[0] = 30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v153);
    v232 = _elementWithColorAtAltitude(206.0, 50.0, 94.0, v154);
    v243[14] = v232;
    v155.n128_u64[0] = 18.0;
    NTKSunsetAltitudeToSolarDayPercentage(v155);
    v236 = _elementWithColorAtAltitude(204.0, 17.0, 81.0, v156);
    v243[15] = v236;
    v157.n128_u64[0] = 12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v157);
    v235 = _elementWithColorAtAltitude(54.0, 1.0, 76.0, v158);
    v243[16] = v235;
    v159.n128_u64[0] = 6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v159);
    v161 = _elementWithColorAtAltitude(29.0, 14.0, 82.0, v160);
    v243[17] = v161;
    v162.n128_u64[0] = 0;
    NTKSunsetAltitudeToSolarDayPercentage(v162);
    v164 = _elementWithColorAtAltitude(28.0, 30.0, 98.0, v163);
    v243[18] = v164;
    v165.n128_u64[0] = -6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v165);
    v167 = _elementWithColorAtAltitude(344.0, 10.0, 64.0, v166);
    v243[19] = v167;
    v168.n128_u64[0] = -12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v168);
    v170 = _elementWithColorAtAltitude(245.0, 22.0, 56.0, v169);
    v243[20] = v170;
    v171.n128_u64[0] = -18.0;
    NTKSunsetAltitudeToSolarDayPercentage(v171);
    v173 = _elementWithColorAtAltitude(226.0, 79.0, 50.0, v172);
    v243[21] = v173;
    v174.n128_u64[0] = -30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v174);
    v176 = _elementWithColorAtAltitude(227.0, 70.0, 48.0, v175);
    v243[22] = v176;
    v177.n128_u64[0] = 0xC04E000000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v177);
    v179 = _elementWithColorAtAltitude(227.0, 70.0, 48.0, v178);
    v243[23] = v179;
    v180.n128_u64[0] = 0xC056800000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v180);
    v182 = _elementWithColorAtAltitude(227.0, 70.0, 48.0, v181);
    v243[24] = v182;
    v183 = [MEMORY[0x277CBEA60] arrayWithObjects:v243 count:25];
    v184 = [(NTKCubicColorCurve *)v124 initWithColorCurveElements:v183];

    v242[0] = v238;
    v242[1] = v240;
    v242[2] = v184;
    v185 = [MEMORY[0x277CBEA60] arrayWithObjects:v242 count:3];
    v186 = self->_dayGradient;
    self->_dayGradient = v185;

    v3 = self->_dayGradient;
  }

  return v3;
}

- (id)civilTwilightColorCurve
{
  v82[24] = *MEMORY[0x277D85DE8];
  civilTwilight = self->_civilTwilight;
  if (!civilTwilight)
  {
    v76 = [NTKAltitudeColorCurve alloc];
    v4.n128_u64[0] = 0xC056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v4);
    v81 = _elementWithColorAtAltitude(224.0, 80.0, 40.0, v5);
    v82[0] = v81;
    v6.n128_u64[0] = 0xC04E000000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v6);
    v80 = _elementWithColorAtAltitude(224.0, 80.0, 40.0, v7);
    v82[1] = v80;
    v8.n128_u64[0] = -30.0;
    NTKSunriseAltitudeToSolarDayPercentage(v8);
    v79 = _elementWithColorAtAltitude(224.0, 80.0, 40.0, v9);
    v82[2] = v79;
    v10.n128_u64[0] = -18.0;
    NTKSunriseAltitudeToSolarDayPercentage(v10);
    v78 = _elementWithColorAtAltitude(220.0, 70.0, 45.0, v11);
    v82[3] = v78;
    v12.n128_u64[0] = -12.0;
    NTKSunriseAltitudeToSolarDayPercentage(v12);
    v77 = _elementWithColorAtAltitude(216.0, 70.0, 46.0, v13);
    v82[4] = v77;
    v14.n128_u64[0] = -6.0;
    NTKSunriseAltitudeToSolarDayPercentage(v14);
    v75 = _elementWithColorAtAltitude(215.0, 70.0, 47.0, v15);
    v82[5] = v75;
    v16.n128_u64[0] = 0;
    NTKSunriseAltitudeToSolarDayPercentage(v16);
    v74 = _elementWithColorAtAltitude(215.0, 65.0, 50.0, v17);
    v82[6] = v74;
    v18.n128_u64[0] = 6.0;
    NTKSunriseAltitudeToSolarDayPercentage(v18);
    v73 = _elementWithColorAtAltitude(210.0, 80.0, 50.0, v19);
    v82[7] = v73;
    v20.n128_u64[0] = 12.0;
    NTKSunriseAltitudeToSolarDayPercentage(v20);
    v72 = _elementWithColorAtAltitude(210.0, 80.0, 50.0, v21);
    v82[8] = v72;
    v22.n128_u64[0] = 18.0;
    NTKSunriseAltitudeToSolarDayPercentage(v22);
    v71 = _elementWithColorAtAltitude(210.0, 80.0, 50.0, v23);
    v82[9] = v71;
    v24.n128_u64[0] = 30.0;
    NTKSunriseAltitudeToSolarDayPercentage(v24);
    v70 = _elementWithColorAtAltitude(210.0, 80.0, 50.0, v25);
    v82[10] = v70;
    v26.n128_u64[0] = 0x404E000000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v26);
    v69 = _elementWithColorAtAltitude(210.0, 80.0, 50.0, v27);
    v82[11] = v69;
    v28.n128_u64[0] = 0x4056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v28);
    v68 = _elementWithColorAtAltitude(208.0, 85.0, 52.0, v29);
    v82[12] = v68;
    v30.n128_u64[0] = 0x404E000000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v30);
    v67 = _elementWithColorAtAltitude(216.0, 75.0, 55.0, v31);
    v82[13] = v67;
    v32.n128_u64[0] = 30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v32);
    v66 = _elementWithColorAtAltitude(216.0, 75.0, 55.0, v33);
    v82[14] = v66;
    v34.n128_u64[0] = 18.0;
    NTKSunsetAltitudeToSolarDayPercentage(v34);
    v65 = _elementWithColorAtAltitude(217.0, 75.0, 55.0, v35);
    v82[15] = v65;
    v36.n128_u64[0] = 12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v36);
    v38 = _elementWithColorAtAltitude(220.0, 75.0, 55.0, v37);
    v82[16] = v38;
    v39.n128_u64[0] = 6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v39);
    v41 = _elementWithColorAtAltitude(223.0, 70.0, 55.0, v40);
    v82[17] = v41;
    v42.n128_u64[0] = 0;
    NTKSunsetAltitudeToSolarDayPercentage(v42);
    v44 = _elementWithColorAtAltitude(228.0, 70.0, 60.0, v43);
    v82[18] = v44;
    v45.n128_u64[0] = -6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v45);
    v47 = _elementWithColorAtAltitude(228.0, 70.0, 60.0, v46);
    v82[19] = v47;
    v48.n128_u64[0] = -12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v48);
    v50 = _elementWithColorAtAltitude(228.0, 70.0, 50.0, v49);
    v82[20] = v50;
    v51.n128_u64[0] = -18.0;
    NTKSunsetAltitudeToSolarDayPercentage(v51);
    v53 = _elementWithColorAtAltitude(226.0, 80.0, 40.0, v52);
    v82[21] = v53;
    v54.n128_u64[0] = -30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v54);
    v56 = _elementWithColorAtAltitude(224.0, 80.0, 40.0, v55);
    v82[22] = v56;
    v57.n128_u64[0] = 0xC056800000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v57);
    v59 = _elementWithColorAtAltitude(224.0, 80.0, 40.0, v58);
    v82[23] = v59;
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:24];
    v61 = [(NTKCubicColorCurve *)v76 initWithColorCurveElements:v60];
    v62 = self->_civilTwilight;
    self->_civilTwilight = v61;

    civilTwilight = self->_civilTwilight;
  }

  v63 = civilTwilight;

  return v63;
}

- (id)nauticalTwilightColorCurve
{
  v82[24] = *MEMORY[0x277D85DE8];
  nauticalTwilight = self->_nauticalTwilight;
  if (!nauticalTwilight)
  {
    v77 = [NTKAltitudeColorCurve alloc];
    v4.n128_u64[0] = 0xC056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v4);
    v81 = _elementWithColorAtAltitude(224.0, 80.0, 28.0, v5);
    v82[0] = v81;
    v6.n128_u64[0] = 0xC04E000000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v6);
    v80 = _elementWithColorAtAltitude(224.0, 80.0, 28.0, v7);
    v82[1] = v80;
    v8.n128_u64[0] = -30.0;
    NTKSunriseAltitudeToSolarDayPercentage(v8);
    v79 = _elementWithColorAtAltitude(224.0, 80.0, 30.0, v9);
    v82[2] = v79;
    v10.n128_u64[0] = -18.0;
    NTKSunriseAltitudeToSolarDayPercentage(v10);
    v78 = _elementWithColorAtAltitude(216.0, 86.0, 30.0, v11);
    v82[3] = v78;
    v12.n128_u64[0] = -12.0;
    NTKSunriseAltitudeToSolarDayPercentage(v12);
    v76 = _elementWithColorAtAltitude(210.0, 86.0, 33.0, v13);
    v82[4] = v76;
    v14.n128_u64[0] = -6.0;
    NTKSunriseAltitudeToSolarDayPercentage(v14);
    v75 = _elementWithColorAtAltitude(208.0, 85.0, 33.0, v15);
    v82[5] = v75;
    v16.n128_u64[0] = 0;
    NTKSunriseAltitudeToSolarDayPercentage(v16);
    v74 = _elementWithColorAtAltitude(206.0, 80.0, 36.0, v17);
    v82[6] = v74;
    v18.n128_u64[0] = 6.0;
    NTKSunriseAltitudeToSolarDayPercentage(v18);
    v73 = _elementWithColorAtAltitude(210.0, 80.0, 37.0, v19);
    v82[7] = v73;
    v20.n128_u64[0] = 12.0;
    NTKSunriseAltitudeToSolarDayPercentage(v20);
    v72 = _elementWithColorAtAltitude(210.0, 80.0, 37.0, v21);
    v82[8] = v72;
    v22.n128_u64[0] = 18.0;
    NTKSunriseAltitudeToSolarDayPercentage(v22);
    v71 = _elementWithColorAtAltitude(210.0, 80.0, 37.0, v23);
    v82[9] = v71;
    v24.n128_u64[0] = 30.0;
    NTKSunriseAltitudeToSolarDayPercentage(v24);
    v70 = _elementWithColorAtAltitude(210.0, 80.0, 37.0, v25);
    v82[10] = v70;
    v26.n128_u64[0] = 0x404E000000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v26);
    v69 = _elementWithColorAtAltitude(208.0, 80.0, 37.0, v27);
    v82[11] = v69;
    v28.n128_u64[0] = 0x4056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v28);
    v68 = _elementWithColorAtAltitude(207.0, 85.0, 39.0, v29);
    v82[12] = v68;
    v30.n128_u64[0] = 0x404E000000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v30);
    v67 = _elementWithColorAtAltitude(212.0, 85.0, 40.0, v31);
    v82[13] = v67;
    v32.n128_u64[0] = 30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v32);
    v66 = _elementWithColorAtAltitude(212.0, 85.0, 42.0, v33);
    v82[14] = v66;
    v34.n128_u64[0] = 18.0;
    NTKSunsetAltitudeToSolarDayPercentage(v34);
    v65 = _elementWithColorAtAltitude(216.0, 85.0, 42.0, v35);
    v82[15] = v65;
    v36.n128_u64[0] = 12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v36);
    v38 = _elementWithColorAtAltitude(222.0, 80.0, 42.0, v37);
    v82[16] = v38;
    v39.n128_u64[0] = 6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v39);
    v41 = _elementWithColorAtAltitude(224.0, 75.0, 43.0, v40);
    v82[17] = v41;
    v42.n128_u64[0] = 0;
    NTKSunsetAltitudeToSolarDayPercentage(v42);
    v44 = _elementWithColorAtAltitude(228.0, 75.0, 45.0, v43);
    v82[18] = v44;
    v45.n128_u64[0] = -6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v45);
    v47 = _elementWithColorAtAltitude(228.0, 75.0, 45.0, v46);
    v82[19] = v47;
    v48.n128_u64[0] = -12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v48);
    v50 = _elementWithColorAtAltitude(228.0, 75.0, 40.0, v49);
    v82[20] = v50;
    v51.n128_u64[0] = -18.0;
    NTKSunsetAltitudeToSolarDayPercentage(v51);
    v53 = _elementWithColorAtAltitude(224.0, 75.0, 28.0, v52);
    v82[21] = v53;
    v54.n128_u64[0] = -30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v54);
    v56 = _elementWithColorAtAltitude(224.0, 80.0, 28.0, v55);
    v82[22] = v56;
    v57.n128_u64[0] = 0xC056800000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v57);
    v59 = _elementWithColorAtAltitude(224.0, 80.0, 28.0, v58);
    v82[23] = v59;
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:24];
    v61 = [(NTKCubicColorCurve *)v77 initWithColorCurveElements:v60];
    v62 = self->_nauticalTwilight;
    self->_nauticalTwilight = v61;

    nauticalTwilight = self->_nauticalTwilight;
  }

  v63 = nauticalTwilight;

  return v63;
}

- (id)astronomicalTwilightColorCurve
{
  v82[24] = *MEMORY[0x277D85DE8];
  astronomicalTwilight = self->_astronomicalTwilight;
  if (!astronomicalTwilight)
  {
    v77 = [NTKAltitudeColorCurve alloc];
    v4.n128_u64[0] = 0xC056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v4);
    v81 = _elementWithColorAtAltitude(224.0, 82.0, 20.0, v5);
    v82[0] = v81;
    v6.n128_u64[0] = 0xC04E000000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v6);
    v80 = _elementWithColorAtAltitude(224.0, 82.0, 20.0, v7);
    v82[1] = v80;
    v8.n128_u64[0] = -30.0;
    NTKSunriseAltitudeToSolarDayPercentage(v8);
    v79 = _elementWithColorAtAltitude(224.0, 82.0, 20.0, v9);
    v82[2] = v79;
    v10.n128_u64[0] = -18.0;
    NTKSunriseAltitudeToSolarDayPercentage(v10);
    v78 = _elementWithColorAtAltitude(212.0, 82.0, 20.0, v11);
    v82[3] = v78;
    v12.n128_u64[0] = -12.0;
    NTKSunriseAltitudeToSolarDayPercentage(v12);
    v76 = _elementWithColorAtAltitude(204.0, 85.0, 20.0, v13);
    v82[4] = v76;
    v14.n128_u64[0] = -6.0;
    NTKSunriseAltitudeToSolarDayPercentage(v14);
    v75 = _elementWithColorAtAltitude(202.0, 85.0, 20.0, v15);
    v82[5] = v75;
    v16.n128_u64[0] = 0;
    NTKSunriseAltitudeToSolarDayPercentage(v16);
    v74 = _elementWithColorAtAltitude(198.0, 90.0, 22.0, v17);
    v82[6] = v74;
    v18.n128_u64[0] = 6.0;
    NTKSunriseAltitudeToSolarDayPercentage(v18);
    v73 = _elementWithColorAtAltitude(200.0, 90.0, 24.0, v19);
    v82[7] = v73;
    v20.n128_u64[0] = 12.0;
    NTKSunriseAltitudeToSolarDayPercentage(v20);
    v72 = _elementWithColorAtAltitude(200.0, 90.0, 26.0, v21);
    v82[8] = v72;
    v22.n128_u64[0] = 18.0;
    NTKSunriseAltitudeToSolarDayPercentage(v22);
    v71 = _elementWithColorAtAltitude(200.0, 90.0, 26.0, v23);
    v82[9] = v71;
    v24.n128_u64[0] = 30.0;
    NTKSunriseAltitudeToSolarDayPercentage(v24);
    v70 = _elementWithColorAtAltitude(200.0, 90.0, 26.0, v25);
    v82[10] = v70;
    v26.n128_u64[0] = 0x404E000000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v26);
    v69 = _elementWithColorAtAltitude(204.0, 85.0, 26.0, v27);
    v82[11] = v69;
    v28.n128_u64[0] = 0x4056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v28);
    v68 = _elementWithColorAtAltitude(206.0, 85.0, 30.0, v29);
    v82[12] = v68;
    v30.n128_u64[0] = 0x404E000000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v30);
    v67 = _elementWithColorAtAltitude(217.0, 85.0, 30.0, v31);
    v82[13] = v67;
    v32.n128_u64[0] = 30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v32);
    v66 = _elementWithColorAtAltitude(217.0, 85.0, 30.0, v33);
    v82[14] = v66;
    v34.n128_u64[0] = 18.0;
    NTKSunsetAltitudeToSolarDayPercentage(v34);
    v65 = _elementWithColorAtAltitude(220.0, 86.0, 30.0, v35);
    v82[15] = v65;
    v36.n128_u64[0] = 12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v36);
    v38 = _elementWithColorAtAltitude(223.0, 86.0, 30.0, v37);
    v82[16] = v38;
    v39.n128_u64[0] = 6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v39);
    v41 = _elementWithColorAtAltitude(225.0, 81.0, 30.0, v40);
    v82[17] = v41;
    v42.n128_u64[0] = 0;
    NTKSunsetAltitudeToSolarDayPercentage(v42);
    v44 = _elementWithColorAtAltitude(229.0, 80.0, 30.0, v43);
    v82[18] = v44;
    v45.n128_u64[0] = -6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v45);
    v47 = _elementWithColorAtAltitude(233.0, 75.0, 30.0, v46);
    v82[19] = v47;
    v48.n128_u64[0] = -12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v48);
    v50 = _elementWithColorAtAltitude(233.0, 75.0, 28.0, v49);
    v82[20] = v50;
    v51.n128_u64[0] = -18.0;
    NTKSunsetAltitudeToSolarDayPercentage(v51);
    v53 = _elementWithColorAtAltitude(233.0, 75.0, 22.0, v52);
    v82[21] = v53;
    v54.n128_u64[0] = -30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v54);
    v56 = _elementWithColorAtAltitude(224.0, 82.0, 20.0, v55);
    v82[22] = v56;
    v57.n128_u64[0] = 0xC056800000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v57);
    v59 = _elementWithColorAtAltitude(224.0, 82.0, 20.0, v58);
    v82[23] = v59;
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:24];
    v61 = [(NTKCubicColorCurve *)v77 initWithColorCurveElements:v60];
    v62 = self->_astronomicalTwilight;
    self->_astronomicalTwilight = v61;

    astronomicalTwilight = self->_astronomicalTwilight;
  }

  v63 = astronomicalTwilight;

  return v63;
}

- (id)innerComplicationColorCurve
{
  v85[25] = *MEMORY[0x277D85DE8];
  innerComplication = self->_innerComplication;
  if (!innerComplication)
  {
    v79 = [NTKAltitudeColorCurve alloc];
    v4.n128_u64[0] = 0xC056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v4);
    v84 = _elementWithColorAtAltitude(228.0, 55.0, 85.0, v5);
    v85[0] = v84;
    v6.n128_u64[0] = 0xC04E000000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v6);
    v83 = _elementWithColorAtAltitude(228.0, 55.0, 85.0, v7);
    v85[1] = v83;
    v8.n128_u64[0] = -30.0;
    NTKSunriseAltitudeToSolarDayPercentage(v8);
    v82 = _elementWithColorAtAltitude(225.0, 55.0, 85.0, v9);
    v85[2] = v82;
    v10.n128_u64[0] = -18.0;
    NTKSunriseAltitudeToSolarDayPercentage(v10);
    v81 = _elementWithColorAtAltitude(223.0, 55.0, 85.0, v11);
    v85[3] = v81;
    v12.n128_u64[0] = -12.0;
    NTKSunriseAltitudeToSolarDayPercentage(v12);
    v80 = _elementWithColorAtAltitude(218.0, 55.0, 85.0, v13);
    v85[4] = v80;
    v14.n128_u64[0] = -6.0;
    NTKSunriseAltitudeToSolarDayPercentage(v14);
    v78 = _elementWithColorAtAltitude(216.0, 55.0, 85.0, v15);
    v85[5] = v78;
    v16.n128_u64[0] = 0;
    NTKSunriseAltitudeToSolarDayPercentage(v16);
    v77 = _elementWithColorAtAltitude(216.0, 55.0, 85.0, v17);
    v85[6] = v77;
    v18.n128_u64[0] = 6.0;
    NTKSunriseAltitudeToSolarDayPercentage(v18);
    v76 = _elementWithColorAtAltitude(216.0, 55.0, 85.0, v19);
    v85[7] = v76;
    v20.n128_u64[0] = 12.0;
    NTKSunriseAltitudeToSolarDayPercentage(v20);
    v75 = _elementWithColorAtAltitude(212.0, 55.0, 85.0, v21);
    v85[8] = v75;
    v22.n128_u64[0] = 18.0;
    NTKSunriseAltitudeToSolarDayPercentage(v22);
    v74 = _elementWithColorAtAltitude(208.0, 55.0, 85.0, v23);
    v85[9] = v74;
    v24.n128_u64[0] = 30.0;
    NTKSunriseAltitudeToSolarDayPercentage(v24);
    v73 = _elementWithColorAtAltitude(208.0, 60.0, 85.0, v25);
    v85[10] = v73;
    v26.n128_u64[0] = 0x404E000000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v26);
    v72 = _elementWithColorAtAltitude(209.0, 55.0, 85.0, v27);
    v85[11] = v72;
    v28.n128_u64[0] = 0x4056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v28);
    v71 = _elementWithColorAtAltitude(198.0, 50.0, 90.0, v29);
    v85[12] = v71;
    v30.n128_u64[0] = 0x404E000000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v30);
    v70 = _elementWithColorAtAltitude(209.0, 55.0, 85.0, v31);
    v85[13] = v70;
    v32.n128_u64[0] = 30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v32);
    v69 = _elementWithColorAtAltitude(210.0, 60.0, 85.0, v33);
    v85[14] = v69;
    v34.n128_u64[0] = 18.0;
    NTKSunsetAltitudeToSolarDayPercentage(v34);
    v68 = _elementWithColorAtAltitude(212.0, 60.0, 85.0, v35);
    v85[15] = v68;
    v36.n128_u64[0] = 12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v36);
    v67 = _elementWithColorAtAltitude(218.0, 60.0, 88.0, v37);
    v85[16] = v67;
    v38.n128_u64[0] = 6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v38);
    v40 = _elementWithColorAtAltitude(222.0, 60.0, 88.0, v39);
    v85[17] = v40;
    v41.n128_u64[0] = 0;
    NTKSunsetAltitudeToSolarDayPercentage(v41);
    v43 = _elementWithColorAtAltitude(229.0, 60.0, 85.0, v42);
    v85[18] = v43;
    v44.n128_u64[0] = -6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v44);
    v46 = _elementWithColorAtAltitude(232.0, 55.0, 85.0, v45);
    v85[19] = v46;
    v47.n128_u64[0] = -12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v47);
    v49 = _elementWithColorAtAltitude(233.0, 55.0, 85.0, v48);
    v85[20] = v49;
    v50.n128_u64[0] = -18.0;
    NTKSunsetAltitudeToSolarDayPercentage(v50);
    v52 = _elementWithColorAtAltitude(230.0, 55.0, 85.0, v51);
    v85[21] = v52;
    v53.n128_u64[0] = -30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v53);
    v55 = _elementWithColorAtAltitude(227.0, 55.0, 85.0, v54);
    v85[22] = v55;
    v56.n128_u64[0] = 0xC04E000000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v56);
    v58 = _elementWithColorAtAltitude(228.0, 55.0, 85.0, v57);
    v85[23] = v58;
    v59.n128_u64[0] = 0xC056800000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v59);
    v61 = _elementWithColorAtAltitude(228.0, 55.0, 85.0, v60);
    v85[24] = v61;
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:25];
    v63 = [(NTKCubicColorCurve *)v79 initWithColorCurveElements:v62];
    v64 = self->_innerComplication;
    self->_innerComplication = v63;

    innerComplication = self->_innerComplication;
  }

  v65 = innerComplication;

  return v65;
}

- (id)outerComplicationColorCurve
{
  v85[25] = *MEMORY[0x277D85DE8];
  outerComplication = self->_outerComplication;
  if (!outerComplication)
  {
    v79 = [NTKAltitudeColorCurve alloc];
    v4.n128_u64[0] = 0xC056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v4);
    v84 = _elementWithColorAtAltitude(228.0, 30.0, 92.0, v5);
    v85[0] = v84;
    v6.n128_u64[0] = 0xC04E000000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v6);
    v83 = _elementWithColorAtAltitude(228.0, 30.0, 92.0, v7);
    v85[1] = v83;
    v8.n128_u64[0] = -30.0;
    NTKSunriseAltitudeToSolarDayPercentage(v8);
    v82 = _elementWithColorAtAltitude(225.0, 30.0, 92.0, v9);
    v85[2] = v82;
    v10.n128_u64[0] = -18.0;
    NTKSunriseAltitudeToSolarDayPercentage(v10);
    v81 = _elementWithColorAtAltitude(223.0, 30.0, 92.0, v11);
    v85[3] = v81;
    v12.n128_u64[0] = -12.0;
    NTKSunriseAltitudeToSolarDayPercentage(v12);
    v80 = _elementWithColorAtAltitude(218.0, 30.0, 92.0, v13);
    v85[4] = v80;
    v14.n128_u64[0] = -6.0;
    NTKSunriseAltitudeToSolarDayPercentage(v14);
    v78 = _elementWithColorAtAltitude(216.0, 30.0, 92.0, v15);
    v85[5] = v78;
    v16.n128_u64[0] = 0;
    NTKSunriseAltitudeToSolarDayPercentage(v16);
    v77 = _elementWithColorAtAltitude(216.0, 30.0, 92.0, v17);
    v85[6] = v77;
    v18.n128_u64[0] = 6.0;
    NTKSunriseAltitudeToSolarDayPercentage(v18);
    v76 = _elementWithColorAtAltitude(216.0, 30.0, 92.0, v19);
    v85[7] = v76;
    v20.n128_u64[0] = 12.0;
    NTKSunriseAltitudeToSolarDayPercentage(v20);
    v75 = _elementWithColorAtAltitude(212.0, 30.0, 92.0, v21);
    v85[8] = v75;
    v22.n128_u64[0] = 18.0;
    NTKSunriseAltitudeToSolarDayPercentage(v22);
    v74 = _elementWithColorAtAltitude(208.0, 30.0, 92.0, v23);
    v85[9] = v74;
    v24.n128_u64[0] = 30.0;
    NTKSunriseAltitudeToSolarDayPercentage(v24);
    v73 = _elementWithColorAtAltitude(208.0, 30.0, 92.0, v25);
    v85[10] = v73;
    v26.n128_u64[0] = 0x404E000000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v26);
    v72 = _elementWithColorAtAltitude(209.0, 30.0, 92.0, v27);
    v85[11] = v72;
    v28.n128_u64[0] = 0x4056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v28);
    v71 = _elementWithColorAtAltitude(198.0, 30.0, 90.0, v29);
    v85[12] = v71;
    v30.n128_u64[0] = 0x404E000000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v30);
    v70 = _elementWithColorAtAltitude(209.0, 30.0, 92.0, v31);
    v85[13] = v70;
    v32.n128_u64[0] = 30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v32);
    v69 = _elementWithColorAtAltitude(210.0, 30.0, 92.0, v33);
    v85[14] = v69;
    v34.n128_u64[0] = 18.0;
    NTKSunsetAltitudeToSolarDayPercentage(v34);
    v68 = _elementWithColorAtAltitude(212.0, 30.0, 92.0, v35);
    v85[15] = v68;
    v36.n128_u64[0] = 12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v36);
    v67 = _elementWithColorAtAltitude(218.0, 30.0, 92.0, v37);
    v85[16] = v67;
    v38.n128_u64[0] = 6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v38);
    v40 = _elementWithColorAtAltitude(222.0, 30.0, 92.0, v39);
    v85[17] = v40;
    v41.n128_u64[0] = 0;
    NTKSunsetAltitudeToSolarDayPercentage(v41);
    v43 = _elementWithColorAtAltitude(229.0, 30.0, 92.0, v42);
    v85[18] = v43;
    v44.n128_u64[0] = -6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v44);
    v46 = _elementWithColorAtAltitude(232.0, 30.0, 92.0, v45);
    v85[19] = v46;
    v47.n128_u64[0] = -12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v47);
    v49 = _elementWithColorAtAltitude(233.0, 30.0, 92.0, v48);
    v85[20] = v49;
    v50.n128_u64[0] = -18.0;
    NTKSunsetAltitudeToSolarDayPercentage(v50);
    v52 = _elementWithColorAtAltitude(230.0, 30.0, 92.0, v51);
    v85[21] = v52;
    v53.n128_u64[0] = -30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v53);
    v55 = _elementWithColorAtAltitude(227.0, 30.0, 92.0, v54);
    v85[22] = v55;
    v56.n128_u64[0] = 0xC04E000000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v56);
    v58 = _elementWithColorAtAltitude(228.0, 30.0, 92.0, v57);
    v85[23] = v58;
    v59.n128_u64[0] = 0xC056800000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v59);
    v61 = _elementWithColorAtAltitude(228.0, 30.0, 92.0, v60);
    v85[24] = v61;
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:25];
    v63 = [(NTKCubicColorCurve *)v79 initWithColorCurveElements:v62];
    v64 = self->_outerComplication;
    self->_outerComplication = v63;

    outerComplication = self->_outerComplication;
  }

  v65 = outerComplication;

  return v65;
}

- (id)dayDiskBloomColorCurve
{
  v40[10] = *MEMORY[0x277D85DE8];
  dayDiskBloom = self->_dayDiskBloom;
  if (!dayDiskBloom)
  {
    v37 = [NTKAltitudeColorCurve alloc];
    v4.n128_u64[0] = 0xC056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v4);
    v39 = _elementWithColorAtAltitude(45.0, 40.0, 100.0, v5);
    v40[0] = v39;
    v6.n128_u64[0] = -12.0;
    NTKSunriseAltitudeToSolarDayPercentage(v6);
    v38 = _elementWithColorAtAltitude(45.0, 40.0, 100.0, v7);
    v40[1] = v38;
    v8.n128_u64[0] = 0;
    NTKSunriseAltitudeToSolarDayPercentage(v8);
    v10 = _elementWithColorAtAltitude(45.0, 45.0, 100.0, v9);
    v40[2] = v10;
    v11.n128_u64[0] = 0x4056800000000000;
    NTKSunriseAltitudeToSolarDayPercentage(v11);
    v13 = _elementWithColorAtAltitude(45.0, 10.0, 100.0, v12);
    v40[3] = v13;
    v14.n128_u64[0] = 30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v14);
    v16 = _elementWithColorAtAltitude(45.0, 25.0, 100.0, v15);
    v40[4] = v16;
    v17.n128_u64[0] = 12.0;
    NTKSunsetAltitudeToSolarDayPercentage(v17);
    v19 = _elementWithColorAtAltitude(45.0, 40.0, 100.0, v18);
    v40[5] = v19;
    v20.n128_u64[0] = 6.0;
    NTKSunsetAltitudeToSolarDayPercentage(v20);
    v22 = _elementWithColorAtAltitude(40.0, 60.0, 100.0, v21);
    v40[6] = v22;
    v23.n128_u64[0] = 0;
    NTKSunsetAltitudeToSolarDayPercentage(v23);
    v25 = _elementWithColorAtAltitude(35.0, 65.0, 100.0, v24);
    v40[7] = v25;
    v26.n128_u64[0] = -30.0;
    NTKSunsetAltitudeToSolarDayPercentage(v26);
    v28 = _elementWithColorAtAltitude(45.0, 40.0, 100.0, v27);
    v40[8] = v28;
    v29.n128_u64[0] = 0xC056800000000000;
    NTKSunsetAltitudeToSolarDayPercentage(v29);
    v31 = _elementWithColorAtAltitude(45.0, 40.0, 100.0, v30);
    v40[9] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:10];
    v33 = [(NTKCubicColorCurve *)v37 initWithColorCurveElements:v32];
    v34 = self->_dayDiskBloom;
    self->_dayDiskBloom = v33;

    dayDiskBloom = self->_dayDiskBloom;
  }

  v35 = dayDiskBloom;

  return v35;
}

@end