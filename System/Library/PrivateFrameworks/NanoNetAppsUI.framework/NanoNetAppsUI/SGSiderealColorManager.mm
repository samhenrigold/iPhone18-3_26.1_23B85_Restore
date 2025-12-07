@interface SGSiderealColorManager
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

@implementation SGSiderealColorManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SGSiderealColorManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __40__SGSiderealColorManager_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = [[SGSiderealColorManager alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = SGSiderealColorManager;
  v2 = [(SGSiderealColorManager *)&v6 init];
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
  v4.super_class = SGSiderealColorManager;
  [(SGSiderealColorManager *)&v4 dealloc];
}

- (void)addColorUpdateHandler:(id)handler
{
  updateHandlers = self->_updateHandlers;
  v4 = MEMORY[0x25F865F50](handler, a2);
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
    v7 = 0;
    do
    {
      v8 = [v6 objectAtIndexedSubscript:v7];
      v9 = [dictCopy objectForKeyedSubscript:v8];
      [v8 floatValue];
      v11 = SGSunriseAltitudeToSolarDayPercentage(v10);
      v12 = [v9 objectAtIndexedSubscript:0];
      [v12 floatValue];
      v14 = v13;
      v15 = [v9 objectAtIndexedSubscript:1];
      [v15 floatValue];
      v17 = v16;
      v18 = [v9 objectAtIndexedSubscript:2];
      [v18 floatValue];
      v20 = SGCubicColorCurveElementCreate(v11, v14, v17, v19);

      [v4 addObject:v20];
      ++v7;
    }

    while (v7 < [v6 count]);
  }

  v21 = [v6 count] - 2;
  if (v21 >= 0)
  {
    do
    {
      v22 = [v6 objectAtIndexedSubscript:v21];
      v23 = [dictCopy objectForKeyedSubscript:v22];
      [v22 floatValue];
      v25 = SGSunsetAltitudeToSolarDayPercentage(v24);
      v26 = [v23 objectAtIndexedSubscript:0];
      [v26 floatValue];
      v28 = v27;
      v29 = [v23 objectAtIndexedSubscript:1];
      [v29 floatValue];
      v31 = v30;
      v32 = [v23 objectAtIndexedSubscript:2];
      [v32 floatValue];
      v34 = SGCubicColorCurveElementCreate(v25, v28, v31, v33);

      [v4 addObject:v34];
      --v21;
    }

    while (v21 != -1);
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
    v10[0] = &unk_286C8EB28;
    v10[1] = &unk_286C8EB40;
    v11[0] = &unk_286C8FC20;
    v11[1] = &unk_286C8FC38;
    v10[2] = &unk_286C8EB58;
    v10[3] = &unk_286C8EB70;
    v11[2] = &unk_286C8FC50;
    v11[3] = &unk_286C8FC68;
    v10[4] = &unk_286C8EB88;
    v10[5] = &unk_286C8EBA0;
    v11[4] = &unk_286C8FC80;
    v11[5] = &unk_286C8FC98;
    v10[6] = &unk_286C8EBB8;
    v10[7] = &unk_286C8EBD0;
    v11[6] = &unk_286C8FCB0;
    v11[7] = &unk_286C8FCC8;
    v10[8] = &unk_286C8EBE8;
    v10[9] = &unk_286C8EC00;
    v11[8] = &unk_286C8FCE0;
    v11[9] = &unk_286C8FCF8;
    v10[10] = &unk_286C8EC18;
    v10[11] = &unk_286C8EC30;
    v11[10] = &unk_286C8FD10;
    v11[11] = &unk_286C8FD28;
    v10[12] = &unk_286C8EC48;
    v11[12] = &unk_286C8FD40;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:13];
    v6 = [(SGSiderealColorManager *)self _createElementsFromDict:v5];

    v7 = [[SGCubicColorCurve alloc] initWithCubicColorCurveElements:v6];
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
    v10[0] = &unk_286C8EB28;
    v10[1] = &unk_286C8EB40;
    v11[0] = &unk_286C8FD58;
    v11[1] = &unk_286C8FD70;
    v10[2] = &unk_286C8EB58;
    v10[3] = &unk_286C8EB70;
    v11[2] = &unk_286C8FD88;
    v11[3] = &unk_286C8FDA0;
    v10[4] = &unk_286C8EB88;
    v10[5] = &unk_286C8EBA0;
    v11[4] = &unk_286C8FDB8;
    v11[5] = &unk_286C8FDD0;
    v10[6] = &unk_286C8EBB8;
    v10[7] = &unk_286C8EBD0;
    v11[6] = &unk_286C8FDE8;
    v11[7] = &unk_286C8FE00;
    v10[8] = &unk_286C8EBE8;
    v10[9] = &unk_286C8EC00;
    v11[8] = &unk_286C8FE18;
    v11[9] = &unk_286C8FE30;
    v10[10] = &unk_286C8EC18;
    v10[11] = &unk_286C8EC30;
    v11[10] = &unk_286C8FE48;
    v11[11] = &unk_286C8FE60;
    v10[12] = &unk_286C8EC48;
    v11[12] = &unk_286C8FE78;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:13];
    v6 = [(SGSiderealColorManager *)self _createElementsFromDict:v5];

    v7 = [[SGCubicColorCurve alloc] initWithCubicColorCurveElements:v6];
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
    v10[0] = &unk_286C8EB28;
    v10[1] = &unk_286C8EB40;
    v11[0] = &unk_286C8FE90;
    v11[1] = &unk_286C8FEA8;
    v10[2] = &unk_286C8EB58;
    v10[3] = &unk_286C8EB70;
    v11[2] = &unk_286C8FEC0;
    v11[3] = &unk_286C8FED8;
    v10[4] = &unk_286C8EB88;
    v10[5] = &unk_286C8EBA0;
    v11[4] = &unk_286C8FEF0;
    v11[5] = &unk_286C8FF08;
    v10[6] = &unk_286C8EBB8;
    v10[7] = &unk_286C8EBD0;
    v11[6] = &unk_286C8FF20;
    v11[7] = &unk_286C8FF38;
    v10[8] = &unk_286C8EBE8;
    v10[9] = &unk_286C8EC00;
    v11[8] = &unk_286C8FF50;
    v11[9] = &unk_286C8FF68;
    v10[10] = &unk_286C8EC18;
    v10[11] = &unk_286C8EC30;
    v11[10] = &unk_286C8FF80;
    v11[11] = &unk_286C8FF98;
    v10[12] = &unk_286C8EC48;
    v11[12] = &unk_286C8FFB0;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:13];
    v6 = [(SGSiderealColorManager *)self _createElementsFromDict:v5];

    v7 = [[SGCubicColorCurve alloc] initWithCubicColorCurveElements:v6];
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
    v22[0] = &unk_286C8EB28;
    v22[1] = &unk_286C8EB40;
    v23[0] = &unk_286C8FFC8;
    v23[1] = &unk_286C8FFE0;
    v22[2] = &unk_286C8EB58;
    v22[3] = &unk_286C8EB70;
    v23[2] = &unk_286C8FFF8;
    v23[3] = &unk_286C90010;
    v22[4] = &unk_286C8EB88;
    v22[5] = &unk_286C8EBA0;
    v23[4] = &unk_286C90028;
    v23[5] = &unk_286C90040;
    v22[6] = &unk_286C8EBB8;
    v22[7] = &unk_286C8EBD0;
    v23[6] = &unk_286C90058;
    v23[7] = &unk_286C90070;
    v22[8] = &unk_286C8EBE8;
    v22[9] = &unk_286C8EC00;
    v23[8] = &unk_286C90088;
    v23[9] = &unk_286C900A0;
    v22[10] = &unk_286C8EC18;
    v22[11] = &unk_286C8EC30;
    v23[10] = &unk_286C900B8;
    v23[11] = &unk_286C900D0;
    v22[12] = &unk_286C8EC48;
    v23[12] = &unk_286C900E8;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:13];
    v16 = [(SGSiderealColorManager *)self _createElementsFromDict:v5];

    v15 = [[SGCubicColorCurve alloc] initWithCubicColorCurveElements:v16];
    v20[0] = &unk_286C8EB28;
    v20[1] = &unk_286C8EB40;
    v21[0] = &unk_286C90100;
    v21[1] = &unk_286C90118;
    v20[2] = &unk_286C8EB58;
    v20[3] = &unk_286C8EB70;
    v21[2] = &unk_286C90130;
    v21[3] = &unk_286C90148;
    v20[4] = &unk_286C8EB88;
    v20[5] = &unk_286C8EBA0;
    v21[4] = &unk_286C90160;
    v21[5] = &unk_286C90178;
    v20[6] = &unk_286C8EBB8;
    v20[7] = &unk_286C8EBD0;
    v21[6] = &unk_286C90190;
    v21[7] = &unk_286C901A8;
    v20[8] = &unk_286C8EBE8;
    v20[9] = &unk_286C8EC00;
    v21[8] = &unk_286C901C0;
    v21[9] = &unk_286C901D8;
    v20[10] = &unk_286C8EC18;
    v20[11] = &unk_286C8EC30;
    v21[10] = &unk_286C901F0;
    v21[11] = &unk_286C90208;
    v20[12] = &unk_286C8EC48;
    v21[12] = &unk_286C90220;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:13];
    v7 = [(SGSiderealColorManager *)self _createElementsFromDict:v6];

    v8 = [[SGCubicColorCurve alloc] initWithCubicColorCurveElements:v7];
    v18[0] = &unk_286C8EB28;
    v18[1] = &unk_286C8EB40;
    v19[0] = &unk_286C90238;
    v19[1] = &unk_286C90250;
    v18[2] = &unk_286C8EB58;
    v18[3] = &unk_286C8EB70;
    v19[2] = &unk_286C90268;
    v19[3] = &unk_286C90280;
    v18[4] = &unk_286C8EB88;
    v18[5] = &unk_286C8EBA0;
    v19[4] = &unk_286C90298;
    v19[5] = &unk_286C902B0;
    v18[6] = &unk_286C8EBB8;
    v18[7] = &unk_286C8EBD0;
    v19[6] = &unk_286C902C8;
    v19[7] = &unk_286C902E0;
    v18[8] = &unk_286C8EBE8;
    v18[9] = &unk_286C8EC00;
    v19[8] = &unk_286C902F8;
    v19[9] = &unk_286C90310;
    v18[10] = &unk_286C8EC18;
    v18[11] = &unk_286C8EC30;
    v19[10] = &unk_286C90328;
    v19[11] = &unk_286C90340;
    v18[12] = &unk_286C8EC48;
    v19[12] = &unk_286C90358;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:13];
    v10 = [(SGSiderealColorManager *)self _createElementsFromDict:v9];

    v11 = [[SGCubicColorCurve alloc] initWithCubicColorCurveElements:v10];
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
    v10[0] = &unk_286C8EB28;
    v10[1] = &unk_286C8EB40;
    v11[0] = &unk_286C90370;
    v11[1] = &unk_286C90388;
    v10[2] = &unk_286C8EB58;
    v10[3] = &unk_286C8EB70;
    v11[2] = &unk_286C903A0;
    v11[3] = &unk_286C903B8;
    v10[4] = &unk_286C8EB88;
    v10[5] = &unk_286C8EBA0;
    v11[4] = &unk_286C903D0;
    v11[5] = &unk_286C903E8;
    v10[6] = &unk_286C8EBB8;
    v10[7] = &unk_286C8EBD0;
    v11[6] = &unk_286C90400;
    v11[7] = &unk_286C90418;
    v10[8] = &unk_286C8EBE8;
    v10[9] = &unk_286C8EC00;
    v11[8] = &unk_286C90430;
    v11[9] = &unk_286C90448;
    v10[10] = &unk_286C8EC18;
    v10[11] = &unk_286C8EC30;
    v11[10] = &unk_286C90460;
    v11[11] = &unk_286C90478;
    v10[12] = &unk_286C8EC48;
    v11[12] = &unk_286C90490;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:13];
    v6 = [(SGSiderealColorManager *)self _createElementsFromDict:v5];

    v7 = [[SGCubicColorCurve alloc] initWithCubicColorCurveElements:v6];
    v8 = self->_dialBackgroundCurve_p3;
    self->_dialBackgroundCurve_p3 = v7;

    v3 = self->_dialBackgroundCurve_p3;
  }

  return v3;
}

