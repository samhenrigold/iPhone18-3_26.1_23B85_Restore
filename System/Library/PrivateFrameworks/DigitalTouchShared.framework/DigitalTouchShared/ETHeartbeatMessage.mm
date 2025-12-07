@interface ETHeartbeatMessage
- (CGPoint)normalizedCenter;
- (ETHeartbeatMessage)initWithArchiveData:(id)data;
- (id)archiveData;
- (id)description;
- (void)_displayInScene:(id)scene useDuration:(BOOL)duration fastStart:(BOOL)start;
- (void)breakHeart;
- (void)displayInScene:(id)scene;
- (void)moveHeartNodeByX:(double)x y:(double)y duration:(double)duration;
- (void)playBeatWithDuration:(double)duration;
- (void)setMute:(BOOL)mute;
- (void)startHeartbeat:(id)heartbeat fastStart:(BOOL)start;
- (void)stopPlaying;
@end

@implementation ETHeartbeatMessage

- (ETHeartbeatMessage)initWithArchiveData:(id)data
{
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = ETHeartbeatMessage;
  v5 = [(ETMessage *)&v14 initWithArchiveData:dataCopy];
  if (!v5)
  {
LABEL_11:
    v7 = v5;
    goto LABEL_12;
  }

  v6 = [[ETPHeartbeat alloc] initWithData:dataCopy];
  v7 = v6;
  if (v6)
  {
    [(ETPHeartbeat *)v6 beatsPerMinute];
    [(ETHeartbeatMessage *)v5 setBeatsPerMinute:?];
    [(ETHeartbeatMessage *)v5 setDuration:objc_msgSend_duration(v7)];
    if ([(ETHeartbeatMessage *)v7 hasNormalizedCenterX]&& [(ETHeartbeatMessage *)v7 hasNormalizedCenterY])
    {
      [(ETHeartbeatMessage *)v7 normalizedCenterX];
      v9 = v8;
      [(ETHeartbeatMessage *)v7 normalizedCenterY];
      v5->_normalizedCenter.x = v9;
      v5->_normalizedCenter.y = v10;
    }

    if ([(ETHeartbeatMessage *)v7 hasRotation])
    {
      [(ETHeartbeatMessage *)v7 rotation];
      v5->_rotation = v11;
    }

    if ([(ETHeartbeatMessage *)v7 hasHeartbreakTime])
    {
      [(ETHeartbeatMessage *)v7 heartbreakTime];
      v5->_heartbreakTime = v12;
    }

    goto LABEL_11;
  }

LABEL_12:

  return v7;
}

- (id)archiveData
{
  v3 = objc_alloc_init(ETPHeartbeat);
  *&v4 = self->_beatsPerMinute;
  [(ETPHeartbeat *)v3 setBeatsPerMinute:v4];
  [(ETPHeartbeat *)v3 setDuration:self->_duration];
  x = self->_normalizedCenter.x;
  *&x = x;
  [(ETPHeartbeat *)v3 setNormalizedCenterX:x];
  y = self->_normalizedCenter.y;
  *&y = y;
  [(ETPHeartbeat *)v3 setNormalizedCenterY:y];
  rotation = self->_rotation;
  *&rotation = rotation;
  [(ETPHeartbeat *)v3 setRotation:rotation];
  heartbreakTime = self->_heartbreakTime;
  *&heartbreakTime = heartbreakTime;
  [(ETPHeartbeat *)v3 setHeartbreakTime:heartbreakTime];
  data = [(ETPHeartbeat *)v3 data];

  return data;
}

- (void)displayInScene:(id)scene
{
  sceneCopy = scene;
  v5 = objc_initWeak(&location, sceneCopy);
  [(ETHeartbeatMessage *)self _displayInScene:sceneCopy useDuration:1];

  objc_destroyWeak(&location);
}

