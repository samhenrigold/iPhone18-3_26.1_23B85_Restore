@interface NRPairingClient
- (NSString)description;
- (void)dealloc;
- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock;
@end

@implementation NRPairingClient

- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock
{
  listenerCopy = listener;
  sessionCopy = session;
  configCopy = config;
  childConfigCopy = childConfig;
  blockCopy = block;
  responseBlockCopy = responseBlock;
  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    _NRLogWithArgs(qword_100228E70, 0, "%s%.30s:%-4d %@: Got config request for listener %@ session %@ sessionConfig %@ childConfig %@", ", "[NRPairingClient requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 1621, self, listenerCopy, sessionCopy, configCopy, childConfigCopy);
  }

  if ((self->_state & 0xFE) != 6)
  {
    v159 = sessionCopy;
    v160 = responseBlockCopy;
    localIdentifier = [configCopy localIdentifier];
    identifierType = [localIdentifier identifierType];

    if (identifierType == 11)
    {
      remoteIdentifier = [configCopy remoteIdentifier];
      identifierType2 = [remoteIdentifier identifierType];

      if (identifierType2 == 11)
      {
        selfCopy = self;
        v155 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
        localIdentifier2 = [configCopy localIdentifier];
        remoteIdentifier2 = [configCopy remoteIdentifier];
        v26 = [localIdentifier2 isEqual:remoteIdentifier2];

        v156 = blockCopy;
        v153 = v26;
        v154 = listenerCopy;
        if (v26)
        {
          goto LABEL_29;
        }

        localIdentifier3 = [configCopy localIdentifier];
        if (qword_1002292E8 != -1)
        {
          dispatch_once(&qword_1002292E8, &stru_1001FC558);
        }

        v28 = selfCopy;
        v29 = qword_1002292E0;
        if (([localIdentifier3 isEqual:v29] & 1) == 0)
        {
          localIdentifier4 = [configCopy localIdentifier];
          if (qword_1002292F8 != -1)
          {
            dispatch_once(&qword_1002292F8, &stru_1001FC578);
          }

          v31 = qword_1002292F0;
          if (([localIdentifier4 isEqual:v31] & 1) == 0)
          {
            localIdentifier5 = [configCopy localIdentifier];
            v148 = localIdentifier4;
            v86 = sub_100145B5C();
            v151 = [localIdentifier5 isEqual:v86];

            v28 = selfCopy;
            if ((v151 & 1) == 0)
            {
              sessionCopy = v159;
              if (qword_100228E78 != -1)
              {
                dispatch_once(&qword_100228E78, &stru_1001FA0E8);
              }

              listenerCopy = v154;
              v45 = v155;
              blockCopy = v156;
              responseBlockCopy = v160;
              if (!_NRLogIsLevelEnabled())
              {
                goto LABEL_126;
              }

              v87 = sub_10000A838();
              localIdentifier6 = [configCopy localIdentifier];
              remoteIdentifier3 = [configCopy remoteIdentifier];
              _NRLogWithArgs(v87, 16, "%s%.30s:%-4d %@: Local identifier %@ does not match remote identifier %@", ", "[NRPairingClient requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 1646, selfCopy, localIdentifier6, remoteIdentifier3);

              sessionCopy = v159;
              blockCopy = v156;

              goto LABEL_125;
            }

LABEL_19:
            remoteIdentifier4 = [configCopy remoteIdentifier];
            localIdentifier7 = [configCopy localIdentifier];
            v34 = sub_1001646B4(NRDLocalDevice, remoteIdentifier4, localIdentifier7, v159);

            if (v34)
            {
              if (qword_100228E78 != -1)
              {
                dispatch_once(&qword_100228E78, &stru_1001FA0E8);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_100228E78 != -1)
                {
                  dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                }

                v35 = qword_100228E70;
                v36 = v34->_identity;
                _NRLogWithArgs(v35, 1, "%s%.30s:%-4d %@: Decrypted device identity %@", ", "[NRPairingClient requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 1658, v28, v36);
              }

              v37 = v34->_nrUUID;

              if (v37)
              {
                v38 = v34->_nrUUID;
                v39 = [(NSUUID *)v38 isEqual:v28->_nrUUID];

                if (v39)
                {

LABEL_29:
                  localIdentifier8 = [configCopy localIdentifier];
                  if (qword_100229328 != -1)
                  {
                    dispatch_once(&qword_100229328, &stru_1001FC5D8);
                  }

                  v41 = selfCopy;
                  v42 = qword_100229320;
                  v43 = [localIdentifier8 isEqual:v42];

                  if (v43)
                  {
                    sub_10000A944(selfCopy, &selfCopy->_ikeSessionPairing);
                    objc_storeStrong(&selfCopy->_ikeSessionPairing, session);
                    sub_10000AAB8(selfCopy);
                    v44 = [[NEIKEv2AuthenticationProtocol alloc] initWithMethod:2];
                    if (qword_100229328 != -1)
                    {
                      dispatch_once(&qword_100229328, &stru_1001FC5D8);
                    }

                    v45 = v155;
                    v46 = qword_100229320;
                    v47 = sub_1001472F0(0, v46, v44);

                    if (v155)
                    {
                      v48 = *(v155 + 176);
                      if (v48)
                      {
                        v48 = v48[2];
                      }

                      v49 = v48;
                    }

                    else
                    {
                      v49 = 0;
                    }

                    [v47 setSharedSecret:v49];

                    sharedSecret = [v47 sharedSecret];

                    if (sharedSecret)
                    {
                      if (v47)
                      {
                        if (qword_100228E78 != -1)
                        {
                          dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                        }

                        if (_NRLogIsLevelEnabled())
                        {
                          v51 = sub_10000A838();
                          _NRLogWithArgs(v51, 0, "%s%.30s:%-4d %@: Receiving session for pairing with OOBK", ", "[NRPairingClient requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 1697, selfCopy);
                        }

                        nrUUID = selfCopy->_nrUUID;
                        v161[0] = _NSConcreteStackBlock;
                        v161[1] = 3221225472;
                        v161[2] = sub_10000B048;
                        v161[3] = &unk_1001FB178;
                        v161[4] = selfCopy;
                        v162 = v47;
                        v163 = childConfigCopy;
                        v164 = v160;
                        v53 = v47;
                        responseBlockCopy = v160;
                        sub_10016D738(NRDLocalDevice, nrUUID, 1, 0, v161);

                        goto LABEL_89;
                      }

                      responseBlockCopy = v160;
                      v160[2](v160, 0, 0, 0);
                    }

                    else
                    {
                      v122 = sub_10000A838();
                      IsLevelEnabled = _NRLogIsLevelEnabled();

                      responseBlockCopy = v160;
                      if (IsLevelEnabled)
                      {
                        v124 = sub_10000A838();
                        _NRLogWithArgs(v124, 17, "%@: Missing out of band key", selfCopy);

                        responseBlockCopy = v160;
                      }
                    }

LABEL_89:
                    listenerCopy = v154;
                    sessionCopy = v159;
                    blockCopy = v156;
LABEL_126:

                    goto LABEL_127;
                  }

                  localIdentifier9 = [configCopy localIdentifier];
                  if (qword_1002292E8 != -1)
                  {
                    dispatch_once(&qword_1002292E8, &stru_1001FC558);
                  }

                  v57 = qword_1002292E0;
                  if (([localIdentifier9 isEqual:v57] & 1) == 0)
                  {
                    localIdentifier10 = [configCopy localIdentifier];
                    if (qword_1002292F8 != -1)
                    {
                      dispatch_once(&qword_1002292F8, &stru_1001FC578);
                    }

                    v59 = qword_1002292F0;
                    if (([localIdentifier10 isEqual:v59] & 1) == 0)
                    {
                      localIdentifier11 = [configCopy localIdentifier];
                      v91 = sub_100145B5C();
                      v152 = [localIdentifier11 isEqual:v91];

                      if ((v152 & 1) == 0)
                      {
                        v92 = sub_10000A838();
                        v93 = _NRLogIsLevelEnabled();

                        listenerCopy = v154;
                        sessionCopy = v159;
                        if (v93)
                        {
                          v94 = sub_10000A838();
                          localIdentifier12 = [configCopy localIdentifier];
                          _NRLogWithArgs(v94, 16, "%s%.30s:%-4d %@: Unrecognized IKEv2 identifier %@", ", "[NRPairingClient requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 1777, selfCopy, localIdentifier12);
                        }

                        responseBlockCopy = v160;
                        v160[2](v160, 0, 0, 0);
                        blockCopy = v156;
                        v45 = v155;
                        goto LABEL_126;
                      }

LABEL_66:
                      localIdentifier13 = [configCopy localIdentifier];
                      if (qword_1002292F8 != -1)
                      {
                        dispatch_once(&qword_1002292F8, &stru_1001FC578);
                      }

                      v61 = qword_1002292F0;
                      v62 = [localIdentifier13 isEqual:v61];

                      if (v62)
                      {
                        v63 = 3;
                      }

                      else
                      {
                        localIdentifier14 = [configCopy localIdentifier];
                        if (qword_100229308 != -1)
                        {
                          dispatch_once(&qword_100229308, &stru_1001FC598);
                        }

                        v65 = qword_100229300;
                        v66 = [localIdentifier14 isEqual:v65];

                        if (v66)
                        {
                          v63 = 1;
                        }

                        else
                        {
                          v63 = 4;
                        }
                      }

                      blockCopy = v156;
                      sessionCopy = v159;
                      v67 = v159;
                      v68 = v156;
                      if ((selfCopy->_state & 0xFE) == 6)
                      {
                        v69 = 0;
                        v45 = v155;
LABEL_113:

                        if (childConfigCopy)
                        {
                          v117 = *(v41 + 40);
                          if (v117 && (v118 = v117[11], v117, v118 == 1))
                          {
                            v119 = sub_100146D34(1, 1);
                          }

                          else
                          {
                            v119 = sub_1001472AC();
                          }

                          v120 = v119;
                        }

                        else
                        {
                          v120 = 0;
                        }

                        v121 = v153;
                        if (!v69)
                        {
                          v121 = 1;
                        }

                        if ((v121 & 1) == 0)
                        {
                          sub_100171DA0(NRDLocalDevice, *(v41 + 24));
                        }

                        (v160[2])();

                        listenerCopy = v154;
                        goto LABEL_125;
                      }

                      if (!v67)
                      {
                        v139 = sub_10000A838();
                        v140 = _NRLogIsLevelEnabled();

                        if (v140)
                        {
                          v141 = sub_10000A838();
                          _NRLogWithArgs(v141, 17, "%s called with null session", "[NRPairingClient respondToIKESession:dataProtectionClass:validateAuthBlock:]");
                        }

                        v69 = 0;
                        v41 = selfCopy;
                        sessionCopy = v159;
                        blockCopy = v156;
                        v45 = v155;
                        goto LABEL_113;
                      }

                      String = NRDataProtectionClassCreateString();
                      v158 = sub_100163A30(NRDLocalDevice, selfCopy->_nrUUID);
                      v71 = sub_100164D70(v158, v63);
                      v145 = String;
                      v146 = v71;
                      if (v71)
                      {
                        v72 = *(v71 + 1);
                      }

                      else
                      {
                        v72 = 0;
                      }

                      v73 = v72;

                      v147 = v68;
                      v150 = v67;
                      if (!v73)
                      {
                        v96 = v158;
                        v97 = v145;
                        sub_10000A88C(v41, 3019, @"%@ %@ %@", v74, v75, v76, v77, v78, v145);
                        v69 = 0;
                        v45 = v155;
LABEL_112:

                        v68 = v147;
                        v67 = v150;
                        goto LABEL_113;
                      }

                      v79 = *(v41 + 40);
                      if (!v79)
                      {
                        v149 = 0;
                        v82 = 0;
                        v80 = v158;
LABEL_105:
                        v143 = sub_100147400(0, v80, v63);
                        v144 = v82;
                        if (v82 && v149)
                        {
                          v100 = [NEIKEv2ConfigurationMessage alloc];
                          v142 = [[NEIKEv2InitiatorTransportIPv6Address alloc] initWithAddress:v149];
                          v165[0] = v142;
                          v101 = [[NEIKEv2ResponderTransportIPv6Address alloc] initWithAddress:v144];
                          v165[1] = v101;
                          v102 = [NSArray arrayWithObjects:v165 count:2];
                          v103 = [v100 initWithWithAttributes:v102];
                          [v143 setConfigurationReply:v103];

                          blockCopy = v156;
                        }

                        v104 = sub_10000B384(v41, 1);
                        [v143 setCustomIKEAuthPrivateNotifies:v104];
                        v97 = v145;
                        if ((*(v68 + 2))(v68, v143))
                        {
                          sub_10000BA30(v41, v63);
                          sub_10000A944(v41, v110);
                          sub_10000BA30(v41, v63);
                          objc_storeStrong(v111, session);
                          sub_10000BBA4(v41, v63);
                          sub_10000A88C(v41, 3016, @"%@ %@", v112, v113, v114, v115, v116, v145);
                          v69 = v143;
                        }

                        else
                        {
                          sub_10000A88C(v41, 3021, @"%@ %@", v105, v106, v107, v108, v109, v145);
                          v69 = 0;
                        }

                        v45 = v155;

                        v96 = v158;
                        sessionCopy = v159;
                        goto LABEL_112;
                      }

                      v80 = v158;
                      if (*(v79 + 11) == 1)
                      {
                        if (v63 == 3)
                        {
                          if (v158)
                          {
                            v98 = sub_100003490();
                            dispatch_assert_queue_V2(v98);

                            v82 = sub_1001679E0(v158, @"0");
                            v99 = sub_100003490();
                            dispatch_assert_queue_V2(v99);

                            v84 = sub_100167B9C(v158, @"0");
                            goto LABEL_103;
                          }

LABEL_145:
                          v149 = 0;
                          v82 = 0;
                          goto LABEL_104;
                        }

                        if (v63 == 4)
                        {
                          if (v158)
                          {
                            v81 = sub_100003490();
                            dispatch_assert_queue_V2(v81);

                            v82 = sub_1001672A0(v158, @"0");
                            v83 = sub_100003490();
                            dispatch_assert_queue_V2(v83);

                            v84 = sub_1001677D0(v158, @"0");
LABEL_103:
                            v149 = v84;
LABEL_104:
                            blockCopy = v156;
                            goto LABEL_105;
                          }

                          goto LABEL_145;
                        }
                      }

                      v149 = 0;
                      v82 = 0;
                      goto LABEL_105;
                    }
                  }

                  goto LABEL_66;
                }

                v136 = sub_10000A838();
                v137 = _NRLogIsLevelEnabled();

                v28 = selfCopy;
                if (v137)
                {
                  v132 = sub_10000A838();
                  v135 = v34->_identity;
                  v138 = v34->_nrUUID;
                  _NRLogWithArgs(v132, 16, "%s%.30s:%-4d %@: Different device found for identity %@ (%@ != %@)", ", "[NRPairingClient requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 1669, selfCopy, v135, v138, selfCopy->_nrUUID);

                  goto LABEL_136;
                }
              }

              else
              {
                v133 = sub_10000A838();
                v134 = _NRLogIsLevelEnabled();

                if (v134)
                {
                  v132 = sub_10000A838();
                  v135 = v34->_identity;
                  _NRLogWithArgs(v132, 16, "%s%.30s:%-4d %@: No device found for identity %@", ", "[NRPairingClient requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 1662, v28, v135);
LABEL_136:

                  goto LABEL_137;
                }
              }
            }

            else
            {
              v125 = sub_10000A838();
              v126 = _NRLogIsLevelEnabled();

              if (v126)
              {
                v132 = sub_10000A838();
                _NRLogWithArgs(v132, 16, "%s%.30s:%-4d %@: Failed to decrypt device identity", ", "[NRPairingClient requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 1654, v28);
LABEL_137:

                v28 = selfCopy;
              }
            }

            v45 = v155;
            sub_10000A88C(v28, 3023, @"%@ %@", v127, v128, v129, v130, v131, v159);

            sessionCopy = v159;
            listenerCopy = v154;
            blockCopy = v156;
LABEL_125:
            responseBlockCopy = v160;
            goto LABEL_126;
          }
        }

        goto LABEL_19;
      }

      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      sessionCopy = v159;
      responseBlockCopy = v160;
      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E78 != -1)
        {
          dispatch_once(&qword_100228E78, &stru_1001FA0E8);
        }

        v54 = qword_100228E70;
        remoteIdentifier5 = [configCopy remoteIdentifier];
        _NRLogWithArgs(v54, 16, "%s%.30s:%-4d %@: Remote identifier has wrong type %zu", ", "-[NRPairingClient requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 1634, self, [remoteIdentifier5 identifierType]);
LABEL_57:

        sessionCopy = v159;
        responseBlockCopy = v160;
      }
    }

    else
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      sessionCopy = v159;
      responseBlockCopy = v160;
      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E78 != -1)
        {
          dispatch_once(&qword_100228E78, &stru_1001FA0E8);
        }

        v54 = qword_100228E70;
        remoteIdentifier5 = [configCopy localIdentifier];
        _NRLogWithArgs(v54, 16, "%s%.30s:%-4d %@: Local identifier has wrong type %zu", ", "-[NRPairingClient requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 1630, self, [remoteIdentifier5 identifierType]);
        goto LABEL_57;
      }
    }
  }

LABEL_127:
}

- (NSString)description
{
  v3 = objc_alloc_init(NSMutableString);
  identifier = self->_identifier;
  if (self->_state - 1 > 6)
  {
    v5 = @"Invalid";
  }

  else
  {
    v5 = *(&off_1001FA148 + (self->_state - 1));
  }

  nrUUID = self->_nrUUID;
  v6 = v3;
  [v3 appendFormat:@"NRPairingClient[%llu, %@, %@]", identifier, v5, nrUUID];

  return v6;
}

- (void)dealloc
{
  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    _NRLogWithArgs(qword_100228E70, 0, "%s%.30s:%-4d %@: Dealloc", ", "[NRPairingClient dealloc]"", 137, self);
  }

  sub_10000CCF0(self);
  v3.receiver = self;
  v3.super_class = NRPairingClient;
  [(NRPairingClient *)&v3 dealloc];
}

@end