@interface NRIKEv2Listener
- (NRIKEv2Listener)init;
- (NSString)description;
- (void)listener:(id)listener receivedNewSession:(id)session;
- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock;
@end

@implementation NRIKEv2Listener

- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock
{
  listenerCopy = listener;
  sessionCopy = session;
  configCopy = config;
  childConfigCopy = childConfig;
  blockCopy = block;
  responseBlockCopy = responseBlock;
  v18 = responseBlockCopy;
  if (!listenerCopy)
  {
    v109 = sub_100014820();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v111 = sub_100014820();
      _NRLogWithArgs(v111, 17, "%s called with null listener", "[NRIKEv2Listener requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]");
    }

    v19 = sessionCopy;
    goto LABEL_12;
  }

  v19 = sessionCopy;
  if (!sessionCopy)
  {
    v112 = sub_100014820();
    v113 = _NRLogIsLevelEnabled();

    if (v113)
    {
      v114 = sub_100014820();
      _NRLogWithArgs(v114, 17, "%s called with null session", "[NRIKEv2Listener requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]");
    }

    goto LABEL_12;
  }

  if (!responseBlockCopy)
  {
    v115 = sub_100014820();
    v116 = _NRLogIsLevelEnabled();

    if (v116)
    {
      v117 = sub_100014820();
      _NRLogWithArgs(v117, 17, "%s called with null responseBlock", "[NRIKEv2Listener requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]");
    }

    v18 = 0;
    goto LABEL_12;
  }

  if (self->_ikeListener != listenerCopy)
  {
    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      _NRLogWithArgs(qword_100228E90, 0, "%s%.30s:%-4d %@: Ignoring received session for a stale listener %p != %p", ", "[NRIKEv2Listener requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 624, self, self->_ikeListener, listenerCopy);
    }

    goto LABEL_11;
  }

  localIdentifier = [configCopy localIdentifier];
  identifierType = [localIdentifier identifierType];

  if (identifierType != 11)
  {
    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_11;
    }

    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    v45 = qword_100228E90;
    localIdentifier2 = [configCopy localIdentifier];
    _NRLogWithArgs(v45, 16, "%s%.30s:%-4d %@: Local identifier has wrong type %zu", ", "-[NRIKEv2Listener requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 629, self, [localIdentifier2 identifierType]);
LABEL_46:

    goto LABEL_11;
  }

  remoteIdentifier = [configCopy remoteIdentifier];
  identifierType2 = [remoteIdentifier identifierType];

  if (identifierType2 != 11)
  {
    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_11;
    }

    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    v45 = qword_100228E90;
    localIdentifier2 = [configCopy remoteIdentifier];
    _NRLogWithArgs(v45, 16, "%s%.30s:%-4d %@: Remote identifier has wrong type %zu", ", "-[NRIKEv2Listener requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 632, self, [localIdentifier2 identifierType]);
    goto LABEL_46;
  }

  localIdentifier3 = [configCopy localIdentifier];
  selfCopy = self;
  v133 = v18;
  if (qword_100229328 != -1)
  {
    dispatch_once(&qword_100229328, &stru_1001FC5D8);
  }

  v25 = qword_100229320;
  if (([localIdentifier3 isEqual:v25] & 1) == 0)
  {

    goto LABEL_48;
  }

  remoteIdentifier2 = [configCopy remoteIdentifier];
  if (qword_100229328 != -1)
  {
    dispatch_once(&qword_100229328, &stru_1001FC5D8);
  }

  v27 = qword_100229320;
  v28 = [remoteIdentifier2 isEqual:v27];

  if (!v28)
  {
LABEL_48:
    localIdentifier4 = [configCopy localIdentifier];
    if (qword_100229338 != -1)
    {
      dispatch_once(&qword_100229338, &stru_1001FC5F8);
    }

    v48 = qword_100229330;
    v129 = sessionCopy;
    if ([localIdentifier4 isEqual:v48])
    {
      goto LABEL_57;
    }

    v132 = configCopy;
    localIdentifier5 = [configCopy localIdentifier];
    if (qword_100229358 != -1)
    {
      dispatch_once(&qword_100229358, &stru_1001FC638);
    }

    v50 = qword_100229350;
    if ([localIdentifier5 isEqual:v50])
    {
LABEL_56:

      configCopy = v132;
LABEL_57:

      goto LABEL_58;
    }

    localIdentifier6 = [v132 localIdentifier];
    v52 = sub_100145D78();
    if ([localIdentifier6 isEqual:v52])
    {

      goto LABEL_56;
    }

    localIdentifier7 = [v132 localIdentifier];
    v55 = sub_100145EB0();
    v56 = [localIdentifier7 isEqual:v55];

    configCopy = v132;
    if (v56)
    {
LABEL_58:
      pairingManager = selfCopy->_pairingManager;
      v19 = v129;
      v18 = v133;
      if (pairingManager)
      {
        [(NRDevicePairingManagerContext *)pairingManager requestConfigurationForListener:listenerCopy session:v129 sessionConfig:configCopy childConfig:childConfigCopy validateAuthBlock:blockCopy responseBlock:v133];
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    localIdentifier8 = [v132 localIdentifier];
    remoteIdentifier3 = [v132 remoteIdentifier];
    v59 = [localIdentifier8 isEqual:remoteIdentifier3];

    v139 = v59;
    if (v59)
    {
      v143 = 0u;
      v144 = 0u;
      v145 = 0u;
      v146 = 0u;
      v60 = sub_10016C8BC(NRDLocalDevice);
      v61 = [(NRDDecryptedIdentifier *)v60 countByEnumeratingWithState:&v143 objects:v151 count:16];
      v19 = v129;
      if (v61)
      {
        v62 = *v144;
LABEL_67:
        v63 = 0;
        while (1)
        {
          if (*v144 != v62)
          {
            objc_enumerationMutation(v60);
          }

          v64 = *(*(&v143 + 1) + 8 * v63);
          v65 = sub_100163A30(NRDLocalDevice, v64);
          v66 = v65;
          if ((!v65 || (v65[49] & 2) == 0) && sub_10013FF60(v65) == 1)
          {
            break;
          }

          if (v61 == ++v63)
          {
            v61 = [(NRDDecryptedIdentifier *)v60 countByEnumeratingWithState:&v143 objects:v151 count:16];
            if (!v61)
            {
              goto LABEL_79;
            }

            goto LABEL_67;
          }
        }

        v61 = v64;
        if (qword_100228E98 != -1)
        {
          dispatch_once(&qword_100228E98, &stru_1001FA1F0);
        }

        if (_NRLogIsLevelEnabled())
        {
          v67 = sub_100014820();
          _NRLogWithArgs(v67, 1, "%s%.30s:%-4d %@: No encrypted identity included by initiator, trying %@", ", "[NRIKEv2Listener requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 704, selfCopy, v61);
        }
      }

LABEL_79:

LABEL_85:
      v18 = v133;
      if (v61)
      {
        v81 = sub_100163B2C(NRDLocalDevice, v61, 0);
        v82 = v81;
        if (!v81 || (*(v81 + 48) & 2) == 0)
        {
          v83 = sub_100014820();
          v84 = _NRLogIsLevelEnabled();

          if (v84)
          {
            v85 = sub_100014820();
            _NRLogWithArgs(v85, 1, "%s%.30s:%-4d %@: Device not enabled, rejecting %@", ", "[NRIKEv2Listener requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 717, selfCopy, v82);
          }

          configCopy = v132;
          goto LABEL_11;
        }

        v86 = v133;
        ikeInterfaceName = [v19 ikeInterfaceName];
        localEndpoint = [v19 localEndpoint];
        v89 = sub_100014934(selfCopy, ikeInterfaceName, localEndpoint, v61);

        v90 = sub_100014820();
        LODWORD(localEndpoint) = _NRLogIsLevelEnabled();

        if (localEndpoint)
        {
          v91 = sub_100014820();
          v92 = v91;
          if (selfCopy)
          {
            links = selfCopy->_links;
          }

          else
          {
            links = 0;
          }

          _NRLogWithArgs(v91, 1, "%s%.30s:%-4d %@: Got config request for %@ session %@ registered links %@ sessionConfig %@ childConfig %@ ", ", "[NRIKEv2Listener requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 725, selfCopy, v89, v19, links, v132, childConfigCopy);
        }

        if (v89)
        {
          if (selfCopy)
          {
            v94 = selfCopy->_links;
          }

          else
          {
            v94 = 0;
          }

          v95 = [(NSMutableDictionary *)v94 objectForKeyedSubscript:v89];
          v96 = v95;
          if (v95)
          {
            v97 = *(v95 + 24);
            if (v97)
            {
              v98 = v97;
              state = [v96[3] state];

              if (state != 255)
              {
                v100 = v96[3];
                if (v100)
                {
                  v101 = v100;
                  v102 = v96;
LABEL_111:
                  if (v139)
                  {
                    v108 = v133;
                  }

                  else
                  {
                    v140[0] = _NSConcreteStackBlock;
                    v140[1] = 3221225472;
                    v140[2] = sub_100014FE4;
                    v140[3] = &unk_1001FA1D0;
                    v142 = v133;
                    v141 = v61;
                    v108 = objc_retainBlock(v140);
                  }

                  v86 = v108;
                  [v101 requestConfigurationForListener:listenerCopy session:v19 sessionConfig:v132 childConfig:childConfigCopy validateAuthBlock:blockCopy responseBlock:v108];

                  goto LABEL_127;
                }
              }
            }
          }

          if (selfCopy)
          {
            pairingClients = selfCopy->_pairingClients;
          }

          else
          {
            pairingClients = 0;
          }

          v102 = [(NSMutableDictionary *)pairingClients objectForKeyedSubscript:v89];

          if (v102)
          {
            v104 = v102[4];
            if (v104)
            {
              v105 = v102[4];
              if (v105)
              {
                v106 = v105[8];

                if (v106 == 6)
                {
                  goto LABEL_113;
                }
              }

              else
              {
              }

              v107 = v102[4];
              if (v107)
              {
                v101 = v107;
                goto LABEL_111;
              }
            }
          }

LABEL_113:
          sub_100014ABC(&selfCopy->super.isa, v19, v132, childConfigCopy, blockCopy, v133, v89);
LABEL_127:

          configCopy = v132;
          v18 = v86;
          goto LABEL_12;
        }

        configCopy = v132;
        v18 = v133;
      }

      else
      {
        sub_100014874(selfCopy, 3022, v75, v76, v77, v78, v79, v80, v19);
        configCopy = v132;
      }

LABEL_11:
      v18[2](v18, 0, 0, 0);
      goto LABEL_12;
    }

    remoteIdentifier4 = [v132 remoteIdentifier];
    localIdentifier9 = [v132 localIdentifier];
    v19 = v129;
    v60 = sub_1001646B4(NRDLocalDevice, remoteIdentifier4, localIdentifier9, v129);

    v70 = sub_100014820();
    if (v60)
    {
      v71 = _NRLogIsLevelEnabled();

      if (v71)
      {
        v72 = sub_100014820();
        v73 = v60->_identity;
        _NRLogWithArgs(v72, 1, "%s%.30s:%-4d %@: Decrypted device identity %@", ", "[NRIKEv2Listener requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 687, selfCopy, v73);
      }

      v74 = v60->_nrUUID;

      if (v74)
      {
        v61 = v60->_nrUUID;
        goto LABEL_85;
      }

      v126 = sub_100014820();
      v127 = _NRLogIsLevelEnabled();

      if (v127)
      {
        v125 = sub_100014820();
        v128 = v60->_identity;
        _NRLogWithArgs(v125, 16, "%s%.30s:%-4d %@: No device found for identity %@", ", "[NRIKEv2Listener requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 691, selfCopy, v128);

        goto LABEL_133;
      }
    }

    else
    {
      v118 = _NRLogIsLevelEnabled();

      if (v118)
      {
        v125 = sub_100014820();
        _NRLogWithArgs(v125, 16, "%s%.30s:%-4d %@: Failed to decrypt device identity", ", "[NRIKEv2Listener requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 683, selfCopy);
LABEL_133:
      }
    }

    v19 = v129;
    sub_100014874(selfCopy, 3023, v119, v120, v121, v122, v123, v124, v129);

LABEL_135:
    configCopy = v132;
    v18 = v133;
    goto LABEL_11;
  }

  v131 = listenerCopy;
  v132 = configCopy;
  localEndpoint2 = [sessionCopy localEndpoint];
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v29 = selfCopy;
  v30 = selfCopy->_pairingClients;
  v31 = [(NSMutableDictionary *)v30 countByEnumeratingWithState:&v147 objects:v152 count:16];
  if (!v31)
  {

    goto LABEL_135;
  }

  v32 = v31;
  v130 = 0;
  v33 = *v148;
  do
  {
    v34 = 0;
    v138 = v32;
    do
    {
      if (*v148 != v33)
      {
        objc_enumerationMutation(v30);
      }

      v35 = [(NSMutableDictionary *)v29->_pairingClients objectForKeyedSubscript:*(*(&v147 + 1) + 8 * v34)];
      v36 = v35;
      if (v35 && *(v35 + 32))
      {
        v37 = *(v35 + 8);
        ikeInterfaceName2 = [v19 ikeInterfaceName];
        if ([v37 isEqualToString:ikeInterfaceName2])
        {
          [v36[2] hostname];
          v39 = v33;
          v41 = v40 = v30;
          [localEndpoint2 hostname];
          v43 = v42 = v19;
          v44 = [v41 isEqualToString:v43];

          v19 = v42;
          v29 = selfCopy;

          v30 = v40;
          v33 = v39;
          v32 = v138;

          if (v44)
          {
            [v36[4] requestConfigurationForListener:v131 session:v19 sessionConfig:v132 childConfig:childConfigCopy validateAuthBlock:blockCopy responseBlock:v133];
            v130 = 1;
          }
        }

        else
        {
        }
      }

      v34 = v34 + 1;
    }

    while (v32 != v34);
    v32 = [(NSMutableDictionary *)v30 countByEnumeratingWithState:&v147 objects:v152 count:16];
  }

  while (v32);

  listenerCopy = v131;
  configCopy = v132;
  v18 = v133;
  if ((v130 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (void)listener:(id)listener receivedNewSession:(id)session
{
  listenerCopy = listener;
  sessionCopy = session;
  if (!listenerCopy)
  {
    v7 = sub_100014820();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_9;
    }

    v9 = sub_100014820();
    _NRLogWithArgs(v9, 17, "%s called with null listener");
LABEL_16:

    goto LABEL_9;
  }

  if (!sessionCopy)
  {
    v10 = sub_100014820();
    v11 = _NRLogIsLevelEnabled();

    if (!v11)
    {
      goto LABEL_9;
    }

    v9 = sub_100014820();
    _NRLogWithArgs(v9, 17, "%s called with null session");
    goto LABEL_16;
  }

  if (qword_100228E98 != -1)
  {
    dispatch_once(&qword_100228E98, &stru_1001FA1F0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    _NRLogWithArgs(qword_100228E90, 0, "%s%.30s:%-4d %@: Received new session: %@", ", "[NRIKEv2Listener listener:receivedNewSession:]"", 607, self, sessionCopy);
  }

LABEL_9:
}

- (NRIKEv2Listener)init
{
  v14.receiver = self;
  v14.super_class = NRIKEv2Listener;
  v2 = [(NRIKEv2Listener *)&v14 init];
  if (!v2)
  {
    v7 = sub_100014820();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_100014820();
      _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRIKEv2Listener init]"", 129);
    }

    v10 = _os_log_pack_size();
    v11 = __error();
    v12 = _os_log_pack_fill(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, *v11, &_mh_execute_header, "%{public}s [super init] failed");
    *v12 = 136446210;
    *(v12 + 4) = "[NRIKEv2Listener init]";
    sub_100014820();
    _NRLogAbortWithPack();
  }

  v3 = v2;
  v4 = sub_100003490();
  queue = v3->_queue;
  v3->_queue = v4;

  return v3;
}

- (NSString)description
{
  if (self)
  {
    self = [[NSString alloc] initWithFormat:@"NRIKEv2Listener[%@]", @"62743"];
    v2 = vars8;
  }

  return self;
}

@end