@interface AVTHUDView
- (AVTHUDView)initWithFrame:(CGRect)frame;
- (id)_label;
- (void)_loadSubviews;
- (void)_tapAction:(id)action;
- (void)_updateLatencyBar:(id *)bar;
- (void)_updateLatencyGraph:(id *)graph;
- (void)layoutSubviews;
- (void)updateWithData:(id *)data;
@end

@implementation AVTHUDView

- (AVTHUDView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AVTHUDView;
  v3 = [(AVTHUDView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(AVTHUDView *)v3 setBackgroundColor:?];

    [(AVTHUDView *)v3 _loadSubviews];
  }

  return v3;
}

- (void)updateWithData:(id *)data
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:data->var0 * 1000.0];
  [(UILabel *)self->_totalLatencyLabel setText:?];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:data->var1 * 1000.0];
  [(UILabel *)self->_arKitLatencyLabel setText:?];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:data->var2 * 1000.0];
  [(UILabel *)self->_updateSyncLatencyLabel setText:?];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:data->var3 * 1000.0];
  [(UILabel *)self->_metalLatencyLabel setText:?];

  var6 = data->var6;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:var6];
  [(UILabel *)self->_audioTimeLabel setText:?];

  v11 = @"3x Buffer";
  if (data->var8)
  {
    v11 = @"2x Buffer";
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:data->var5, v11];
  [(UILabel *)self->_fpsLabel setText:?];

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:data->var4 * 1000.0];
  [(UILabel *)self->_timeBetweenARFrameLabel setText:?];

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:data->var7];
  [(UILabel *)self->_droppedFrameLabel setText:?];

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:data->var9];
  [(UILabel *)self->_shaderCompilationLabel setText:?];

  if (data->var9)
  {
    redColor = [MEMORY[0x1E69DC888] redColor];
    [(UILabel *)self->_shaderCompilationLabel setTextColor:?];
  }

  *&self->_lastFrameData.totalLatency = *&data->var0;
  v18 = *&data->var4;
  v17 = *&data->var6;
  v19 = *&data->var2;
  *&self->_lastFrameData.onlineShaderCompilationCount = *&data->var9;
  *&self->_lastFrameData.timeBetweenARFrame = v18;
  *&self->_lastFrameData.audioTime = v17;
  *&self->_lastFrameData.updateSyncLatency = v19;

  [(AVTHUDView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTHUDView;
  [(AVTHUDView *)&v3 layoutSubviews];
  [(AVTHUDView *)self bounds];
  [(UILabel *)self->_totalLatencyLabel setFrame:?];
  [(UILabel *)self->_arKitLatencyLabel setFrame:?];
  [(UILabel *)self->_updateSyncLatencyLabel setFrame:?];
  [(UILabel *)self->_metalLatencyLabel setFrame:?];
  [(UILabel *)self->_audioTimeLabel setFrame:?];
  [(UILabel *)self->_fpsLabel setFrame:?];
  [(UILabel *)self->_timeBetweenARFrameLabel setFrame:?];
  [(UILabel *)self->_droppedFrameLabel setFrame:?];
  [(UILabel *)self->_shaderCompilationLabel setFrame:?];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:?];
  [(AVTHUDView *)self _updateLatencyBar:?];
  [(AVTHUDView *)self _updateLatencyGraph:?];
  [MEMORY[0x1E6979518] commit];
}

- (void)_updateLatencyBar:(id *)bar
{
  var0 = bar->var0;
  [(CALayer *)self->_arKitLatencyBar setHidden:?];
  [(CALayer *)self->_updateLatencyBar setHidden:?];
  [(CALayer *)self->_metalLatencyBar setHidden:?];
  if (var0 > 0.0)
  {
    [(AVTHUDView *)self bounds];
    [(UILabel *)self->_shaderCompilationLabel frame];
    [(AVTHUDView *)self bounds];
    [(CALayer *)self->_arKitLatencyBar setFrame:?];
    [(CALayer *)self->_updateLatencyBar setFrame:?];
    metalLatencyBar = self->_metalLatencyBar;

    [(CALayer *)metalLatencyBar setFrame:?];
  }
}

