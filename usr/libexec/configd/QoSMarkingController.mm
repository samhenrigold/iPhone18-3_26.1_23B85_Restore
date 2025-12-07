@interface QoSMarkingController
+ (id)sharedController;
- (BOOL)qosMarkingIsAppleAudioVideoCallsEnabled:(id)enabled;
- (BOOL)qosMarkingIsEnabled:(id)enabled;
- (BOOL)qosMarkingPolicyEnabled:(id)enabled forKey:(id)key;
- (QoSMarkingController)init;
- (id)createPolicySession;
- (id)qosMarkingAllowListAppIdentifiers:(id)identifiers;
- (void)addAllowListAppIdentifierPolicy:(id)policy forApp:(id)app order:(unsigned int)order;
- (void)addAllowListPathPolicy:(id)policy forPath:(id)path order:(unsigned int)order;
- (void)setEnabled:(id)enabled;
- (void)setEnabledAV:(id)v;
- (void)setInterfaces:(id)interfaces;
- (void)setPolicy:(id)policy forInterface:(id)interface;
- (void)setPolicySessions:(id)sessions;
- (void)setRequested:(id)requested;
- (void)updatePolicy:(id)policy forInterface:(id)interface;
@end

@implementation QoSMarkingController

- (id)createPolicySession
{
  v2 = objc_alloc_init(NEPolicySession);

  return v2;
}

- (BOOL)qosMarkingPolicyEnabled:(id)enabled forKey:(id)key
{
  keyCopy = key;
  v6 = [enabled objectForKeyedSubscript:keyCopy];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      v8 = sub_1000636BC();
      v9 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        memset(v16, 0, sizeof(v16));
        if (_sc_log <= 0)
        {
          v10 = 2;
        }

        else
        {
          v10 = 3;
        }

        if (os_log_type_enabled(v8, v9))
        {
          v11 = v10;
        }

        else
        {
          v11 = 2;
        }

        v14 = 138412290;
        v15 = keyCopy;
        v12 = _os_log_send_and_compose_impl(v11, 0, v16, 256, &_mh_execute_header, v8, v9, "%@ not valid", &v14, 12);
        __SC_log_send2();
        if (v12 != v16)
        {
          free(v12);
        }
      }

      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)qosMarkingIsEnabled:(id)enabled
{
  v3 = kSCPropNetQoSMarkingEnabled;

  return [(QoSMarkingController *)self qosMarkingPolicyEnabled:enabled forKey:v3];
}

- (BOOL)qosMarkingIsAppleAudioVideoCallsEnabled:(id)enabled
{
  v3 = kSCPropNetQoSMarkingAppleAudioVideoCalls;

  return [(QoSMarkingController *)self qosMarkingPolicyEnabled:enabled forKey:v3];
}

- (id)qosMarkingAllowListAppIdentifiers:(id)identifiers
{
  v3 = [identifiers objectForKeyedSubscript:kSCPropNetQoSMarkingAllowListAppIdentifiers];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = sub_1000636BC();
    v16 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v17 = _sc_log <= 0 ? 2 : 3;
      v18 = os_log_type_enabled(v4, v16) ? v17 : 2;
      v23[0] = 0;
      v22 = 2;
      v19 = _os_log_send_and_compose_impl(v18, 0, &v29, 256, &_mh_execute_header, v4, v16, "QoSMarkingAllowListAppIdentifiers list not valid", v23, v22);
      __SC_log_send2();
      if (v19 != &v29)
      {
        free(v19);
      }
    }

LABEL_33:

    v10 = 0;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v25 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          if (v9)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ![v9 length])
            {
              v11 = sub_1000636BC();
              v12 = _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v43 = 0u;
                v44 = 0u;
                v41 = 0u;
                v42 = 0u;
                v39 = 0u;
                v40 = 0u;
                v37 = 0u;
                v38 = 0u;
                v35 = 0u;
                v36 = 0u;
                v33 = 0u;
                v34 = 0u;
                v31 = 0u;
                v32 = 0u;
                v29 = 0u;
                v30 = 0u;
                v13 = _sc_log <= 0 ? 2 : 3;
                v14 = os_log_type_enabled(v11, v12) ? v13 : 2;
                v23[0] = 0;
                v21 = 2;
                v15 = _os_log_send_and_compose_impl(v14, 0, &v29, 256, &_mh_execute_header, v11, v12, "QoSMarkingAllowListAppIdentifiers not valid", v23, v21);
                __SC_log_send2();
                if (v15 != &v29)
                {
                  free(v15);
                }
              }

              goto LABEL_33;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v25 objects:v24 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = v4;
  }

  return v10;
}

