@interface CKUploadRequestManagerStateMachine
+ (id)nameFromFunction:(int64_t)function;
+ (id)nameFromResponseAction:(int64_t)action;
+ (id)nameFromState:(int64_t)state;
+ (id)nameFromStateEvent:(int64_t)event;
- (BOOL)canPerformFunction:(int64_t)function;
- (CKUploadRequestManagerStateMachine)initWithActionHandler:(id)handler;
- (id)createStateMachine;
- (id)eventHandlerForState:(id)state withEnterBlock:(id)block exitBlock:(id)exitBlock eventBlock:(id)eventBlock;
- (void)dealloc;
- (void)dispatchEvent:(int64_t)event userInfo:(id)info;
- (void)start;
- (void)transitionToState:(id)state withEvent:(id)event;
@end

@implementation CKUploadRequestManagerStateMachine

- (id)createStateMachine
{
  v157[12] = *MEMORY[0x1E69E9840];
  v96 = objc_alloc_init(MEMORY[0x1E6999538]);
  v3 = objc_alloc(MEMORY[0x1E6999528]);
  v5 = objc_msgSend_initWithName_parent_(v3, v4, @"Global", 0);
  v6 = objc_alloc(MEMORY[0x1E6999528]);
  v8 = objc_msgSend_initWithName_parent_(v6, v7, @"Root Unregistered", v5);
  v9 = objc_alloc(MEMORY[0x1E6999528]);
  v11 = objc_msgSend_initWithName_parent_(v9, v10, @"Initial", v8);
  v12 = objc_alloc(MEMORY[0x1E6999528]);
  v98 = v8;
  v14 = objc_msgSend_initWithName_parent_(v12, v13, @"Cleared", v8);
  v15 = objc_alloc(MEMORY[0x1E6999528]);
  v17 = objc_msgSend_initWithName_parent_(v15, v16, @"Root Registered", v5);
  v18 = objc_alloc(MEMORY[0x1E6999528]);
  v20 = objc_msgSend_initWithName_parent_(v18, v19, @"Fetching Initial Data", v17);
  v21 = objc_alloc(MEMORY[0x1E6999528]);
  v97 = v17;
  v23 = objc_msgSend_initWithName_parent_(v21, v22, @"Root Initialized", v17);
  v24 = objc_alloc(MEMORY[0x1E6999528]);
  v26 = objc_msgSend_initWithName_parent_(v24, v25, @"Fetching Account ID", v23);
  v27 = objc_alloc(MEMORY[0x1E6999528]);
  v29 = objc_msgSend_initWithName_parent_(v27, v28, @"System Not Ready", v23);
  v30 = objc_alloc(MEMORY[0x1E6999528]);
  v32 = objc_msgSend_initWithName_parent_(v30, v31, @"Root Ready", v23);
  v33 = objc_alloc(MEMORY[0x1E6999528]);
  v93 = objc_msgSend_initWithName_parent_(v33, v34, @"Pending Repair", v32);
  v35 = objc_alloc(MEMORY[0x1E6999528]);
  v92 = objc_msgSend_initWithName_parent_(v35, v36, @"Repairing", v32);
  v38 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v37, v5, &unk_1EFA2F668, &unk_1EFA2F688, &unk_1EFA2F6A8);
  objc_msgSend_setEventHandler_(v5, v39, v38);

  v155[0] = MEMORY[0x1E69E9820];
  v155[1] = 3221225472;
  v155[2] = sub_188638D78;
  v155[3] = &unk_1E70BF780;
  v40 = v20;
  v156 = v40;
  v42 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v41, v98, &unk_1EFA2F6C8, &unk_1EFA2F6E8, v155);
  objc_msgSend_setEventHandler_(v98, v43, v42);

  v153[0] = MEMORY[0x1E69E9820];
  v153[1] = 3221225472;
  v153[2] = sub_188638E74;
  v153[3] = &unk_1E70BF780;
  v44 = v14;
  v154 = v44;
  v46 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v45, v11, &unk_1EFA2F708, &unk_1EFA2F728, v153);
  objc_msgSend_setEventHandler_(v11, v47, v46);

  v49 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v48, v44, &unk_1EFA2F748, &unk_1EFA2F768, &unk_1EFA2F788);
  objc_msgSend_setEventHandler_(v44, v50, v49);

  v150[0] = MEMORY[0x1E69E9820];
  v150[1] = 3221225472;
  v150[2] = sub_188638FF8;
  v150[3] = &unk_1E70BF7A8;
  v95 = v11;
  v151 = v95;
  v51 = v44;
  v152 = v51;
  v53 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v52, v97, &unk_1EFA2F7A8, &unk_1EFA2F7C8, v150);
  objc_msgSend_setEventHandler_(v97, v54, v53);

  v148[0] = 0;
  v148[1] = v148;
  v148[2] = 0x2020000000;
  v149 = 0;
  v146[0] = 0;
  v146[1] = v146;
  v146[2] = 0x2020000000;
  v147 = 0;
  v144[0] = 0;
  v144[1] = v144;
  v144[2] = 0x2020000000;
  v145 = 0;
  v142[0] = 0;
  v142[1] = v142;
  v142[2] = 0x2020000000;
  v143 = 0;
  v140[0] = 0;
  v140[1] = v140;
  v140[2] = 0x2020000000;
  v141 = 0;
  v139[0] = MEMORY[0x1E69E9820];
  v139[1] = 3221225472;
  v139[2] = sub_18863913C;
  v139[3] = &unk_1E70BF7D0;
  v139[4] = v148;
  v139[5] = v146;
  v139[6] = v144;
  v139[7] = v142;
  v139[8] = v140;
  v131[0] = MEMORY[0x1E69E9820];
  v131[1] = 3221225472;
  v131[2] = sub_1886391F8;
  v131[3] = &unk_1E70BF7F8;
  v134 = v148;
  v135 = v146;
  v136 = v144;
  v137 = v142;
  v138 = v140;
  v55 = v26;
  v132 = v55;
  v56 = v29;
  v133 = v56;
  v58 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v57, v40, v139, &unk_1EFA2F7E8, v131);
  objc_msgSend_setEventHandler_(v40, v59, v58);

  v129[0] = 0;
  v129[1] = v129;
  v129[2] = 0x2020000000;
  v130 = 0;
  v128[0] = MEMORY[0x1E69E9820];
  v128[1] = 3221225472;
  v128[2] = sub_188639618;
  v128[3] = &unk_1E70BF820;
  v128[4] = v129;
  v127[0] = MEMORY[0x1E69E9820];
  v127[1] = 3221225472;
  v127[2] = sub_1886396B4;
  v127[3] = &unk_1E70BF820;
  v127[4] = v129;
  v122[0] = MEMORY[0x1E69E9820];
  v122[1] = 3221225472;
  v122[2] = sub_188639770;
  v122[3] = &unk_1E70BF848;
  v126 = v129;
  v60 = v40;
  v123 = v60;
  v61 = v56;
  v124 = v61;
  v94 = v51;
  v125 = v94;
  v63 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v62, v23, v128, v127, v122);
  objc_msgSend_setEventHandler_(v23, v64, v63);

  v119[0] = MEMORY[0x1E69E9820];
  v119[1] = 3221225472;
  v119[2] = sub_188639BEC;
  v119[3] = &unk_1E70BF7A8;
  v65 = v61;
  v120 = v65;
  v66 = v93;
  v121 = v66;
  v68 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v67, v55, &unk_1EFA2F808, &unk_1EFA2F828, v119);
  objc_msgSend_setEventHandler_(v55, v69, v68);

  v117[0] = 0;
  v117[1] = v117;
  v117[2] = 0x2020000000;
  v118 = 0;
  v115[0] = 0;
  v115[1] = v115;
  v115[2] = 0x2020000000;
  v116 = 0;
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = sub_188639DE8;
  v111[3] = &unk_1E70BF870;
  v113 = v115;
  v114 = v117;
  v70 = v55;
  v112 = v70;
  v72 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v71, v65, &unk_1EFA2F848, &unk_1EFA2F868, v111);
  objc_msgSend_setEventHandler_(v65, v73, v72);

  v108[0] = MEMORY[0x1E69E9820];
  v108[1] = 3221225472;
  v108[2] = sub_18863A0E4;
  v108[3] = &unk_1E70BF7A8;
  v74 = v65;
  v109 = v74;
  v75 = v66;
  v110 = v75;
  v77 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v76, v32, &unk_1EFA2F888, &unk_1EFA2F8A8, v108);
  objc_msgSend_setEventHandler_(v32, v78, v77);

  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = sub_18863A400;
  v106[3] = &unk_1E70BF780;
  v79 = v92;
  v107 = v79;
  v81 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v80, v75, &unk_1EFA2F8C8, &unk_1EFA2F8E8, v106);
  objc_msgSend_setEventHandler_(v75, v82, v81);

  v104[0] = 0;
  v104[1] = v104;
  v104[2] = 0x2020000000;
  v105 = 0;
  v102[4] = v104;
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = sub_18863A5E0;
  v103[3] = &unk_1E70BF820;
  v103[4] = v104;
  v101 = v104;
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = sub_18863A664;
  v102[3] = &unk_1E70BF820;
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = sub_18863A718;
  v99[3] = &unk_1E70BF898;
  v83 = v75;
  v100 = v83;
  v85 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v84, v79, v103, v102, v99);
  objc_msgSend_setEventHandler_(v79, v86, v85);

  _Block_object_dispose(v104, 8);
  _Block_object_dispose(v115, 8);
  _Block_object_dispose(v117, 8);

  _Block_object_dispose(v129, 8);
  _Block_object_dispose(v140, 8);
  _Block_object_dispose(v142, 8);
  _Block_object_dispose(v144, 8);
  _Block_object_dispose(v146, 8);
  _Block_object_dispose(v148, 8);
  v157[0] = v5;
  v157[1] = v98;
  v157[2] = v95;
  v157[3] = v94;
  v157[4] = v97;
  v157[5] = v60;
  v157[6] = v23;
  v157[7] = v70;
  v157[8] = v74;
  v157[9] = v32;
  v157[10] = v83;
  v157[11] = v79;
  v88 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v87, v157, 12);
  objc_msgSend_setStates_(v96, v89, v88);

  objc_msgSend_setInitialState_(v96, v90, v95);

  return v96;
}

