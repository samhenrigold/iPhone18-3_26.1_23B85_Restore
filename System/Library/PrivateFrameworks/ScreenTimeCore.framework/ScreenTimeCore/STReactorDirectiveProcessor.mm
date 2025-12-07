@interface STReactorDirectiveProcessor
- (STReactorDirectiveProcessor)initWithQueue:(id)queue transportEnvoy:(id)envoy transportEnvoyQueue:(id)envoyQueue configurationStore:(id)store deviceStateStore:(id)stateStore biomeEventWriter:(id)writer backgroundActivityScheduler:(id)scheduler familyProvider:(id)self0 eyeReliefStateWriter:(id)self1 userSafetyPolicyWriter:(id)self2 transportPrimitives:(id)self3;
- (id)_sendRepairConfigurationChangeRelatedToChange:(id)change;
- (id)processDirective:(id)directive;
@end

@implementation STReactorDirectiveProcessor

- (STReactorDirectiveProcessor)initWithQueue:(id)queue transportEnvoy:(id)envoy transportEnvoyQueue:(id)envoyQueue configurationStore:(id)store deviceStateStore:(id)stateStore biomeEventWriter:(id)writer backgroundActivityScheduler:(id)scheduler familyProvider:(id)self0 eyeReliefStateWriter:(id)self1 userSafetyPolicyWriter:(id)self2 transportPrimitives:(id)self3
{
  queueCopy = queue;
  envoyCopy = envoy;
  envoyQueueCopy = envoyQueue;
  storeCopy = store;
  stateStoreCopy = stateStore;
  writerCopy = writer;
  schedulerCopy = scheduler;
  providerCopy = provider;
  stateWriterCopy = stateWriter;
  policyWriterCopy = policyWriter;
  primitivesCopy = primitives;
  processingQueue = self->_processingQueue;
  self->_processingQueue = queueCopy;
  v51 = queueCopy;

  transportEnvoy = self->_transportEnvoy;
  self->_transportEnvoy = envoyCopy;
  v50 = envoyCopy;

  transportEnvoyQueue = self->_transportEnvoyQueue;
  self->_transportEnvoyQueue = envoyQueueCopy;
  v30 = envoyQueueCopy;

  configurationStore = self->_configurationStore;
  self->_configurationStore = storeCopy;
  v32 = storeCopy;

  deviceStateStore = self->_deviceStateStore;
  self->_deviceStateStore = stateStoreCopy;
  v34 = stateStoreCopy;

  biomeEventWriter = self->_biomeEventWriter;
  self->_biomeEventWriter = writerCopy;
  v36 = writerCopy;

  backgroundActivityScheduler = self->_backgroundActivityScheduler;
  self->_backgroundActivityScheduler = schedulerCopy;
  v38 = schedulerCopy;

  familyProvider = self->_familyProvider;
  self->_familyProvider = providerCopy;
  v40 = providerCopy;

  eyeReliefStateWriter = self->_eyeReliefStateWriter;
  self->_eyeReliefStateWriter = stateWriterCopy;
  v42 = stateWriterCopy;

  userSafetyPolicyWriter = self->_userSafetyPolicyWriter;
  self->_userSafetyPolicyWriter = policyWriterCopy;
  v44 = policyWriterCopy;

  transportPrimitives = self->_transportPrimitives;
  self->_transportPrimitives = primitivesCopy;

  return self;
}