- (void)addAllowListPathPolicy:(id)policy forPath:(id)path order:(unsigned int)order
{
  policyCopy = policy;
  pathCopy = path;
  v50 = [(NSMutableDictionary *)self->_policySessions objectForKeyedSubscript:policyCopy];
  if (v50)
  {
    v9 = [NEPolicyRouteRule routeRuleWithAction:3 forInterfaceName:policyCopy];
    v62 = v9;
    v10 = [NSArray arrayWithObjects:&v62 count:1];
    v49 = [NEPolicyResult routeRules:v10];

    v11 = +[NEPolicyCondition allInterfaces];
    v12 = [NEProcessInfo copyUUIDsForExecutable:pathCopy];
    v13 = v12;
    v47 = v11;
    if (v12 && [v12 count])
    {
      v43 = v9;
      v45 = pathCopy;
      v46 = policyCopy;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = v13;
      v14 = [obj countByEnumeratingWithState:&v58 objects:v57 count:16];
      if (!v14)
      {
        goto LABEL_31;
      }

      v15 = v14;
      v48 = *v59;
      while (1)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v59 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v58 + 1) + 8 * i);
          v18 = [NEPolicyCondition effectiveApplication:v17];
          v19 = [NEPolicy alloc];
          v56[0] = v18;
          v56[1] = v11;
          v20 = [NSArray arrayWithObjects:v56 count:2];
          v21 = [v19 initWithOrder:order result:v49 conditions:v20];

          v22 = [v50 addPolicy:v21];
          v23 = sub_1000636BC();
          if (v22)
          {
            v24 = _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
              goto LABEL_29;
            }

            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            if (_sc_log <= 0)
            {
              LODWORD(v25) = 2;
            }

            else
            {
              LODWORD(v25) = 3;
            }

            v63 = 0uLL;
            v64 = 0uLL;
            if (os_log_type_enabled(v23, v24))
            {
              v25 = v25;
            }

            else
            {
              v25 = 2;
            }

            v26 = v23;
            uUIDString = [v17 UUIDString];
            v52 = 138413058;
            v53 = v46;
            v54 = 1024;
            *v55 = order;
            *&v55[4] = 2112;
            *&v55[6] = v45;
            *&v55[14] = 2112;
            *&v55[16] = uUIDString;
            LODWORD(v42) = 38;
            v28 = _os_log_send_and_compose_impl(v25, 0, &v63, 256, &_mh_execute_header, v26, v24, "QoS marking policy: %@: %u: allowlist path %@ (%@)", &v52, v42);
          }

          else
          {
            v29 = _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
              goto LABEL_29;
            }

            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            if (_sc_log <= 0)
            {
              LODWORD(v30) = 2;
            }

            else
            {
              LODWORD(v30) = 3;
            }

            v63 = 0uLL;
            v64 = 0uLL;
            if (os_log_type_enabled(v23, v29))
            {
              v30 = v30;
            }

            else
            {
              v30 = 2;
            }

            v31 = v23;
            uUIDString2 = [v17 UUIDString];
            v52 = 138412802;
            v53 = v46;
            v54 = 2112;
            *v55 = v45;
            *&v55[8] = 2112;
            *&v55[10] = uUIDString2;
            LODWORD(v42) = 32;
            v28 = _os_log_send_and_compose_impl(v30, 0, &v63, 256, &_mh_execute_header, v31, v29, "QoS marking policy: %@: could not add allowlist policy for path %@ (%@)", &v52, v42);
          }

          __SC_log_send2();
          if (v28 != &v63)
          {
            free(v28);
          }

          v11 = v47;
LABEL_29:
        }

        v15 = [obj countByEnumeratingWithState:&v58 objects:v57 count:16];
        if (!v15)
        {
LABEL_31:

          pathCopy = v45;
          policyCopy = v46;
          goto LABEL_52;
        }
      }
    }

    v33 = sub_1000636BC();
    v34 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      if (_sc_log <= 0)
      {
        v35 = 2;
      }

      else
      {
        v35 = 3;
      }

      if (os_log_type_enabled(v33, v34))
      {
        v36 = v35;
      }

      else
      {
        v36 = 2;
      }

      v52 = 138412546;
      v53 = policyCopy;
      v54 = 2112;
      *v55 = pathCopy;
      v37 = _os_log_send_and_compose_impl(v36, 0, &v63, 256, &_mh_execute_header, v33, v34, "QoS marking policy: %@: could not add path %@", &v52, 22);
      __SC_log_send2();
      if (v37 != &v63)
      {
        free(v37);
      }

      v11 = v47;
    }
  }

  else
  {
    v11 = sub_1000636BC();
    v38 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v39 = _sc_log <= 0 ? 2 : 3;
      v40 = os_log_type_enabled(v11, v38) ? v39 : 2;
      v52 = 138412290;
      v53 = policyCopy;
      v41 = _os_log_send_and_compose_impl(v40, 0, &v63, 256, &_mh_execute_header, v11, v38, "QoS marking policy: %@: no session", &v52, 12);
      __SC_log_send2();
      if (v41 != &v63)
      {
        free(v41);
      }
    }
  }

