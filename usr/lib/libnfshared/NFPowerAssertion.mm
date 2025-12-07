@interface NFPowerAssertion
+ (id)sharedPowerAssertion;
- (BOOL)holdPowerAssertion:(id)assertion onBehalfOf:(int)of behaviourWhenSleepStarted:(unsigned int)started;
- (NFPowerAssertion)init;
- (id)assertionHolders;
- (id)dumpState;
- (void)releasePowerAssertion:(id)assertion logFaultOnOverRelease:(BOOL)release;
@end

@implementation NFPowerAssertion

+ (id)sharedPowerAssertion
{
  if (qword_280AEEF08 != -1)
  {
    dispatch_once(&qword_280AEEF08, &unk_2843ADB00);
  }

  v3 = qword_280AEEF00;

  return v3;
}

- (NFPowerAssertion)init
{
  v6.receiver = self;
  v6.super_class = NFPowerAssertion;
  v2 = [(NFPowerAssertion *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assertionHolders = v2->_assertionHolders;
    v2->_assertionHolders = v3;
  }

  return v2;
}

- (BOOL)holdPowerAssertion:(id)assertion onBehalfOf:(int)of behaviourWhenSleepStarted:(unsigned int)started
{
  v6 = *&of;
  v136[3] = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  v9 = self->_assertionHolders;
  objc_sync_enter(v9);
  v11 = objc_msgSend_objectForKey_(self->_assertionHolders, v10, assertionCopy);
  if (!v11)
  {
    v11 = objc_opt_new();
  }

  AssertionID = 0;
  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v15 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v13, v14);
  v18 = objc_msgSend_processName(v15, v16, v17);
  v20 = objc_msgSend_initWithFormat_(v12, v19, @"%@[%@]", v18, assertionCopy);

  v22 = objc_opt_new();
  if (v6 != -1)
  {
    v23 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v21, v6);
    objc_msgSend_setValue_forKey_(v22, v24, v23, @"AssertionOnBehalfOfPID");
  }

  obj = v9;
  if (!started)
  {
    v135[0] = @"AssertType";
    v135[1] = @"AssertName";
    v136[0] = @"PreventUserIdleSystemSleep";
    v136[1] = v20;
    v135[2] = @"AssertLevel";
    v136[2] = &unk_2843B4C38;
    v42 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v136, v135, 3);
    objc_msgSend_addEntriesFromDictionary_(v22, v43, v42);

    v44 = IOPMAssertionCreateWithProperties(v22, &AssertionID);
    if (v44)
    {
      v45 = v44;
      v33 = v20;
      v46 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (specific < 5)
      {
        v48 = off_27DA9DE50[specific];
        if (v48)
        {
          Class = object_getClass(self);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(self);
          Name = sel_getName(a2);
          v51 = 45;
          if (isMetaClass)
          {
            v51 = 43;
          }

          v48(3, "%c[%{public}s %{public}s]:%i Failed with 0x%x", v51, ClassName, Name, 99, v45);
          v46 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v52 = dispatch_get_specific(v46);
        v53 = NFSharedLogGetLogger(v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = object_getClass(self);
          if (class_isMetaClass(v54))
          {
            v55 = 43;
          }

          else
          {
            v55 = 45;
          }

          v56 = object_getClassName(self);
          v57 = sel_getName(a2);
          *buf = 67110146;
          v122 = v55;
          v123 = 2082;
          v124 = v56;
          v125 = 2082;
          v126 = v57;
          v127 = 1024;
          v128 = 99;
          v129 = 1024;
          LODWORD(v130) = v45;
          _os_log_impl(&dword_22EEC4000, v53, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed with 0x%x", buf, 0x28u);
        }

        goto LABEL_30;
      }

      goto LABEL_57;
    }

LABEL_31:
    if (!objc_msgSend_count(self->_assertionHolders, v28, v29))
    {
      v60 = os_transaction_create();
      powerAssertTransaction = self->_powerAssertTransaction;
      self->_powerAssertTransaction = v60;
    }

    v62 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v59, AssertionID);
    objc_msgSend_addObject_(v11, v63, v62);
    objc_msgSend_setObject_forKeyedSubscript_(self->_assertionHolders, v64, v11, assertionCopy);
    if (!self->_enableDebug)
    {
      goto LABEL_55;
    }

    v117 = v62;
    v65 = v20;
    v66 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    v67 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (v67 < 5)
    {
      v68 = off_27DA9DE50[v67];
      if (v68)
      {
        v69 = object_getClass(self);
        v70 = class_isMetaClass(v69);
        v71 = object_getClassName(self);
        v72 = sel_getName(a2);
        v115 = objc_msgSend_count(v11, v73, v74);
        v75 = 45;
        if (v70)
        {
          v75 = 43;
        }

        v68(6, "%c[%{public}s %{public}s]:%i opened assertion: counter: %lu id: %{public}@", v75, v71, v72, 135, v115, assertionCopy);
        v66 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v76 = dispatch_get_specific(v66);
      v77 = NFSharedLogGetLogger(v76);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v78 = object_getClass(self);
        if (class_isMetaClass(v78))
        {
          v79 = 43;
        }

        else
        {
          v79 = 45;
        }

        v80 = object_getClassName(self);
        v81 = sel_getName(a2);
        v84 = objc_msgSend_count(v11, v82, v83);
        *buf = 67110402;
        v122 = v79;
        v123 = 2082;
        v124 = v80;
        v125 = 2082;
        v126 = v81;
        v127 = 1024;
        v128 = 135;
        v129 = 2048;
        v130 = v84;
        v131 = 2114;
        v132 = assertionCopy;
        _os_log_impl(&dword_22EEC4000, v77, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i opened assertion: counter: %lu id: %{public}@", buf, 0x36u);
      }

      v85 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      v86 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (v86 < 5)
      {
        v87 = off_27DA9DE50[v86];
        if (v87)
        {
          v88 = object_getClass(self);
          v89 = class_isMetaClass(v88);
          v116 = object_getClassName(self);
          v90 = sel_getName(a2);
          v93 = objc_msgSend_dumpState(self, v91, v92);
          v96 = objc_msgSend_description(v93, v94, v95);
          v97 = 45;
          if (v89)
          {
            v97 = 43;
          }

          v87(6, "%c[%{public}s %{public}s]:%i all assertions: %{public}@", v97, v116, v90, 136, v96);

          v85 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v20 = v65;
        v98 = dispatch_get_specific(v85);
        v99 = NFSharedLogGetLogger(v98);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          v100 = object_getClass(self);
          if (class_isMetaClass(v100))
          {
            v101 = 43;
          }

          else
          {
            v101 = 45;
          }

          v102 = object_getClassName(self);
          v103 = sel_getName(a2);
          v106 = objc_msgSend_dumpState(self, v104, v105);
          v109 = objc_msgSend_description(v106, v107, v108);
          *buf = 67110146;
          v122 = v101;
          v123 = 2082;
          v124 = v102;
          v125 = 2082;
          v126 = v103;
          v20 = v65;
          v127 = 1024;
          v128 = 136;
          v129 = 2114;
          v130 = v109;
          _os_log_impl(&dword_22EEC4000, v99, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i all assertions: %{public}@", buf, 0x2Cu);
        }

        v62 = v117;
LABEL_55:
        v33 = v20;

        v58 = 1;
        goto LABEL_56;
      }
    }

LABEL_57:
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  v133 = @"AssertName";
  v134 = v20;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, &v134, &v133, 1);
  objc_msgSend_addEntriesFromDictionary_(v22, v26, v25);

  v27 = IOPMAssertionDeclareSystemActivityWithProperties();
  if (!v27)
  {
    goto LABEL_31;
  }

  v30 = v27;
  v31 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  v32 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  if (v32 >= 5)
  {
    goto LABEL_57;
  }

  v33 = v20;
  v34 = off_27DA9DE50[v32];
  if (v34)
  {
    v35 = object_getClass(self);
    v36 = class_isMetaClass(v35);
    v111 = object_getClassName(self);
    v113 = sel_getName(a2);
    v37 = 45;
    if (v36)
    {
      v37 = 43;
    }

    v34(3, "%c[%{public}s %{public}s]:%i Failed with 0x%x", v37, v111, v113, 112, v30);
    v31 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  }

  v38 = dispatch_get_specific(v31);
  v39 = NFSharedLogGetLogger(v38);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v40 = object_getClass(self);
    if (class_isMetaClass(v40))
    {
      v41 = 43;
    }

    else
    {
      v41 = 45;
    }

    *buf = 67110146;
    v122 = v41;
    v123 = 2082;
    v124 = object_getClassName(self);
    v125 = 2082;
    v126 = sel_getName(a2);
    v127 = 1024;
    v128 = 112;
    v129 = 1024;
    LODWORD(v130) = v30;
    _os_log_impl(&dword_22EEC4000, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed with 0x%x", buf, 0x28u);
  }

LABEL_30:
  NFSimulateCrash(57005, "PM assertion create failure");
  v58 = 0;
LABEL_56:

  objc_sync_exit(obj);
  return v58;
}

- (void)releasePowerAssertion:(id)assertion logFaultOnOverRelease:(BOOL)release
{
  releaseCopy = release;
  v125 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  v8 = self->_assertionHolders;
  objc_sync_enter(v8);
  v10 = objc_msgSend_objectForKey_(self->_assertionHolders, v9, assertionCopy);
  v13 = v10;
  if (!v10)
  {
    if (qword_280AEEFD8 != -1)
    {
      dispatch_once(&qword_280AEEFD8, &unk_2843ADA20);
    }

    if (byte_280AEEFE0 == 1 && releaseCopy)
    {
      v16 = NFSharedLogGetLogger(0);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_73;
      }

      *buf = 138543362;
      *v116 = assertionCopy;
LABEL_51:
      _os_log_fault_impl(&dword_22EEC4000, v16, OS_LOG_TYPE_FAULT, "%{public}@ does not hold assertion", buf, 0xCu);
      goto LABEL_73;
    }

    v84 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      goto LABEL_77;
    }

    v86 = off_27DA9DE50[specific];
    if (v86)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v89 = 45;
      if (isMetaClass)
      {
        v89 = 43;
      }

      v86(3, "%c[%{public}s %{public}s]:%i %{public}@ does not hold assertion", v89, ClassName, Name, 162, assertionCopy);
      v84 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v90 = dispatch_get_specific(v84);
    v16 = NFSharedLogGetLogger(v90);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    v91 = object_getClass(self);
    if (class_isMetaClass(v91))
    {
      v92 = 43;
    }

    else
    {
      v92 = 45;
    }

    *buf = 67110146;
    *v116 = v92;
    *&v116[4] = 2082;
    *&v116[6] = object_getClassName(self);
    v117 = 2082;
    v118 = sel_getName(a2);
    v119 = 1024;
    v120 = 162;
    v121 = 2114;
    v122 = assertionCopy;
LABEL_72:
    _os_log_impl(&dword_22EEC4000, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ does not hold assertion", buf, 0x2Cu);
    goto LABEL_73;
  }

  if (objc_msgSend_count(v10, v11, v12))
  {
    v16 = objc_msgSend_lastObject(v13, v14, v15);
    v19 = objc_msgSend_unsignedLongValue(v16, v17, v18);
    v20 = IOPMAssertionRelease(v19);
    sel = a2;
    if (v20)
    {
      v23 = v20;
      v24 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      v25 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (v25 >= 5)
      {
        goto LABEL_77;
      }

      v26 = off_27DA9DE50[v25];
      if (v26)
      {
        v27 = object_getClass(self);
        v28 = class_isMetaClass(v27);
        v105 = object_getClassName(self);
        v108 = sel_getName(a2);
        v29 = 45;
        if (v28)
        {
          v29 = 43;
        }

        v26(3, "%c[%{public}s %{public}s]:%i Failed with 0x%x", v29, v105, v108, 183, v23);
        v24 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v30 = dispatch_get_specific(v24);
      v31 = NFSharedLogGetLogger(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = object_getClass(self);
        if (class_isMetaClass(v32))
        {
          v33 = 43;
        }

        else
        {
          v33 = 45;
        }

        *buf = 67110146;
        *v116 = v33;
        *&v116[4] = 2082;
        *&v116[6] = object_getClassName(self);
        v117 = 2082;
        v118 = sel_getName(a2);
        v119 = 1024;
        v120 = 183;
        v121 = 1024;
        LODWORD(v122) = v23;
        _os_log_impl(&dword_22EEC4000, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed with 0x%x", buf, 0x28u);
      }

      NFSimulateCrash(57005, "PM assertion release failure");
    }

    objc_msgSend_removeLastObject(v13, v21, v22);
    if (!objc_msgSend_count(v13, v34, v35))
    {
      objc_msgSend_removeObjectForKey_(self->_assertionHolders, v36, assertionCopy);
    }

    if (self->_enableDebug)
    {
      v37 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      v38 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (v38 < 5)
      {
        v39 = off_27DA9DE50[v38];
        if (v39)
        {
          v40 = object_getClass(self);
          v41 = class_isMetaClass(v40);
          v42 = object_getClassName(self);
          v43 = sel_getName(a2);
          v111 = objc_msgSend_count(v13, v44, v45);
          v46 = 45;
          if (v41)
          {
            v46 = 43;
          }

          v39(6, "%c[%{public}s %{public}s]:%i released assertion: counter: %lu id: %{public}@", v46, v42, v43, 195, v111, assertionCopy);
          v37 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v112 = v16;
        v47 = dispatch_get_specific(v37);
        v48 = NFSharedLogGetLogger(v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = object_getClass(self);
          if (class_isMetaClass(v49))
          {
            v50 = 43;
          }

          else
          {
            v50 = 45;
          }

          v51 = object_getClassName(self);
          v52 = sel_getName(sel);
          v55 = objc_msgSend_count(v13, v53, v54);
          *buf = 67110402;
          *v116 = v50;
          *&v116[4] = 2082;
          *&v116[6] = v51;
          v117 = 2082;
          v118 = v52;
          v119 = 1024;
          v120 = 195;
          v121 = 2048;
          v122 = v55;
          v123 = 2114;
          v124 = assertionCopy;
          _os_log_impl(&dword_22EEC4000, v48, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i released assertion: counter: %lu id: %{public}@", buf, 0x36u);
        }

        v56 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        v57 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        if (v57 < 5)
        {
          v58 = off_27DA9DE50[v57];
          if (v58)
          {
            v59 = object_getClass(self);
            v60 = class_isMetaClass(v59);
            v61 = object_getClassName(self);
            v62 = sel_getName(sel);
            objc_msgSend_dumpState(self, v63, v64);
            v65 = v8;
            v67 = v66 = assertionCopy;
            v70 = objc_msgSend_description(v67, v68, v69);
            v71 = 45;
            if (v60)
            {
              v71 = 43;
            }

            v58(6, "%c[%{public}s %{public}s]:%i all assertions: %{public}@", v71, v61, v62, 196, v70);

            assertionCopy = v66;
            v8 = v65;
            v56 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          }

          v16 = v112;
          v72 = dispatch_get_specific(v56);
          v73 = NFSharedLogGetLogger(v72);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v74 = object_getClass(self);
            if (class_isMetaClass(v74))
            {
              v75 = 43;
            }

            else
            {
              v75 = 45;
            }

            v76 = object_getClassName(self);
            v77 = sel_getName(sel);
            v80 = objc_msgSend_dumpState(self, v78, v79);
            objc_msgSend_description(v80, v81, v82);
            v83 = sela = assertionCopy;
            *buf = 67110146;
            *v116 = v75;
            *&v116[4] = 2082;
            *&v116[6] = v76;
            v117 = 2082;
            v118 = v77;
            v119 = 1024;
            v120 = 196;
            v121 = 2114;
            v122 = v83;
            _os_log_impl(&dword_22EEC4000, v73, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i all assertions: %{public}@", buf, 0x2Cu);

            assertionCopy = sela;
          }

          goto LABEL_73;
        }
      }

LABEL_77:
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    goto LABEL_73;
  }

  objc_msgSend_removeObjectForKey_(self->_assertionHolders, v14, assertionCopy);
  if (qword_280AEEFD8 != -1)
  {
    dispatch_once(&qword_280AEEFD8, &unk_2843ADA20);
  }

  if (byte_280AEEFE0 == 1 && releaseCopy)
  {
    v16 = NFSharedLogGetLogger(0);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_73;
    }

    *buf = 138543362;
    *v116 = assertionCopy;
    goto LABEL_51;
  }

  v93 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  v94 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  if (v94 >= 5)
  {
    goto LABEL_77;
  }

  v95 = off_27DA9DE50[v94];
  if (v95)
  {
    v96 = object_getClass(self);
    v97 = class_isMetaClass(v96);
    v107 = object_getClassName(self);
    v110 = sel_getName(a2);
    v98 = 45;
    if (v97)
    {
      v98 = 43;
    }

    v95(3, "%c[%{public}s %{public}s]:%i %{public}@ does not hold assertion", v98, v107, v110, 171, assertionCopy);
    v93 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  }

  v99 = dispatch_get_specific(v93);
  v16 = NFSharedLogGetLogger(v99);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v100 = object_getClass(self);
    if (class_isMetaClass(v100))
    {
      v101 = 43;
    }

    else
    {
      v101 = 45;
    }

    *buf = 67110146;
    *v116 = v101;
    *&v116[4] = 2082;
    *&v116[6] = object_getClassName(self);
    v117 = 2082;
    v118 = sel_getName(a2);
    v119 = 1024;
    v120 = 171;
    v121 = 2114;
    v122 = assertionCopy;
    goto LABEL_72;
  }

LABEL_73:

  if (self->_powerAssertTransaction && !objc_msgSend_count(self->_assertionHolders, v102, v103))
  {
    powerAssertTransaction = self->_powerAssertTransaction;
    self->_powerAssertTransaction = 0;
  }

  objc_sync_exit(v8);
}

- (id)assertionHolders
{
  v3 = self->_assertionHolders;
  objc_sync_enter(v3);
  v6 = objc_msgSend_dumpState(self, v4, v5);
  objc_sync_exit(v3);

  return v6;
}

- (id)dumpState
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = self->_assertionHolders;
  objc_sync_enter(v4);
  assertionHolders = self->_assertionHolders;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = sub_22EED96E8;
  v16 = &unk_278872B18;
  v17 = v3;
  v6 = v3;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(assertionHolders, v7, &v13);

  objc_sync_exit(v4);
  v19 = v6;
  v20 = @"NFPowerAssertion";
  v18 = @"holders";
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, &v19, &v18, 1, v13, v14, v15, v16);
  v21[0] = v9;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v21, &v20, 1);

  return v11;
}

@end