- (void)_displayInScene:(id)scene useDuration:(BOOL)duration fastStart:(BOOL)start
{
  startCopy = start;
  durationCopy = duration;
  v149[5] = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  [(ETHeartbeatMessage *)self beatsPerMinute];
  v9 = v8;
  v10 = 60.0 / v8;
  v11 = v10 * 0.800000012;
  v12 = fminf(v11, 0.75);
  *&v10 = v10 - v12;
  v13 = fmaxf(*&v10, 0.01);
  self->_hapticLoopPeriod = v12 + v13;
  self->_broken = 0;
  node = [getSKNodeClass() node];
  heartNode = self->_heartNode;
  self->_heartNode = node;

  v16 = self->_heartNode;
  [(ETMessage *)self scenePointFromNormalizedPoint:sceneCopy inScene:self->_normalizedCenter.x, self->_normalizedCenter.y];
  [(SKNode *)v16 setPosition:?];
  [(SKNode *)self->_heartNode setZRotation:self->_rotation];
  [sceneCopy size];
  v18 = fmax(v17 / 156.0, 1.0);
  [(ETHeartbeatMessage *)self scale];
  v19 = 0.5;
  if (v20 > 0.0)
  {
    [(ETHeartbeatMessage *)self scale];
    v19 = v21;
  }

  v22 = [(SKNode *)self->_heartNode setScale:v18 * v19];
  v24 = ETFrameworkBundle(v22, v23);
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v25 = getSKSetResourceBundleSymbolLoc_ptr_0;
  v141 = getSKSetResourceBundleSymbolLoc_ptr_0;
  if (!getSKSetResourceBundleSymbolLoc_ptr_0)
  {
    *buf = MEMORY[0x277D85DD0];
    v134 = 3221225472;
    v135 = __getSKSetResourceBundleSymbolLoc_block_invoke_0;
    v136 = &unk_278F7A048;
    v137 = &v138;
    v26 = SpriteKitLibrary_0();
    v139[3] = dlsym(v26, "SKSetResourceBundle");
    getSKSetResourceBundleSymbolLoc_ptr_0 = *(v137[1] + 24);
    v25 = v139[3];
  }

  _Block_object_dispose(&v138, 8);
  if (!v25)
  {
    [ETMessage displayInScene:];
    __break(1u);
  }

  v25(v24);

  v123 = [getSKTextureClass() textureWithImageNamed:@"blends_heartToRndRect65"];
  v122 = [getSKTextureClass() textureNoiseWithSmoothness:1 size:0.6 grayscale:{268.0, 253.0}];
  v27 = [getSKShaderClass() shaderWithFileNamed:@"heartLines"];
  linesShader = self->_linesShader;
  self->_linesShader = v27;

  v29 = [getSKUniformClass() uniformWithName:@"u_tex2" texture:v123];
  burTexUniform = self->_burTexUniform;
  self->_burTexUniform = v29;

  v31 = [getSKUniformClass() uniformWithName:@"u_tex3" texture:v122];
  noiseTexUniform = self->_noiseTexUniform;
  self->_noiseTexUniform = v31;

  SKUniformClass = getSKUniformClass();
  *&v34 = v9 / 60.0;
  v35 = [SKUniformClass uniformWithName:@"u_speed" float:v34];
  speedUniform = self->_speedUniform;
  self->_speedUniform = v35;

  v37 = [getSKUniformClass() uniformWithName:@"u_scale" float:0.0];
  scaleUniform = self->_scaleUniform;
  self->_scaleUniform = v37;

  v39 = [getSKUniformClass() uniformWithName:@"u_shader_time" float:0.0];
  shaderTimeUniform = self->_shaderTimeUniform;
  self->_shaderTimeUniform = v39;

  v41 = self->_noiseTexUniform;
  v149[0] = self->_burTexUniform;
  v149[1] = v41;
  v42 = self->_scaleUniform;
  v149[2] = self->_speedUniform;
  v149[3] = v42;
  v149[4] = self->_shaderTimeUniform;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:5];
  [(SKShader *)self->_linesShader setUniforms:v43];

  v44 = [getSKSpriteNodeClass() spriteNodeWithImageNamed:@"compositeHeart"];
  heartLines = self->_heartLines;
  self->_heartLines = v44;

  [(SKSpriteNode *)self->_heartLines setShader:self->_linesShader];
  v46 = [MEMORY[0x277D75348] colorWithRed:0.9046 green:0.0 blue:0.0742 alpha:1.0];
  [(SKSpriteNode *)self->_heartLines setColor:v46];

  [(SKSpriteNode *)self->_heartLines setColorBlendFactor:1.0];
  [(SKSpriteNode *)self->_heartLines setBlendMode:5];
  [(SKSpriteNode *)self->_heartLines setScale:0.8];
  node2 = [getSKNodeClass() node];
  heartScale = self->_heartScale;
  self->_heartScale = node2;

  v49 = [getSKTextureClass() textureWithImageNamed:@"HeartbreakAtlas"];
  heartbreakAtlas = self->_heartbreakAtlas;
  self->_heartbreakAtlas = v49;

  v121 = [getSKTextureClass() textureWithImageNamed:@"warpedHeartAtlas"];
  v51 = [getSKUniformClass() uniformWithName:@"u_tex2" texture:v121];
  warpedTexAtlasUniform = self->_warpedTexAtlasUniform;
  self->_warpedTexAtlasUniform = v51;

  v53 = [getSKShaderClass() shaderWithFileNamed:@"heart"];
  heartShader = self->_heartShader;
  self->_heartShader = v53;

  v55 = self->_speedUniform;
  v56 = self->_scaleUniform;
  v148[0] = self->_warpedTexAtlasUniform;
  v148[1] = v55;
  v57 = self->_shaderTimeUniform;
  v148[2] = v56;
  v148[3] = v57;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:4];
  [(SKShader *)self->_heartShader setUniforms:v58];

  v59 = [getSKSpriteNodeClass() spriteNodeWithImageNamed:@"heartAndBlur"];
  heart = self->_heart;
  self->_heart = v59;

  [(SKSpriteNode *)self->_heart setShader:self->_heartShader];
  v61 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.18 blue:0.3 alpha:1.0];
  [(SKSpriteNode *)self->_heart setColor:v61];

  [(SKSpriteNode *)self->_heart setColorBlendFactor:1.0];
  [(SKSpriteNode *)self->_heart setBlendMode:5];
  [(SKSpriteNode *)self->_heart setScale:0.75];
  [(SKNode *)self->_heartScale addChild:self->_heartLines];
  [(SKNode *)self->_heartScale addChild:self->_heart];
  [(SKNode *)self->_heartNode addChild:self->_heartScale];
  [sceneCopy addChild:self->_heartNode];
  [(SKNode *)self->_heartNode setAlpha:0.0];
  [(SKSpriteNode *)self->_heartLines setAlpha:0.0];
  v62 = self->_heartNode;
  SKActionClass_0 = getSKActionClass_0();
  if (startCopy)
  {
    v64 = 0.0;
  }

  else
  {
    v64 = 0.5;
  }

  v65 = [SKActionClass_0 fadeInWithDuration:v64];
  [(SKNode *)v62 runAction:v65 withKey:@"fade"];

  v66 = self->_heartLines;
  v67 = getSKActionClass_0();
  v68 = getSKActionClass_0();
  v69 = 0.0;
  if (!startCopy)
  {
    v69 = 0.3;
  }

  v70 = [v68 waitForDuration:v69];
  v147[0] = v70;
  v71 = [getSKActionClass_0() fadeInWithDuration:v64];
  v147[1] = v71;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:2];
  v73 = [v67 sequence:v72];
  [(SKSpriteNode *)v66 runAction:v73 withKey:@"fade"];

  if (durationCopy && ![(ETMessage *)self isRenderingOffscreen])
  {
    if (IMOSLoggingEnabled())
    {
      v75 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_248D00000, v75, OS_LOG_TYPE_INFO, "Using duration", buf, 2u);
      }
    }

    objc_initWeak(buf, self);
    if (self->_heartbreakTime == 0.0)
    {
      v85 = getSKActionClass_0();
      v77 = [getSKActionClass_0() waitForDuration:(self->_duration + 0.5)];
      v145[0] = v77;
      v86 = getSKActionClass_0();
      v129[0] = MEMORY[0x277D85DD0];
      v129[1] = 3221225472;
      v129[2] = __60__ETHeartbeatMessage__displayInScene_useDuration_fastStart___block_invoke_2;
      v129[3] = &unk_278F7A468;
      v79 = &v130;
      objc_copyWeak(&v130, buf);
      v87 = MEMORY[0x277D85CD0];
      v88 = MEMORY[0x277D85CD0];
      v82 = [v86 runBlock:v129 queue:v87];
      v145[1] = v82;
      v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v145 count:2];
      v84 = [v85 sequence:v83];
    }

    else
    {
      v76 = getSKActionClass_0();
      v77 = [getSKActionClass_0() waitForDuration:self->_heartbreakTime];
      v146[0] = v77;
      v78 = getSKActionClass_0();
      v131[0] = MEMORY[0x277D85DD0];
      v131[1] = 3221225472;
      v131[2] = __60__ETHeartbeatMessage__displayInScene_useDuration_fastStart___block_invoke;
      v131[3] = &unk_278F7A468;
      v79 = &v132;
      objc_copyWeak(&v132, buf);
      v80 = MEMORY[0x277D85CD0];
      v81 = MEMORY[0x277D85CD0];
      v82 = [v78 runBlock:v131 queue:v80];
      v146[1] = v82;
      v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:2];
      v84 = [v76 sequence:v83];
    }

    v89 = v84;

    objc_destroyWeak(v79);
    [(SKNode *)self->_heartNode runAction:v89];

    objc_destroyWeak(buf);
  }

  else if (IMOSLoggingEnabled())
  {
    v74 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248D00000, v74, OS_LOG_TYPE_INFO, "Not using duration", buf, 2u);
    }
  }

  v119 = self->_heartNode;
  v90 = getSKActionClass_0();
  v120 = [getSKActionClass_0() waitForDuration:v64];
  v144[0] = v120;
  v91 = getSKActionClass_0();
  v128[0] = MEMORY[0x277D85DD0];
  v128[1] = 3221225472;
  v128[2] = __60__ETHeartbeatMessage__displayInScene_useDuration_fastStart___block_invoke_41;
  v128[3] = &unk_278F79ED0;
  v128[4] = self;
  v92 = [v91 runBlock:v128];
  v144[1] = v92;
  v93 = getSKActionClass_0();
  v94 = getSKActionClass_0();
  v95 = getSKActionClass_0();
  v126[0] = MEMORY[0x277D85DD0];
  v126[1] = 3221225472;
  v126[2] = __60__ETHeartbeatMessage__displayInScene_useDuration_fastStart___block_invoke_2_42;
  v126[3] = &unk_278F7A490;
  v126[4] = self;
  v127 = v12;
  v96 = [v95 runBlock:v126];
  v143[0] = v96;
  v97 = [getSKActionClass_0() waitForDuration:v12];
  v143[1] = v97;
  v98 = [getSKActionClass_0() waitForDuration:v13];
  v143[2] = v98;
  v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:3];
  v100 = [v94 sequence:v99];
  v101 = [v93 repeatActionForever:v100];
  v144[2] = v101;
  v102 = [MEMORY[0x277CBEA60] arrayWithObjects:v144 count:3];
  v103 = [v90 sequence:v102];
  [(SKNode *)v119 runAction:v103];

  v104 = getSKActionClass_0();
  v105 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.0 blue:0.5 alpha:1.0];
  v106 = v12 * 0.5;
  v107 = [v104 colorizeWithColor:v105 colorBlendFactor:1.0 duration:v106];

  v108 = getSKActionClass_0();
  v109 = [MEMORY[0x277D75348] colorWithRed:0.9046 green:0.0 blue:0.3 alpha:1.0];
  v110 = [v108 colorizeWithColor:v109 colorBlendFactor:1.0 duration:v106];

  [v107 setTimingMode:3];
  [v110 setTimingMode:3];
  v111 = getSKActionClass_0();
  v112 = getSKActionClass_0();
  v142[0] = v107;
  v142[1] = v110;
  v113 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:2];
  v114 = [v112 sequence:v113];
  v115 = [v111 repeatActionForever:v114];

  [(SKSpriteNode *)self->_heart runAction:v115];
  [(SKSpriteNode *)self->_heartLines runAction:v115];
  v116 = self->_heartNode;
  v117 = getSKActionClass_0();
  v125[0] = MEMORY[0x277D85DD0];
  v125[1] = 3221225472;
  v125[2] = __60__ETHeartbeatMessage__displayInScene_useDuration_fastStart___block_invoke_3;
  v125[3] = &unk_278F7A4B8;
  v125[4] = self;
  v118 = [v117 customActionWithDuration:v125 actionBlock:((10 + 0.5) + 0.6)];
  [(SKNode *)v116 runAction:v118];
}