- (id)processDirective:(id)directive
{
  directiveCopy = directive;
  data = [directiveCopy data];
  switch([directiveCopy type])
  {
    case 0uLL:
      v4 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "processing do nothing directive", &buf, 2u);
      }

      v5 = [[STReactorDirectiveProcessorResult alloc] initWithOutput:0 processedDirective:directiveCopy];
      obj = [STResult success:v5];

      v6 = [STPromise resolvedWith:obj];
      goto LABEL_117;
    case 1uLL:
      v48 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "processing compound directive", &buf, 2u);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B808();
      }

      v49 = data;
      v50 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v49 count]);
      v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      obj = v49;
      v51 = [obj countByEnumeratingWithState:&v166 objects:v246 count:16];
      if (v51)
      {
        v52 = *v167;
        do
        {
          for (i = 0; i != v51; i = i + 1)
          {
            if (*v167 != v52)
            {
              objc_enumerationMutation(obj);
            }

            v54 = [(STReactorDirectiveProcessor *)self processDirective:*(*(&v166 + 1) + 8 * i)];
            [v50 addObject:v54];
          }

          v51 = [obj countByEnumeratingWithState:&v166 objects:v246 count:16];
        }

        while (v51);
      }

      processingQueue = [(STReactorDirectiveProcessor *)self processingQueue];
      v56 = [STPromise onQueue:processingQueue all:v50];
      then = [v56 then];
      v164[0] = _NSConcreteStackBlock;
      v164[1] = 3221225472;
      v164[2] = sub_10006B588;
      v164[3] = &unk_1001A41E8;
      v165 = directiveCopy;
      v3 = (then)[2](then, v164);

      goto LABEL_120;
    case 2uLL:
      v37 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "processing send message directive", &buf, 2u);
      }

      objd = [(STReactorDirectiveProcessor *)self transportEnvoyQueue];
      v244[0] = _NSConcreteStackBlock;
      v244[1] = 3221225472;
      v244[2] = sub_10006AA1C;
      v244[3] = &unk_1001A4F20;
      v244[4] = self;
      v245 = data;
      v38 = [STPromise onQueue:objd do:v244];
      then2 = [v38 then];
      v242[0] = _NSConcreteStackBlock;
      v242[1] = 3221225472;
      v242[2] = sub_10006AAAC;
      v242[3] = &unk_1001A4438;
      v243 = directiveCopy;
      v3 = (then2)[2](then2, v242);

      goto LABEL_121;
    case 3uLL:
      v89 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "processing read configuration directive", &buf, 2u);
      }

      configurationStore = [(STReactorDirectiveProcessor *)self configurationStore];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011BDB8();
      }

      obji = [configurationStore readConfigurationRelatedToConfiguration:data];

      v240[0] = _NSConcreteStackBlock;
      v240[1] = 3221225472;
      v240[2] = sub_10006AAF4;
      v240[3] = &unk_1001A5390;
      v241 = directiveCopy;
      v91 = [obji map:v240];
      v3 = [STPromise resolvedWith:v91];

      goto LABEL_121;
    case 4uLL:
      v92 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "processing write configuration directive", &buf, 2u);
      }

      configurationStore2 = [(STReactorDirectiveProcessor *)self configurationStore];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011BD08();
      }

      objj = [configurationStore2 writeConfigurationChange:data];

      v238[0] = _NSConcreteStackBlock;
      v238[1] = 3221225472;
      v238[2] = sub_10006AB5C;
      v238[3] = &unk_1001A53B8;
      v239 = directiveCopy;
      v94 = [objj map:v238];
      v95 = [STPromise alloc];
      processingQueue2 = [(STReactorDirectiveProcessor *)self processingQueue];
      v3 = [(STPromise *)v95 initWithResolution:v94 onQueue:processingQueue2];

      goto LABEL_121;
    case 5uLL:
      v40 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "processing respond with current configuration directive", &buf, 2u);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011BC58();
      }

      v41 = data;
      obje = [(STReactorDirectiveProcessor *)self _sendRepairConfigurationChangeRelatedToChange:v41];
      then3 = [obje then];
      v235[0] = _NSConcreteStackBlock;
      v235[1] = 3221225472;
      v235[2] = sub_10006ABC4;
      v235[3] = &unk_1001A50C8;
      v236 = v41;
      v237 = directiveCopy;
      v43 = then3[2];
      v44 = v41;
      v3 = v43(then3, v235);

      goto LABEL_121;
    case 6uLL:
      v58 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "processing write device state directive", &buf, 2u);
      }

      deviceStateStore = [(STReactorDirectiveProcessor *)self deviceStateStore];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011BBA8();
      }

      objg = [deviceStateStore writeDeviceStateChange:data];

      v233[0] = _NSConcreteStackBlock;
      v233[1] = 3221225472;
      v233[2] = sub_10006AC9C;
      v233[3] = &unk_1001A4438;
      v234 = directiveCopy;
      v60 = [objg map:v233];
      v3 = [STPromise resolvedWith:v60];

      goto LABEL_121;
    case 7uLL:
      objc_opt_class();
      v61 = data;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011BAE0(data);
        v61 = data;
      }

      v62 = v61;
      type = [v62 type];
      v64 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        if (type > 3)
        {
          v65 = &stru_1001AC900;
        }

        else
        {
          v65 = *(&off_1001A5530 + type);
        }

        LODWORD(buf) = 138543362;
        *(&buf + 4) = v65;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "processing schedule background activity directive type: %{public}@", &buf, 0xCu);
      }

      obj = 0;
      if (type <= 1)
      {
        if (type)
        {
          if (type != 1)
          {
            goto LABEL_119;
          }

          goto LABEL_90;
        }

        goto LABEL_118;
      }

      if (type == 2)
      {
LABEL_118:
        obj = [(STReactorDirectiveProcessor *)self transportEnvoyQueue];
        goto LABEL_119;
      }

      if (type == 3)
      {
LABEL_90:
        obj = [(STReactorDirectiveProcessor *)self processingQueue];
      }