LABEL_52:
}

- (void)addAllowListAppIdentifierPolicy:(id)policy forApp:(id)app order:(unsigned int)order
{
  policyCopy = policy;
  appCopy = app;
  if ([appCopy hasPrefix:@"/"])
  {
    if (qword_100081D58 != -1)
    {
      sub_1000683F8();
    }

    if (byte_100081D50)
    {
      [(QoSMarkingController *)self addAllowListPathPolicy:policyCopy forPath:appCopy order:order];
    }

    goto LABEL_56;
  }

  v49 = [(NSMutableDictionary *)self->_policySessions objectForKeyedSubscript:policyCopy];
  if (v49)
  {
    v8 = [NEPolicyRouteRule routeRuleWithAction:3 forInterfaceName:policyCopy];
    v61 = v8;
    v9 = [NSArray arrayWithObjects:&v61 count:1];
    v48 = [NEPolicyResult routeRules:v9];

    v47 = +[NEPolicyCondition allInterfaces];
    v10 = [NEProcessInfo copyUUIDsForBundleID:appCopy uid:0];
    v11 = v10;
    if (v10 && [v10 count])
    {
      v42 = v8;
      v44 = policyCopy;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      obj = v11;
      v12 = [obj countByEnumeratingWithState:&v57 objects:v56 count:16];
      if (!v12)
      {
        goto LABEL_35;
      }

      v13 = v12;
      v46 = *v58;
      while (1)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v58 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v57 + 1) + 8 * i);
          v16 = [NEPolicyCondition effectiveApplication:v15];
          v17 = [NEPolicy alloc];
          v55[0] = v16;
          v55[1] = v47;
          v18 = [NSArray arrayWithObjects:v55 count:2];
          v19 = [v17 initWithOrder:order result:v48 conditions:v18];

          v20 = [v49 addPolicy:v19];
          v21 = sub_1000636BC();
          if (v20)
          {
            v22 = _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
              goto LABEL_33;
            }

            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            if (_sc_log <= 0)
            {
              LODWORD(v23) = 2;
            }

            else
            {
              LODWORD(v23) = 3;
            }

            v62 = 0uLL;
            v63 = 0uLL;
            if (os_log_type_enabled(v21, v22))
            {
              v23 = v23;
            }

            else
            {
              v23 = 2;
            }

            v24 = v21;
            uUIDString = [v15 UUIDString];
            v51 = 138413058;
            v52 = v44;
            v53 = 1024;
            *v54 = order;
            *&v54[4] = 2112;
            *&v54[6] = appCopy;
            *&v54[14] = 2112;
            *&v54[16] = uUIDString;
            LODWORD(v41) = 38;
            v26 = _os_log_send_and_compose_impl(v23, 0, &v62, 256, &_mh_execute_header, v24, v22, "QoS marking policy: %@: %u: allowlist bundleID %@ (%@)", &v51, v41);
          }

          else
          {
            v27 = _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
              goto LABEL_33;
            }

            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            if (_sc_log <= 0)
            {
              LODWORD(v28) = 2;
            }

            else
            {
              LODWORD(v28) = 3;
            }

            v62 = 0uLL;
            v63 = 0uLL;
            if (os_log_type_enabled(v21, v27))
            {
              v28 = v28;
            }

            else
            {
              v28 = 2;
            }

            v29 = v21;
            uUIDString2 = [v15 UUIDString];
            v51 = 138412802;
            v52 = v44;
            v53 = 2112;
            *v54 = appCopy;
            *&v54[8] = 2112;
            *&v54[10] = uUIDString2;
            LODWORD(v41) = 32;
            v26 = _os_log_send_and_compose_impl(v28, 0, &v62, 256, &_mh_execute_header, v29, v27, "QoS marking policy: %@: could not add allowlist policy for bundleID %@ (%@)", &v51, v41);
          }

          __SC_log_send2();
          if (v26 != &v62)
          {
            free(v26);
          }