- (id)dialBackgroundColorCurve
{
  v56[23] = *MEMORY[0x277D85DE8];
  dialBackground = self->_dialBackground;
  if (!dialBackground)
  {
    v51 = [SGCubicColorCurve alloc];
    v4 = SGSunriseAltitudeToSolarDayPercentage(-90.0);
    v55 = _elementWithColorAtAltitude(224.0, 80.0, 24.0, v4);
    v56[0] = v55;
    v5 = SGSunriseAltitudeToSolarDayPercentage(-60.0);
    v54 = _elementWithColorAtAltitude(224.0, 80.0, 24.0, v5);
    v56[1] = v54;
    v6 = SGSunriseAltitudeToSolarDayPercentage(-30.0);
    v53 = _elementWithColorAtAltitude(224.0, 80.0, 24.0, v6);
    v56[2] = v53;
    v7 = SGSunriseAltitudeToSolarDayPercentage(-18.0);
    v52 = _elementWithColorAtAltitude(218.0, 83.0, 24.0, v7);
    v56[3] = v52;
    v8 = SGSunriseAltitudeToSolarDayPercentage(-12.0);
    v50 = _elementWithColorAtAltitude(212.0, 92.0, 22.0, v8);
    v56[4] = v50;
    v9 = SGSunriseAltitudeToSolarDayPercentage(-6.0);
    v49 = _elementWithColorAtAltitude(206.0, 95.0, 21.0, v9);
    v56[5] = v49;
    v10 = SGSunriseAltitudeToSolarDayPercentage(0.0);
    v48 = _elementWithColorAtAltitude(202.0, 100.0, 20.0, v10);
    v56[6] = v48;
    v11 = SGSunriseAltitudeToSolarDayPercentage(6.0);
    v47 = _elementWithColorAtAltitude(200.0, 100.0, 20.0, v11);
    v56[7] = v47;
    v12 = SGSunriseAltitudeToSolarDayPercentage(30.0);
    v46 = _elementWithColorAtAltitude(200.0, 100.0, 20.0, v12);
    v56[8] = v46;
    v13 = SGSunriseAltitudeToSolarDayPercentage(60.0);
    v45 = _elementWithColorAtAltitude(204.0, 100.0, 20.0, v13);
    v56[9] = v45;
    v14 = SGSunriseAltitudeToSolarDayPercentage(90.0);
    v44 = _elementWithColorAtAltitude(206.0, 100.0, 24.0, v14);
    v56[10] = v44;
    v15 = SGSunsetAltitudeToSolarDayPercentage(60.0);
    v43 = _elementWithColorAtAltitude(217.0, 100.0, 24.0, v15);
    v56[11] = v43;
    v16 = SGSunsetAltitudeToSolarDayPercentage(30.0);
    v42 = _elementWithColorAtAltitude(217.0, 100.0, 24.0, v16);
    v56[12] = v42;
    v17 = SGSunsetAltitudeToSolarDayPercentage(18.0);
    v41 = _elementWithColorAtAltitude(220.0, 95.0, 24.0, v17);
    v56[13] = v41;
    v18 = SGSunsetAltitudeToSolarDayPercentage(12.0);
    v40 = _elementWithColorAtAltitude(223.0, 89.0, 25.0, v18);
    v56[14] = v40;
    v19 = SGSunsetAltitudeToSolarDayPercentage(6.0);
    v20 = _elementWithColorAtAltitude(225.0, 85.0, 26.0, v19);
    v56[15] = v20;
    v21 = SGSunsetAltitudeToSolarDayPercentage(0.0);
    v22 = _elementWithColorAtAltitude(229.0, 85.0, 26.0, v21);
    v56[16] = v22;
    v23 = SGSunsetAltitudeToSolarDayPercentage(-6.0);
    v24 = _elementWithColorAtAltitude(233.0, 85.0, 26.0, v23);
    v56[17] = v24;
    v25 = SGSunsetAltitudeToSolarDayPercentage(-12.0);
    v26 = _elementWithColorAtAltitude(233.0, 85.0, 26.0, v25);
    v56[18] = v26;
    v27 = SGSunsetAltitudeToSolarDayPercentage(-18.0);
    v28 = _elementWithColorAtAltitude(233.0, 84.0, 26.0, v27);
    v56[19] = v28;
    v29 = SGSunsetAltitudeToSolarDayPercentage(-30.0);
    v30 = _elementWithColorAtAltitude(224.0, 80.0, 24.0, v29);
    v56[20] = v30;
    v31 = SGSunsetAltitudeToSolarDayPercentage(-60.0);
    v32 = _elementWithColorAtAltitude(224.0, 80.0, 24.0, v31);
    v56[21] = v32;
    v33 = SGSunsetAltitudeToSolarDayPercentage(-90.0);
    v34 = _elementWithColorAtAltitude(224.0, 80.0, 24.0, v33);
    v56[22] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:23];
    v36 = [(SGCubicColorCurve *)v51 initWithColorCurveElements:v35];
    v37 = self->_dialBackground;
    self->_dialBackground = v36;

    dialBackground = self->_dialBackground;
  }

  v38 = dialBackground;

  return v38;
}