void __60__ETHeartbeatMessage__displayInScene_useDuration_fastStart___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained breakHeart];
}

void __60__ETHeartbeatMessage__displayInScene_useDuration_fastStart___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stopPlaying];
}

uint64_t __60__ETHeartbeatMessage__displayInScene_useDuration_fastStart___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 184);
  [v1 floatValue];
  *&v2 = *&v2 + 0.016667;

  return [v1 setFloatValue:v2];
}

- (void)moveHeartNodeByX:(double)x y:(double)y duration:(double)duration
{
  heartNode = self->_heartNode;
  v6 = [getSKActionClass_0() moveByX:x y:y duration:duration];
  [(SKNode *)heartNode runAction:v6];
}

- (void)playBeatWithDuration:(double)duration
{
  v23[3] = *MEMORY[0x277D85DE8];
  v5 = [getSKActionClass_0() scaleTo:1.65 duration:duration * 0.25];
  v6 = [getSKActionClass_0() scaleTo:1.0 duration:duration * 0.600000024];
  v7 = [getSKActionClass_0() waitForDuration:duration * 0.150000006];
  [v5 setTimingMode:3];
  [v6 setTimingMode:3];
  SKActionClass_0 = getSKActionClass_0();
  v23[0] = v5;
  v23[1] = v7;
  v23[2] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v10 = [SKActionClass_0 sequence:v9];

  [(SKNode *)self->_heartScale runAction:v10];
  v11 = getSKActionClass_0();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __43__ETHeartbeatMessage_playBeatWithDuration___block_invoke;
  v20[3] = &unk_278F7A4E0;
  v21 = 1048576000;
  *&v20[5] = duration;
  v20[4] = self;
  v12 = [v11 customActionWithDuration:v20 actionBlock:duration * 0.25];

  v13 = getSKActionClass_0();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __43__ETHeartbeatMessage_playBeatWithDuration___block_invoke_2;
  v18[3] = &unk_278F7A4E0;
  v19 = 1058642330;
  *&v18[5] = duration;
  v18[4] = self;
  v14 = [v13 customActionWithDuration:v18 actionBlock:duration * 0.600000024];

  [v12 setTimingMode:2];
  [v14 setTimingMode:1];
  v15 = getSKActionClass_0();
  v22[0] = v12;
  v22[1] = v7;
  v22[2] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v17 = [v15 sequence:v16];

  [(SKNode *)self->_heartNode runAction:v17];
}