+ (id)nameFromState:(int64_t)state
{
  if (state > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BF928[state];
  }
}

+ (id)nameFromFunction:(int64_t)function
{
  if (function > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BF948[function];
  }
}

+ (id)nameFromStateEvent:(int64_t)event
{
  if (event > 0x12)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BF960[event];
  }
}

+ (id)nameFromResponseAction:(int64_t)action
{
  if (action > 0x1C)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BF9F8[action];
  }
}

- (void)dealloc
{
  objc_msgSend_invalidate(self->_stateMachine, a2, v2);
  v4.receiver = self;
  v4.super_class = CKUploadRequestManagerStateMachine;
  [(CKUploadRequestManagerStateMachine *)&v4 dealloc];
}

- (CKUploadRequestManagerStateMachine)initWithActionHandler:(id)handler
{
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = CKUploadRequestManagerStateMachine;
  v7 = [(CKUploadRequestManagerStateMachine *)&v15 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(handlerCopy, v5, v6);
    actionHandler = v7->_actionHandler;
    v7->_actionHandler = v8;

    v12 = objc_msgSend_createStateMachine(v7, v10, v11);
    stateMachine = v7->_stateMachine;
    v7->_stateMachine = v12;
  }

  return v7;
}

- (void)start
{
  v5 = objc_msgSend_stateMachine(self, a2, v2);
  objc_msgSend_start(v5, v3, v4);
}

