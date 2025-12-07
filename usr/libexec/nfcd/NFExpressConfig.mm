@interface NFExpressConfig
+ (id)atlConfigKeyForType:(unsigned __int8)type;
+ (unsigned)expressTypeForATLConfigKey:(id)key;
- (BOOL)hasExpressWithAutoSelection;
- (BOOL)isSEOperational;
- (BOOL)loadConfig:(id)config outError:(id *)error;
- (NFExpressConfig)initWithDriverWrapper:(id)wrapper;
- (id)arrayConfigFromDictionary:(id)dictionary;
- (id)deactivateExpressConfig;
- (id)expressTypesForPassIDs:(id)ds;
- (id)getExpressAidsForType:(unsigned __int8)type onlyInExpress:(BOOL)express;
- (id)passForAid:(id)aid;
- (id)passIDListForApplet:(id)applet keyIdentifiers:(id)identifiers;
- (id)reconfigureWithArray:(id)array updateStorage:(BOOL)storage avoidChangingRouting:(BOOL)routing restoreAuthorization:(BOOL)authorization;
- (id)restoreAuthForApplet:(id)applet;
- (unint64_t)getNumberOfExpressAidsForType:(unsigned __int8)type;
- (unsigned)expressTypeForApplet:(id)applet;
- (void)activateExpressConfig;
- (void)dumpConfig:(id)config logLevel:(int)level prefix:(id)prefix;
- (void)removeAppletsFromConfig:(id)config;
- (void)updateExpressAppletNumbers;
@end

@implementation NFExpressConfig

+ (id)atlConfigKeyForType:(unsigned __int8)type
{
  typeCopy = type;
  if (qword_10035DA28 != -1)
  {
    dispatch_once(&qword_10035DA28, &stru_1003196F0);
  }

  v4 = qword_10035DA20;
  v5 = [NSNumber numberWithUnsignedChar:typeCopy];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

+ (unsigned)expressTypeForATLConfigKey:(id)key
{
  keyCopy = key;
  if (qword_10035DA38 != -1)
  {
    dispatch_once(&qword_10035DA38, &stru_100319710);
  }

  v4 = [qword_10035DA30 objectForKeyedSubscript:keyCopy];
  v5 = v4;
  if (v4)
  {
    unsignedIntValue = [v4 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (void)dumpConfig:(id)config logLevel:(int)level prefix:(id)prefix
{
  v6 = *&level;
  configCopy = config;
  prefixCopy = prefix;
  v10 = prefixCopy;
  if (v6 <= 6)
  {
    if (prefixCopy)
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v12 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v15 = 45;
        if (isMetaClass)
        {
          v15 = 43;
        }

        v12(v6, "%c[%{public}s %{public}s]:%i %@: [", v15, ClassName, Name, 142, v10);
      }

      v16 = NFSharedLogGetLogger();
      v17 = v16;
      if (v6 >= 7)
      {
        v18 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v18 = (0x1010000000uLL >> (8 * v6));
      }

      if (os_log_type_enabled(v16, v18))
      {
        v19 = object_getClass(self);
        if (class_isMetaClass(v19))
        {
          v20 = 43;
        }

        else
        {
          v20 = 45;
        }

        *buf = 67110146;
        v66 = v20;
        v67 = 2082;
        v68 = object_getClassName(self);
        v69 = 2082;
        v70 = sel_getName(a2);
        v71 = 1024;
        v72 = 142;
        v73 = 2112;
        v74 = v10;
        _os_log_impl(&_mh_execute_header, v17, v18, "%c[%{public}s %{public}s]:%i %@: [", buf, 0x2Cu);
      }
    }

    v58 = v6;
    v55 = v10;
    v56 = configCopy;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = configCopy;
    v21 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v61;
      if (v6 >= 7)
      {
        v24 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v24 = (0x1010000000uLL >> (8 * v6));
      }

      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v61 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v60 + 1) + 8 * i);
          v27 = NFLogGetLogger();
          if (v27)
          {
            v28 = v27;
            v29 = object_getClass(self);
            v30 = class_isMetaClass(v29);
            v51 = object_getClassName(self);
            v53 = sel_getName(a2);
            v31 = 45;
            if (v30)
            {
              v31 = 43;
            }

            v28(v58, "%c[%{public}s %{public}s]:%i   %@", v31, v51, v53, 145, v26);
          }

          v32 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v32, v24))
          {
            v33 = object_getClass(self);
            if (class_isMetaClass(v33))
            {
              v34 = 43;
            }

            else
            {
              v34 = 45;
            }

            v35 = object_getClassName(self);
            v36 = sel_getName(a2);
            *buf = 67110146;
            v66 = v34;
            v67 = 2082;
            v68 = v35;
            v69 = 2082;
            v70 = v36;
            v71 = 1024;
            v72 = 145;
            v73 = 2112;
            v74 = v26;
            _os_log_impl(&_mh_execute_header, v32, v24, "%c[%{public}s %{public}s]:%i   %@", buf, 0x2Cu);
          }
        }

        v22 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
      }

      while (v22);
    }

    v37 = NFLogGetLogger();
    if (v37)
    {
      v38 = v37;
      v39 = object_getClass(self);
      v40 = class_isMetaClass(v39);
      v41 = object_getClassName(self);
      v54 = sel_getName(a2);
      v42 = 45;
      if (v40)
      {
        v42 = 43;
      }

      v38(v58, "%c[%{public}s %{public}s]:%i ]", v42, v41, v54, 147);
    }

    v43 = NFSharedLogGetLogger();
    v44 = v43;
    if (v58 >= 7)
    {
      v45 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v45 = (0x1010000000uLL >> (8 * v58));
    }

    v10 = v55;
    if (os_log_type_enabled(v43, v45))
    {
      v46 = object_getClass(self);
      if (class_isMetaClass(v46))
      {
        v47 = 43;
      }

      else
      {
        v47 = 45;
      }

      v48 = object_getClassName(self);
      v49 = sel_getName(a2);
      *buf = 67109890;
      v66 = v47;
      v67 = 2082;
      v68 = v48;
      v69 = 2082;
      v70 = v49;
      v71 = 1024;
      v72 = 147;
      _os_log_impl(&_mh_execute_header, v44, v45, "%c[%{public}s %{public}s]:%i ]", buf, 0x22u);
    }

    configCopy = v56;
  }
}

