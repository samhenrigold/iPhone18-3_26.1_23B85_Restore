@interface CLEmergencyLocationSelectorConfig
- (id)initForFeature:(int64_t)feature withUpdatesEnabled:(BOOL)enabled;
- (void)dealloc;
- (void)printConfiguration;
- (void)setDefaultsForSIP;
@end

@implementation CLEmergencyLocationSelectorConfig

- (id)initForFeature:(int64_t)feature withUpdatesEnabled:(BOOL)enabled
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = CLEmergencyLocationSelectorConfig;
  v6 = [(CLEmergencyLocationSelectorConfig *)&v21 init];
  v7 = v6;
  if (v6)
  {
    v6->_firstUpdateEnabled = 0;
    v6->_feature = feature;
    v6->_firstUpdateTimeout = 25.0;
    v6->_periodicUpdatesEnabled = enabled;
    v6->_firstLocationUsabilityCriteria = objc_alloc_init(CLEmergencyLocationUsabilityCriteria);
    v7->_locationUpdateUsabilityCriteria = objc_alloc_init(CLEmergencyLocationUsabilityCriteria);
    v7->_firstLocationEarlyReturnEnabled = 1;
    __asm { FMOV            V0.2D, #10.0 }

    *&v7->_firstLocationTimeout = _Q0;
    v7->_locationUpdateMinDelay = 1.0;
    *&v7->_firstLocationMaxEarlyReturnHunc = xmmword_19BA8D720;
    *&v7->_locationUpdateHuncReductionToSendEarly = xmmword_19BA8D730;
    *&v7->_locationUpdateDistanceMovedToSendEarly = xmmword_19BA8D740;
    if (!v7->_feature)
    {
      objc_msgSend_setDefaultsForSIP(v7, v8, v9, v10);
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v16 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelectorConfig,initForFeature:withUpdatesEnabled:,completed", buf, 2u);
    }

    v17 = sub_19B87DD40();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v20[0] = 0;
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#CLELS,CLEmergencyLocationSelectorConfig,initForFeature:withUpdatesEnabled:,completed", v20, 2);
      sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationSelectorConfig initForFeature:withUpdatesEnabled:]", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelectorConfig,self:%{private}@,dealloc,initiated", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v7 = 138477827;
    selfCopy2 = self;
    v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#CLELS,CLEmergencyLocationSelectorConfig,self:%{private}@,dealloc,initiated", &v7, 12);
    sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationSelectorConfig dealloc]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6.receiver = self;
  v6.super_class = CLEmergencyLocationSelectorConfig;
  [(CLEmergencyLocationSelectorConfig *)&v6 dealloc];
}

- (void)setDefaultsForSIP
{
  self->_firstLocationTimeout = 6.0;
  objc_msgSend_setMaxUsableHunc_(self->_firstLocationUsabilityCriteria, a2, v2, v3, 1000.0);
  self->_firstLocationMaxEarlyReturnVunc = 1.79769313e308;
  periodicUpdatesEnabled = self->_periodicUpdatesEnabled;
  self->_firstUpdateEnabled = periodicUpdatesEnabled;
  self->_firstUpdateTimeout = 25.0;
  if (periodicUpdatesEnabled)
  {
    *&self->_locationUpdateTimeout = xmmword_19BA8D750;
    self->_firstLocationMaxEarlyReturnHunc = 165.0;
  }

  else
  {
    self->_firstLocationEarlyReturnEnabled = 0;
  }
}

