@interface ETKissMessage
+ (id)_kissColor;
- (BOOL)_hasKissesThatLeaveMark;
- (ETKissMessage)init;
- (ETKissMessage)initWithArchiveData:(id)data;
- (double)messageDuration;
- (id)archiveData;
- (void)_displayKissAtPoint:(CGPoint)point angle:(double)angle leavesMark:(BOOL)mark inScene:(id)scene;
- (void)_initAtlas;
- (void)_notifyDelegateDidStopPlaying;
- (void)_notifyDelegateWillStopPlaying;
- (void)_setKissLeavesMark:(id)mark;
- (void)addKissAtNormalizedPoint:(CGPoint)point angle:(double)angle time:(double)time toScene:(id)scene;
- (void)displayInScene:(id)scene;
- (void)setParentMessage:(id)message;
- (void)stopPlaying;
@end

@implementation ETKissMessage

+ (id)_kissColor
{
  if (_kissColor_onceToken != -1)
  {
    +[ETKissMessage _kissColor];
  }

  v3 = _kissColor_color;

  return v3;
}

uint64_t __27__ETKissMessage__kissColor__block_invoke()
{
  _kissColor_color = [MEMORY[0x277D75348] colorWithRed:0.87 green:0.0 blue:0.52 alpha:1.0];

  return MEMORY[0x2821F96F8]();
}

- (ETKissMessage)init
{
  v13.receiver = self;
  v13.super_class = ETKissMessage;
  v2 = [(ETMessage *)&v13 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    points = v2->_points;
    v2->_points = array;

    array2 = [MEMORY[0x277CBEB18] array];
    angles = v2->_angles;
    v2->_angles = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    delays = v2->_delays;
    v2->_delays = array3;

    v9 = [MEMORY[0x277CBEB58] set];
    kissMarkNodes = v2->_kissMarkNodes;
    v2->_kissMarkNodes = v9;

    v11 = v2;
  }

  return v2;
}

- (ETKissMessage)initWithArchiveData:(id)data
{
  dataCopy = data;
  v38.receiver = self;
  v38.super_class = ETKissMessage;
  v5 = [(ETMessage *)&v38 initWithArchiveData:dataCopy];
  if (v5)
  {
    v6 = [[ETPKiss alloc] initWithData:dataCopy];
    v7 = v6;
    if (v6)
    {
      if ([(ETPKiss *)v6 hasPoints]&& [(ETPKiss *)v7 hasAngles]&& [(ETPKiss *)v7 hasDelays])
      {
        points = [(ETPKiss *)v7 points];
        v33 = [points length];
        v9 = v33 >> 2;
        v32 = points;
        bytes = [points bytes];
        angles = [(ETPKiss *)v7 angles];
        v12 = [angles length];
        v31 = angles;
        bytes2 = [angles bytes];
        delays = [(ETPKiss *)v7 delays];
        v15 = [delays length];
        v30 = delays;
        bytes3 = [delays bytes];
        v17 = 0;
        if (v33 >> 2 == v12 >> 1 && v9 == v15 >> 1)
        {
          if (v33 >= 4)
          {
            v18 = bytes3;
            do
            {
              v19 = *bytes++;
              *buf = v19 / 32767.0 + -1.0;
              v37 = HIWORD(v19) / 32767.0 + -1.0;
              points = v5->_points;
              v21 = [MEMORY[0x277CCAE60] value:buf withObjCType:"{CGPoint=dd}"];
              [(NSMutableArray *)points addObject:v21];

              v22 = *bytes2++;
              v35 = v22 / 1000.0;
              angles = v5->_angles;
              v24 = [MEMORY[0x277CCAE60] value:&v35 withObjCType:"d"];
              [(NSMutableArray *)angles addObject:v24];

              v25 = *v18++;
              v34 = v25 / 1000.0;
              delays = v5->_delays;
              v27 = [MEMORY[0x277CCAE60] value:&v34 withObjCType:"d"];
              [(NSMutableArray *)delays addObject:v27];

              --v9;
            }

            while (v9);
          }

          v17 = v5;
        }

        goto LABEL_19;
      }

      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_248D00000, v28, OS_LOG_TYPE_INFO, "Attempted to unarchive kiss that was missing points, angles, or delays.", buf, 2u);
        }
      }
    }

    v17 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v17 = 0;
LABEL_20:

  return v17;
}