- (void)updateExpressAppletNumbers
{
  *&self->_numberOfExpressFelicaTransitApplets = 0u;
  p_numberOfExpressFelicaTransitApplets = &self->_numberOfExpressFelicaTransitApplets;
  *&self->_numberOfExpressECPAccessApplets = 0u;
  *&self->_numberOfExpressECP2Applets = 0u;
  v4 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v51 = p_numberOfExpressFelicaTransitApplets;
  obj = *(p_numberOfExpressFelicaTransitApplets - 1);
  v5 = [obj countByEnumeratingWithState:&v55 objects:v81 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v56;
    v52 = v4;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v56 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v55 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"expressEnabled"];
        bOOLValue = [v10 BOOLValue];

        if (bOOLValue)
        {
          v12 = [v9 objectForKeyedSubscript:@"ExpressType"];
          v13 = [NFExpressConfig expressTypeForATLConfigKey:v12];

          if (v13 > 3)
          {
            switch(v13)
            {
              case 4:
                ++self->_numberOfExpressECP2Applets;
                goto LABEL_30;
              case 5:
                ++self->_numberOfExpressCathayTransitApplets;
                goto LABEL_30;
              case 6:
                ++self->_numberOfExpressSinglePollApplets;
                goto LABEL_30;
            }
          }

          else
          {
            switch(v13)
            {
              case 1:
                ++*v51;
                goto LABEL_30;
              case 2:
                ++self->_numberOfExpressECPAccessApplets;
                goto LABEL_30;
              case 3:
                ++self->_numberOfExpressGenericAApplets;
LABEL_30:
                v28 = [v9 objectForKeyedSubscript:@"appletIdentifier"];
                [(NSArray *)v4 addObject:v28];

                continue;
            }
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v15 = Logger;
            Class = object_getClass(self);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(self);
            Name = sel_getName(a2);
            v20 = [v9 objectForKeyedSubscript:@"ExpressType"];
            v50 = Name;
            v4 = v52;
            v21 = 45;
            if (isMetaClass)
            {
              v21 = 43;
            }

            v15(4, "%c[%{public}s %{public}s]:%i unknown express type %{public}@", v21, ClassName, v50, 189, v20);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v22 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = object_getClass(self);
            if (class_isMetaClass(v23))
            {
              v24 = 43;
            }

            else
            {
              v24 = 45;
            }

            v25 = object_getClassName(self);
            v26 = sel_getName(a2);
            v27 = [v9 objectForKeyedSubscript:@"ExpressType"];
            *buf = 67110146;
            v60 = v24;
            v61 = 2082;
            v62 = v25;
            v63 = 2082;
            v64 = v26;
            v65 = 1024;
            v66 = 189;
            v67 = 2114;
            v68 = v27;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i unknown express type %{public}@", buf, 0x2Cu);

            v4 = v52;
          }

          goto LABEL_30;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v55 objects:v81 count:16];
    }

    while (v6);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v29 = NFLogGetLogger();
  if (v29)
  {
    v30 = v29;
    v31 = object_getClass(self);
    v32 = class_isMetaClass(v31);
    v33 = object_getClassName(self);
    v34 = sel_getName(a2);
    seName = [(NFExpressConfig *)self seName];
    v36 = 43;
    if (!v32)
    {
      v36 = 45;
    }

    v30(6, "%c[%{public}s %{public}s]:%i %{public}@: num suica = %d, num cathay = %d, num access = %d, num generic-A = %d, num ecp2 = %d, num single poll = %d", v36, v33, v34, 201, seName, *&self->_numberOfExpressFelicaTransitApplets, *&self->_numberOfExpressECPAccessApplets, self->_numberOfExpressECP2Applets, self->_numberOfExpressSinglePollApplets);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v37 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = object_getClass(self);
    if (class_isMetaClass(v38))
    {
      v39 = 43;
    }

    else
    {
      v39 = 45;
    }

    v40 = object_getClassName(self);
    v41 = sel_getName(a2);
    seName2 = [(NFExpressConfig *)self seName];
    numberOfExpressFelicaTransitApplets = self->_numberOfExpressFelicaTransitApplets;
    numberOfExpressCathayTransitApplets = self->_numberOfExpressCathayTransitApplets;
    numberOfExpressECPAccessApplets = self->_numberOfExpressECPAccessApplets;
    numberOfExpressGenericAApplets = self->_numberOfExpressGenericAApplets;
    numberOfExpressECP2Applets = self->_numberOfExpressECP2Applets;
    numberOfExpressSinglePollApplets = self->_numberOfExpressSinglePollApplets;
    *buf = 67111682;
    v60 = v39;
    v61 = 2082;
    v62 = v40;
    v63 = 2082;
    v64 = v41;
    v65 = 1024;
    v66 = 201;
    v67 = 2114;
    v68 = seName2;
    v69 = 1024;
    v70 = numberOfExpressFelicaTransitApplets;
    v71 = 1024;
    v72 = numberOfExpressCathayTransitApplets;
    v73 = 1024;
    v74 = numberOfExpressECPAccessApplets;
    v75 = 1024;
    v76 = numberOfExpressGenericAApplets;
    v77 = 1024;
    v78 = numberOfExpressECP2Applets;
    v79 = 1024;
    v80 = numberOfExpressSinglePollApplets;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@: num suica = %d, num cathay = %d, num access = %d, num generic-A = %d, num ecp2 = %d, num single poll = %d", buf, 0x50u);
  }

  allAids = self->_allAids;
  self->_allAids = v4;
}

- (unsigned)expressTypeForApplet:(id)applet
{
  appletCopy = applet;
  v5 = sub_100148E24(&self->super.isa);
  identifier = [appletCopy identifier];

  v7 = [v5 objectForKey:identifier];

  if (v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (id)expressTypesForPassIDs:(id)ds
{
  dsCopy = ds;
  v22 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = dsCopy;
  v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v26)
  {
    v24 = *v33;
    selfCopy = self;
    do
    {
      v5 = 0;
      do
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v32 + 1) + 8 * v5);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v27 = v5;
        if (self)
        {
          passes = self->_passes;
        }

        else
        {
          passes = 0;
        }

        v8 = passes;
        v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v29;
          while (2)
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v29 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v28 + 1) + 8 * i);
              v14 = [v13 objectForKeyedSubscript:{@"expressEnabled", v22}];
              bOOLValue = [v14 BOOLValue];

              if (bOOLValue)
              {
                v16 = [v13 objectForKeyedSubscript:@"passUniqueID"];
                if ([v6 isEqualToString:v16])
                {
                  v17 = [v13 objectForKeyedSubscript:@"ExpressType"];
                  v18 = [NFExpressConfig expressTypeForATLConfigKey:v17];

                  if (v18)
                  {
                    v19 = [NSNumber numberWithUnsignedChar:v18];
                    [v22 addObject:v19];
                  }

                  goto LABEL_22;
                }
              }
            }

            v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:

        v5 = v27 + 1;
        self = selfCopy;
      }

      while ((v27 + 1) != v26);
      v20 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      v26 = v20;
    }

    while (v20);
  }

  return v22;
}