LABEL_33:
        }

        v13 = [obj countByEnumeratingWithState:&v57 objects:v56 count:16];
        if (!v13)
        {
LABEL_35:

          policyCopy = v44;
          goto LABEL_56;
        }
      }
    }

    v31 = sub_1000636BC();
    v32 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v33 = _sc_log <= 0 ? 2 : 3;
      v34 = os_log_type_enabled(v31, v32) ? v33 : 2;
      v51 = 138412546;
      v52 = policyCopy;
      v53 = 2112;
      *v54 = appCopy;
      v35 = _os_log_send_and_compose_impl(v34, 0, &v62, 256, &_mh_execute_header, v31, v32, "QoS marking policy: %@: could not add bundleID %@", &v51, 22);
      __SC_log_send2();
      if (v35 != &v62)
      {
        free(v35);
      }
    }
  }

  else
  {
    v36 = sub_1000636BC();
    v37 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v38 = _sc_log <= 0 ? 2 : 3;
      v39 = os_log_type_enabled(v36, v37) ? v38 : 2;
      v51 = 138412290;
      v52 = policyCopy;
      v40 = _os_log_send_and_compose_impl(v39, 0, &v62, 256, &_mh_execute_header, v36, v37, "QoS marking policy: %@: no session", &v51, 12);
      __SC_log_send2();
      if (v40 != &v62)
      {
        free(v40);
      }
    }
  }

LABEL_56:
}

- (QoSMarkingController)init
{
  v14.receiver = self;
  v14.super_class = QoSMarkingController;
  v2 = [(QoSMarkingController *)&v14 init];
  v3 = v2;
  if (v2)
  {
    interfaces = v2->_interfaces;
    v2->_interfaces = 0;

    v5 = +[NSMutableDictionary dictionary];
    policySessions = v3->_policySessions;
    v3->_policySessions = v5;

    v7 = +[NSMutableDictionary dictionary];
    requested = v3->_requested;
    v3->_requested = v7;

    v9 = +[NSMutableDictionary dictionary];
    enabled = v3->_enabled;
    v3->_enabled = v9;

    v11 = +[NSMutableDictionary dictionary];
    enabledAV = v3->_enabledAV;
    v3->_enabledAV = v11;
  }

  return v3;
}