- (void)dispatchEvent:(int64_t)event userInfo:(id)info
{
  v6 = objc_msgSend_mutableCopy(info, a2, event);
  v9 = v6;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
  }

  v27 = v10;

  v13 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v11, v12);
  v16 = objc_msgSend_UUIDString(v13, v14, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v27, v17, v16, @"uuid");

  v18 = objc_alloc(MEMORY[0x1E6999530]);
  v20 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v19, event);
  v22 = objc_msgSend_initWithName_userInfo_(v18, v21, v20, v27);

  v25 = objc_msgSend_stateMachine(self, v23, v24);
  objc_msgSend_dispatchEvent_(v25, v26, v22);
}

- (BOOL)canPerformFunction:(int64_t)function
{
  selfCopy = self;
  v21[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_18863AE08;
  v13[3] = &unk_1E70BF8C0;
  objc_copyWeak(v14, &location);
  v14[1] = function;
  v13[4] = &v15;
  objc_msgSend_setInternalActionHandler_(selfCopy, v5, v13);
  v20 = @"function";
  v7 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v6, function);
  v21[0] = v7;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, v21, &v20, 1);
  objc_msgSend_dispatchEvent_userInfo_(selfCopy, v10, 18, v9);

  objc_msgSend_setInternalActionHandler_(selfCopy, v11, 0);
  LOBYTE(selfCopy) = *(v16 + 24);
  objc_destroyWeak(v14);
  _Block_object_dispose(&v15, 8);
  objc_destroyWeak(&location);
  return selfCopy & 1;
}

- (id)eventHandlerForState:(id)state withEnterBlock:(id)block exitBlock:(id)exitBlock eventBlock:(id)eventBlock
{
  blockCopy = block;
  exitBlockCopy = exitBlock;
  eventBlockCopy = eventBlock;
  stateCopy = state;
  objc_initWeak(&location, self);
  objc_initWeak(&from, stateCopy);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_18863B0C8;
  aBlock[3] = &unk_1E70BF500;
  objc_copyWeak(&v30, &location);
  v14 = _Block_copy(aBlock);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_18863B2A0;
  v22[3] = &unk_1E70BF908;
  objc_copyWeak(&v27, &location);
  objc_copyWeak(&v28, &from);
  v23 = blockCopy;
  v24 = v14;
  v25 = exitBlockCopy;
  v26 = eventBlockCopy;
  v15 = eventBlockCopy;
  v16 = exitBlockCopy;
  v17 = v14;
  v18 = blockCopy;
  v19 = _Block_copy(v22);
  v20 = _Block_copy(v19);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v20;
}

- (void)transitionToState:(id)state withEvent:(id)event
{
  stateCopy = state;
  if (event)
  {
    objc_msgSend_setEventCausingTransition_(self, v6, event);
  }

  else
  {
    objc_msgSend_setEventCausingTransition_(self, v6, 0);
  }

  v11 = objc_msgSend_stateMachine(self, v8, v9);
  objc_msgSend_transitionToState_(v11, v10, stateCopy);
}

@end