- (id)archiveData
{
  v22 = objc_alloc_init(ETPKiss);
  v3 = [(NSMutableArray *)self->_points count];
  data = [MEMORY[0x277CBEB28] data];
  [data setLength:4 * v3];
  v21 = data;
  mutableBytes = [data mutableBytes];
  data2 = [MEMORY[0x277CBEB28] data];
  [data2 setLength:2 * v3];
  mutableBytes2 = [data2 mutableBytes];
  data3 = [MEMORY[0x277CBEB28] data];
  [data3 setLength:2 * v3];
  v20 = data3;
  mutableBytes3 = [data3 mutableBytes];
  if (v3)
  {
    v10 = mutableBytes3;
    v11 = 0;
    v23 = *MEMORY[0x277CBF348];
    do
    {
      v26 = v23;
      v12 = [(NSMutableArray *)self->_points objectAtIndexedSubscript:v11];
      [v12 getValue:&v26];

      v13 = (*&v26 + 1.0) * 32767.0;
      v14 = llroundf(v13);
      v15 = (*(&v26 + 1) + 1.0) * 32767.0;
      *(mutableBytes + 4 * v11) = v14 | (llroundf(v15) << 16);
      v25 = 0.0;
      v16 = [(NSMutableArray *)self->_angles objectAtIndexedSubscript:v11];
      [v16 getValue:&v25];

      *(mutableBytes2 + 2 * v11) = (v25 * 1000.0);
      v24 = 0.0;
      v17 = [(NSMutableArray *)self->_delays objectAtIndexedSubscript:v11];
      [v17 getValue:&v24];

      *(v10 + 2 * v11++) = llround(v24 * 1000.0);
    }

    while (v3 != v11);
  }

  [(ETPKiss *)v22 setPoints:v21];
  [(ETPKiss *)v22 setAngles:data2];
  [(ETPKiss *)v22 setDelays:v20];
  data4 = [(ETPKiss *)v22 data];

  return data4;
}

- (void)_initAtlas
{
  if (!self->_atlas)
  {
    v3 = ETFrameworkBundle(self, a2);
    ET_SKSetResourceBundle(v3);

    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v4 = getSKTextureClass_softClass_1;
    v14 = getSKTextureClass_softClass_1;
    if (!getSKTextureClass_softClass_1)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __getSKTextureClass_block_invoke_1;
      v10[3] = &unk_278F7A048;
      v10[4] = &v11;
      __getSKTextureClass_block_invoke_1(v10);
      v4 = v12[3];
    }

    v5 = v4;
    _Block_object_dispose(&v11, 8);
    v6 = [v4 textureWithImageNamed:@"KissAtlas"];
    atlas = self->_atlas;
    self->_atlas = v6;

    v8 = [getSKUniformClass_1() uniformWithName:@"u_tex2" texture:self->_atlas];
    atlasUniform = self->_atlasUniform;
    self->_atlasUniform = v8;
  }
}

- (void)addKissAtNormalizedPoint:(CGPoint)point angle:(double)angle time:(double)time toScene:(id)scene
{
  pointCopy = point;
  lastKissTime = self->_lastKissTime;
  if (lastKissTime == 0.0)
  {
    lastKissTime = time;
  }

  v18 = time - lastKissTime;
  angleCopy = angle;
  self->_lastKissTime = time;
  delays = self->_delays;
  v9 = MEMORY[0x277CCAE60];
  sceneCopy = scene;
  v11 = [v9 valueWithBytes:&v18 objCType:"d"];
  [(NSMutableArray *)delays addObject:v11];

  points = self->_points;
  v13 = [MEMORY[0x277CCAE60] valueWithBytes:&pointCopy objCType:"{CGPoint=dd}"];
  [(NSMutableArray *)points addObject:v13];

  angles = self->_angles;
  v15 = [MEMORY[0x277CCAE60] valueWithBytes:&angleCopy objCType:"d"];
  [(NSMutableArray *)angles addObject:v15];

  [(ETKissMessage *)self _initAtlas];
  [(ETMessage *)self scenePointFromNormalizedPoint:sceneCopy inScene:pointCopy.x, pointCopy.y];
  [(ETKissMessage *)self _displayKissAtPoint:[(ETKissMessage *)self _leaveMarkAtDelay:v18] angle:sceneCopy leavesMark:v16 inScene:v17, angleCopy];
}