- (id)passIDListForApplet:(id)applet keyIdentifiers:(id)identifiers
{
  appletCopy = applet;
  identifiersCopy = identifiers;
  v8 = identifiersCopy;
  if (appletCopy)
  {
    if (identifiersCopy && ![identifiersCopy count])
    {
      v41 = objc_opt_new();
    }

    else
    {
      v41 = objc_opt_new();
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      selfCopy = self;
      if (self)
      {
        passes = self->_passes;
      }

      else
      {
        passes = 0;
      }

      obj = passes;
      v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v44 objects:v58 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v45;
        v13 = @"appletIdentifier";
        v38 = v8;
        do
        {
          v14 = 0;
          v42 = v11;
          do
          {
            if (*v45 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v44 + 1) + 8 * v14);
            v16 = [v15 objectForKeyedSubscript:v13];
            identifier = [appletCopy identifier];
            v18 = [v16 isEqualToString:identifier];

            if (v18)
            {
              v19 = appletCopy;
              v20 = v13;
              v21 = [v15 objectForKeyedSubscript:@"passUniqueID"];
              v22 = [v15 objectForKey:@"expressEnabled"];
              bOOLValue = [v22 BOOLValue];

              if (bOOLValue)
              {
                if (!v8)
                {
                  [v41 addObject:v21];
                  v13 = v20;
LABEL_28:
                  appletCopy = v19;

                  v11 = v42;
                  goto LABEL_29;
                }
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                Logger = NFLogGetLogger();
                if (Logger)
                {
                  v25 = Logger;
                  Class = object_getClass(selfCopy);
                  isMetaClass = class_isMetaClass(Class);
                  ClassName = object_getClassName(selfCopy);
                  Name = sel_getName(a2);
                  v28 = 45;
                  if (isMetaClass)
                  {
                    v28 = 43;
                  }

                  v8 = v38;
                  v25(4, "%c[%{public}s %{public}s]:%i Pass %{public}@ has express disabled", v28, ClassName, Name, 266, v21);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v29 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v30 = object_getClass(selfCopy);
                  if (class_isMetaClass(v30))
                  {
                    v31 = 43;
                  }

                  else
                  {
                    v31 = 45;
                  }

                  v32 = object_getClassName(selfCopy);
                  v33 = sel_getName(a2);
                  *buf = 67110146;
                  v49 = v31;
                  v8 = v38;
                  v50 = 2082;
                  v51 = v32;
                  v52 = 2082;
                  v53 = v33;
                  v54 = 1024;
                  v55 = 266;
                  v56 = 2114;
                  v57 = v21;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Pass %{public}@ has express disabled", buf, 0x2Cu);
                }
              }

              v34 = [v15 objectForKeyedSubscript:@"keyIdentifier"];
              v13 = v20;
              if ([v8 containsObject:v34])
              {
                [v41 addObject:v21];
              }

              goto LABEL_28;
            }

LABEL_29:

            v14 = v14 + 1;
          }

          while (v11 != v14);
          v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v44 objects:v58 count:16];
        }

        while (v11);
      }
    }
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

- (BOOL)hasExpressWithAutoSelection
{
  v2 = sub_100148E24(&self->super.isa);
  v3 = [v2 count] != 0;

  return v3;
}

- (NFExpressConfig)initWithDriverWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v9.receiver = self;
  v9.super_class = NFExpressConfig;
  v6 = [(NFExpressConfig *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_driverWrapper, wrapper);
  }

  return v7;
}