- (void)updatePolicy:(id)policy forInterface:(id)interface
{
  policyCopy = policy;
  interfaceCopy = interface;
  v8 = [(NSMutableDictionary *)self->_enabled objectForKeyedSubscript:interfaceCopy];
  if (v8)
  {
    v9 = [(QoSMarkingController *)self qosMarkingIsEnabled:v8];
    v10 = v9 ^ 1;
    v11 = [(QoSMarkingController *)self qosMarkingIsAppleAudioVideoCallsEnabled:v8];
    if (policyCopy)
    {
LABEL_3:
      LODWORD(v12) = [(QoSMarkingController *)self qosMarkingIsEnabled:policyCopy];
      v13 = v12 ^ 1;
      v110 = [(QoSMarkingController *)self qosMarkingIsAppleAudioVideoCallsEnabled:policyCopy];
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    v9 = 0;
    v10 = 0;
    if (policyCopy)
    {
      goto LABEL_3;
    }
  }

  v110 = 0;
  LODWORD(v12) = 0;
  v13 = 0;
LABEL_6:
  if (policyCopy)
  {
    v14 = 1;
  }

  else
  {
    v14 = v9;
  }

  if (v14 == 1 && v9 == v12 && v10 == v13 && ((v9 & v12) != 1 || ([v8 isEqual:policyCopy] & 1) != 0))
  {
    v15 = 0;
    if (!v12)
    {
      goto LABEL_163;
    }

LABEL_71:
    v48 = [(QoSMarkingController *)self qosMarkingAllowListAppIdentifiers:v8];
    v49 = [(QoSMarkingController *)self qosMarkingAllowListAppIdentifiers:policyCopy];
    if ([v48 isEqual:v49] && v11 == v110)
    {
      goto LABEL_162;
    }

    v109 = v49;
    if (![(NSMutableDictionary *)self->_enabled count])
    {
      sub_100067124("net.qos.policy.restricted", 1);
    }

    [(NSMutableDictionary *)self->_enabled setObject:policyCopy forKeyedSubscript:interfaceCopy];
    v50 = sub_1000636BC();
    v51 = _SC_syslog_os_log_mapping();
    v107 = v15;
    v104 = v48;
    v113 = v12;
    if (__SC_log_enabled())
    {
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      if (_sc_log <= 0)
      {
        v52 = 2;
      }

      else
      {
        v52 = 3;
      }

      v53 = os_log_type_enabled(v50, v51);
      v54 = "add";
      if (v53)
      {
        v55 = v52;
      }

      else
      {
        v55 = 2;
      }

      if (v9)
      {
        v54 = "update";
      }

      LODWORD(v149[0]) = 138412546;
      *(v149 + 4) = interfaceCopy;
      WORD6(v149[0]) = 2080;
      *(v149 + 14) = v54;
      LODWORD(v99) = 22;
      v56 = _os_log_send_and_compose_impl(v55, 0, &v133, 256, &_mh_execute_header, v50, v51, "QoS marking policy: %@: %s", v149, v99);
      __SC_log_send2();
      if (v56 != &v133)
      {
        free(v56);
      }

      v15 = v107;
      v48 = v104;
    }

    v57 = [(NSMutableDictionary *)self->_policySessions objectForKeyedSubscript:interfaceCopy];
    v49 = v109;
    if (!v57)
    {
      if (!(([v109 count] != 0) | v110 & 1))
      {
        v57 = 0;
        v72 = 1;
        goto LABEL_127;
      }

      createPolicySession = [(QoSMarkingController *)self createPolicySession];
      if (!createPolicySession)
      {
        v63 = sub_1000636BC();
        v73 = _SC_syslog_os_log_mapping();
        v100 = policyCopy;
        if (__SC_log_enabled())
        {
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          v135 = 0u;
          v136 = 0u;
          v133 = 0u;
          v134 = 0u;
          if (_sc_log <= 0)
          {
            v74 = 2;
          }

          else
          {
            v74 = 3;
          }

          if (os_log_type_enabled(v63, v73))
          {
            v75 = v74;
          }

          else
          {
            v75 = 2;
          }

          LODWORD(v149[0]) = 138412290;
          *(v149 + 4) = interfaceCopy;
          LODWORD(v99) = 12;
          v76 = _os_log_send_and_compose_impl(v75, 0, &v133, 256, &_mh_execute_header, v63, v73, "%@: failed to create policy session", v149, v99);
          __SC_log_send2();
          if (v76 != &v133)
          {
            free(v76);
          }

          v70 = 1;
          v57 = 0;
          v15 = v107;
          v48 = v104;
        }

        else
        {
          v57 = 0;
          v70 = 1;
        }

LABEL_126:
        v49 = v109;

        v72 = v70;
        policyCopy = v100;
LABEL_127:
        enabledAV = self->_enabledAV;
        if (v110)
        {
          if (![(NSMutableDictionary *)enabledAV count])
          {
            sub_100067124("net.qos.policy.restrict_avapps", 0);
          }

          [(NSMutableDictionary *)self->_enabledAV setObject:policyCopy forKeyedSubscript:interfaceCopy];
          if (v72)
          {
            goto LABEL_161;
          }

          v111 = v72;
          v102 = v57;
          v12 = v8;
          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v78 = qword_100081D20;
          v79 = [v78 countByEnumeratingWithState:&v120 objects:v119 count:16];
          if (v79)
          {
            v80 = v79;
            v81 = *v121;
            v82 = 1000;
            do
            {
              v83 = 0;
              v84 = v82;
              do
              {
                if (*v121 != v81)
                {
                  objc_enumerationMutation(v78);
                }

                v82 = (v84 + 1);
                [(QoSMarkingController *)self addAllowListAppIdentifierPolicy:interfaceCopy forApp:*(*(&v120 + 1) + 8 * v83) order:v84];
                v83 = v83 + 1;
                v84 = v82;
              }

              while (v80 != v83);
              v80 = [v78 countByEnumeratingWithState:&v120 objects:v119 count:16];
            }

            while (v80);
          }

          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v85 = qword_100081D28;
          v86 = [v85 countByEnumeratingWithState:&v115 objects:v114 count:16];
          if (v86)
          {
            v87 = v86;
            v88 = *v116;
            v89 = 1500;
            do
            {
              v90 = 0;
              v91 = v89;
              do
              {
                if (*v116 != v88)
                {
                  objc_enumerationMutation(v85);
                }

                v89 = (v91 + 1);
                [(QoSMarkingController *)self addAllowListPathPolicy:interfaceCopy forPath:*(*(&v115 + 1) + 8 * v90) order:v91];
                v90 = v90 + 1;
                v91 = v89;
              }

              while (v87 != v90);
              v87 = [v85 countByEnumeratingWithState:&v115 objects:v114 count:16];
            }

            while (v87);
          }

          v8 = v12;
          v72 = v111;
          LOBYTE(v12) = v113;
          v15 = v107;
          v57 = v102;
          v48 = v104;
          v49 = v109;
        }

        else
        {
          [(NSMutableDictionary *)enabledAV removeObjectForKey:interfaceCopy];
          if (![(NSMutableDictionary *)self->_enabledAV count])
          {
            sub_100067124("net.qos.policy.restrict_avapps", 1);
          }
        }

        if ((v72 & 1) == 0 && ([v57 apply] & 1) == 0)
        {
          v92 = sub_1000636BC();
          v93 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            v143 = 0u;
            v144 = 0u;
            v141 = 0u;
            v142 = 0u;
            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            if (_sc_log <= 0)
            {
              v94 = 2;
            }

            else
            {
              v94 = 3;
            }

            if (os_log_type_enabled(v92, v93))
            {
              v95 = v94;
            }

            else
            {
              v95 = 2;
            }

            LODWORD(v149[0]) = 138412290;
            *(v149 + 4) = interfaceCopy;
            LODWORD(v99) = 12;
            v96 = _os_log_send_and_compose_impl(v95, 0, &v133, 256, &_mh_execute_header, v92, v93, "%@: could not apply new policies", v149, v99);
            __SC_log_send2();
            if (v96 != &v133)
            {
              free(v96);
            }

            v15 = v107;
            v48 = v104;
          }

          v49 = v109;
        }

LABEL_161:

LABEL_162:
        goto LABEL_163;
      }

      v57 = createPolicySession;
      [(NSMutableDictionary *)self->_policySessions setObject:createPolicySession forKeyedSubscript:interfaceCopy];
    }

    if (([v57 removeAllPolicies] & 1) == 0)
    {
      v58 = sub_1000636BC();
      v59 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        if (_sc_log <= 0)
        {
          v60 = 2;
        }

        else
        {
          v60 = 3;
        }

        if (os_log_type_enabled(v58, v59))
        {
          v61 = v60;
        }

        else
        {
          v61 = 2;
        }

        LODWORD(v149[0]) = 138412290;
        *(v149 + 4) = interfaceCopy;
        LODWORD(v99) = 12;
        v62 = _os_log_send_and_compose_impl(v61, 0, &v133, 256, &_mh_execute_header, v58, v59, "%@: could not remove policies", v149, v99);
        __SC_log_send2();
        if (v62 != &v133)
        {
          free(v62);
        }

        v15 = v107;
        v48 = v104;
      }

      v49 = v109;
    }

    if (![v49 count])
    {
      v72 = 0;
      goto LABEL_127;
    }

    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v63 = v49;
    v64 = [v63 countByEnumeratingWithState:&v125 objects:v124 count:16];
    v100 = policyCopy;
    if (v64)
    {
      v65 = v64;
      v101 = v57;
      v12 = v8;
      v66 = *v126;
      v67 = 2000;
      do
      {
        v68 = 0;
        v69 = v67;
        do
        {
          if (*v126 != v66)
          {
            objc_enumerationMutation(v63);
          }

          v67 = (v69 + 1);
          [(QoSMarkingController *)self addAllowListAppIdentifierPolicy:interfaceCopy forApp:*(*(&v125 + 1) + 8 * v68) order:v69];
          v68 = v68 + 1;
          v69 = v67;
        }

        while (v65 != v68);
        v65 = [v63 countByEnumeratingWithState:&v125 objects:v124 count:16];
      }

      while (v65);
      v70 = 0;
      v8 = v12;
      LOBYTE(v12) = v113;
      v15 = v107;
      v57 = v101;
      v48 = v104;
    }

    else
    {
      v70 = 0;
    }

    goto LABEL_126;
  }

  v112 = v12;
  v108 = v11;
  if (v12)
  {

    v8 = 0;
  }

  else
  {
    if (!policyCopy && v8)
    {
      v16 = sub_1000636BC();
      v17 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v12 = v8;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        if (_sc_log <= 0)
        {
          v18 = 2;
        }

        else
        {
          v18 = 3;
        }

        if (os_log_type_enabled(v16, v17))
        {
          v19 = v18;
        }

        else
        {
          v19 = 2;
        }

        LODWORD(v149[0]) = 138412290;
        *(v149 + 4) = interfaceCopy;
        v20 = _os_log_send_and_compose_impl(v19, 0, &v133, 256, &_mh_execute_header, v16, v17, "QoS marking policy: %@: remove", v149, 12);
        __SC_log_send2();
        if (v20 != &v133)
        {
          free(v20);
        }

        v8 = v12;
        LODWORD(v12) = 0;
        v11 = v108;
      }
    }

    [(NSMutableDictionary *)self->_policySessions removeObjectForKey:interfaceCopy];
    [(NSMutableDictionary *)self->_enabled removeObjectForKey:interfaceCopy];
    [(NSMutableDictionary *)self->_enabledAV removeObjectForKey:interfaceCopy];
  }

  v21 = socket(2, 2, 0);
  if (v21 == -1)
  {
    v41 = sub_1000636BC();
    v42 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v106 = v8;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      if (_sc_log <= 0)
      {
        LODWORD(v43) = 2;
      }

      else
      {
        LODWORD(v43) = 3;
      }

      if (os_log_type_enabled(v41, v42))
      {
        v43 = v43;
      }

      else
      {
        v43 = 2;
      }

      v44 = v41;
      v45 = __error();
      v46 = strerror(*v45);
      LODWORD(v149[0]) = 136315138;
      *(v149 + 4) = v46;
      v47 = _os_log_send_and_compose_impl(v43, 0, &v133, 256, &_mh_execute_header, v44, v42, "socket() failed: %s", v149);

      __SC_log_send2();
      if (v47 != &v133)
      {
        free(v47);
      }

      v8 = v106;
      LODWORD(v12) = v112;
      v11 = v108;
    }

    v15 = 1;
    if (v12)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v22 = v21;
    v105 = v8;
    v23 = v12 | (policyCopy == 0);
    v24 = sub_1000636BC();
    v25 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      if (_sc_log <= 0)
      {
        v26 = 2;
      }

      else
      {
        v26 = 3;
      }

      v27 = os_log_type_enabled(v24, v25);
      v28 = "disable";
      if (v27)
      {
        v29 = v26;
      }

      else
      {
        v29 = 2;
      }

      if (v23)
      {
        v28 = "enable";
      }

      v30 = " (default)";
      LODWORD(v149[0]) = 138412802;
      *(v149 + 4) = interfaceCopy;
      *(v149 + 14) = v28;
      WORD6(v149[0]) = 2080;
      if (policyCopy)
      {
        v30 = "";
      }

      WORD3(v149[1]) = 2080;
      *(&v149[1] + 1) = v30;
      LODWORD(v99) = 32;
      v31 = _os_log_send_and_compose_impl(v29, 0, &v133, 256, &_mh_execute_header, v24, v25, "QoS marking policy: %@: %s%s", v149, v99);
      __SC_log_send2();
      if (v31 != &v133)
      {
        free(v31);
      }

      v11 = v108;
    }

    uTF8String = [(__CFString *)interfaceCopy UTF8String];
    memset(v149, 0, sizeof(v149));
    __strlcpy_chk();
    LODWORD(v149[1]) = v23;
    if (ioctl(v22, 0xC02069B5uLL, v149) == -1)
    {
      v33 = sub_1000636BC();
      v34 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v35 = _sc_log <= 0 ? 2 : 3;
        v36 = os_log_type_enabled(v33, v34) ? v35 : 2;
        v103 = v36;
        v37 = v33;
        v38 = __error();
        v39 = strerror(*v38);
        v129 = 136315394;
        v130 = uTF8String;
        v131 = 2080;
        v132 = v39;
        LODWORD(v99) = 22;
        v40 = _os_log_send_and_compose_impl(v103, 0, &v133, 256, &_mh_execute_header, v37, v34, "%s: ioctl(SIOCSQOSMARKINGENABLED) failed: %s", &v129, v99);

        __SC_log_send2();
        if (v40 != &v133)
        {
          free(v40);
        }
      }

      v11 = v108;
    }

    close(v22);
    v15 = 1;
    v8 = v105;
    LOBYTE(v12) = v112;
    if (v112)
    {
      goto LABEL_71;
    }
  }