- (id)dayGradientColorCurves
{
  v170[25] = *MEMORY[0x277D85DE8];
  dayGradient = self->_dayGradient;
  if (dayGradient)
  {
    v3 = dayGradient;
  }

  else
  {
    v162 = [SGCubicColorCurve alloc];
    v4 = SGSunriseAltitudeToSolarDayPercentage(-90.0);
    v152 = _elementWithColorAtAltitude(237.0, 87.0, 24.0, v4);
    v170[0] = v152;
    v5 = SGSunriseAltitudeToSolarDayPercentage(-60.0);
    v146 = _elementWithColorAtAltitude(237.0, 87.0, 24.0, v5);
    v170[1] = v146;
    v6 = SGSunriseAltitudeToSolarDayPercentage(-30.0);
    v142 = _elementWithColorAtAltitude(237.0, 87.0, 24.0, v6);
    v170[2] = v142;
    v7 = SGSunriseAltitudeToSolarDayPercentage(-18.0);
    v140 = _elementWithColorAtAltitude(235.0, 80.0, 25.0, v7);
    v170[3] = v140;
    v8 = SGSunriseAltitudeToSolarDayPercentage(-12.0);
    v137 = _elementWithColorAtAltitude(225.0, 64.0, 53.0, v8);
    v170[4] = v137;
    v9 = SGSunriseAltitudeToSolarDayPercentage(-6.0);
    v132 = _elementWithColorAtAltitude(224.0, 62.0, 61.0, v9);
    v170[5] = v132;
    v10 = SGSunriseAltitudeToSolarDayPercentage(0.0);
    v130 = _elementWithColorAtAltitude(222.0, 60.0, 74.0, v10);
    v170[6] = v130;
    v11 = SGSunriseAltitudeToSolarDayPercentage(6.0);
    v128 = _elementWithColorAtAltitude(216.0, 63.0, 76.0, v11);
    v170[7] = v128;
    v12 = SGSunriseAltitudeToSolarDayPercentage(12.0);
    v126 = _elementWithColorAtAltitude(215.0, 69.0, 78.0, v12);
    v170[8] = v126;
    v13 = SGSunriseAltitudeToSolarDayPercentage(18.0);
    v124 = _elementWithColorAtAltitude(214.0, 74.0, 80.0, v13);
    v170[9] = v124;
    v14 = SGSunriseAltitudeToSolarDayPercentage(30.0);
    v123 = _elementWithColorAtAltitude(213.0, 86.0, 86.0, v14);
    v170[10] = v123;
    v15 = SGSunriseAltitudeToSolarDayPercentage(60.0);
    v121 = _elementWithColorAtAltitude(212.0, 66.0, 88.0, v15);
    v170[11] = v121;
    v16 = SGSunriseAltitudeToSolarDayPercentage(90.0);
    v119 = _elementWithColorAtAltitude(204.0, 19.0, 96.0, v16);
    v170[12] = v119;
    v17 = SGSunsetAltitudeToSolarDayPercentage(60.0);
    v117 = _elementWithColorAtAltitude(212.0, 58.0, 87.0, v17);
    v170[13] = v117;
    v18 = SGSunsetAltitudeToSolarDayPercentage(30.0);
    v115 = _elementWithColorAtAltitude(213.0, 78.0, 83.0, v18);
    v170[14] = v115;
    v19 = SGSunsetAltitudeToSolarDayPercentage(18.0);
    v113 = _elementWithColorAtAltitude(217.0, 76.0, 67.0, v19);
    v170[15] = v113;
    v20 = SGSunsetAltitudeToSolarDayPercentage(12.0);
    v21 = _elementWithColorAtAltitude(220.0, 76.0, 60.0, v20);
    v170[16] = v21;
    v22 = SGSunsetAltitudeToSolarDayPercentage(6.0);
    v23 = _elementWithColorAtAltitude(223.0, 75.0, 55.0, v22);
    v170[17] = v23;
    v24 = SGSunsetAltitudeToSolarDayPercentage(0.0);
    v25 = _elementWithColorAtAltitude(228.0, 73.0, 47.0, v24);
    v170[18] = v25;
    v26 = SGSunsetAltitudeToSolarDayPercentage(-6.0);
    v27 = _elementWithColorAtAltitude(231.0, 78.0, 38.0, v26);
    v170[19] = v27;
    v28 = SGSunsetAltitudeToSolarDayPercentage(-12.0);
    v29 = _elementWithColorAtAltitude(233.0, 82.0, 33.0, v28);
    v170[20] = v29;
    v30 = SGSunsetAltitudeToSolarDayPercentage(-18.0);
    v31 = _elementWithColorAtAltitude(240.0, 96.0, 22.0, v30);
    v170[21] = v31;
    v32 = SGSunsetAltitudeToSolarDayPercentage(-30.0);
    v33 = _elementWithColorAtAltitude(237.0, 87.0, 24.0, v32);
    v170[22] = v33;
    v34 = SGSunsetAltitudeToSolarDayPercentage(-60.0);
    v35 = _elementWithColorAtAltitude(237.0, 87.0, 24.0, v34);
    v170[23] = v35;
    v36 = SGSunsetAltitudeToSolarDayPercentage(-90.0);
    v37 = _elementWithColorAtAltitude(237.0, 87.0, 24.0, v36);
    v170[24] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v170 count:25];
    v163 = [(SGCubicColorCurve *)v162 initWithColorCurveElements:v38];

    v131 = [SGCubicColorCurve alloc];
    v39 = SGSunriseAltitudeToSolarDayPercentage(-90.0);
    v147 = _elementWithColorAtAltitude(225.0, 70.0, 27.0, v39);
    v169[0] = v147;
    v40 = SGSunriseAltitudeToSolarDayPercentage(-60.0);
    v143 = _elementWithColorAtAltitude(225.0, 70.0, 27.0, v40);
    v169[1] = v143;
    v41 = SGSunriseAltitudeToSolarDayPercentage(-30.0);
    v138 = _elementWithColorAtAltitude(225.0, 70.0, 27.0, v41);
    v169[2] = v138;
    v42 = SGSunriseAltitudeToSolarDayPercentage(-18.0);
    v135 = _elementWithColorAtAltitude(214.0, 74.0, 22.0, v42);
    v169[3] = v135;
    v43 = SGSunriseAltitudeToSolarDayPercentage(-12.0);
    v133 = _elementWithColorAtAltitude(209.0, 30.0, 51.0, v43);
    v169[4] = v133;
    v44 = SGSunriseAltitudeToSolarDayPercentage(-6.0);
    v129 = _elementWithColorAtAltitude(207.0, 25.0, 60.0, v44);
    v169[5] = v129;
    v45 = SGSunriseAltitudeToSolarDayPercentage(0.0);
    v127 = _elementWithColorAtAltitude(203.0, 21.0, 72.0, v45);
    v169[6] = v127;
    v46 = SGSunriseAltitudeToSolarDayPercentage(6.0);
    v134 = _elementWithColorAtAltitude(212.0, 23.0, 82.0, v46);
    v169[7] = v134;
    v47 = SGSunriseAltitudeToSolarDayPercentage(12.0);
    v125 = _elementWithColorAtAltitude(208.0, 31.0, 80.0, v47);
    v169[8] = v125;
    v48 = SGSunriseAltitudeToSolarDayPercentage(18.0);
    v150 = _elementWithColorAtAltitude(205.0, 40.0, 80.0, v48);
    v169[9] = v150;
    v49 = SGSunriseAltitudeToSolarDayPercentage(30.0);
    v122 = _elementWithColorAtAltitude(202.0, 62.0, 75.0, v49);
    v169[10] = v122;
    v50 = SGSunriseAltitudeToSolarDayPercentage(60.0);
    v120 = _elementWithColorAtAltitude(201.0, 59.0, 77.0, v50);
    v169[11] = v120;
    v51 = SGSunriseAltitudeToSolarDayPercentage(90.0);
    v118 = _elementWithColorAtAltitude(199.0, 53.0, 82.0, v51);
    v169[12] = v118;
    v52 = SGSunsetAltitudeToSolarDayPercentage(60.0);
    v116 = _elementWithColorAtAltitude(202.0, 67.0, 77.0, v52);
    v169[13] = v116;
    v53 = SGSunsetAltitudeToSolarDayPercentage(30.0);
    v114 = _elementWithColorAtAltitude(203.0, 74.0, 75.0, v53);
    v169[14] = v114;
    v54 = SGSunsetAltitudeToSolarDayPercentage(18.0);
    v144 = _elementWithColorAtAltitude(210.0, 57.0, 67.0, v54);
    v169[15] = v144;
    v55 = SGSunsetAltitudeToSolarDayPercentage(12.0);
    v56 = _elementWithColorAtAltitude(215.0, 49.0, 64.0, v55);
    v169[16] = v56;
    v57 = SGSunsetAltitudeToSolarDayPercentage(6.0);
    v58 = _elementWithColorAtAltitude(221.0, 42.0, 61.0, v57);
    v169[17] = v58;
    v59 = SGSunsetAltitudeToSolarDayPercentage(0.0);
    v60 = _elementWithColorAtAltitude(237.0, 30.0, 57.0, v59);
    v169[18] = v60;
    v61 = SGSunsetAltitudeToSolarDayPercentage(-6.0);
    v62 = _elementWithColorAtAltitude(236.0, 38.0, 48.0, v61);
    v169[19] = v62;
    v63 = SGSunsetAltitudeToSolarDayPercentage(-12.0);
    v64 = _elementWithColorAtAltitude(236.0, 46.0, 42.0, v63);
    v169[20] = v64;
    v65 = SGSunsetAltitudeToSolarDayPercentage(-18.0);
    v66 = _elementWithColorAtAltitude(235.0, 68.0, 31.0, v65);
    v169[21] = v66;
    v67 = SGSunsetAltitudeToSolarDayPercentage(-30.0);
    v68 = _elementWithColorAtAltitude(225.0, 70.0, 27.0, v67);
    v169[22] = v68;
    v69 = SGSunsetAltitudeToSolarDayPercentage(-60.0);
    v70 = _elementWithColorAtAltitude(225.0, 70.0, 27.0, v69);
    v169[23] = v70;
    v71 = SGSunsetAltitudeToSolarDayPercentage(-90.0);
    v72 = _elementWithColorAtAltitude(225.0, 70.0, 27.0, v71);
    v169[24] = v72;
    v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v169 count:25];
    v165 = [(SGCubicColorCurve *)v131 initWithColorCurveElements:v73];

    v74 = [SGCubicColorCurve alloc];
    v75 = SGSunriseAltitudeToSolarDayPercentage(-90.0);
    v156 = _elementWithColorAtAltitude(227.0, 70.0, 48.0, v75);
    v168[0] = v156;
    v76 = SGSunriseAltitudeToSolarDayPercentage(-60.0);
    v153 = _elementWithColorAtAltitude(227.0, 70.0, 48.0, v76);
    v168[1] = v153;
    v77 = SGSunriseAltitudeToSolarDayPercentage(-30.0);
    v151 = _elementWithColorAtAltitude(227.0, 70.0, 48.0, v77);
    v168[2] = v151;
    v78 = SGSunriseAltitudeToSolarDayPercentage(-18.0);
    v155 = _elementWithColorAtAltitude(230.0, 60.0, 55.0, v78);
    v168[3] = v155;
    v79 = SGSunriseAltitudeToSolarDayPercentage(-12.0);
    v154 = _elementWithColorAtAltitude(21.0, 19.0, 61.0, v79);
    v168[4] = v154;
    v80 = SGSunriseAltitudeToSolarDayPercentage(-6.0);
    v149 = _elementWithColorAtAltitude(30.0, 29.0, 74.0, v80);
    v168[5] = v149;
    v81 = SGSunriseAltitudeToSolarDayPercentage(0.0);
    v148 = _elementWithColorAtAltitude(35.0, 44.0, 94.0, v81);
    v168[6] = v148;
    v82 = SGSunriseAltitudeToSolarDayPercentage(6.0);
    v145 = _elementWithColorAtAltitude(40.0, 28.0, 98.0, v82);
    v168[7] = v145;
    v83 = SGSunriseAltitudeToSolarDayPercentage(12.0);
    v159 = _elementWithColorAtAltitude(54.0, 12.0, 86.0, v83);
    v168[8] = v159;
    v84 = SGSunriseAltitudeToSolarDayPercentage(18.0);
    v141 = _elementWithColorAtAltitude(171.0, 8.0, 82.0, v84);
    v168[9] = v141;
    v85 = SGSunriseAltitudeToSolarDayPercentage(30.0);
    v139 = _elementWithColorAtAltitude(206.0, 50.0, 94.0, v85);
    v168[10] = v139;
    v86 = SGSunriseAltitudeToSolarDayPercentage(60.0);
    v136 = _elementWithColorAtAltitude(208.0, 58.0, 95.0, v86);
    v168[11] = v136;
    v87 = SGSunriseAltitudeToSolarDayPercentage(90.0);
    v166 = _elementWithColorAtAltitude(210.0, 77.0, 96.0, v87);
    v168[12] = v166;
    v88 = SGSunsetAltitudeToSolarDayPercentage(60.0);
    v158 = _elementWithColorAtAltitude(208.0, 58.0, 95.0, v88);
    v168[13] = v158;
    v89 = SGSunsetAltitudeToSolarDayPercentage(30.0);
    v157 = _elementWithColorAtAltitude(206.0, 50.0, 94.0, v89);
    v168[14] = v157;
    v90 = SGSunsetAltitudeToSolarDayPercentage(18.0);
    v161 = _elementWithColorAtAltitude(204.0, 17.0, 81.0, v90);
    v168[15] = v161;
    v91 = SGSunsetAltitudeToSolarDayPercentage(12.0);
    v160 = _elementWithColorAtAltitude(54.0, 1.0, 76.0, v91);
    v168[16] = v160;
    v92 = SGSunsetAltitudeToSolarDayPercentage(6.0);
    v93 = _elementWithColorAtAltitude(29.0, 14.0, 82.0, v92);
    v168[17] = v93;
    v94 = SGSunsetAltitudeToSolarDayPercentage(0.0);
    v95 = _elementWithColorAtAltitude(28.0, 30.0, 98.0, v94);
    v168[18] = v95;
    v96 = SGSunsetAltitudeToSolarDayPercentage(-6.0);
    v97 = _elementWithColorAtAltitude(344.0, 10.0, 64.0, v96);
    v168[19] = v97;
    v98 = SGSunsetAltitudeToSolarDayPercentage(-12.0);
    v99 = _elementWithColorAtAltitude(245.0, 22.0, 56.0, v98);
    v168[20] = v99;
    v100 = SGSunsetAltitudeToSolarDayPercentage(-18.0);
    v101 = _elementWithColorAtAltitude(226.0, 79.0, 50.0, v100);
    v168[21] = v101;
    v102 = SGSunsetAltitudeToSolarDayPercentage(-30.0);
    v103 = _elementWithColorAtAltitude(227.0, 70.0, 48.0, v102);
    v168[22] = v103;
    v104 = SGSunsetAltitudeToSolarDayPercentage(-60.0);
    v105 = _elementWithColorAtAltitude(227.0, 70.0, 48.0, v104);
    v168[23] = v105;
    v106 = SGSunsetAltitudeToSolarDayPercentage(-90.0);
    v107 = _elementWithColorAtAltitude(227.0, 70.0, 48.0, v106);
    v168[24] = v107;
    v108 = [MEMORY[0x277CBEA60] arrayWithObjects:v168 count:25];
    v109 = [(SGCubicColorCurve *)v74 initWithColorCurveElements:v108];

    v167[0] = v163;
    v167[1] = v165;
    v167[2] = v109;
    v110 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:3];
    v111 = self->_dayGradient;
    self->_dayGradient = v110;

    v3 = self->_dayGradient;
  }

  return v3;
}