- (BOOL)_hasKissesThatLeaveMark
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_delays;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v11 = 0.0;
        [v8 getValue:&v11];
        if ([(ETKissMessage *)self _leaveMarkAtDelay:v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)displayInScene:(id)scene
{
  sceneCopy = scene;
  self->_didDelegateWillStopPlaying = 0;
  self->_didDelegateDidStopPlaying = 0;
  [(ETKissMessage *)self _initAtlas];
  objc_initWeak(location, sceneCopy);
  objc_initWeak(&from, self);
  v5 = self->_kissMarkNodes;
  array = [MEMORY[0x277CBEB18] array];
  v7 = [(NSMutableArray *)self->_points count];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v37 = 0;
      v9 = [(NSMutableArray *)self->_delays objectAtIndexedSubscript:i];
      [v9 getValue:&v37];

      if (![(ETMessage *)self isRenderingOffscreen])
      {
        v10 = [getSKActionClass_2() waitForDuration:*&v37];
        [array addObject:v10];
      }

      SKActionClass_2 = getSKActionClass_2();
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __32__ETKissMessage_displayInScene___block_invoke;
      v34[3] = &unk_278F7A630;
      v34[4] = self;
      v36[1] = i;
      objc_copyWeak(&v35, &from);
      objc_copyWeak(v36, location);
      v36[2] = v37;
      v12 = [SKActionClass_2 runBlock:v34];
      [array addObject:v12];

      objc_destroyWeak(v36);
      objc_destroyWeak(&v35);
    }
  }

  if (![(ETMessage *)self isRenderingOffscreen])
  {
    _hasKissesThatLeaveMark = [(ETKissMessage *)self _hasKissesThatLeaveMark];
    v14 = getSKActionClass_2();
    v15 = 0.3;
    if (_hasKissesThatLeaveMark)
    {
      v15 = 1.0;
    }

    v16 = [v14 waitForDuration:v15];
    [array addObject:v16];

    v17 = getSKActionClass_2();
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __32__ETKissMessage_displayInScene___block_invoke_2;
    v31[3] = &unk_278F7A658;
    v33 = _hasKissesThatLeaveMark;
    objc_copyWeak(&v32, &from);
    v18 = MEMORY[0x277D85CD0];
    v19 = MEMORY[0x277D85CD0];
    v20 = [v17 runBlock:v31 queue:v18];
    [array addObject:v20];

    v21 = getSKActionClass_2();
    v22 = 1.7;
    if (_hasKissesThatLeaveMark)
    {
      v22 = 1.0;
    }

    v23 = [v21 waitForDuration:v22];
    [array addObject:v23];

    v24 = getSKActionClass_2();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __32__ETKissMessage_displayInScene___block_invoke_3;
    v27[3] = &unk_278F7A680;
    objc_copyWeak(&v29, &from);
    v30 = _hasKissesThatLeaveMark;
    v28 = v5;
    v25 = [v24 runBlock:v27];
    [array addObject:v25];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v32);
  }

  v26 = [getSKActionClass_2() sequence:array];
  [sceneCopy runAction:v26];

  objc_destroyWeak(&from);
  objc_destroyWeak(location);
}

void __32__ETKissMessage_displayInScene___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277CBF348];
  v2 = [*(*(a1 + 32) + 112) objectAtIndexedSubscript:*(a1 + 56)];
  [v2 getValue:&v15];

  v14 = 0.0;
  v3 = [*(*(a1 + 32) + 120) objectAtIndexedSubscript:*(a1 + 56)];
  [v3 getValue:&v14];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained scenePointFromNormalizedPoint:v5 inScene:v15];
  v7 = v6;
  v9 = v8;

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = v14;
  v12 = [*(a1 + 32) _leaveMarkAtDelay:*(a1 + 64)];
  v13 = objc_loadWeakRetained((a1 + 48));
  [v10 _displayKissAtPoint:v12 angle:v13 leavesMark:v7 inScene:{v9, v11}];
}

void __32__ETKissMessage_displayInScene___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [WeakRetained parentMessage];
    v4 = objc_loadWeakRetained((a1 + 32));
    [v3 childMessageDidDelayWisp:v4];
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _notifyDelegateWillStopPlaying];
}