- (BOOL)loadConfig:(id)config outError:(id *)error
{
  configCopy = config;
  if ([configCopy count])
  {
    v8 = 0;
  }

  else
  {
    migrateFromDefaults = [(NFExpressConfig *)self migrateFromDefaults];
    v8 = migrateFromDefaults == 0;
    if (!migrateFromDefaults)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v11 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v15 = 45;
        if (isMetaClass)
        {
          v15 = 43;
        }

        v11(3, "%c[%{public}s %{public}s]:%i Failed to migrate config from defaults - init with epmty config", v15, ClassName, Name, 333);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = object_getClass(self);
        if (class_isMetaClass(v17))
        {
          v18 = 43;
        }

        else
        {
          v18 = 45;
        }

        *buf = 67109890;
        v108 = v18;
        v109 = 2082;
        v110 = object_getClassName(self);
        v111 = 2082;
        v112 = sel_getName(a2);
        v113 = 1024;
        v114 = 333;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to migrate config from defaults - init with epmty config", buf, 0x22u);
      }

      v19 = +[NSMutableArray array];

      configCopy = v19;
    }

    v20 = [migrateFromDefaults count];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    v22 = v21;
    if (v20)
    {
      if (v21)
      {
        v23 = object_getClass(self);
        v24 = class_isMetaClass(v23);
        v25 = object_getClassName(self);
        v99 = sel_getName(a2);
        v26 = 45;
        if (v24)
        {
          v26 = 43;
        }

        v22(6, "%c[%{public}s %{public}s]:%i Successfully migrated from defaults", v26, v25, v99, 338);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = object_getClass(self);
        if (class_isMetaClass(v28))
        {
          v29 = 43;
        }

        else
        {
          v29 = 45;
        }

        v30 = object_getClassName(self);
        v31 = sel_getName(a2);
        *buf = 67109890;
        v108 = v29;
        v109 = 2082;
        v110 = v30;
        v111 = 2082;
        v112 = v31;
        v113 = 1024;
        v114 = 338;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Successfully migrated from defaults", buf, 0x22u);
      }

      v32 = configCopy;
      v8 = 1;
      configCopy = migrateFromDefaults;
    }

    else
    {
      if (v21)
      {
        v33 = object_getClass(self);
        v34 = class_isMetaClass(v33);
        v35 = object_getClassName(self);
        v100 = sel_getName(a2);
        v36 = 45;
        if (v34)
        {
          v36 = 43;
        }

        v22(6, "%c[%{public}s %{public}s]:%i No express aids in defaults", v36, v35, v100, 343);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v37 = object_getClass(self);
        if (class_isMetaClass(v37))
        {
          v38 = 43;
        }

        else
        {
          v38 = 45;
        }

        v39 = object_getClassName(self);
        v40 = sel_getName(a2);
        *buf = 67109890;
        v108 = v38;
        v109 = 2082;
        v110 = v39;
        v111 = 2082;
        v112 = v40;
        v113 = 1024;
        v114 = 343;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No express aids in defaults", buf, 0x22u);
      }
    }
  }

  [(NFExpressConfig *)self dumpConfig:configCopy logLevel:6 prefix:@"init config"];
  v41 = 1;
  v42 = [(NFExpressConfig *)self reconfigureWithArray:configCopy updateStorage:v8 avoidChangingRouting:1 restoreAuthorization:0];
  if (v42)
  {
    v43 = v42;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v44 = NFLogGetLogger();
    if (v44)
    {
      v45 = v44;
      v46 = object_getClass(self);
      v47 = class_isMetaClass(v46);
      v96 = object_getClassName(self);
      v101 = sel_getName(a2);
      v48 = 45;
      if (v47)
      {
        v48 = 43;
      }

      v45(3, "%c[%{public}s %{public}s]:%i failed to initialize with stored config - %{public}@", v48, v96, v101, 351, v43);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v49 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = object_getClass(self);
      if (class_isMetaClass(v50))
      {
        v51 = 43;
      }

      else
      {
        v51 = 45;
      }

      v52 = object_getClassName(self);
      v53 = sel_getName(a2);
      *buf = 67110146;
      v108 = v51;
      v109 = 2082;
      v110 = v52;
      v111 = 2082;
      v112 = v53;
      v113 = 1024;
      v114 = 351;
      v115 = 2114;
      v116 = v43;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i failed to initialize with stored config - %{public}@", buf, 0x2Cu);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v54 = NFLogGetLogger();
    if (v54)
    {
      v55 = v54;
      v56 = object_getClass(self);
      v57 = class_isMetaClass(v56);
      v58 = object_getClassName(self);
      v102 = sel_getName(a2);
      v59 = 45;
      if (v57)
      {
        v59 = 43;
      }

      v55(3, "%c[%{public}s %{public}s]:%i init with empty config instead", v59, v58, v102, 352);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v60 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = object_getClass(self);
      if (class_isMetaClass(v61))
      {
        v62 = 43;
      }

      else
      {
        v62 = 45;
      }

      v63 = object_getClassName(self);
      v64 = sel_getName(a2);
      *buf = 67109890;
      v108 = v62;
      v109 = 2082;
      v110 = v63;
      v111 = 2082;
      v112 = v64;
      v113 = 1024;
      v114 = 352;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i init with empty config instead", buf, 0x22u);
    }

    v41 = 1;
    v65 = [(NFExpressConfig *)self reconfigureWithArray:&__NSArray0__struct updateStorage:1 avoidChangingRouting:1 restoreAuthorization:0];

    if (v65)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v66 = NFLogGetLogger();
      if (v66)
      {
        v67 = v66;
        v68 = object_getClass(self);
        v69 = class_isMetaClass(v68);
        v97 = object_getClassName(self);
        v103 = sel_getName(a2);
        v70 = 45;
        if (v69)
        {
          v70 = 43;
        }

        v67(3, "%c[%{public}s %{public}s]:%i failed to initialize with empty config - %{public}@", v70, v97, v103, 355, v65);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v71 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v72 = object_getClass(self);
        if (class_isMetaClass(v72))
        {
          v73 = 43;
        }

        else
        {
          v73 = 45;
        }

        v74 = object_getClassName(self);
        v75 = sel_getName(a2);
        *buf = 67110146;
        v108 = v73;
        v109 = 2082;
        v110 = v74;
        v111 = 2082;
        v112 = v75;
        v113 = 1024;
        v114 = 355;
        v115 = 2114;
        v116 = v65;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i failed to initialize with empty config - %{public}@", buf, 0x2Cu);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v76 = NFLogGetLogger();
      if (v76)
      {
        v77 = v76;
        v78 = object_getClass(self);
        v79 = class_isMetaClass(v78);
        v80 = object_getClassName(self);
        v104 = sel_getName(a2);
        v81 = 45;
        if (v79)
        {
          v81 = 43;
        }

        v77(3, "%c[%{public}s %{public}s]:%i Express Mode is disabled", v81, v80, v104, 356);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v82 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        v83 = object_getClass(self);
        if (class_isMetaClass(v83))
        {
          v84 = 43;
        }

        else
        {
          v84 = 45;
        }

        v85 = object_getClassName(self);
        v86 = sel_getName(a2);
        *buf = 67109890;
        v108 = v84;
        v109 = 2082;
        v110 = v85;
        v111 = 2082;
        v112 = v86;
        v113 = 1024;
        v114 = 356;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Express Mode is disabled", buf, 0x22u);
      }

      if (error)
      {
        v87 = [NSError alloc];
        v88 = [NSString stringWithUTF8String:"nfcd"];
        code = [v65 code];
        v105[0] = NSLocalizedDescriptionKey;
        if ([v65 code] > 75)
        {
          code2 = 76;
        }

        else
        {
          code2 = [v65 code];
        }

        v91 = [NSString stringWithUTF8String:off_100319730[code2]];
        v106[0] = v91;
        v106[1] = v65;
        v105[1] = NSUnderlyingErrorKey;
        v105[2] = @"Line";
        v106[2] = &off_1003323D0;
        v105[3] = @"Method";
        v92 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v106[3] = v92;
        v105[4] = NSDebugDescriptionErrorKey;
        v93 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 358];
        v106[4] = v93;
        v94 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:5];
        *error = [v87 initWithDomain:v88 code:code userInfo:v94];
      }

      v41 = 0;
    }
  }

  else
  {
    v65 = 0;
  }

  return v41;
}