uint64_t __43__ETHeartbeatMessage_playBeatWithDuration___block_invoke(uint64_t a1, double a2)
{
  v2 = a2 / (*(a1 + 40) * *(a1 + 48));
  *&v2 = v2;
  return [*(*(a1 + 32) + 176) setFloatValue:v2];
}

uint64_t __43__ETHeartbeatMessage_playBeatWithDuration___block_invoke_2(uint64_t a1, double a2)
{
  v2 = 1.0 - a2 / (*(a1 + 40) * *(a1 + 48));
  *&v2 = v2;
  return [*(*(a1 + 32) + 176) setFloatValue:v2];
}

- (void)startHeartbeat:(id)heartbeat fastStart:(BOOL)start
{
  startCopy = start;
  heartbeatCopy = heartbeat;
  v7 = objc_initWeak(&location, heartbeatCopy);
  [(ETHeartbeatMessage *)self _displayInScene:heartbeatCopy useDuration:0 fastStart:startCopy];

  objc_destroyWeak(&location);
}

- (void)stopPlaying
{
  v17[2] = *MEMORY[0x277D85DE8];
  heartLines = self->_heartLines;
  v4 = [getSKActionClass_0() fadeOutWithDuration:0.480000019];
  [(SKSpriteNode *)heartLines runAction:v4 withKey:@"fade"];

  [(ETHeartbeatMessage *)self _stopAudioPlayback];
  delegate = [(ETMessage *)self delegate];
  [delegate messageWillStopPlaying:self];
  [(SKNode *)self->_heartNode removeAllActions];
  heartNode = self->_heartNode;
  SKActionClass_0 = getSKActionClass_0();
  v8 = [getSKActionClass_0() fadeOutWithDuration:0.600000024];
  v17[0] = v8;
  removeFromParent = [getSKActionClass_0() removeFromParent];
  v17[1] = removeFromParent;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v11 = [SKActionClass_0 sequence:v10];
  [(SKNode *)heartNode runAction:v11 withKey:@"fade"];

  parent = [(SKNode *)self->_heartNode parent];

  if (parent)
  {
    v13 = dispatch_time(0, 600000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__ETHeartbeatMessage_stopPlaying__block_invoke;
    block[3] = &unk_278F79FB0;
    v15 = delegate;
    selfCopy = self;
    dispatch_after(v13, MEMORY[0x277D85CD0], block);
  }

  else
  {
    [delegate messageDidStopPlaying:self];
  }
}

- (void)breakHeart
{
  v35[2] = *MEMORY[0x277D85DE8];
  if (!self->_broken)
  {
    self->_broken = 1;
    if (self->_heartbreakTime == 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      [(ETMessage *)self timeCreated];
      self->_heartbreakTime = Current - v4;
    }

    [(SKSpriteNode *)self->_heart removeAllActions];
    [(SKNode *)self->_heartNode removeAllActions];
    [(SKSpriteNode *)self->_heartLines removeAllActions];
    [(SKNode *)self->_heartScale removeAllActions];
    LODWORD(v5) = 1023969327;
    [(SKUniform *)self->_shaderTimeUniform setFloatValue:v5];
    LODWORD(v6) = 1.0;
    [(SKUniform *)self->_scaleUniform setFloatValue:v6];
    [(SKUniform *)self->_warpedTexAtlasUniform setTextureValue:self->_heartbreakAtlas];
    heartLines = self->_heartLines;
    v8 = [getSKActionClass_0() fadeOutWithDuration:0.2];
    [(SKSpriteNode *)heartLines runAction:v8];

    heart = self->_heart;
    SKActionClass_0 = getSKActionClass_0();
    v11 = [MEMORY[0x277D75348] colorWithRed:0.5 green:0.0 blue:0.1 alpha:1.0];
    v12 = [SKActionClass_0 colorizeWithColor:v11 colorBlendFactor:1.0 duration:1.0];
    [(SKSpriteNode *)heart runAction:v12];

    v13 = self->_shaderTimeUniform;
    heartNode = self->_heartNode;
    v15 = getSKActionClass_0();
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __32__ETHeartbeatMessage_breakHeart__block_invoke;
    v33[3] = &unk_278F7A4B8;
    v16 = v13;
    v34 = v16;
    v17 = [v15 customActionWithDuration:v33 actionBlock:1.0];
    [(SKNode *)heartNode runAction:v17];

    objc_initWeak(&location, self);
    v18 = self->_heartNode;
    v19 = getSKActionClass_0();
    v20 = [getSKActionClass_0() waitForDuration:1.0];
    v35[0] = v20;
    v21 = getSKActionClass_0();
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __32__ETHeartbeatMessage_breakHeart__block_invoke_2;
    v30 = &unk_278F7A468;
    objc_copyWeak(&v31, &location);
    v22 = MEMORY[0x277D85CD0];
    v23 = MEMORY[0x277D85CD0];
    v24 = [v21 runBlock:&v27 queue:v22];
    v35[1] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:{2, v27, v28, v29, v30}];
    v26 = [v19 sequence:v25];
    [(SKNode *)v18 runAction:v26];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }
}

uint64_t __32__ETHeartbeatMessage_breakHeart__block_invoke(uint64_t a1, double a2)
{
  v2 = fmax(a2, 0.033333);
  *&v2 = v2;
  return [*(a1 + 32) setFloatValue:v2];
}

void __32__ETHeartbeatMessage_breakHeart__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stopPlaying];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p bpm:%3.0f duration:%d>", v5, self, self->_beatsPerMinute, self->_duration];

  return v6;
}

- (void)setMute:(BOOL)mute
{
  muteCopy = mute;
  v5.receiver = self;
  v5.super_class = ETHeartbeatMessage;
  [(ETMessage *)&v5 setMute:?];
  if (muteCopy)
  {
    [(ETHeartbeatMessage *)self _stopAudioPlayback];
  }

  else
  {
    [(ETHeartbeatMessage *)self _startAudioPlayback];
  }
}

- (CGPoint)normalizedCenter
{
  x = self->_normalizedCenter.x;
  y = self->_normalizedCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end