LABEL_119:
      v126 = +[STPromise doOn];
      v229[0] = _NSConcreteStackBlock;
      v229[1] = 3221225472;
      v229[2] = sub_10006ACE4;
      v229[3] = &unk_1001A53E0;
      v232 = type;
      v229[4] = self;
      v230 = v62;
      v231 = directiveCopy;
      v127 = v126[2];
      v128 = v62;
      v3 = v127(v126, obj, v229);

LABEL_120:
LABEL_121:

      return v3;
    case 8uLL:
      objc_opt_class();
      v97 = data;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B968(data);
        v97 = data;
      }

      integerValue = [v97 integerValue];
      v99 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        if (integerValue > 3)
        {
          v100 = &stru_1001AC900;
        }

        else
        {
          v100 = *(&off_1001A5530 + integerValue);
        }

        LODWORD(buf) = 138543362;
        *(&buf + 4) = v100;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "processing perform background activity directive type:  %{public}@", &buf, 0xCu);
      }

      if (integerValue > 1)
      {
        if (integerValue == 2)
        {
          objm = +[STPromise doOn];
          transportEnvoyQueue = [(STReactorDirectiveProcessor *)self transportEnvoyQueue];
          v222[0] = _NSConcreteStackBlock;
          v222[1] = 3221225472;
          v222[2] = sub_10006AF78;
          v222[3] = &unk_1001A4E90;
          v222[4] = self;
          v134 = objm[2](objm, transportEnvoyQueue, v222);
          then4 = [v134 then];
          v220[0] = _NSConcreteStackBlock;
          v220[1] = 3221225472;
          v220[2] = sub_10006AFDC;
          v220[3] = &unk_1001A53B8;
          v221 = directiveCopy;
          v3 = (then4)[2](then4, v220);

          goto LABEL_121;
        }

        if (integerValue == 3)
        {
          v104 = +[STLog reactorDirectiveProcessor];
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "processing write downtime state biome event directive", &buf, 2u);
          }

          familyProvider = [(STReactorDirectiveProcessor *)self familyProvider];
          obj = [familyProvider fetchTargetableFamilyMembersWithError:0];

          configurationStore3 = [(STReactorDirectiveProcessor *)self configurationStore];
          v107 = [configurationStore3 downtimeConfigurationOfChildrenByUserIDForTargetableFamilyMembers:obj];

          v218 = 0u;
          v219 = 0u;
          v216 = 0u;
          v217 = 0u;
          v140 = v107;
          v108 = 0;
          v109 = [v140 countByEnumeratingWithState:&v216 objects:v253 count:16];
          if (v109)
          {
            v138 = *v217;
            do
            {
              v110 = 0;
              v111 = v108;
              do
              {
                if (*v217 != v138)
                {
                  objc_enumerationMutation(v140);
                }

                v112 = *(*(&v216 + 1) + 8 * v110);
                v113 = [v140 objectForKeyedSubscript:v112];
                v114 = [STDowntimeStateEvent alloc];
                v115 = objc_opt_new();
                uUIDString = [v115 UUIDString];
                currentState = [v113 currentState];
                currentDate = [v113 currentDate];
                v119 = [(STDowntimeStateEvent *)v114 initWithIdentifier:uUIDString downtimeConfigurationState:currentState downtimeDate:currentDate userID:v112];

                biomeEventWriter = [(STReactorDirectiveProcessor *)self biomeEventWriter];
                v108 = [biomeEventWriter writeDowntimeStateEvent:v119];

                v110 = v110 + 1;
                v111 = v108;
              }

              while (v109 != v110);
              v109 = [v140 countByEnumeratingWithState:&v216 objects:v253 count:16];
            }

            while (v109);
          }

          v214[0] = _NSConcreteStackBlock;
          v214[1] = 3221225472;
          v214[2] = sub_10006B044;
          v214[3] = &unk_1001A4438;
          v215 = directiveCopy;
          v121 = [v108 map:v214];
          v3 = [STPromise resolvedWith:v121];

          goto LABEL_120;
        }
      }

      else
      {
        if (!integerValue)
        {
          objl = +[STPromise doOn];
          transportEnvoyQueue2 = [(STReactorDirectiveProcessor *)self transportEnvoyQueue];
          v228[0] = _NSConcreteStackBlock;
          v228[1] = 3221225472;
          v228[2] = sub_10006ADF4;
          v228[3] = &unk_1001A4E90;
          v228[4] = self;
          v131 = objl[2](objl, transportEnvoyQueue2, v228);
          then5 = [v131 then];
          v226[0] = _NSConcreteStackBlock;
          v226[1] = 3221225472;
          v226[2] = sub_10006AE44;
          v226[3] = &unk_1001A53B8;
          v227 = directiveCopy;
          v3 = (then5)[2](then5, v226);

          goto LABEL_121;
        }

        if (integerValue == 1)
        {
          objk = +[STPromise doOn];
          transportEnvoyQueue3 = [(STReactorDirectiveProcessor *)self transportEnvoyQueue];
          v225[0] = _NSConcreteStackBlock;
          v225[1] = 3221225472;
          v225[2] = sub_10006AEAC;
          v225[3] = &unk_1001A4E90;
          v225[4] = self;
          v102 = objk[2](objk, transportEnvoyQueue3, v225);
          then6 = [v102 then];
          v223[0] = _NSConcreteStackBlock;
          v223[1] = 3221225472;
          v223[2] = sub_10006AF10;
          v223[3] = &unk_1001A53B8;
          v224 = directiveCopy;
          v3 = (then6)[2](then6, v223);

          goto LABEL_121;
        }
      }