- (id)civilTwilightColorCurve
{
  v58[24] = *MEMORY[0x277D85DE8];
  civilTwilight = self->_civilTwilight;
  if (!civilTwilight)
  {
    v52 = [SGCubicColorCurve alloc];
    v4 = SGSunriseAltitudeToSolarDayPercentage(-90.0);
    v57 = _elementWithColorAtAltitude(224.0, 80.0, 40.0, v4);
    v58[0] = v57;
    v5 = SGSunriseAltitudeToSolarDayPercentage(-60.0);
    v56 = _elementWithColorAtAltitude(224.0, 80.0, 40.0, v5);
    v58[1] = v56;
    v6 = SGSunriseAltitudeToSolarDayPercentage(-30.0);
    v55 = _elementWithColorAtAltitude(224.0, 80.0, 40.0, v6);
    v58[2] = v55;
    v7 = SGSunriseAltitudeToSolarDayPercentage(-18.0);
    v54 = _elementWithColorAtAltitude(220.0, 70.0, 45.0, v7);
    v58[3] = v54;
    v8 = SGSunriseAltitudeToSolarDayPercentage(-12.0);
    v53 = _elementWithColorAtAltitude(216.0, 70.0, 46.0, v8);
    v58[4] = v53;
    v9 = SGSunriseAltitudeToSolarDayPercentage(-6.0);
    v51 = _elementWithColorAtAltitude(215.0, 70.0, 47.0, v9);
    v58[5] = v51;
    v10 = SGSunriseAltitudeToSolarDayPercentage(0.0);
    v50 = _elementWithColorAtAltitude(215.0, 65.0, 50.0, v10);
    v58[6] = v50;
    v11 = SGSunriseAltitudeToSolarDayPercentage(6.0);
    v49 = _elementWithColorAtAltitude(210.0, 80.0, 50.0, v11);
    v58[7] = v49;
    v12 = SGSunriseAltitudeToSolarDayPercentage(12.0);
    v48 = _elementWithColorAtAltitude(210.0, 80.0, 50.0, v12);
    v58[8] = v48;
    v13 = SGSunriseAltitudeToSolarDayPercentage(18.0);
    v47 = _elementWithColorAtAltitude(210.0, 80.0, 50.0, v13);
    v58[9] = v47;
    v14 = SGSunriseAltitudeToSolarDayPercentage(30.0);
    v46 = _elementWithColorAtAltitude(210.0, 80.0, 50.0, v14);
    v58[10] = v46;
    v15 = SGSunriseAltitudeToSolarDayPercentage(60.0);
    v45 = _elementWithColorAtAltitude(210.0, 80.0, 50.0, v15);
    v58[11] = v45;
    v16 = SGSunriseAltitudeToSolarDayPercentage(90.0);
    v44 = _elementWithColorAtAltitude(208.0, 85.0, 52.0, v16);
    v58[12] = v44;
    v17 = SGSunsetAltitudeToSolarDayPercentage(60.0);
    v43 = _elementWithColorAtAltitude(216.0, 75.0, 55.0, v17);
    v58[13] = v43;
    v18 = SGSunsetAltitudeToSolarDayPercentage(30.0);
    v42 = _elementWithColorAtAltitude(216.0, 75.0, 55.0, v18);
    v58[14] = v42;
    v19 = SGSunsetAltitudeToSolarDayPercentage(18.0);
    v41 = _elementWithColorAtAltitude(217.0, 75.0, 55.0, v19);
    v58[15] = v41;
    v20 = SGSunsetAltitudeToSolarDayPercentage(12.0);
    v21 = _elementWithColorAtAltitude(220.0, 75.0, 55.0, v20);
    v58[16] = v21;
    v22 = SGSunsetAltitudeToSolarDayPercentage(6.0);
    v23 = _elementWithColorAtAltitude(223.0, 70.0, 55.0, v22);
    v58[17] = v23;
    v24 = SGSunsetAltitudeToSolarDayPercentage(0.0);
    v25 = _elementWithColorAtAltitude(228.0, 70.0, 60.0, v24);
    v58[18] = v25;
    v26 = SGSunsetAltitudeToSolarDayPercentage(-6.0);
    v27 = _elementWithColorAtAltitude(228.0, 70.0, 60.0, v26);
    v58[19] = v27;
    v28 = SGSunsetAltitudeToSolarDayPercentage(-12.0);
    v29 = _elementWithColorAtAltitude(228.0, 70.0, 50.0, v28);
    v58[20] = v29;
    v30 = SGSunsetAltitudeToSolarDayPercentage(-18.0);
    v31 = _elementWithColorAtAltitude(226.0, 80.0, 40.0, v30);
    v58[21] = v31;
    v32 = SGSunsetAltitudeToSolarDayPercentage(-30.0);
    v33 = _elementWithColorAtAltitude(224.0, 80.0, 40.0, v32);
    v58[22] = v33;
    v34 = SGSunsetAltitudeToSolarDayPercentage(-90.0);
    v35 = _elementWithColorAtAltitude(224.0, 80.0, 40.0, v34);
    v58[23] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:24];
    v37 = [(SGCubicColorCurve *)v52 initWithColorCurveElements:v36];
    v38 = self->_civilTwilight;
    self->_civilTwilight = v37;

    civilTwilight = self->_civilTwilight;
  }

  v39 = civilTwilight;

  return v39;
}