- (void)printConfiguration
{
  v194 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v3 = qword_1ED519090;
  v7 = "NSt3__110__function6__funcIZN36CLGeoFeatureAccess3dBuildingGeometry23buildingsWithinDistanceERNS_6vectorI25ExtrudedBuildingFootprintNS_9allocatorIS4_EEEERKdSA_SA_E3$_0NS5_ISB_EEFPU37objcproto26GEOMapFeatureAccessRequest11objc_objectU13block_pointerFvP7NSErrorEEEE" + 216;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_feature(self, v4, v5, v6);
    v11 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v9, v8, v10);
    UpdateEnabled = objc_msgSend_firstUpdateEnabled(self, v12, v13, v14);
    v19 = objc_msgSend_periodicUpdatesEnabled(self, v16, v17, v18);
    objc_msgSend_firstLocationMaxEarlyReturnHunc(self, v20, v21, v22);
    v24 = v23;
    objc_msgSend_firstLocationMaxEarlyReturnVunc(self, v25, v26, v27);
    v31 = -1.0;
    if (v32 != 1.79769313e308)
    {
      objc_msgSend_firstLocationMaxEarlyReturnVunc(self, v28, v29, v30);
      v31 = v33;
    }

    objc_msgSend_locationUpdateHuncReductionToSendEarly(self, v28, v29, v30);
    v35 = v34;
    objc_msgSend_locationUpdateDistanceMovedToSendEarly(self, v36, v37, v38);
    v40 = v39;
    LocationEarlyReturnEnabled = objc_msgSend_firstLocationEarlyReturnEnabled(self, v41, v42, v43);
    objc_msgSend_firstLocationTimeout(self, v45, v46, v47);
    v49 = v48;
    objc_msgSend_locationUpdateTimeout(self, v50, v51, v52);
    v54 = v53;
    objc_msgSend_locationUpdateMinDelay(self, v55, v56, v57);
    *buf = 138545922;
    v173 = v11;
    v174 = 1026;
    v175 = UpdateEnabled;
    v176 = 1026;
    v177 = v19;
    v178 = 2050;
    v179 = v24;
    v180 = 2050;
    v181 = v31;
    v182 = 2050;
    v183 = v35;
    v184 = 2050;
    v185 = v40;
    v186 = 1026;
    v187 = LocationEarlyReturnEnabled;
    v188 = 2050;
    v189 = v49;
    v190 = 2050;
    v191 = v54;
    v192 = 2050;
    v193 = v58;
    v7 = "est11objc_objectU13block_pointerFvP7NSErrorEEEE";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,printConfiguration,firstUpdateEnabled,%{public}d,periodicUpdatesEnabled,%{public}d,firstLocationMaxEarlyReturnHunc,%{public}f,firstLocationMaxEarlyReturnVunc,%{public}f,locationUpdateHuncReductionToSendEarly,%{public}f,locationUpdateDistanceMovedToSendEarly,%{public}f,firstLocationEarlyReturnEnabled,%{public}d,firstLocationTimeout,%{public}f,locationUpdateTimeout,%{public}f,locationUpdateMinDelay,%{public}f", buf, 0x64u);
  }

  v59 = sub_19B87DD40();
  if (*(v59 + 160) > 1 || *(v59 + 164) > 1 || *(v59 + 168) > 1 || *(v59 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v66 = qword_1ED519090;
    v67 = objc_msgSend_feature(self, v63, v64, v65);
    v70 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v68, v67, v69);
    v74 = objc_msgSend_firstUpdateEnabled(self, v71, v72, v73);
    v78 = objc_msgSend_periodicUpdatesEnabled(self, v75, v76, v77);
    objc_msgSend_firstLocationMaxEarlyReturnHunc(self, v79, v80, v81);
    v83 = v82;
    objc_msgSend_firstLocationMaxEarlyReturnVunc(self, v84, v85, v86);
    v90 = -1.0;
    if (v91 != 1.79769313e308)
    {
      objc_msgSend_firstLocationMaxEarlyReturnVunc(self, v87, v88, v89);
      v90 = v92;
    }

    objc_msgSend_locationUpdateHuncReductionToSendEarly(self, v87, v88, v89);
    v94 = v93;
    objc_msgSend_locationUpdateDistanceMovedToSendEarly(self, v95, v96, v97);
    v99 = v98;
    v103 = objc_msgSend_firstLocationEarlyReturnEnabled(self, v100, v101, v102);
    objc_msgSend_firstLocationTimeout(self, v104, v105, v106);
    v108 = v107;
    objc_msgSend_locationUpdateTimeout(self, v109, v110, v111);
    v113 = v112;
    objc_msgSend_locationUpdateMinDelay(self, v114, v115, v116);
    v150 = *(v7 + 241);
    v151 = v70;
    v152 = 1026;
    v153 = v74;
    v154 = 1026;
    v155 = v78;
    v156 = 2050;
    v157 = v83;
    v158 = 2050;
    v159 = v90;
    v160 = 2050;
    v161 = v94;
    v162 = 2050;
    v163 = v99;
    v164 = 1026;
    v165 = v103;
    v166 = 2050;
    v167 = v108;
    v168 = 2050;
    v169 = v113;
    v170 = 2050;
    v171 = v117;
    v118 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v66, 0, "#CLELS,%{public}@,printConfiguration,firstUpdateEnabled,%{public}d,periodicUpdatesEnabled,%{public}d,firstLocationMaxEarlyReturnHunc,%{public}f,firstLocationMaxEarlyReturnVunc,%{public}f,locationUpdateHuncReductionToSendEarly,%{public}f,locationUpdateDistanceMovedToSendEarly,%{public}f,firstLocationEarlyReturnEnabled,%{public}d,firstLocationTimeout,%{public}f,locationUpdateTimeout,%{public}f,locationUpdateMinDelay,%{public}f", &v150, 100);
    sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationSelectorConfig printConfiguration]", "CoreLocation: %s\n", v118);
    if (v118 != buf)
    {
      free(v118);
    }
  }

  LocationUsabilityCriteria = objc_msgSend_firstLocationUsabilityCriteria(self, v60, v61, v62);
  v120 = MEMORY[0x1E696AEC0];
  v124 = objc_msgSend_feature(self, v121, v122, v123);
  v127 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v125, v124, v126);
  v130 = objc_msgSend_stringWithFormat_(v120, v128, @"#CLELS,%@,first location usability criteria", v129, v127);
  objc_msgSend_printUsabilityCriteria_(LocationUsabilityCriteria, v131, v130, v132);
  updated = objc_msgSend_locationUpdateUsabilityCriteria(self, v133, v134, v135);
  v137 = MEMORY[0x1E696AEC0];
  v141 = objc_msgSend_feature(self, v138, v139, v140);
  v144 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v142, v141, v143);
  v147 = objc_msgSend_stringWithFormat_(v137, v145, @"#CLELS,%@,location update usability criteria", v146, v144);
  objc_msgSend_printUsabilityCriteria_(updated, v148, v147, v149);
}

@end