LABEL_112:
      v122 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "processing cancel background activity directive", &buf, 2u);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011BA30();
      }

      integerValue2 = [data integerValue];
      backgroundActivityScheduler = [(STReactorDirectiveProcessor *)self backgroundActivityScheduler];
      [backgroundActivityScheduler invalidateBackgroundActivityOfType:integerValue2];

      v125 = [[STReactorDirectiveProcessorResult alloc] initWithOutput:0 processedDirective:directiveCopy];
      obj = [STResult success:v125];

      v6 = [STPromise resolvedWith:obj];
LABEL_117:
      v3 = v6;
      goto LABEL_120;
    case 9uLL:
      goto LABEL_112;
    case 0xAuLL:
      v10 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "processing read response data for checkin", &buf, 2u);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B8B8();
      }

      objb = data;
      familyProvider2 = [(STReactorDirectiveProcessor *)self familyProvider];
      v12 = [familyProvider2 fetchTargetableFamilyMembersWithError:0];

      v13 = [STReactorCore userToRespondForGivenCheckingInUser:objb targetableFamilyMembers:v12];
      deviceStateStore2 = [(STReactorDirectiveProcessor *)self deviceStateStore];
      readDeviceStateChangeForLocalDevice = [deviceStateStore2 readDeviceStateChangeForLocalDevice];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v249 = 0x3032000000;
      v250 = sub_10006B08C;
      v251 = sub_10006B09C;
      v252 = objc_opt_new();
      configurationStore4 = [(STReactorDirectiveProcessor *)self configurationStore];
      v17 = [configurationStore4 readConfigurationChangesOfType:1 userID:v13];
      v213[0] = _NSConcreteStackBlock;
      v213[1] = 3221225472;
      v213[2] = sub_10006B0A4;
      v213[3] = &unk_1001A5408;
      v213[4] = &buf;
      [v17 evaluateWithSuccess:v213 failure:&stru_1001A5428];

      v207 = 0;
      v208 = &v207;
      v209 = 0x3032000000;
      v210 = sub_10006B08C;
      v211 = sub_10006B09C;
      v212 = objc_opt_new();
      configurationStore5 = [(STReactorDirectiveProcessor *)self configurationStore];
      v19 = [configurationStore5 readConfigurationChangesOfType:2 userID:v13];
      v206[0] = _NSConcreteStackBlock;
      v206[1] = 3221225472;
      v206[2] = sub_10006B110;
      v206[3] = &unk_1001A5408;
      v206[4] = &v207;
      [v19 evaluateWithSuccess:v206 failure:&stru_1001A5448];

      v200 = 0;
      v201 = &v200;
      v202 = 0x3032000000;
      v203 = sub_10006B08C;
      v204 = sub_10006B09C;
      v205 = objc_opt_new();
      configurationStore6 = [(STReactorDirectiveProcessor *)self configurationStore];
      v21 = [configurationStore6 readConfigurationChangesOfType:3 userID:v13];
      v199[0] = _NSConcreteStackBlock;
      v199[1] = 3221225472;
      v199[2] = sub_10006B17C;
      v199[3] = &unk_1001A5408;
      v199[4] = &v200;
      [v21 evaluateWithSuccess:v199 failure:&stru_1001A5468];

      v193 = 0;
      v194 = &v193;
      v195 = 0x3032000000;
      v196 = sub_10006B08C;
      v197 = sub_10006B09C;
      v198 = objc_opt_new();
      configurationStore7 = [(STReactorDirectiveProcessor *)self configurationStore];
      v23 = [configurationStore7 readConfigurationChangesOfType:4 userID:v13];
      v192[0] = _NSConcreteStackBlock;
      v192[1] = 3221225472;
      v192[2] = sub_10006B1E8;
      v192[3] = &unk_1001A5408;
      v192[4] = &v193;
      [v23 evaluateWithSuccess:v192 failure:&stru_1001A5488];

      v186 = 0;
      v187 = &v186;
      v188 = 0x3032000000;
      v189 = sub_10006B08C;
      v190 = sub_10006B09C;
      v191 = objc_opt_new();
      configurationStore8 = [(STReactorDirectiveProcessor *)self configurationStore];
      v25 = [configurationStore8 readConfigurationChangesOfType:5 userID:v13];
      v185[0] = _NSConcreteStackBlock;
      v185[1] = 3221225472;
      v185[2] = sub_10006B254;
      v185[3] = &unk_1001A5408;
      v185[4] = &v186;
      [v25 evaluateWithSuccess:v185 failure:&stru_1001A54A8];

      v179 = 0;
      v180 = &v179;
      v181 = 0x3032000000;
      v182 = sub_10006B08C;
      v183 = sub_10006B09C;
      v184 = objc_opt_new();
      configurationStore9 = [(STReactorDirectiveProcessor *)self configurationStore];
      v27 = [configurationStore9 readConfigurationChangesOfType:6 userID:v13];
      v178[0] = _NSConcreteStackBlock;
      v178[1] = 3221225472;
      v178[2] = sub_10006B2C0;
      v178[3] = &unk_1001A5408;
      v178[4] = &v179;
      [v27 evaluateWithSuccess:v178 failure:&stru_1001A54C8];

      value = [readDeviceStateChangeForLocalDevice value];
      v29 = [STMessageReactorCoreComponent buildCheckinResponseMessageEnvelopeForUser:objb targetableFamilyMembers:v12 localDeviceStateChange:value settingsChanges:*(*(&buf + 1) + 40) downtimeChanges:v208[5] communicationLimitsChanges:v201[5] alwaysAllowedChanges:v194[5] restrictionsChanges:v187[5] managedUserChanges:v180[5]];

      v30 = [[STReactorDirectiveProcessorResult alloc] initWithOutput:v29 processedDirective:directiveCopy];
      v31 = [STResult success:v30];

      v32 = [STPromise alloc];
      processingQueue3 = [(STReactorDirectiveProcessor *)self processingQueue];
      v3 = [(STPromise *)v32 initWithResolution:v31 onQueue:processingQueue3];

      _Block_object_dispose(&v179, 8);
      _Block_object_dispose(&v186, 8);

      _Block_object_dispose(&v193, 8);
      _Block_object_dispose(&v200, 8);

      _Block_object_dispose(&v207, 8);
      _Block_object_dispose(&buf, 8);

      goto LABEL_121;
    case 0xDuLL:
      v45 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "processing write ask for time request biome event directive", &buf, 2u);
      }

      biomeEventWriter2 = [(STReactorDirectiveProcessor *)self biomeEventWriter];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B758();
      }

      objf = [biomeEventWriter2 writeAskForTimeRequestEvent:data];

      v162[0] = _NSConcreteStackBlock;
      v162[1] = 3221225472;
      v162[2] = sub_10006B5F0;
      v162[3] = &unk_1001A4438;
      v163 = directiveCopy;
      v47 = [objf map:v162];
      v3 = [STPromise resolvedWith:v47];

      goto LABEL_121;
    case 0xEuLL:
      v34 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "processing write ask for time response biome event directive", &buf, 2u);
      }

      biomeEventWriter3 = [(STReactorDirectiveProcessor *)self biomeEventWriter];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B6A8();
      }

      objc = [biomeEventWriter3 writeAskForTimeResponseEvent:data];

      v160[0] = _NSConcreteStackBlock;
      v160[1] = 3221225472;
      v160[2] = sub_10006B638;
      v160[3] = &unk_1001A4438;
      v161 = directiveCopy;
      v36 = [objc map:v160];
      v3 = [STPromise resolvedWith:v36];

      goto LABEL_121;
    case 0xFuLL:
      v7 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "processing write eye relief state directive", &buf, 2u);
      }

      eyeReliefStateWriter = [(STReactorDirectiveProcessor *)self eyeReliefStateWriter];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B5F8();
      }

      obja = [eyeReliefStateWriter writeEyeReliefState:{objc_msgSend(data, "BOOLValue")}];

      v158[0] = _NSConcreteStackBlock;
      v158[1] = 3221225472;
      v158[2] = sub_10006B680;
      v158[3] = &unk_1001A4438;
      v159 = directiveCopy;
      v9 = [obja map:v158];
      v3 = [STPromise resolvedWith:v9];

      goto LABEL_121;
    case 0x10uLL:
      v66 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "processing write user safety policy directive", &buf, 2u);
      }

      userSafetyPolicyWriter = [(STReactorDirectiveProcessor *)self userSafetyPolicyWriter];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B548();
      }

      objh = [userSafetyPolicyWriter writeUserSafetyInterventionPolicy:{objc_msgSend(data, "integerValue")}];

      v156[0] = _NSConcreteStackBlock;
      v156[1] = 3221225472;
      v156[2] = sub_10006B6C8;
      v156[3] = &unk_1001A4438;
      v157 = directiveCopy;
      v68 = [objh map:v156];
      v3 = [STPromise resolvedWith:v68];

      goto LABEL_121;
    case 0x11uLL:
      v69 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "processing setup directive", &buf, 2u);
      }

      familyProvider3 = [(STReactorDirectiveProcessor *)self familyProvider];
      v71 = [familyProvider3 fetchTargetableFamilyMembersWithError:0];

      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      obj = v71;
      v72 = [obj countByEnumeratingWithState:&v174 objects:v247 count:16];
      if (v72)
      {
        v139 = *v175;
        do
        {
          for (j = 0; j != v72; j = j + 1)
          {
            if (*v175 != v139)
            {
              objc_enumerationMutation(obj);
            }

            v74 = *(*(&v174 + 1) + 8 * j);
            v75 = [STUserID alloc];
            dsid = [v74 dsid];
            v77 = [v75 initWithDSID:dsid];

            v78 = +[STPromise doOn];
            processingQueue4 = [(STReactorDirectiveProcessor *)self processingQueue];
            v171[0] = _NSConcreteStackBlock;
            v171[1] = 3221225472;
            v171[2] = sub_10006B32C;
            v171[3] = &unk_1001A4F20;
            v172 = v77;
            selfCopy = self;
            v80 = v78[2];
            v81 = v77;
            v82 = v80(v78, processingQueue4, v171);
            then7 = [v82 then];
            v170[0] = _NSConcreteStackBlock;
            v170[1] = 3221225472;
            v170[2] = sub_10006B424;
            v170[3] = &unk_1001A4F48;
            v170[4] = self;
            v84 = (then7)[2](then7, v170);
            catch = [v84 catch];
            v86 = (catch)[2](catch, &stru_1001A54E8);
          }

          v72 = [obj countByEnumeratingWithState:&v174 objects:v247 count:16];
        }

        while (v72);
      }

      v87 = [[STReactorDirectiveProcessorResult alloc] initWithOutput:0 processedDirective:directiveCopy];
      v88 = [STResult success:v87];

      v3 = [STPromise resolvedWith:v88];

      goto LABEL_120;
    default:
      goto LABEL_121;
  }
}

- (id)_sendRepairConfigurationChangeRelatedToChange:(id)change
{
  changeCopy = change;
  v5 = +[STPromise doOn];
  processingQueue = [(STReactorDirectiveProcessor *)self processingQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006B8F4;
  v17[3] = &unk_1001A4F20;
  v17[4] = self;
  v18 = changeCopy;
  v7 = v5[2];
  v8 = changeCopy;
  v9 = v7(v5, processingQueue, v17);
  then = [v9 then];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10006B94C;
  v16[3] = &unk_1001A5390;
  v16[4] = self;
  v11 = (then)[2](then, v16);
  then2 = [v11 then];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006BA20;
  v15[3] = &unk_1001A5510;
  v15[4] = self;
  v13 = (then2)[2](then2, v15);

  return v13;
}

@end