- (void)_updateLatencyGraph:(id *)graph
{
  [(AVTHUDView *)self bounds];
  v5 = v4 / 3.0 + -10.0;
  v6 = v5 * 0.25;
  totalLatencyGraphLayers = self->_totalLatencyGraphLayers;
  v8 = fmaxf(ceilf(v6), 1.0);
  if (!totalLatencyGraphLayers)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:?];
    v10 = self->_totalLatencyGraphLayers;
    self->_totalLatencyGraphLayers = v9;

    totalLatencyGraphLayers = self->_totalLatencyGraphLayers;
  }

  if ([(NSMutableArray *)totalLatencyGraphLayers count]>= v8)
  {
    layer = [(NSMutableArray *)self->_totalLatencyGraphLayers objectAtIndexedSubscript:?];
    if ([(NSMutableArray *)self->_totalLatencyGraphLayers count]>= 2)
    {
      v13 = 1;
      do
      {
        v14 = [(NSMutableArray *)self->_totalLatencyGraphLayers objectAtIndexedSubscript:?];
        [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];

        ++v13;
      }

      while ([(NSMutableArray *)self->_totalLatencyGraphLayers count]> v13);
    }

    v15 = self->_totalLatencyGraphLayers;
    [(NSMutableArray *)v15 count];
    [NSMutableArray setObject:v15 atIndexedSubscript:"setObject:atIndexedSubscript:"];
  }

  else
  {
    layer = [MEMORY[0x1E6979398] layer];
    [layer setOpaque:?];
    [(NSMutableArray *)self->_totalLatencyGraphLayers addObject:?];
    layer2 = [(AVTHUDView *)self layer];
    [layer2 addSublayer:?];
  }

  selectedGraphIndex = self->_selectedGraphIndex;
  if (selectedGraphIndex <= 1)
  {
    if (selectedGraphIndex == 1)
    {
      systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
      goto LABEL_17;
    }

LABEL_15:
    systemRedColor = [MEMORY[0x1E69DC888] labelColor];
    goto LABEL_17;
  }

  if (selectedGraphIndex != 2)
  {
    if (selectedGraphIndex == 3)
    {
      systemRedColor = [MEMORY[0x1E69DC888] systemBlueColor];
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  systemRedColor = [MEMORY[0x1E69DC888] systemGreenColor];
LABEL_17:
  v18 = systemRedColor;
  [systemRedColor CGColor];
  [layer setBackgroundColor:?];

  [layer setFrame:?];
  [(AVTHUDView *)self bounds];
  v20 = v19;
  v21 = [(NSMutableArray *)self->_totalLatencyGraphLayers count];
  [(CALayer *)self->_metalLatencyBar frame];
  v22 = self->_totalLatencyGraphLayers;
  v23 = [NSMutableArray countByEnumeratingWithState:v22 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v23)
  {
    v24 = v23;
    v25 = v20 - (v5 + 5.0 + 1.0) + (v8 - v21) * 4.0;
    v26 = MEMORY[0];
    do
    {
      for (i = 0; i != v24; i = (i + 1))
      {
        if (MEMORY[0] != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(8 * i);
        [v28 frame];
        [v28 setFrame:?];
        v25 = v25 + 4.0;
      }

      v24 = [NSMutableArray countByEnumeratingWithState:v22 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v24);
  }
}

- (id)_label
{
  v2 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:?];
  [v2 setUserInteractionEnabled:?];
  v3 = [MEMORY[0x1E69DB878] monospacedDigitSystemFontOfSize:? weight:?];
  [v2 setFont:?];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:?];

  [v2 setTextAlignment:?];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v2 setTextColor:?];

  v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:? action:?];
  [v2 addGestureRecognizer:?];

  return v2;
}