LABEL_163:
  if ([(NSMutableDictionary *)self->_enabled count])
  {
    if (!v15)
    {
      goto LABEL_173;
    }
  }

  else
  {
    sub_100067124("net.qos.policy.restrict_avapps", 0);
    sub_100067124("net.qos.policy.restricted", 0);
    if (!v15)
    {
      goto LABEL_173;
    }
  }

  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, interfaceCopy, kSCEntNetQoSMarkingPolicy);
  v98 = v12 ^ 1;
  if (!policyCopy)
  {
    v98 = 1;
  }

  if (v98)
  {
    SCDynamicStoreRemoveValue(0, NetworkInterfaceEntity);
  }

  else
  {
    SCDynamicStoreSetValue(0, NetworkInterfaceEntity, policyCopy);
  }

  CFRelease(NetworkInterfaceEntity);
LABEL_173:
}

+ (id)sharedController
{
  if (qword_100081D40 != -1)
  {
    sub_100068460();
  }

  v2 = qword_100081D38;

  return v2;
}

- (void)setInterfaces:(id)interfaces
{
  interfacesCopy = interfaces;
  v6 = socket(2, 2, 0);
  if (v6 == -1)
  {
    v8 = sub_1000636BC();
    v24 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v25 = _sc_log <= 0 ? 2 : 3;
      v26 = os_log_type_enabled(&v8->super, v24) ? v25 : 2;
      v8 = v8;
      v27 = __error();
      v28 = strerror(*v27);
      LODWORD(v59) = 136315138;
      *(&v59 + 4) = v28;
      v29 = _os_log_send_and_compose_impl(v26, 0, &v43, 256, &_mh_execute_header, v8, v24, "socket() failed: %s", &v59);

      __SC_log_send2();
      if (v29 != &v43)
      {
        free(v29);
      }
    }
  }

  else
  {
    v7 = v6;
    selfCopy = self;
    v8 = self->_interfaces;
    objc_storeStrong(&self->_interfaces, interfaces);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v31 = interfacesCopy;
    obj = interfacesCopy;
    v9 = [obj countByEnumeratingWithState:&v35 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          uTF8String = [v13 UTF8String];
          v59 = 0u;
          v60 = 0u;
          __strlcpy_chk();
          if (ioctl(v7, 0xC020699FuLL, &v59) == -1)
          {
            v16 = sub_1000636BC();
            v17 = _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v18 = v8;
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              if (_sc_log <= 0)
              {
                LODWORD(v19) = 2;
              }

              else
              {
                LODWORD(v19) = 3;
              }

              v43 = 0uLL;
              v44 = 0uLL;
              if (os_log_type_enabled(v16, v17))
              {
                v19 = v19;
              }

              else
              {
                v19 = 2;
              }

              v20 = v16;
              v21 = __error();
              v22 = strerror(*v21);
              v39 = 136315394;
              v40 = uTF8String;
              v41 = 2080;
              v42 = v22;
              LODWORD(v30) = 22;
              v23 = _os_log_send_and_compose_impl(v19, 0, &v43, 256, &_mh_execute_header, v20, v17, "%s: ioctl(SIOCGIFTYPE) failed: %s", &v39, v30);

              __SC_log_send2();
              if (v23 != &v43)
              {
                free(v23);
              }

              v8 = v18;
            }
          }

          else if (*(&v60 + 4) == 0x300000002 && ![(NSArray *)v8 containsObject:v13])
          {
            v15 = [(NSMutableDictionary *)selfCopy->_requested objectForKeyedSubscript:v13];
            [(NSMutableDictionary *)selfCopy->_requested removeObjectForKey:v13];
            [(QoSMarkingController *)selfCopy setPolicy:v15 forInterface:v13];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v35 objects:v34 count:16];
      }

      while (v10);
    }

    close(v7);
    interfacesCopy = v31;
  }
}