- (id)nauticalTwilightColorCurve
{
  v58[24] = *MEMORY[0x277D85DE8];
  nauticalTwilight = self->_nauticalTwilight;
  if (!nauticalTwilight)
  {
    v53 = [SGCubicColorCurve alloc];
    v4 = SGSunriseAltitudeToSolarDayPercentage(-90.0);
    v57 = _elementWithColorAtAltitude(224.0, 80.0, 28.0, v4);
    v58[0] = v57;
    v5 = SGSunriseAltitudeToSolarDayPercentage(-60.0);
    v56 = _elementWithColorAtAltitude(224.0, 80.0, 28.0, v5);
    v58[1] = v56;
    v6 = SGSunriseAltitudeToSolarDayPercentage(-30.0);
    v55 = _elementWithColorAtAltitude(224.0, 80.0, 30.0, v6);
    v58[2] = v55;
    v7 = SGSunriseAltitudeToSolarDayPercentage(-18.0);
    v54 = _elementWithColorAtAltitude(216.0, 86.0, 30.0, v7);
    v58[3] = v54;
    v8 = SGSunriseAltitudeToSolarDayPercentage(-12.0);
    v52 = _elementWithColorAtAltitude(210.0, 86.0, 33.0, v8);
    v58[4] = v52;
    v9 = SGSunriseAltitudeToSolarDayPercentage(-6.0);
    v51 = _elementWithColorAtAltitude(208.0, 85.0, 33.0, v9);
    v58[5] = v51;
    v10 = SGSunriseAltitudeToSolarDayPercentage(0.0);
    v50 = _elementWithColorAtAltitude(206.0, 80.0, 36.0, v10);
    v58[6] = v50;
    v11 = SGSunriseAltitudeToSolarDayPercentage(6.0);
    v49 = _elementWithColorAtAltitude(210.0, 80.0, 37.0, v11);
    v58[7] = v49;
    v12 = SGSunriseAltitudeToSolarDayPercentage(12.0);
    v48 = _elementWithColorAtAltitude(210.0, 80.0, 37.0, v12);
    v58[8] = v48;
    v13 = SGSunriseAltitudeToSolarDayPercentage(18.0);
    v47 = _elementWithColorAtAltitude(210.0, 80.0, 37.0, v13);
    v58[9] = v47;
    v14 = SGSunriseAltitudeToSolarDayPercentage(30.0);
    v46 = _elementWithColorAtAltitude(210.0, 80.0, 37.0, v14);
    v58[10] = v46;
    v15 = SGSunriseAltitudeToSolarDayPercentage(60.0);
    v45 = _elementWithColorAtAltitude(208.0, 80.0, 37.0, v15);
    v58[11] = v45;
    v16 = SGSunriseAltitudeToSolarDayPercentage(90.0);
    v44 = _elementWithColorAtAltitude(207.0, 85.0, 39.0, v16);
    v58[12] = v44;
    v17 = SGSunsetAltitudeToSolarDayPercentage(60.0);
    v43 = _elementWithColorAtAltitude(212.0, 85.0, 40.0, v17);
    v58[13] = v43;
    v18 = SGSunsetAltitudeToSolarDayPercentage(30.0);
    v42 = _elementWithColorAtAltitude(212.0, 85.0, 42.0, v18);
    v58[14] = v42;
    v19 = SGSunsetAltitudeToSolarDayPercentage(18.0);
    v41 = _elementWithColorAtAltitude(216.0, 85.0, 42.0, v19);
    v58[15] = v41;
    v20 = SGSunsetAltitudeToSolarDayPercentage(12.0);
    v21 = _elementWithColorAtAltitude(222.0, 80.0, 42.0, v20);
    v58[16] = v21;
    v22 = SGSunsetAltitudeToSolarDayPercentage(6.0);
    v23 = _elementWithColorAtAltitude(224.0, 75.0, 43.0, v22);
    v58[17] = v23;
    v24 = SGSunsetAltitudeToSolarDayPercentage(0.0);
    v25 = _elementWithColorAtAltitude(228.0, 75.0, 45.0, v24);
    v58[18] = v25;
    v26 = SGSunsetAltitudeToSolarDayPercentage(-6.0);
    v27 = _elementWithColorAtAltitude(228.0, 75.0, 45.0, v26);
    v58[19] = v27;
    v28 = SGSunsetAltitudeToSolarDayPercentage(-12.0);
    v29 = _elementWithColorAtAltitude(228.0, 75.0, 40.0, v28);
    v58[20] = v29;
    v30 = SGSunsetAltitudeToSolarDayPercentage(-18.0);
    v31 = _elementWithColorAtAltitude(224.0, 75.0, 28.0, v30);
    v58[21] = v31;
    v32 = SGSunsetAltitudeToSolarDayPercentage(-30.0);
    v33 = _elementWithColorAtAltitude(224.0, 80.0, 28.0, v32);
    v58[22] = v33;
    v34 = SGSunsetAltitudeToSolarDayPercentage(-90.0);
    v35 = _elementWithColorAtAltitude(224.0, 80.0, 28.0, v34);
    v58[23] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:24];
    v37 = [(SGCubicColorCurve *)v53 initWithColorCurveElements:v36];
    v38 = self->_nauticalTwilight;
    self->_nauticalTwilight = v37;

    nauticalTwilight = self->_nauticalTwilight;
  }

  v39 = nauticalTwilight;

  return v39;
}