- (void)_loadSubviews
{
  _label = [(AVTHUDView *)self _label];
  totalLatencyLabel = self->_totalLatencyLabel;
  self->_totalLatencyLabel = _label;

  _label2 = [(AVTHUDView *)self _label];
  arKitLatencyLabel = self->_arKitLatencyLabel;
  self->_arKitLatencyLabel = _label2;

  redColor = [MEMORY[0x1E69DC888] redColor];
  [(UILabel *)self->_arKitLatencyLabel setTextColor:?];

  _label3 = [(AVTHUDView *)self _label];
  updateSyncLatencyLabel = self->_updateSyncLatencyLabel;
  self->_updateSyncLatencyLabel = _label3;

  greenColor = [MEMORY[0x1E69DC888] greenColor];
  [(UILabel *)self->_updateSyncLatencyLabel setTextColor:?];

  _label4 = [(AVTHUDView *)self _label];
  metalLatencyLabel = self->_metalLatencyLabel;
  self->_metalLatencyLabel = _label4;

  blueColor = [MEMORY[0x1E69DC888] blueColor];
  [(UILabel *)self->_metalLatencyLabel setTextColor:?];

  _label5 = [(AVTHUDView *)self _label];
  audioTimeLabel = self->_audioTimeLabel;
  self->_audioTimeLabel = _label5;

  [(UILabel *)self->_audioTimeLabel setGestureRecognizers:?];
  [(UILabel *)self->_audioTimeLabel setUserInteractionEnabled:?];
  _label6 = [(AVTHUDView *)self _label];
  fpsLabel = self->_fpsLabel;
  self->_fpsLabel = _label6;

  [(UILabel *)self->_fpsLabel setGestureRecognizers:?];
  [(UILabel *)self->_fpsLabel setUserInteractionEnabled:?];
  _label7 = [(AVTHUDView *)self _label];
  timeBetweenARFrameLabel = self->_timeBetweenARFrameLabel;
  self->_timeBetweenARFrameLabel = _label7;

  [(UILabel *)self->_timeBetweenARFrameLabel setGestureRecognizers:?];
  [(UILabel *)self->_timeBetweenARFrameLabel setUserInteractionEnabled:?];
  _label8 = [(AVTHUDView *)self _label];
  droppedFrameLabel = self->_droppedFrameLabel;
  self->_droppedFrameLabel = _label8;

  [(UILabel *)self->_droppedFrameLabel setGestureRecognizers:?];
  [(UILabel *)self->_droppedFrameLabel setUserInteractionEnabled:?];
  _label9 = [(AVTHUDView *)self _label];
  shaderCompilationLabel = self->_shaderCompilationLabel;
  self->_shaderCompilationLabel = _label9;

  [(UILabel *)self->_shaderCompilationLabel setGestureRecognizers:?];
  [(UILabel *)self->_shaderCompilationLabel setUserInteractionEnabled:?];
  [(AVTHUDView *)self addSubview:?];
  [(AVTHUDView *)self addSubview:?];
  [(AVTHUDView *)self addSubview:?];
  [(AVTHUDView *)self addSubview:?];
  [(AVTHUDView *)self addSubview:?];
  [(AVTHUDView *)self addSubview:?];
  [(AVTHUDView *)self addSubview:?];
  [(AVTHUDView *)self addSubview:?];
  [(AVTHUDView *)self addSubview:?];
  layer = [MEMORY[0x1E6979398] layer];
  arKitLatencyBar = self->_arKitLatencyBar;
  self->_arKitLatencyBar = layer;

  redColor2 = [MEMORY[0x1E69DC888] redColor];
  [redColor2 CGColor];
  [(CALayer *)self->_arKitLatencyBar setBackgroundColor:?];

  [(CALayer *)self->_arKitLatencyBar setOpaque:?];
  layer2 = [MEMORY[0x1E6979398] layer];
  updateLatencyBar = self->_updateLatencyBar;
  self->_updateLatencyBar = layer2;

  greenColor2 = [MEMORY[0x1E69DC888] greenColor];
  [greenColor2 CGColor];
  [(CALayer *)self->_updateLatencyBar setBackgroundColor:?];

  [(CALayer *)self->_updateLatencyBar setOpaque:?];
  layer3 = [MEMORY[0x1E6979398] layer];
  metalLatencyBar = self->_metalLatencyBar;
  self->_metalLatencyBar = layer3;

  blueColor2 = [MEMORY[0x1E69DC888] blueColor];
  [blueColor2 CGColor];
  [(CALayer *)self->_metalLatencyBar setBackgroundColor:?];

  [(CALayer *)self->_metalLatencyBar setOpaque:?];
  layer4 = [(AVTHUDView *)self layer];
  [layer4 addSublayer:?];

  layer5 = [(AVTHUDView *)self layer];
  [layer5 addSublayer:?];

  layer6 = [(AVTHUDView *)self layer];
  [layer6 addSublayer:?];
}

- (void)_tapAction:(id)action
{
  actionCopy = action;
  view = [actionCopy view];
  totalLatencyLabel = self->_totalLatencyLabel;

  if (view == totalLatencyLabel)
  {
    self->_selectedGraphIndex = 0;
  }

  view2 = [actionCopy view];
  arKitLatencyLabel = self->_arKitLatencyLabel;

  if (view2 == arKitLatencyLabel)
  {
    self->_selectedGraphIndex = 1;
  }

  view3 = [actionCopy view];
  updateSyncLatencyLabel = self->_updateSyncLatencyLabel;

  if (view3 == updateSyncLatencyLabel)
  {
    self->_selectedGraphIndex = 2;
  }

  view4 = [actionCopy view];
  metalLatencyLabel = self->_metalLatencyLabel;

  if (view4 == metalLatencyLabel)
  {
    self->_selectedGraphIndex = 3;
  }
}

@end