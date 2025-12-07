@interface ZoomUI_UIAlertControllerOverride
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ZoomUI_UIAlertControllerOverride

- (void)viewDidAppear:(BOOL)appear
{
  v58[2] = *MEMORY[0x29EDCA608];
  v56.receiver = self;
  v56.super_class = ZoomUI_UIAlertControllerOverride;
  [(ZoomUI_UIAlertControllerOverride *)&v56 viewDidAppear:appear];
  v4 = [(ZoomUI_UIAlertControllerOverride *)self safeValueForKey:@"view"];
  v5 = [v4 safeValueForKey:@"_contentView"];
  v6 = [v4 safeValueForKey:@"window"];
  if (v5)
  {
    v7 = [v5 safeValueForKey:@"bounds"];
    [v7 CGRectValue];
    v9 = v8;
    v11 = v10;

    v50 = 0;
    v51 = &v50;
    v52 = 0x4010000000;
    v53 = &unk_29BAF6386;
    v54 = 0u;
    v55 = 0u;
    v43[0] = MEMORY[0x29EDCA5F8];
    v43[1] = 3221225472;
    v43[2] = __50__ZoomUI_UIAlertControllerOverride_viewDidAppear___block_invoke;
    v43[3] = &unk_29F29A508;
    v46 = &v50;
    v12 = v6;
    v44 = v12;
    v47 = v9;
    v48 = v11;
    __asm { FMOV            V0.2D, #2.0 }

    v49 = _Q0;
    v45 = v5;
    soft_AXPerformSafeBlock(v43);
    v36 = *(v51 + 3);
    v37 = *(v51 + 2);

    _Block_object_dispose(&v50, 8);
    v50 = 0;
    v51 = &v50;
    v52 = 0x4010000000;
    v53 = &unk_29BAF6386;
    v54 = 0u;
    v55 = 0u;
    v38[0] = MEMORY[0x29EDCA5F8];
    v38[1] = 3221225472;
    v38[2] = __50__ZoomUI_UIAlertControllerOverride_viewDidAppear___block_invoke_2;
    v38[3] = &unk_29F29A530;
    v40 = &v50;
    v18 = v12;
    v39 = v18;
    v41 = v37;
    v42 = v36;
    soft_AXPerformSafeBlock(v38);
    v19 = *(v51 + 4);
    v20 = *(v51 + 5);
    v21 = *(v51 + 6);
    v22 = *(v51 + 7);

    _Block_object_dispose(&v50, 8);
    v23 = soft_AXUIConvertRectFromScreenToContextSpace(v18, v19, v20, v21, v22);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = objc_alloc(MEMORY[0x29EDBA060]);
    v57[0] = @"frame";
    v31 = [MEMORY[0x29EDBA168] valueWithCGRect:{v23, v25, v27, v29}];
    v57[1] = @"contextId";
    v58[0] = v31;
    v32 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{objc_msgSend(v18, "_contextId")}];
    v58[1] = v32;
    v33 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
    v34 = [v30 initWithName:@"ZoomUIAleartWillAppearNotification" object:0 userInfo:v33];

    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter postNotification:v34];
  }
}

@end