@interface CompassRichCornerDialView
- (id)_gossamer_newNeedleAODView;
- (id)_gossamer_newNeedleView;
- (id)_gossamer_newTicksView;
- (id)_newNeedleAODView;
- (id)_newNeedleView;
- (id)_newTicksView;
- (id)_pregossamer_newNeedleAODView;
- (id)_pregossamer_newNeedleView;
- (id)_pregossamer_newTicksView;
- (id)monochromeAccentViews;
- (id)monochromeOtherViews;
@end

@implementation CompassRichCornerDialView

- (id)_newTicksView
{
  if (objc_msgSend_supportsGossamer(self, a2, v2))
  {
    objc_msgSend__gossamer_newTicksView(self, v4, v5);
  }

  else
  {
    objc_msgSend__pregossamer_newTicksView(self, v4, v5);
  }

  return objc_claimAutoreleasedReturnValue();
}

- (id)_gossamer_newTicksView
{
  v3 = NanoCompassComplicationImageNamed(@"Compass/Corner/North Tick");
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v6 = objc_msgSend_initWithImage_(v4, v5, v3);
  northTick = self->_northTick;
  self->_northTick = v6;

  v8 = NanoCompassComplicationImageNamed(@"Compass/Corner/Ticks");
  v9 = objc_alloc(MEMORY[0x277D755E8]);
  v11 = objc_msgSend_initWithImage_(v9, v10, v8);
  ticks = self->_ticks;
  self->_ticks = v11;

  objc_msgSend_bounds(self->_ticks, v13, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = objc_alloc(MEMORY[0x277D75D18]);
  v26 = objc_msgSend_initWithFrame_(v23, v24, v25, v16, v18, v20, v22);
  objc_msgSend_addSubview_(v26, v27, self->_ticks);
  objc_msgSend_addSubview_(v26, v28, self->_northTick);

  return v26;
}

- (id)_pregossamer_newTicksView
{
  v3 = NanoCompassComplicationImageNamed(@"Compass/Legacy/Corner/Ticks");
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v6 = objc_msgSend_initWithImage_(v4, v5, v3);
  ticks = self->_ticks;
  self->_ticks = v6;

  v8 = NanoCompassComplicationImageNamed(@"Compass/Legacy/Corner/Dot");
  v9 = objc_alloc(MEMORY[0x277D755E8]);
  v11 = objc_msgSend_initWithImage_(v9, v10, v8);
  dot = self->_dot;
  self->_dot = v11;

  objc_msgSend_bounds(self->_ticks, v13, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = objc_alloc(MEMORY[0x277D75D18]);
  v26 = objc_msgSend_initWithFrame_(v23, v24, v25, v16, v18, v20, v22);
  objc_msgSend_addSubview_(v26, v27, self->_ticks);
  objc_msgSend_addSubview_(v26, v28, self->_dot);

  return v26;
}

- (id)_newNeedleView
{
  if (objc_msgSend_supportsGossamer(self, a2, v2))
  {
    objc_msgSend__gossamer_newNeedleView(self, v4, v5);
  }

  else
  {
    objc_msgSend__pregossamer_newNeedleView(self, v4, v5);
  }

  return objc_claimAutoreleasedReturnValue();
}

- (id)_newNeedleAODView
{
  if (objc_msgSend_supportsGossamer(self, a2, v2))
  {
    objc_msgSend__gossamer_newNeedleAODView(self, v4, v5);
  }

  else
  {
    objc_msgSend__pregossamer_newNeedleAODView(self, v4, v5);
  }

  return objc_claimAutoreleasedReturnValue();
}

- (id)_gossamer_newNeedleView
{
  v3 = NanoCompassComplicationImageNamed(@"Compass/Bezel/Arrow");
  v4 = MEMORY[0x277D755B8];
  v5 = v3;
  v8 = objc_msgSend_CGImage(v5, v6, v7);
  objc_msgSend_scale(v3, v9, v10);
  v12 = v11 + v11;
  v15 = objc_msgSend_imageOrientation(v3, v13, v14);
  v17 = objc_msgSend_imageWithCGImage_scale_orientation_(v4, v16, v8, v15, v12);

  v18 = objc_alloc(MEMORY[0x277D755E8]);
  v20 = objc_msgSend_initWithImage_(v18, v19, v17);
  arrow = self->_arrow;
  self->_arrow = v20;

  v22 = self->_arrow;
  v23 = v22;

  return v22;
}

- (id)_gossamer_newNeedleAODView
{
  v3 = NanoCompassComplicationImageNamed(@"Compass/Corner/ArrowAOD");
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v6 = objc_msgSend_initWithImage_(v4, v5, v3);
  arrowAOD = self->_arrowAOD;
  self->_arrowAOD = v6;

  v8 = self->_arrowAOD;
  v9 = v8;

  return v8;
}

- (id)_pregossamer_newNeedleView
{
  v3 = NanoCompassComplicationImageNamed(@"Compass/Legacy/Corner/Needle North");
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v6 = objc_msgSend_initWithImage_(v4, v5, v3);
  north = self->_north;
  self->_north = v6;

  v8 = NanoCompassComplicationImageNamed(@"Compass/Legacy/Corner/Needle South");
  v9 = objc_alloc(MEMORY[0x277D755E8]);
  v11 = objc_msgSend_initWithImage_(v9, v10, v8);
  south = self->_south;
  self->_south = v11;

  objc_msgSend_bounds(self->_north, v13, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = objc_alloc(MEMORY[0x277D75D18]);
  v26 = objc_msgSend_initWithFrame_(v23, v24, v25, v16, v18, v20, v22);
  objc_msgSend_addSubview_(v26, v27, self->_south);
  objc_msgSend_addSubview_(v26, v28, self->_north);

  return v26;
}

- (id)_pregossamer_newNeedleAODView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  objc_msgSend_bounds(self, v4, v5);
  v8 = objc_msgSend_initWithFrame_(v3, v6, v7);
  arrowAOD = self->_arrowAOD;
  self->_arrowAOD = v8;

  v10 = self->_arrowAOD;

  return v10;
}

- (id)monochromeAccentViews
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_supportsGossamer(self, a2, v2))
  {
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v8, 3, v7[0], v7[1], self->_northTick, self->_arrow, self->_arrowAOD);
  }

  else
  {
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v7, 2, self->_north, self->_ticks, v8[0], v8[1], v8[2]);
  }
  v5 = ;

  return v5;
}

- (id)monochromeOtherViews
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_supportsGossamer(self, a2, v2))
  {
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v8, 1, v7[0], v7[1], self->_ticks);
  }

  else
  {
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v7, 2, self->_south, self->_dot, v8[0]);
  }
  v5 = ;

  return v5;
}

@end