- (id)astronomicalTwilightColorCurve
{
  v58[24] = *MEMORY[0x277D85DE8];
  astronomicalTwilight = self->_astronomicalTwilight;
  if (!astronomicalTwilight)
  {
    v53 = [SGCubicColorCurve alloc];
    v4 = SGSunriseAltitudeToSolarDayPercentage(-90.0);
    v57 = _elementWithColorAtAltitude(224.0, 82.0, 20.0, v4);
    v58[0] = v57;
    v5 = SGSunriseAltitudeToSolarDayPercentage(-60.0);
    v56 = _elementWithColorAtAltitude(224.0, 82.0, 20.0, v5);
    v58[1] = v56;
    v6 = SGSunriseAltitudeToSolarDayPercentage(-30.0);
    v55 = _elementWithColorAtAltitude(224.0, 82.0, 20.0, v6);
    v58[2] = v55;
    v7 = SGSunriseAltitudeToSolarDayPercentage(-18.0);
    v54 = _elementWithColorAtAltitude(212.0, 82.0, 20.0, v7);
    v58[3] = v54;
    v8 = SGSunriseAltitudeToSolarDayPercentage(-12.0);
    v52 = _elementWithColorAtAltitude(204.0, 85.0, 20.0, v8);
    v58[4] = v52;
    v9 = SGSunriseAltitudeToSolarDayPercentage(-6.0);
    v51 = _elementWithColorAtAltitude(202.0, 85.0, 20.0, v9);
    v58[5] = v51;
    v10 = SGSunriseAltitudeToSolarDayPercentage(0.0);
    v50 = _elementWithColorAtAltitude(198.0, 90.0, 22.0, v10);
    v58[6] = v50;
    v11 = SGSunriseAltitudeToSolarDayPercentage(6.0);
    v49 = _elementWithColorAtAltitude(200.0, 90.0, 24.0, v11);
    v58[7] = v49;
    v12 = SGSunriseAltitudeToSolarDayPercentage(12.0);
    v48 = _elementWithColorAtAltitude(200.0, 90.0, 26.0, v12);
    v58[8] = v48;
    v13 = SGSunriseAltitudeToSolarDayPercentage(18.0);
    v47 = _elementWithColorAtAltitude(200.0, 90.0, 26.0, v13);
    v58[9] = v47;
    v14 = SGSunriseAltitudeToSolarDayPercentage(30.0);
    v46 = _elementWithColorAtAltitude(200.0, 90.0, 26.0, v14);
    v58[10] = v46;
    v15 = SGSunriseAltitudeToSolarDayPercentage(60.0);
    v45 = _elementWithColorAtAltitude(204.0, 85.0, 26.0, v15);
    v58[11] = v45;
    v16 = SGSunriseAltitudeToSolarDayPercentage(90.0);
    v44 = _elementWithColorAtAltitude(206.0, 85.0, 30.0, v16);
    v58[12] = v44;
    v17 = SGSunsetAltitudeToSolarDayPercentage(60.0);
    v43 = _elementWithColorAtAltitude(217.0, 85.0, 30.0, v17);
    v58[13] = v43;
    v18 = SGSunsetAltitudeToSolarDayPercentage(30.0);
    v42 = _elementWithColorAtAltitude(217.0, 85.0, 30.0, v18);
    v58[14] = v42;
    v19 = SGSunsetAltitudeToSolarDayPercentage(18.0);
    v41 = _elementWithColorAtAltitude(220.0, 86.0, 30.0, v19);
    v58[15] = v41;
    v20 = SGSunsetAltitudeToSolarDayPercentage(12.0);
    v21 = _elementWithColorAtAltitude(223.0, 86.0, 30.0, v20);
    v58[16] = v21;
    v22 = SGSunsetAltitudeToSolarDayPercentage(6.0);
    v23 = _elementWithColorAtAltitude(225.0, 81.0, 30.0, v22);
    v58[17] = v23;
    v24 = SGSunsetAltitudeToSolarDayPercentage(0.0);
    v25 = _elementWithColorAtAltitude(229.0, 80.0, 30.0, v24);
    v58[18] = v25;
    v26 = SGSunsetAltitudeToSolarDayPercentage(-6.0);
    v27 = _elementWithColorAtAltitude(233.0, 75.0, 30.0, v26);
    v58[19] = v27;
    v28 = SGSunsetAltitudeToSolarDayPercentage(-12.0);
    v29 = _elementWithColorAtAltitude(233.0, 75.0, 28.0, v28);
    v58[20] = v29;
    v30 = SGSunsetAltitudeToSolarDayPercentage(-18.0);
    v31 = _elementWithColorAtAltitude(233.0, 75.0, 22.0, v30);
    v58[21] = v31;
    v32 = SGSunsetAltitudeToSolarDayPercentage(-30.0);
    v33 = _elementWithColorAtAltitude(224.0, 82.0, 20.0, v32);
    v58[22] = v33;
    v34 = SGSunsetAltitudeToSolarDayPercentage(-90.0);
    v35 = _elementWithColorAtAltitude(224.0, 82.0, 20.0, v34);
    v58[23] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:24];
    v37 = [(SGCubicColorCurve *)v53 initWithColorCurveElements:v36];
    v38 = self->_astronomicalTwilight;
    self->_astronomicalTwilight = v37;

    astronomicalTwilight = self->_astronomicalTwilight;
  }

  v39 = astronomicalTwilight;

  return v39;
}