void __32__ETKissMessage_displayInScene___block_invoke_3(uint64_t a1)
{
  v1 = a1;
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained parentMessage];
  if (v3)
  {

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  v4 = *(v1 + 48);

  if (v4 != 1)
  {
    goto LABEL_12;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20 = v1;
  v5 = *(v1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        SKActionClass_2 = getSKActionClass_2();
        v12 = [getSKActionClass_2() fadeOutWithDuration:0.25];
        v27[0] = v12;
        v13 = [getSKActionClass_2() removeFromParent];
        v27[1] = v13;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
        v15 = [SKActionClass_2 sequence:v14];
        [v10 runAction:v15];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v16 = 1000000000;
  v1 = v20;
LABEL_13:
  if (*(v1 + 48) != 1 || (v17 = objc_loadWeakRetained((v1 + 40)), [v17 parentMessage], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, !v18))
  {
    v19 = dispatch_time(0, v16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__ETKissMessage_displayInScene___block_invoke_4;
    block[3] = &unk_278F7A468;
    objc_copyWeak(&v22, (v1 + 40));
    dispatch_after(v19, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v22);
  }
}

void __32__ETKissMessage_displayInScene___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyDelegateDidStopPlaying];
}

- (void)_setKissLeavesMark:(id)mark
{
  if (mark)
  {
    markCopy = mark;
    [markCopy setLeavesMark:1];
    [(NSMutableSet *)self->_kissMarkNodes addObject:markCopy];
  }
}

- (void)_displayKissAtPoint:(CGPoint)point angle:(double)angle leavesMark:(BOOL)mark inScene:(id)scene
{
  markCopy = mark;
  y = point.y;
  x = point.x;
  v64[2] = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  WeakRetained = objc_loadWeakRetained(&self->_lastKiss);

  if (WeakRetained)
  {
    v15 = markCopy;
  }

  else
  {
    v15 = 0;
  }

  if (v15 && (v16 = objc_loadWeakRetained(&self->_lastKiss), v17 = [v16 leavesMark], v16, (v17 & 1) == 0))
  {
    v43 = objc_loadWeakRetained(&self->_lastKiss);
    [(ETKissMessage *)self _setKissLeavesMark:v43];
  }

  else
  {
    v18 = ETFrameworkBundle(v13, v14);
    ET_SKSetResourceBundle(v18);

    v59 = 0;
    v60 = &v59;
    v61 = 0x2050000000;
    v19 = getSKShaderClass_softClass_1;
    v62 = getSKShaderClass_softClass_1;
    if (!getSKShaderClass_softClass_1)
    {
      v54 = MEMORY[0x277D85DD0];
      v55 = 3221225472;
      v56 = __getSKShaderClass_block_invoke_1;
      v57 = COERCE_DOUBLE(&unk_278F7A048);
      v58 = &v59;
      __getSKShaderClass_block_invoke_1(&v54);
      v19 = v60[3];
    }

    v20 = v19;
    _Block_object_dispose(&v59, 8);
    v21 = [v19 shaderWithFileNamed:@"kiss"];
    v22 = [getSKUniformClass_1() uniformWithName:@"u_shader_time" float:0.0];
    v64[0] = self->_atlasUniform;
    v64[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
    [v21 setUniforms:v23];

    clearColor = [MEMORY[0x277D75348] clearColor];
    v25 = [KissNode kissNodeWithColor:clearColor size:256.0, 256.0];

    [v25 setShader:v21];
    v26 = +[ETKissMessage _kissColor];
    [v25 setColor:v26];

    [v25 setColorBlendFactor:1.0];
    [v25 setBlendMode:1];
    [v25 setPosition:{x, y}];
    [v25 setZRotation:angle + 0.175];
    [sceneCopy size];
    [v25 setScale:{fmax(v27 / 156.0, 1.0) * 0.35}];
    node = [v25 node];
    [sceneCopy addChild:node];

    if (v15)
    {
      [(ETKissMessage *)self _setKissLeavesMark:v25];
      v29 = objc_loadWeakRetained(&self->_lastKiss);
      [(ETKissMessage *)self _setKissLeavesMark:v29];

      objc_storeWeak(&self->_lastKiss, v25);
      v54 = 0;
      v55 = &v54;
      v56 = 0x2020000000;
      v30 = 0.0;
    }

    else
    {
      objc_storeWeak(&self->_lastKiss, v25);
      v54 = 0;
      v55 = &v54;
      v56 = 0x2020000000;
      isRenderingOffscreen = [(ETMessage *)self isRenderingOffscreen];
      v30 = 0.3;
      if (!isRenderingOffscreen)
      {
        v30 = 0.0;
      }
    }

    v57 = 1.0 - v30;
    SKActionClass_2 = getSKActionClass_2();
    v33 = *(v55 + 24);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __62__ETKissMessage__displayKissAtPoint_angle_leavesMark_inScene___block_invoke;
    v52[3] = &unk_278F7A4B8;
    v34 = v22;
    v53 = v34;
    v35 = [SKActionClass_2 customActionWithDuration:v52 actionBlock:v33];
    [v25 runAction:v35];

    if (([v25 leavesMark] & 1) == 0)
    {
      v36 = getSKActionClass_2();
      v37 = [getSKActionClass_2() waitForDuration:1.0];
      v63[0] = v37;
      v38 = getSKActionClass_2();
      v44 = MEMORY[0x277D85DD0];
      v45 = 3221225472;
      v46 = __62__ETKissMessage__displayKissAtPoint_angle_leavesMark_inScene___block_invoke_2;
      v47 = &unk_278F7A6A8;
      selfCopy = self;
      v39 = v25;
      v49 = v39;
      v51 = &v54;
      v50 = v34;
      v40 = [v38 runBlock:&v44];
      v63[1] = v40;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:{2, v44, v45, v46, v47, selfCopy}];
      v42 = [v36 sequence:v41];
      [v39 runAction:v42];
    }

    _Block_object_dispose(&v54, 8);
  }
}

void *__62__ETKissMessage__displayKissAtPoint_angle_leavesMark_inScene___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) isRenderingOffscreen];
  result = [*(a1 + 40) leavesMark];
  if (v2)
  {
    if (result && *(*(*(a1 + 56) + 8) + 24) != 1.0)
    {
      v4 = *(a1 + 48);
      [v4 floatValue];
      v6 = 1.0 - *(*(*(a1 + 56) + 8) + 24) + v5;
      *&v6 = v6;

      return [v4 setFloatValue:v6];
    }
  }

  else if ((result & 1) == 0)
  {
    v7 = *(a1 + 40);

    return [v7 removeFromParent];
  }

  return result;
}