- (void)setPolicy:(id)policy forInterface:(id)interface
{
  policyCopy = policy;
  interfaceCopy = interface;
  if (policyCopy)
  {
    if ([(NSArray *)self->_interfaces containsObject:interfaceCopy])
    {
      [(QoSMarkingController *)self updatePolicy:policyCopy forInterface:interfaceCopy];
    }

    [(NSMutableDictionary *)self->_requested setObject:policyCopy forKey:interfaceCopy, policyCopy];
  }

  else
  {
    [(QoSMarkingController *)self updatePolicy:0 forInterface:interfaceCopy];
    [(NSMutableDictionary *)self->_requested removeObjectForKey:interfaceCopy];
  }
}

- (void)setPolicySessions:(id)sessions
{
  p_policySessions = &self->_policySessions;

  objc_storeStrong(p_policySessions, sessions);
}

- (void)setRequested:(id)requested
{
  p_requested = &self->_requested;

  objc_storeStrong(p_requested, requested);
}

- (void)setEnabled:(id)enabled
{
  p_enabled = &self->_enabled;

  objc_storeStrong(p_enabled, enabled);
}

- (void)setEnabledAV:(id)v
{
  p_enabledAV = &self->_enabledAV;

  objc_storeStrong(p_enabledAV, v);
}

@end