- (id)innerComplicationColorCurve
{
  v60[25] = *MEMORY[0x277D85DE8];
  innerComplication = self->_innerComplication;
  if (!innerComplication)
  {
    v54 = [SGCubicColorCurve alloc];
    v4 = SGSunriseAltitudeToSolarDayPercentage(-90.0);
    v59 = _elementWithColorAtAltitude(228.0, 55.0, 85.0, v4);
    v60[0] = v59;
    v5 = SGSunriseAltitudeToSolarDayPercentage(-60.0);
    v58 = _elementWithColorAtAltitude(228.0, 55.0, 85.0, v5);
    v60[1] = v58;
    v6 = SGSunriseAltitudeToSolarDayPercentage(-30.0);
    v57 = _elementWithColorAtAltitude(225.0, 55.0, 85.0, v6);
    v60[2] = v57;
    v7 = SGSunriseAltitudeToSolarDayPercentage(-18.0);
    v56 = _elementWithColorAtAltitude(223.0, 55.0, 85.0, v7);
    v60[3] = v56;
    v8 = SGSunriseAltitudeToSolarDayPercentage(-12.0);
    v55 = _elementWithColorAtAltitude(218.0, 55.0, 85.0, v8);
    v60[4] = v55;
    v9 = SGSunriseAltitudeToSolarDayPercentage(-6.0);
    v53 = _elementWithColorAtAltitude(216.0, 55.0, 85.0, v9);
    v60[5] = v53;
    v10 = SGSunriseAltitudeToSolarDayPercentage(0.0);
    v52 = _elementWithColorAtAltitude(216.0, 55.0, 85.0, v10);
    v60[6] = v52;
    v11 = SGSunriseAltitudeToSolarDayPercentage(6.0);
    v51 = _elementWithColorAtAltitude(216.0, 55.0, 85.0, v11);
    v60[7] = v51;
    v12 = SGSunriseAltitudeToSolarDayPercentage(12.0);
    v50 = _elementWithColorAtAltitude(212.0, 55.0, 85.0, v12);
    v60[8] = v50;
    v13 = SGSunriseAltitudeToSolarDayPercentage(18.0);
    v49 = _elementWithColorAtAltitude(208.0, 55.0, 85.0, v13);
    v60[9] = v49;
    v14 = SGSunriseAltitudeToSolarDayPercentage(30.0);
    v48 = _elementWithColorAtAltitude(208.0, 60.0, 85.0, v14);
    v60[10] = v48;
    v15 = SGSunriseAltitudeToSolarDayPercentage(60.0);
    v47 = _elementWithColorAtAltitude(209.0, 55.0, 85.0, v15);
    v60[11] = v47;
    v16 = SGSunriseAltitudeToSolarDayPercentage(90.0);
    v46 = _elementWithColorAtAltitude(198.0, 50.0, 90.0, v16);
    v60[12] = v46;
    v17 = SGSunsetAltitudeToSolarDayPercentage(60.0);
    v45 = _elementWithColorAtAltitude(209.0, 55.0, 85.0, v17);
    v60[13] = v45;
    v18 = SGSunsetAltitudeToSolarDayPercentage(30.0);
    v44 = _elementWithColorAtAltitude(210.0, 60.0, 85.0, v18);
    v60[14] = v44;
    v19 = SGSunsetAltitudeToSolarDayPercentage(18.0);
    v43 = _elementWithColorAtAltitude(212.0, 60.0, 85.0, v19);
    v60[15] = v43;
    v20 = SGSunsetAltitudeToSolarDayPercentage(12.0);
    v42 = _elementWithColorAtAltitude(218.0, 60.0, 88.0, v20);
    v60[16] = v42;
    v21 = SGSunsetAltitudeToSolarDayPercentage(6.0);
    v22 = _elementWithColorAtAltitude(222.0, 60.0, 88.0, v21);
    v60[17] = v22;
    v23 = SGSunsetAltitudeToSolarDayPercentage(0.0);
    v24 = _elementWithColorAtAltitude(229.0, 60.0, 85.0, v23);
    v60[18] = v24;
    v25 = SGSunsetAltitudeToSolarDayPercentage(-6.0);
    v26 = _elementWithColorAtAltitude(232.0, 55.0, 85.0, v25);
    v60[19] = v26;
    v27 = SGSunsetAltitudeToSolarDayPercentage(-12.0);
    v28 = _elementWithColorAtAltitude(233.0, 55.0, 85.0, v27);
    v60[20] = v28;
    v29 = SGSunsetAltitudeToSolarDayPercentage(-18.0);
    v30 = _elementWithColorAtAltitude(230.0, 55.0, 85.0, v29);
    v60[21] = v30;
    v31 = SGSunsetAltitudeToSolarDayPercentage(-30.0);
    v32 = _elementWithColorAtAltitude(227.0, 55.0, 85.0, v31);
    v60[22] = v32;
    v33 = SGSunsetAltitudeToSolarDayPercentage(-60.0);
    v34 = _elementWithColorAtAltitude(228.0, 55.0, 85.0, v33);
    v60[23] = v34;
    v35 = SGSunsetAltitudeToSolarDayPercentage(-90.0);
    v36 = _elementWithColorAtAltitude(228.0, 55.0, 85.0, v35);
    v60[24] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:25];
    v38 = [(SGCubicColorCurve *)v54 initWithColorCurveElements:v37];
    v39 = self->_innerComplication;
    self->_innerComplication = v38;

    innerComplication = self->_innerComplication;
  }

  v40 = innerComplication;

  return v40;
}