- (void)_notifyDelegateDidStopPlaying
{
  if (!self->_didDelegateDidStopPlaying)
  {
    self->_didDelegateDidStopPlaying = 1;
    delegate = [(ETMessage *)self delegate];
    [delegate messageDidStopPlaying:self];
  }
}

- (void)_notifyDelegateWillStopPlaying
{
  if (!self->_didDelegateWillStopPlaying)
  {
    self->_didDelegateWillStopPlaying = 1;
    delegate = [(ETMessage *)self delegate];
    [delegate messageWillStopPlaying:self];
  }
}

- (void)stopPlaying
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = self->_kissMarkNodes;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = *v18;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        SKActionClass_2 = getSKActionClass_2();
        v8 = [getSKActionClass_2() fadeOutWithDuration:0.25];
        v21[0] = v8;
        removeFromParent = [getSKActionClass_2() removeFromParent];
        v21[1] = removeFromParent;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
        v11 = [SKActionClass_2 sequence:v10];
        [v6 runAction:v11];
      }

      v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v3);
  }

  [(NSMutableSet *)self->_kissMarkNodes removeAllObjects];
  [(ETKissMessage *)self _notifyDelegateWillStopPlaying];
  objc_initWeak(&location, self);
  if ([(ETMessage *)self missedDuringPlayback])
  {
    [(ETKissMessage *)self _notifyDelegateDidStopPlaying];
  }

  else
  {
    v12 = dispatch_time(0, 250000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__ETKissMessage_stopPlaying__block_invoke;
    block[3] = &unk_278F7A468;
    objc_copyWeak(&v15, &location);
    dispatch_after(v12, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v15);
  }

  objc_destroyWeak(&location);
}

void __28__ETKissMessage_stopPlaying__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyDelegateDidStopPlaying];
}

- (double)messageDuration
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_delays;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v11 = 0.0;
        [v8 getValue:&v11];
        v6 = v6 + v11;
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
    v9 = v6 + 1.0 + 0.25;
  }

  else
  {
    v9 = 1.25;
  }

  return v9;
}

- (void)setParentMessage:(id)message
{
  v4.receiver = self;
  v4.super_class = ETKissMessage;
  [(ETMessage *)&v4 setParentMessage:message];
  [(ETMessage *)self setDelayWisp:1];
}

@end