- (id)arrayConfigFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014ADD4;
  v10[3] = &unk_1003199A0;
  v10[4] = self;
  v6 = objc_opt_new();
  v11 = v6;
  v12 = a2;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

- (id)restoreAuthForApplet:(id)applet
{
  appletCopy = applet;
  if ([appletCopy authTransientSupport])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Applet already requires auth", v11, ClassName, Name, 484);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(self);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67109890;
      v66 = v14;
      v67 = 2082;
      v68 = object_getClassName(self);
      v69 = 2082;
      v70 = sel_getName(a2);
      v71 = 1024;
      v72 = 484;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Applet already requires auth", buf, 0x22u);
    }

    goto LABEL_37;
  }

  getSecureElementWrapperAndSetRouting = [(NFExpressConfig *)self getSecureElementWrapperAndSetRouting];
  if (getSecureElementWrapperAndSetRouting)
  {
    v12 = getSecureElementWrapperAndSetRouting;
    v62 = appletCopy;
    v16 = [NSArray arrayWithObjects:&v62 count:1];
    v17 = sub_1002040C4(v12, 1, 0xFFFFFFFF, v16, 0);

    if (!v17)
    {
      v53 = sub_100253E14(&v12->isa);
LABEL_37:
      v37 = 0;
      goto LABEL_38;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(self);
      v21 = class_isMetaClass(v20);
      v22 = object_getClassName(self);
      v57 = sel_getName(a2);
      v23 = 45;
      if (v21)
      {
        v23 = 43;
      }

      v19(3, "%c[%{public}s %{public}s]:%i Failed to restore authorization on applet", v23, v22, v57, 499);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = object_getClass(self);
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      v27 = object_getClassName(self);
      v28 = sel_getName(a2);
      *buf = 67109890;
      v66 = v26;
      v67 = 2082;
      v68 = v27;
      v69 = 2082;
      v70 = v28;
      v71 = 1024;
      v72 = 499;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to restore authorization on applet", buf, 0x22u);
    }

    v59 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v30 = v17;
    v60[0] = NSLocalizedDescriptionKey;
    if (v17 >= 0x4C)
    {
      v31 = 76;
    }

    else
    {
      v31 = v17;
    }

    v32 = [NSString stringWithUTF8String:off_100319730[v31]];
    v61[0] = v32;
    v61[1] = &off_100332400;
    v60[1] = @"Line";
    v60[2] = @"Method";
    v33 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v61[2] = v33;
    v60[3] = NSDebugDescriptionErrorKey;
    v34 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 500];
    v61[3] = v34;
    v60[4] = NSLocalizedFailureReasonErrorKey;
    v35 = [[NSString alloc] initWithFormat:@"Failed to restore transient auth"];
    v61[4] = v35;
    v36 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:5];
    v37 = [v59 initWithDomain:v29 code:v30 userInfo:v36];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFLogGetLogger();
    if (v38)
    {
      v39 = v38;
      v40 = object_getClass(self);
      v41 = class_isMetaClass(v40);
      v55 = object_getClassName(self);
      v58 = sel_getName(a2);
      v42 = 45;
      if (v41)
      {
        v42 = 43;
      }

      v39(3, "%c[%{public}s %{public}s]:%i Failed to load SE for applet: %{public}@", v42, v55, v58, 490, appletCopy);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v43 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = object_getClass(self);
      if (class_isMetaClass(v44))
      {
        v45 = 43;
      }

      else
      {
        v45 = 45;
      }

      *buf = 67110146;
      v66 = v45;
      v67 = 2082;
      v68 = object_getClassName(self);
      v69 = 2082;
      v70 = sel_getName(a2);
      v71 = 1024;
      v72 = 490;
      v73 = 2114;
      v74 = appletCopy;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to load SE for applet: %{public}@", buf, 0x2Cu);
    }

    v46 = [NSError alloc];
    v47 = [NSString stringWithUTF8String:"nfcd"];
    v63[0] = NSLocalizedDescriptionKey;
    v48 = [NSString stringWithUTF8String:"Stack Error"];
    v64[0] = v48;
    v64[1] = &off_1003323E8;
    v63[1] = @"Line";
    v63[2] = @"Method";
    v49 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v64[2] = v49;
    v63[3] = NSDebugDescriptionErrorKey;
    v50 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 491];
    v64[3] = v50;
    v63[4] = NSLocalizedFailureReasonErrorKey;
    v51 = [[NSString alloc] initWithFormat:@"Failed to initialize SE wrapper"];
    v64[4] = v51;
    v52 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:5];
    v37 = [v46 initWithDomain:v47 code:15 userInfo:v52];

    v12 = 0;
  }

LABEL_38:

  return v37;
}

- (id)passForAid:(id)aid
{
  aidCopy = aid;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_passes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"appletIdentifier", v15}];
        v12 = [aidCopy caseInsensitiveCompare:v11];

        if (!v12)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)removeAppletsFromConfig:(id)config
{
  configCopy = config;
  getSecureElementWrapperAndSetRouting = [(NFExpressConfig *)self getSecureElementWrapperAndSetRouting];
  if (getSecureElementWrapperAndSetRouting)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = configCopy;
    v8 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v8)
    {

      goto LABEL_31;
    }

    v9 = v8;
    v31 = getSecureElementWrapperAndSetRouting;
    v32 = configCopy;
    v10 = 0;
    v11 = *v34;
    while (1)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          identifier = [v14 identifier];
          if (!identifier)
          {
            goto LABEL_16;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v14 = 0;
            goto LABEL_16;
          }

          identifier = v13;
          v14 = 0;
          if (!identifier)
          {
            goto LABEL_16;
          }
        }

        v16 = [(NFExpressConfig *)self passForAid:identifier];
        if (v16)
        {
          [(NSMutableArray *)self->_passes removeObject:v16];
          v10 = 1;
        }