- (id)outerComplicationColorCurve
{
  v60[25] = *MEMORY[0x277D85DE8];
  outerComplication = self->_outerComplication;
  if (!outerComplication)
  {
    v54 = [SGCubicColorCurve alloc];
    v4 = SGSunriseAltitudeToSolarDayPercentage(-90.0);
    v59 = _elementWithColorAtAltitude(228.0, 30.0, 92.0, v4);
    v60[0] = v59;
    v5 = SGSunriseAltitudeToSolarDayPercentage(-60.0);
    v58 = _elementWithColorAtAltitude(228.0, 30.0, 92.0, v5);
    v60[1] = v58;
    v6 = SGSunriseAltitudeToSolarDayPercentage(-30.0);
    v57 = _elementWithColorAtAltitude(225.0, 30.0, 92.0, v6);
    v60[2] = v57;
    v7 = SGSunriseAltitudeToSolarDayPercentage(-18.0);
    v56 = _elementWithColorAtAltitude(223.0, 30.0, 92.0, v7);
    v60[3] = v56;
    v8 = SGSunriseAltitudeToSolarDayPercentage(-12.0);
    v55 = _elementWithColorAtAltitude(218.0, 30.0, 92.0, v8);
    v60[4] = v55;
    v9 = SGSunriseAltitudeToSolarDayPercentage(-6.0);
    v53 = _elementWithColorAtAltitude(216.0, 30.0, 92.0, v9);
    v60[5] = v53;
    v10 = SGSunriseAltitudeToSolarDayPercentage(0.0);
    v52 = _elementWithColorAtAltitude(216.0, 30.0, 92.0, v10);
    v60[6] = v52;
    v11 = SGSunriseAltitudeToSolarDayPercentage(6.0);
    v51 = _elementWithColorAtAltitude(216.0, 30.0, 92.0, v11);
    v60[7] = v51;
    v12 = SGSunriseAltitudeToSolarDayPercentage(12.0);
    v50 = _elementWithColorAtAltitude(212.0, 30.0, 92.0, v12);
    v60[8] = v50;
    v13 = SGSunriseAltitudeToSolarDayPercentage(18.0);
    v49 = _elementWithColorAtAltitude(208.0, 30.0, 92.0, v13);
    v60[9] = v49;
    v14 = SGSunriseAltitudeToSolarDayPercentage(30.0);
    v48 = _elementWithColorAtAltitude(208.0, 30.0, 92.0, v14);
    v60[10] = v48;
    v15 = SGSunriseAltitudeToSolarDayPercentage(60.0);
    v47 = _elementWithColorAtAltitude(209.0, 30.0, 92.0, v15);
    v60[11] = v47;
    v16 = SGSunriseAltitudeToSolarDayPercentage(90.0);
    v46 = _elementWithColorAtAltitude(198.0, 30.0, 90.0, v16);
    v60[12] = v46;
    v17 = SGSunsetAltitudeToSolarDayPercentage(60.0);
    v45 = _elementWithColorAtAltitude(209.0, 30.0, 92.0, v17);
    v60[13] = v45;
    v18 = SGSunsetAltitudeToSolarDayPercentage(30.0);
    v44 = _elementWithColorAtAltitude(210.0, 30.0, 92.0, v18);
    v60[14] = v44;
    v19 = SGSunsetAltitudeToSolarDayPercentage(18.0);
    v43 = _elementWithColorAtAltitude(212.0, 30.0, 92.0, v19);
    v60[15] = v43;
    v20 = SGSunsetAltitudeToSolarDayPercentage(12.0);
    v42 = _elementWithColorAtAltitude(218.0, 30.0, 92.0, v20);
    v60[16] = v42;
    v21 = SGSunsetAltitudeToSolarDayPercentage(6.0);
    v22 = _elementWithColorAtAltitude(222.0, 30.0, 92.0, v21);
    v60[17] = v22;
    v23 = SGSunsetAltitudeToSolarDayPercentage(0.0);
    v24 = _elementWithColorAtAltitude(229.0, 30.0, 92.0, v23);
    v60[18] = v24;
    v25 = SGSunsetAltitudeToSolarDayPercentage(-6.0);
    v26 = _elementWithColorAtAltitude(232.0, 30.0, 92.0, v25);
    v60[19] = v26;
    v27 = SGSunsetAltitudeToSolarDayPercentage(-12.0);
    v28 = _elementWithColorAtAltitude(233.0, 30.0, 92.0, v27);
    v60[20] = v28;
    v29 = SGSunsetAltitudeToSolarDayPercentage(-18.0);
    v30 = _elementWithColorAtAltitude(230.0, 30.0, 92.0, v29);
    v60[21] = v30;
    v31 = SGSunsetAltitudeToSolarDayPercentage(-30.0);
    v32 = _elementWithColorAtAltitude(227.0, 30.0, 92.0, v31);
    v60[22] = v32;
    v33 = SGSunsetAltitudeToSolarDayPercentage(-60.0);
    v34 = _elementWithColorAtAltitude(228.0, 30.0, 92.0, v33);
    v60[23] = v34;
    v35 = SGSunsetAltitudeToSolarDayPercentage(-90.0);
    v36 = _elementWithColorAtAltitude(228.0, 30.0, 92.0, v35);
    v60[24] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:25];
    v38 = [(SGCubicColorCurve *)v54 initWithColorCurveElements:v37];
    v39 = self->_outerComplication;
    self->_outerComplication = v38;

    outerComplication = self->_outerComplication;
  }

  v40 = outerComplication;

  return v40;
}

- (id)dayDiskBloomColorCurve
{
  v30[10] = *MEMORY[0x277D85DE8];
  dayDiskBloom = self->_dayDiskBloom;
  if (!dayDiskBloom)
  {
    v27 = [SGCubicColorCurve alloc];
    v4 = SGSunriseAltitudeToSolarDayPercentage(-90.0);
    v29 = _elementWithColorAtAltitude(45.0, 40.0, 100.0, v4);
    v30[0] = v29;
    v5 = SGSunriseAltitudeToSolarDayPercentage(-12.0);
    v28 = _elementWithColorAtAltitude(45.0, 40.0, 100.0, v5);
    v30[1] = v28;
    v6 = SGSunriseAltitudeToSolarDayPercentage(0.0);
    v7 = _elementWithColorAtAltitude(45.0, 45.0, 100.0, v6);
    v30[2] = v7;
    v8 = SGSunriseAltitudeToSolarDayPercentage(90.0);
    v9 = _elementWithColorAtAltitude(45.0, 10.0, 100.0, v8);
    v30[3] = v9;
    v10 = SGSunsetAltitudeToSolarDayPercentage(30.0);
    v11 = _elementWithColorAtAltitude(45.0, 25.0, 100.0, v10);
    v30[4] = v11;
    v12 = SGSunsetAltitudeToSolarDayPercentage(12.0);
    v13 = _elementWithColorAtAltitude(45.0, 40.0, 100.0, v12);
    v30[5] = v13;
    v14 = SGSunsetAltitudeToSolarDayPercentage(6.0);
    v15 = _elementWithColorAtAltitude(40.0, 60.0, 100.0, v14);
    v30[6] = v15;
    v16 = SGSunsetAltitudeToSolarDayPercentage(0.0);
    v17 = _elementWithColorAtAltitude(35.0, 65.0, 100.0, v16);
    v30[7] = v17;
    v18 = SGSunsetAltitudeToSolarDayPercentage(-30.0);
    v19 = _elementWithColorAtAltitude(45.0, 40.0, 100.0, v18);
    v30[8] = v19;
    v20 = SGSunsetAltitudeToSolarDayPercentage(-90.0);
    v21 = _elementWithColorAtAltitude(45.0, 40.0, 100.0, v20);
    v30[9] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:10];
    v23 = [(SGCubicColorCurve *)v27 initWithColorCurveElements:v22];
    v24 = self->_dayDiskBloom;
    self->_dayDiskBloom = v23;

    dayDiskBloom = self->_dayDiskBloom;
  }

  v25 = dayDiskBloom;

  return v25;
}

@end