LABEL_16:
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (!v9)
      {

        getSecureElementWrapperAndSetRouting = v31;
        configCopy = v32;
        if (v10)
        {
          [(NFExpressConfig *)self updateExpressAppletNumbers];
          [(NFExpressConfig *)self updateStorage];
        }

        goto LABEL_31;
      }
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v18 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    seName = [(NFExpressConfig *)self seName];
    v24 = 45;
    if (isMetaClass)
    {
      v24 = 43;
    }

    v18(3, "%c[%{public}s %{public}s]:%i Failed to initialize %{public}@ wrapper", v24, ClassName, Name, 525, seName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = object_getClass(self);
    if (class_isMetaClass(v26))
    {
      v27 = 43;
    }

    else
    {
      v27 = 45;
    }

    v28 = object_getClassName(self);
    v29 = sel_getName(a2);
    seName2 = [(NFExpressConfig *)self seName];
    *buf = 67110146;
    v39 = v27;
    getSecureElementWrapperAndSetRouting = 0;
    v40 = 2082;
    v41 = v28;
    v42 = 2082;
    v43 = v29;
    v44 = 1024;
    v45 = 525;
    v46 = 2114;
    v47 = seName2;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to initialize %{public}@ wrapper", buf, 0x2Cu);
  }

LABEL_31:
}

- (id)reconfigureWithArray:(id)array updateStorage:(BOOL)storage avoidChangingRouting:(BOOL)routing restoreAuthorization:(BOOL)authorization
{
  authorizationCopy = authorization;
  routingCopy = routing;
  storageCopy = storage;
  arrayCopy = array;
  if (!arrayCopy)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v91 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v95 = 45;
      if (isMetaClass)
      {
        v95 = 43;
      }

      v91(3, "%c[%{public}s %{public}s]:%i no array supplied", v95, ClassName, Name, 617);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v96 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      v97 = object_getClass(self);
      if (class_isMetaClass(v97))
      {
        v98 = 43;
      }

      else
      {
        v98 = 45;
      }

      *buf = 67109890;
      v199 = v98;
      v200 = 2082;
      v201 = object_getClassName(self);
      v202 = 2082;
      v203 = sel_getName(a2);
      v204 = 1024;
      v205 = 617;
      _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i no array supplied", buf, 0x22u);
    }

    v99 = [NSError alloc];
    v25 = [NSString stringWithUTF8String:"nfcd"];
    v190[0] = NSLocalizedDescriptionKey;
    v163 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v191[0] = v163;
    v191[1] = &off_100332430;
    v190[1] = @"Line";
    v190[2] = @"Method";
    v89 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v191[2] = v89;
    v190[3] = NSDebugDescriptionErrorKey;
    v70 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 618];
    v191[3] = v70;
    v100 = [NSDictionary dictionaryWithObjects:v191 forKeys:v190 count:4];
    v26 = [v99 initWithDomain:v25 code:10 userInfo:v100];
    goto LABEL_122;
  }

  if (self)
  {
    passes = self->_passes;
  }

  else
  {
    passes = 0;
  }

  v12 = passes;
  v13 = [(NFExpressConfig *)self extractConfigFrom:arrayCopy];
  v162 = v12;
  v163 = v13;
  if (!v13)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v101 = NFLogGetLogger();
    if (v101)
    {
      v102 = v101;
      v103 = object_getClass(self);
      v104 = class_isMetaClass(v103);
      v105 = object_getClassName(self);
      v156 = sel_getName(a2);
      v106 = 45;
      if (v104)
      {
        v106 = 43;
      }

      v102(3, "%c[%{public}s %{public}s]:%i Failed to create expressConfig", v106, v105, v156, 626);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v107 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      v108 = object_getClass(self);
      if (class_isMetaClass(v108))
      {
        v109 = 43;
      }

      else
      {
        v109 = 45;
      }

      *buf = 67109890;
      v199 = v109;
      v200 = 2082;
      v201 = object_getClassName(self);
      v202 = 2082;
      v203 = sel_getName(a2);
      v204 = 1024;
      v205 = 626;
      _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create expressConfig", buf, 0x22u);
    }

    v110 = [NSError alloc];
    v89 = [NSString stringWithUTF8String:"nfcd"];
    v188[0] = NSLocalizedDescriptionKey;
    v70 = [NSString stringWithUTF8String:"Unknown Error"];
    v189[0] = v70;
    v189[1] = &off_100332448;
    v188[1] = @"Line";
    v188[2] = @"Method";
    v100 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v189[2] = v100;
    v188[3] = NSDebugDescriptionErrorKey;
    v111 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 627];
    v189[3] = v111;
    v112 = [NSDictionary dictionaryWithObjects:v189 forKeys:v188 count:4];
    v26 = [v110 initWithDomain:v89 code:6 userInfo:v112];
LABEL_121:
    v25 = v162;

LABEL_122:
    goto LABEL_123;
  }

  v14 = v13;
  selfCopy = self;
  if (![(NSMutableArray *)v12 NF_isEqualToExpressConfigList:arrayCopy])
  {
    if (-[NSMutableArray count](v12, "count") && ![v14 count])
    {
      v113 = v14;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v114 = NFLogGetLogger();
      if (v114)
      {
        v115 = v114;
        v116 = object_getClass(selfCopy);
        v117 = class_isMetaClass(v116);
        v118 = object_getClassName(selfCopy);
        v157 = sel_getName(a2);
        v119 = 45;
        if (v117)
        {
          v119 = 43;
        }

        v115(6, "%c[%{public}s %{public}s]:%i Config is now empty! Need to deselect all", v119, v118, v157, 638);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v120 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
      {
        v121 = object_getClass(selfCopy);
        if (class_isMetaClass(v121))
        {
          v122 = 43;
        }

        else
        {
          v122 = 45;
        }

        *buf = 67109890;
        v199 = v122;
        v200 = 2082;
        v201 = object_getClassName(selfCopy);
        v202 = 2082;
        v203 = sel_getName(a2);
        v204 = 1024;
        v205 = 638;
        _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Config is now empty! Need to deselect all", buf, 0x22u);
      }

      deactivateExpressConfig = [(NFExpressConfig *)selfCopy deactivateExpressConfig];
      v14 = v113;
      self = selfCopy;
    }

    if (([(NFExpressConfig *)self validateAndUpdateExpressConfig:v14 avoidChangingRouting:routingCopy]& 1) != 0)
    {
      if (self)
      {
        sub_10027EA60(v124);
        v126 = *(v125 + 200);
        v127 = self->_passes;
        v128 = v14;
        v129 = [v126 processConfigurationChange:v127 newConfiguration:v128];

        v130 = v129;
        v131 = [[NSMutableArray alloc] initWithArray:v128];
        v132 = self->_passes;
        self->_passes = v131;

        [(NFExpressConfig *)self updateExpressAppletNumbers];
        v133 = [NSString alloc];
        seName = [(NFExpressConfig *)self seName];
        v134 = [v133 initWithFormat:@"%@: new config", seName];
        [(NFExpressConfig *)self dumpConfig:v128 logLevel:7 prefix:v134];

        self->_expressConfigUpdateRequired = 1;
      }

      else
      {
        v129 = 0;
      }

      v24 = v129;
      if (storageCopy)
      {
        [(NFExpressConfig *)self updateStorage];
      }

      goto LABEL_16;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v136 = NFLogGetLogger();
    if (v136)
    {
      v137 = v136;
      v138 = object_getClass(self);
      v139 = class_isMetaClass(v138);
      v140 = object_getClassName(self);
      v158 = sel_getName(a2);
      v141 = 45;
      if (v139)
      {
        v141 = 43;
      }

      v137(3, "%c[%{public}s %{public}s]:%i Validation of express config failed", v141, v140, v158, 643);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v142 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
    {
      v143 = object_getClass(self);
      if (class_isMetaClass(v143))
      {
        v144 = 43;
      }

      else
      {
        v144 = 45;
      }

      v145 = object_getClassName(self);
      v146 = sel_getName(a2);
      *buf = 67109890;
      v199 = v144;
      v200 = 2082;
      v201 = v145;
      v202 = 2082;
      v203 = v146;
      v204 = 1024;
      v205 = 643;
      _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Validation of express config failed", buf, 0x22u);
    }

    v147 = [NSError alloc];
    v89 = [NSString stringWithUTF8String:"nfcd"];
    v186[0] = NSLocalizedDescriptionKey;
    v70 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v187[0] = v70;
    v187[1] = &off_100332460;
    v186[1] = @"Line";
    v186[2] = @"Method";
    v100 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v187[2] = v100;
    v186[3] = NSDebugDescriptionErrorKey;
    v111 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 644];
    v187[3] = v111;
    v186[4] = NSLocalizedFailureReasonErrorKey;
    v112 = [[NSString alloc] initWithFormat:@"Validation failed for express config"];
    v187[4] = v112;
    v148 = [NSDictionary dictionaryWithObjects:v187 forKeys:v186 count:5];
    v26 = [v147 initWithDomain:v89 code:10 userInfo:v148];

    goto LABEL_121;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v16 = v15;
    v17 = object_getClass(self);
    v18 = class_isMetaClass(v17);
    v19 = object_getClassName(self);
    v152 = sel_getName(a2);
    v20 = 45;
    if (v18)
    {
      v20 = 43;
    }

    v16(6, "%c[%{public}s %{public}s]:%i No change in config", v20, v19, v152, 635);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = object_getClass(self);
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    *buf = 67109890;
    v199 = v23;
    v200 = 2082;
    v201 = object_getClassName(self);
    v202 = 2082;
    v203 = sel_getName(a2);
    v204 = 1024;
    v205 = 635;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No change in config", buf, 0x22u);
  }

  v24 = 0;
LABEL_16:
  v25 = v162;
  v26 = 0;
  v161 = arrayCopy;
  if (authorizationCopy && !routingCopy)
  {
    v160 = v24;
    v27 = v162;
    if (self)
    {
      getSecureElementWrapperAndSetRouting = [(NFExpressConfig *)self getSecureElementWrapperAndSetRouting];
      v164 = objc_opt_new();
      v166 = objc_opt_new();
      v179 = 0;
      v180 = &v179;
      v181 = 0x3032000000;
      v182 = sub_100006A9C;
      v183 = sub_10014BF84;
      v184 = 0;
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v178 = 0u;
      v159 = v27;
      obj = v27;
      v29 = [(NSMutableArray *)obj countByEnumeratingWithState:&v175 objects:buf count:16];
      v165 = getSecureElementWrapperAndSetRouting;
      if (v29)
      {
        v30 = v29;
        v31 = *v176;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v176 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v33 = *(*(&v175 + 1) + 8 * i);
            v34 = [v33 objectForKeyedSubscript:@"appletIdentifier"];
            v35 = [NSData NF_dataWithHexString:v34];
            v36 = [v33 objectForKeyedSubscript:@"keyIdentifier"];
            v37 = sub_100257F24(getSecureElementWrapperAndSetRouting, v35, 0);
            if (([(NSMutableArray *)selfCopy->_passes containsObject:v33]& 1) == 0)
            {
              if (v36)
              {
                v38 = v37 == 0;
              }

              else
              {
                v38 = 1;
              }

              if (v38)
              {
                if (v37 && ([v37 authTransientSupport] & 1) == 0)
                {
                  [v164 addObject:v37];
                }
              }

              else
              {
                v39 = [v166 objectForKeyedSubscript:v35];

                if (!v39)
                {
                  v40 = objc_opt_new();
                  [v166 setObject:v40 forKeyedSubscript:v35];
                }

                v41 = [v166 objectForKeyedSubscript:v35];
                [v41 addObject:v36];

                getSecureElementWrapperAndSetRouting = v165;
              }
            }
          }

          v30 = [(NSMutableArray *)obj countByEnumeratingWithState:&v175 objects:buf count:16];
        }

        while (v30);
      }

      v42 = v164;
      v25 = v162;
      v43 = selfCopy;
      v44 = v166;
      if ([v164 count])
      {
        v45 = sub_1002040C4(getSecureElementWrapperAndSetRouting, 1, 0xFFFFFFFF, v164, 0);
        if (v45)
        {
          v46 = v45;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v47 = NFLogGetLogger();
          if (v47)
          {
            v48 = v47;
            v49 = object_getClass(selfCopy);
            v50 = class_isMetaClass(v49);
            v150 = object_getClassName(selfCopy);
            v153 = sel_getName("_restoreAuthorizationOnRemovedAppletsAndKeysWithOldConfig:");
            v51 = 45;
            if (v50)
            {
              v51 = 43;
            }

            v48(3, "%c[%{public}s %{public}s]:%i Failed to restore authorization on applet (%d)", v51, v150, v153, 592, v46);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v52 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            v53 = object_getClass(selfCopy);
            if (class_isMetaClass(v53))
            {
              v54 = 43;
            }

            else
            {
              v54 = 45;
            }

            v55 = object_getClassName(selfCopy);
            v56 = sel_getName("_restoreAuthorizationOnRemovedAppletsAndKeysWithOldConfig:");
            *v192 = 67110146;
            *&v192[4] = v54;
            *v193 = 2082;
            *&v193[2] = v55;
            *&v193[10] = 2082;
            *&v193[12] = v56;
            *&v193[20] = 1024;
            *&v193[22] = 592;
            *&v193[26] = 1024;
            *&v193[28] = v46;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to restore authorization on applet (%d)", v192, 0x28u);
          }

          v57 = [NSError alloc];
          v58 = [NSString stringWithUTF8String:"nfcd"];
          v59 = v46;
          v196[0] = NSLocalizedDescriptionKey;
          if (v46 >= 0x4C)
          {
            v60 = 76;
          }

          else
          {
            v60 = v46;
          }

          v61 = [NSString stringWithUTF8String:off_100319730[v60]];
          v197[0] = v61;
          v197[1] = &off_100332418;
          v196[1] = @"Line";
          v196[2] = @"Method";
          v62 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_restoreAuthorizationOnRemovedAppletsAndKeysWithOldConfig:")];
          v197[2] = v62;
          v196[3] = NSDebugDescriptionErrorKey;
          v63 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_restoreAuthorizationOnRemovedAppletsAndKeysWithOldConfig:"), 593];
          v197[3] = v63;
          v196[4] = NSLocalizedFailureReasonErrorKey;
          v64 = [[NSString alloc] initWithFormat:@"Restoring authorization failed"];
          v197[4] = v64;
          v65 = [NSDictionary dictionaryWithObjects:v197 forKeys:v196 count:5];
          v66 = [v57 initWithDomain:v58 code:v59 userInfo:v65];
          v67 = v180[5];
          v180[5] = v66;

          v25 = v162;
          v43 = selfCopy;
          v42 = v164;
          v44 = v166;
        }

        getSecureElementWrapperAndSetRouting = v165;
        v68 = sub_100253E14(v165);
      }

      *v192 = _NSConcreteStackBlock;
      *v193 = 3221225472;
      *&v193[8] = sub_10014BF8C;
      *&v193[16] = &unk_1003199C8;
      *&v193[24] = getSecureElementWrapperAndSetRouting;
      v194 = v43;
      v195 = &v179;
      v69 = getSecureElementWrapperAndSetRouting;
      [v44 enumerateKeysAndObjectsUsingBlock:v192];
      v26 = v180[5];

      _Block_object_dispose(&v179, 8);
      v27 = v159;
    }

    else
    {
      v26 = 0;
      v25 = v162;
    }

    v24 = v160;
  }

  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v70 = v24;
  v71 = [v70 countByEnumeratingWithState:&v171 objects:v185 count:16];
  if (v71)
  {
    v72 = v71;
    v167 = v26;
    v73 = *v172;
    do
    {
      v74 = v70;
      for (j = 0; j != v72; j = j + 1)
      {
        if (*v172 != v73)
        {
          objc_enumerationMutation(v74);
        }

        v76 = *(*(&v171 + 1) + 8 * j);
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v77 = NFLogGetLogger();
        if (v77)
        {
          v78 = v77;
          v79 = object_getClass(selfCopy);
          v80 = class_isMetaClass(v79);
          v151 = object_getClassName(selfCopy);
          v154 = sel_getName(a2);
          v81 = 45;
          if (v80)
          {
            v81 = 43;
          }

          v78(6, "%c[%{public}s %{public}s]:%i posting %{public}@ to SESD", v81, v151, v154, 661, v76);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v82 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v83 = object_getClass(selfCopy);
          if (class_isMetaClass(v83))
          {
            v84 = 43;
          }

          else
          {
            v84 = 45;
          }

          v85 = object_getClassName(selfCopy);
          v86 = sel_getName(a2);
          *buf = 67110146;
          v199 = v84;
          v200 = 2082;
          v201 = v85;
          v202 = 2082;
          v203 = v86;
          v204 = 1024;
          v205 = 661;
          v206 = 2114;
          v207 = v76;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i posting %{public}@ to SESD", buf, 0x2Cu);
        }

        v87 = +[_NFHardwareManager sharedHardwareManager];
        sesdEventPublisher = [v87 sesdEventPublisher];
        [sesdEventPublisher sendXpcNotificationEventWithDictionary:v76];
      }

      v70 = v74;
      v72 = [v74 countByEnumeratingWithState:&v171 objects:v185 count:16];
    }

    while (v72);
    v89 = v74;
    arrayCopy = v161;
    v25 = v162;
    v26 = v167;
  }

  else
  {
    v89 = v70;
    arrayCopy = v161;
  }

LABEL_123:

  return v26;
}

- (id)getExpressAidsForType:(unsigned __int8)type onlyInExpress:(BOOL)express
{
  expressCopy = express;
  typeCopy = type;
  v19 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = self->_passes;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if (expressCopy)
        {
          v13 = [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:@"expressEnabled"];
          bOOLValue = [v13 BOOLValue];

          if (!bOOLValue)
          {
            continue;
          }
        }

        v15 = [v12 objectForKeyedSubscript:@"appletIdentifier"];
        v16 = [v12 objectForKeyedSubscript:@"ExpressType"];
        v17 = [NFExpressConfig expressTypeForATLConfigKey:v16];

        if (v17 == typeCopy)
        {
          [v19 addObject:v15];
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return v19;
}

- (unint64_t)getNumberOfExpressAidsForType:(unsigned __int8)type
{
  v3 = [(NFExpressConfig *)self getExpressAidsForType:type];
  v4 = [v3 count];

  return v4;
}

- (id)deactivateExpressConfig
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 728);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v18 = v12;
    v19 = 2082;
    v20 = object_getClassName(self);
    v21 = 2082;
    v22 = sel_getName(a2);
    v23 = 1024;
    v24 = 728;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  getSecureElementWrapperAndSetRouting = [(NFExpressConfig *)self getSecureElementWrapperAndSetRouting];
  v14 = sub_1002562FC(getSecureElementWrapperAndSetRouting);

  return v14;
}

- (void)activateExpressConfig
{
  if (self)
  {
    self->_expressConfigUpdateRequired = 1;
  }
}

- (BOOL)isSEOperational
{
  getSecureElementWrapper = [(NFExpressConfig *)self getSecureElementWrapper];
  isOperational = [getSecureElementWrapper isOperational];

  return isOperational;
}

@end