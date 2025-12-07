id EpochIntervalFromDate(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x277CCABB0];
    [a1 timeIntervalSince1970];
    a1 = [v2 numberWithDouble:?];
    v1 = vars8;
  }

  return a1;
}

void sub_2535A9DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535B5428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535BE3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535C0F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_2535C1D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

void sub_2535C3D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id addOrReplaceElements(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v5 count])
  {
    v8 = [v6 mutableCopy];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __addOrReplaceElements_block_invoke;
    v13[3] = &unk_2797266A0;
    v9 = v8;
    v14 = v9;
    v15 = v7;
    [v5 na_each:v13];
    v10 = v15;
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  return v11;
}

void __addOrReplaceElements_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __addOrReplaceElements_block_invoke_2;
  v11 = &unk_279726678;
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  v5 = v3;
  v12 = v5;
  v6 = [v4 indexOfObjectPassingTest:&v8];
  v7 = *(a1 + 32);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v7 addObject:{v5, v8, v9, v10, v11}];
  }

  else
  {
    [v7 replaceObjectAtIndex:v6 withObject:{v5, v8, v9, v10, v11}];
  }
}

uint64_t __addOrReplaceElements_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32), a2);
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

void sub_2535C9590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2535C9868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49436(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2535CD730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535D16D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49869(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __transactionAccessoryUpdated_49871(void *a1, void *a2, void *a3)
{
  v222 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v204 = a3;
  v201 = [v204 transactionResult];
  v7 = MEMORY[0x277CBEB18];
  v8 = +[HMDHAPAccessoryTransaction properties];
  v200 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];

  v199 = [v5 home];
  v9 = [v6 uniqueIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = [v5 uniqueIdentifier];
    v12 = [v6 uniqueIdentifier];
    v13 = [v11 isEqual:v12];

    if ((v13 & 1) == 0)
    {
      v14 = [v6 uniqueIdentifier];
      [v5 setUniqueIdentifier:v14];

      [v201 markChanged];
    }
  }

  v15 = [v6 bridgeUUID];
  if (v15)
  {
    v16 = v15;
    v17 = [v5 bridge];
    v18 = [v17 uuid];
    v19 = [v18 UUIDString];
    v20 = [v6 bridgeUUID];
    v21 = [v19 isEqual:v20];

    if ((v21 & 1) == 0)
    {
      v22 = objc_alloc(MEMORY[0x277CCAD78]);
      v23 = [v6 bridgeUUID];
      v24 = [v22 initWithUUIDString:v23];
      [v5 _updateHost:v24];

      [v201 markChanged];
      [v201 markSaveToAssistant];
    }
  }

  v25 = [v6 roomUUID];

  obj = v5;
  if (v25)
  {
    v26 = [v5 room];
    v27 = [v26 name];

    v28 = objc_alloc(MEMORY[0x277CCAD78]);
    v29 = [v6 roomUUID];
    v30 = [v28 initWithUUIDString:v29];

    v31 = objc_autoreleasePoolPush();
    v32 = v5;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v198 = [v32 home];
      v197 = [v198 roomWithUUID:v30];
      v196 = [v197 name];
      [v32 room];
      v35 = v31;
      v37 = v36 = v27;
      v38 = [v37 uuid];
      HMFEqualObjects();

      v5 = obj;
      v27 = v36;
      v31 = v35;
      v39 = HMFBooleanToString();
      *buf = 138544130;
      v215 = v34;
      v216 = 2112;
      v217 = v27;
      v218 = 2112;
      v219 = v196;
      v220 = 2112;
      v221 = v39;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@transactionObjectUpdated: old: %@, new:%@, same Room: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v31);
    if (v30 && [v32 _updateRoom:v30 source:{objc_msgSend(v201, "source")}])
    {
      [v201 markChanged];
      [v201 markSaveToAssistant];
    }

    [v32 _handleRoomChangedFromOldRoomName:v27];
  }

  v40 = [v6 accessoryFlags];
  if (v40)
  {
    v41 = v40;
    v42 = [v5 accessoryFlags];
    v43 = [v6 accessoryFlags];
    v44 = [v42 isEqual:v43];

    if ((v44 & 1) == 0)
    {
      v45 = [v6 accessoryFlags];
      v46 = [v5 updateAccessoryFlagsAndNotifyClients:v45];

      if (v46)
      {
        [v200 addObject:v46];
        [v201 markChanged];
      }
    }
  }

  v47 = [v6 certificationStatus];
  v48 = v204;
  if (v47)
  {
    v49 = v47;
    v50 = [v6 certificationStatus];
    if ([v50 unsignedIntegerValue])
    {
      v51 = [v5 certificationStatus];
      v52 = [v6 certificationStatus];
      v53 = [v52 unsignedIntegerValue];

      if (v51 != v53)
      {
        v54 = [v6 certificationStatus];
        [v5 setCertificationStatus:{objc_msgSend(v54, "unsignedIntegerValue")}];

        [v201 markChanged];
      }
    }

    else
    {
    }
  }

  v55 = [v6 broadcastKey];
  if (v55)
  {
    v56 = v55;
    v57 = [v5 broadcastKey];
    v58 = [v6 broadcastKey];
    v59 = [v57 isEqualToData:v58];

    if ((v59 & 1) == 0)
    {
      v60 = [v6 broadcastKey];
      [v5 setBroadcastKey:v60];

      v61 = [v6 broadcastKey];
      v62 = [v6 keyUpdatedStateNumber];
      v63 = [v6 keyUpdatedTime];
      [v5 setBroadcastKey:v61 keyUpdatedStateNumber:v62 keyUpdatedTime:v63];

      [v201 markChanged];
    }
  }

  v64 = [v6 pairingUsername];
  if (v64)
  {
    v65 = v64;
    v66 = [v6 publicKey];
    if (!v66)
    {

      goto LABEL_35;
    }

    v67 = v66;
    v68 = [obj pairingUsername];
    v69 = [v6 pairingUsername];
    if ([v68 isEqual:v69])
    {
      v70 = [obj publicKey];
      v71 = [v6 publicKey];
      v72 = [v70 isEqual:v71];

      v48 = v204;
      if (v72)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }

    v73 = [v6 pairingUsername];
    v74 = [v6 publicKey];
    [obj setPairingUsername:v73 publicKey:v74];

    [v201 markChanged];
  }

LABEL_35:
  v75 = [v6 transportInformation];

  v76 = obj;
  if (v75)
  {
    v77 = objc_autoreleasePoolPush();
    v78 = objc_opt_class();
    v79 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      v80 = HMFGetLogIdentifier();
      [v201 source];
      v81 = HMFBooleanToString();
      v82 = [v6 transportInformation];
      *buf = 138543874;
      v215 = v80;
      v216 = 2112;
      v217 = v81;
      v218 = 2112;
      v219 = v82;
      _os_log_impl(&dword_2531F8000, v79, OS_LOG_TYPE_INFO, "%{public}@Received updated transportInformation from localSource: %@, transportInformation: %@", buf, 0x20u);

      v48 = v204;
    }

    objc_autoreleasePoolPop(v77);
    v83 = [v6 transportInformation];
    v84 = [obj updateTransportInformation:v83 localSource:{objc_msgSend(v201, "source") < 2}];

    if (v84)
    {
      [v201 markChanged];
    }
  }

  v85 = [v6 communicationProtocol];
  if (v85)
  {
    v86 = v85;
    v87 = [v6 communicationProtocol];
    v88 = [v87 integerValue];
    v89 = [obj communicationProtocol];

    if (v88 != v89)
    {
      v90 = objc_autoreleasePoolPush();
      v91 = obj;
      v92 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
      {
        v93 = HMFGetLogIdentifier();
        [v91 communicationProtocol];
        v94 = HAPCommunicationProtocolDescription();
        v95 = [v6 communicationProtocol];
        [v95 integerValue];
        v96 = HAPCommunicationProtocolDescription();
        *buf = 138543874;
        v215 = v93;
        v216 = 2112;
        v217 = v94;
        v218 = 2112;
        v219 = v96;
        _os_log_impl(&dword_2531F8000, v92, OS_LOG_TYPE_INFO, "%{public}@Updating communication protocol from %@ to %@", buf, 0x20u);

        v48 = v204;
        v76 = obj;
      }

      objc_autoreleasePoolPop(v90);
      v97 = [v6 communicationProtocol];
      [v91 setCommunicationProtocol:{objc_msgSend(v97, "integerValue")}];

      [v201 markChanged];
    }
  }

  v98 = [v6 accessorySetupHash];
  if (v98)
  {
    v99 = v98;
    v100 = [v76 setupHash];
    v101 = [v6 accessorySetupHash];
    v102 = [v100 isEqual:v101];

    if ((v102 & 1) == 0)
    {
      v103 = [v6 accessorySetupHash];
      [v76 setSetupHash:v103];

      [v201 markChanged];
    }
  }

  v104 = [v6 targetUUIDs];
  if (v104)
  {
    v105 = v104;
    v106 = [v76 targetUUIDs];
    v107 = [v6 targetUUIDs];
    v108 = [v106 isEqual:v107];

    if ((v108 & 1) == 0)
    {
      v109 = [v6 targetUUIDs];
      [v76 updateTargetUUIDs:v109];

      [v201 markChanged];
    }
  }

  v110 = [v6 hardwareSupport];
  if (v110)
  {
    v111 = v110;
    v112 = [v76 hardwareSupport];
    v113 = [v6 hardwareSupport];
    v114 = [v113 BOOLValue];

    if (v112 != v114)
    {
      v115 = [v6 hardwareSupport];
      [v76 setHardwareSupport:{objc_msgSend(v115, "BOOLValue")}];

      [v76 notifyClientsOfTargetControlSupportUpdate];
      [v201 markChanged];
    }
  }

  v116 = [v6 connectivityInfo];
  if (v116)
  {
    v117 = v116;
    v118 = [v76 connectivityInfo];
    v119 = [v6 connectivityInfo];
    v120 = HMFEqualObjects();

    if ((v120 & 1) == 0)
    {
      v121 = objc_autoreleasePoolPush();
      v122 = v76;
      v123 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
      {
        v124 = HMFGetLogIdentifier();
        v125 = [v122 connectivityInfo];
        v126 = [v6 connectivityInfo];
        *buf = 138543874;
        v215 = v124;
        v216 = 2112;
        v217 = v125;
        v218 = 2112;
        v219 = v126;
        _os_log_impl(&dword_2531F8000, v123, OS_LOG_TYPE_INFO, "%{public}@Updating connectivityInfo from %@ to %@", buf, 0x20u);

        v48 = v204;
      }

      objc_autoreleasePoolPop(v121);
      v127 = [v6 connectivityInfo];
      [v122 setConnectivityInfo:v127];

      [v201 markChanged];
    }
  }

  v128 = [v6 wiFiTransportCapabilities];
  if (v128)
  {
    v129 = v128;
    v130 = [v76 wiFiTransportCapabilities];
    v131 = [v6 wiFiTransportCapabilities];
    v132 = [v130 isEqualToNumber:v131];

    if ((v132 & 1) == 0)
    {
      v133 = [v6 wiFiTransportCapabilities];
      [v76 setWiFiTransportCapabilities:v133];

      [v201 markChanged];
    }
  }

  v134 = [v6 sleepInterval];
  if (v134)
  {
    v135 = v134;
    v136 = [v76 sleepInterval];
    v137 = [v6 sleepInterval];
    v138 = [v136 isEqualToNumber:v137];

    if ((v138 & 1) == 0)
    {
      v139 = [v6 sleepInterval];
      [v76 setSleepInterval:v139];

      [v201 markChanged];
    }
  }

  v140 = [v6 primaryProfileVersion];

  if (v140)
  {
    v141 = objc_alloc(MEMORY[0x277D0F940]);
    v142 = [v6 primaryProfileVersion];
    v143 = [v141 initWithString:v142];

    if (v143)
    {
      v144 = [v76 primaryProfileVersion];
      v145 = [v143 isEqualToVersion:v144];

      if ((v145 & 1) == 0)
      {
        [v76 setPrimaryProfileVersion:v143];
        v146 = [v76 networkRouterController];

        if (v146)
        {
          [v199 _evaluateNetworkRouterManagementForTransaction:v201];
        }

        [v201 markChanged];
      }
    }
  }

  v147 = [v6 hasOnboardedForNaturalLighting];
  if (v147)
  {
    v148 = v147;
    v149 = [v76 hasOnboardedForNaturalLighting];
    v150 = [v6 hasOnboardedForNaturalLighting];
    v151 = [v149 isEqualToNumber:v150];

    if ((v151 & 1) == 0)
    {
      v152 = objc_autoreleasePoolPush();
      v153 = v76;
      v154 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
      {
        v155 = HMFGetLogIdentifier();
        v156 = [v6 hasOnboardedForNaturalLighting];
        *buf = 138543618;
        v215 = v155;
        v216 = 2112;
        v217 = v156;
        _os_log_impl(&dword_2531F8000, v154, OS_LOG_TYPE_INFO, "%{public}@Updating has onboarded accessory for natural lighting: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v152);
      v157 = [v6 hasOnboardedForNaturalLighting];
      [v153 setHasOnboardedForNaturalLighting:v157];

      [v201 markChanged];
    }
  }

  v158 = [v6 initialServiceTypeUUIDs];
  if (v158)
  {
    v159 = v158;
    v160 = [v6 initialServiceTypeUUIDs];
    v161 = [v76 initialServiceTypeUUIDs];
    v162 = HMFEqualObjects();

    if ((v162 & 1) == 0)
    {
      v163 = [v6 initialServiceTypeUUIDs];
      [v76 setInitialServiceTypeUUIDs:v163];

      [v201 markChanged];
    }
  }

  v164 = [v6 needsOnboarding];
  if (v164)
  {
    v165 = v164;
    v166 = [v6 needsOnboarding];
    v167 = [v76 needsOnboarding];
    v168 = HMFEqualObjects();

    if ((v168 & 1) == 0)
    {
      v169 = [v6 needsOnboarding];
      [v76 setNeedsOnboarding:v169];

      [v201 markChanged];
    }
  }

  v170 = [v6 suspendedState];
  if (v170)
  {
    v171 = v170;
    v172 = [v6 suspendedState];
    v173 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v76, "suspendedState")}];
    v174 = [v172 isEqualToNumber:v173];

    if ((v174 & 1) == 0)
    {
      v175 = objc_autoreleasePoolPush();
      v176 = v76;
      v177 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
      {
        v178 = HMFGetLogIdentifier();
        [v176 suspendedState];
        v179 = HAPAccessorySuspendedStateDescription();
        v180 = [v6 suspendedState];
        [v180 unsignedIntegerValue];
        v181 = HAPAccessorySuspendedStateDescription();
        *buf = 138543874;
        v215 = v178;
        v216 = 2112;
        v217 = v179;
        v218 = 2112;
        v219 = v181;
        _os_log_impl(&dword_2531F8000, v177, OS_LOG_TYPE_INFO, "%{public}@Accessory Transaction updating suspendedState from %@ to %@", buf, 0x20u);

        v48 = v204;
        v76 = obj;
      }

      objc_autoreleasePoolPop(v175);
      v182 = [v6 suspendedState];
      [v176 setSuspendedState:objc_msgSend(v182 shouldNotify:"unsignedIntegerValue") saveToBackingStore:{1, 0}];

      [v201 markChanged];
    }
  }

  v183 = v76;
  [v76 handleUpdatedCHIPPropertiesOnAccessoryModel:v6 actions:v201];
  v184 = dispatch_group_create();
  v209 = 0u;
  v210 = 0u;
  v211 = 0u;
  v212 = 0u;
  obja = v200;
  v185 = [obja countByEnumeratingWithState:&v209 objects:v213 count:16];
  if (v185)
  {
    v186 = v185;
    v187 = *v210;
    do
    {
      for (i = 0; i != v186; ++i)
      {
        if (*v210 != v187)
        {
          objc_enumerationMutation(obja);
        }

        v189 = *(*(&v209 + 1) + 8 * i);
        dispatch_group_enter(v184);
        if (v48)
        {
          v190 = [v189 mutableCopy];
          v191 = [v48 transport];
          [v190 setTransport:v191];
          v192 = objc_msgSend_copy(v190);
        }

        else
        {
          v192 = v189;
        }

        v193 = [v183 msgDispatcher];
        v194 = [v183 uuid];
        v207[0] = MEMORY[0x277D85DD0];
        v207[1] = 3221225472;
        v207[2] = ____transactionAccessoryUpdated_block_invoke_49878;
        v207[3] = &unk_279735D00;
        v208 = v184;
        [v193 sendMessage:v192 target:v194 andInvokeCompletionHandler:v207];

        v48 = v204;
      }

      v186 = [obja countByEnumeratingWithState:&v209 objects:v213 count:16];
    }

    while (v186);
  }

  dispatch_group_wait(v184, 0);
  v205[0] = MEMORY[0x277D85DD0];
  v205[1] = 3221225472;
  v205[2] = ____transactionAccessoryUpdated_block_invoke_2_49879;
  v205[3] = &unk_279734468;
  v195 = v201;
  v206 = v195;
  [v183 transactionAccessoryUpdatedForPreferredMediaUser:v6 completionHandler:v205];
  [v48 respondWithSuccess];
}

id *____transactionAccessoryUpdated_block_invoke_2_49879(id *result, int a2)
{
  if (a2)
  {
    return [result[4] markChanged];
  }

  return result;
}

void sub_2535D2F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535D8794(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_2535D8EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535DBCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2535E0730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535E1DCC(_Unwind_Exception *a1)
{
  __HMFActivityScopeLeave();
  _Block_object_dispose(&STACK[0x2D8], 8);
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x338], 8);
  _Block_object_dispose(&STACK[0x358], 8);
  objc_destroyWeak(&STACK[0x378]);
  _Unwind_Resume(a1);
}

void sub_2535E4624(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x220]);
  objc_destroyWeak(&STACK[0x230]);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x380], 8);
  _Unwind_Resume(a1);
}

void sub_2535E8E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak((v34 - 176));
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_2535E94B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 56));
  _Unwind_Resume(a1);
}

void sub_2535E9CFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_2535EA158(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_2535EAC40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 208));
  objc_destroyWeak((v1 - 200));
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_2535EC380(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_2535F1DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535F2710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535F2FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535F6170(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 224));
  _Unwind_Resume(a1);
}

void sub_2535F6F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_2535F7F34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 104));
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_2535F8C94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2535F8EB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 64));
  _Unwind_Resume(a1);
}

void sub_2535FA044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  objc_destroyWeak(va);
  objc_destroyWeak((v17 - 88));
  _Unwind_Resume(a1);
}

void sub_2535FA7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253600F44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void __handleUpdatedPassword(void *a1, void *a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v43 = a2;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v41 = v3;
  v4 = [v3 services];
  v5 = objc_msgSend_copy(v4);

  obj = v5;
  v39 = [v5 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v39)
  {
    v38 = *v52;
    do
    {
      v6 = 0;
      do
      {
        if (*v52 != v38)
        {
          v7 = v6;
          objc_enumerationMutation(obj);
          v6 = v7;
        }

        v40 = v6;
        v8 = *(*(&v51 + 1) + 8 * v6);
        v9 = [v8 type];
        v10 = [v9 isEqualToString:@"000000DA-0000-1000-8000-0026BB765291"];

        if (v10)
        {
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v42 = [v8 characteristics];
          v11 = [v42 countByEnumeratingWithState:&v47 objects:v57 count:16];
          if (!v11)
          {
            goto LABEL_46;
          }

          v44 = *v48;
          while (1)
          {
            v12 = 0;
            do
            {
              if (*v48 != v44)
              {
                objc_enumerationMutation(v42);
              }

              v13 = *(*(&v47 + 1) + 8 * v12);
              v14 = [v13 type];
              v15 = [v14 isEqualToString:@"000000E4-0000-1000-8000-0026BB765291"];

              if (v15)
              {
                v16 = [v13 value];

                if (v16)
                {
                  v17 = [v13 value];
                  v18 = v17;
                  if (v17)
                  {
                    v19 = v17;
                    v20 = v18;
                    [v20 bytes];
                    [v20 length];

                    *&buf = 0;
                    v55 = 0;
                    v56 = 0;
                    v21 = 0;
                    v22 = 0;
                    if (!TLV8Get() && v55 == 1)
                    {
                      v22 = *buf;
                      if (v22 > 1)
                      {
                        goto LABEL_21;
                      }

                      v23 = TLV8GetOrCopyCoalesced();
                      if (v23 == -6727 || !v55)
                      {
                        v21 = 0;
                        if (!v22)
                        {
                          goto LABEL_29;
                        }
                      }

                      else
                      {
                        if (v23)
                        {
LABEL_21:
                          v22 = 0;
                          v21 = 0;
                          goto LABEL_30;
                        }

                        v25 = objc_alloc(MEMORY[0x277CCACA8]);
                        v21 = [v25 initWithBytes:buf length:v55 encoding:4];
                        if (v56)
                        {
                          free(v56);
                          v56 = 0;
                        }

                        if (v21)
                        {
LABEL_29:
                          v26 = v21;
                          goto LABEL_30;
                        }
                      }

                      v22 = 0;
                    }

LABEL_30:
                  }

                  else
                  {
                    v22 = 0;
                    v21 = 0;
                  }

                  v24 = v21;
                }

                else
                {
                  v22 = 0;
                  v24 = 0;
                }

                v78 = 0u;
                v79 = 0u;
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
                v60 = 0u;
                v61 = 0u;
                buf = 0u;
                v27 = v43;
                TLV8BufferInit();
                v28 = v27;
                [v27 UTF8String];
                [v27 length];

                if (TLV8BufferAppend() || (LOBYTE(v56) = v43 != 0, TLV8BufferAppend()))
                {
                  v29 = 0;
                }

                else
                {
                  v29 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:?];
                }

                TLV8BufferFree();
                if (v22 != (v43 != 0) || v43 && ([v24 isEqualToString:v27] & 1) == 0)
                {
                  v30 = objc_autoreleasePoolPush();
                  v31 = v41;
                  v32 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                  {
                    v33 = HMFGetLogIdentifier();
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v33;
                    _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@password does not match send update", &buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v30);
                  v34 = v29;
                  objc_initWeak(&buf, v31);
                  v35 = [v31 workQueue];
                  v45[0] = MEMORY[0x277D85DD0];
                  v45[1] = 3221225472;
                  v45[2] = ____handleUpdatedPassword_block_invoke;
                  v45[3] = &unk_279734708;
                  objc_copyWeak(&v46, &buf);
                  [v31 writeValue:v34 toCharacteristic:v13 queue:v35 source:1040 completion:v45];

                  objc_destroyWeak(&v46);
                  objc_destroyWeak(&buf);
                }
              }

              ++v12;
            }

            while (v11 != v12);
            v36 = [v42 countByEnumeratingWithState:&v47 objects:v57 count:16];
            v11 = v36;
            if (!v36)
            {
LABEL_46:

              break;
            }
          }
        }

        v6 = v40 + 1;
      }

      while (v40 + 1 != v39);
      v39 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v39);
  }
}

void sub_253608BE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x220]);
  _Unwind_Resume(a1);
}

void ____handleUpdatedPassword_block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@unable to update password setting value with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

void __handleUpdatedMinimumUserPrivilege(void *a1, void *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v39 = v3;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = HMUserPrivilegeToString();
    *buf = 138543874;
    v55 = v6;
    v56 = 2112;
    v57 = v7;
    v58 = 2048;
    v59 = a2;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Handling updated minimum user privilege: %@ (%ld)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = [v39 services];
  obj = objc_msgSend_copy(v8);

  v37 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v37)
  {
    v36 = *v49;
    do
    {
      v9 = 0;
      do
      {
        if (*v49 != v36)
        {
          v10 = v9;
          objc_enumerationMutation(obj);
          v9 = v10;
        }

        v38 = v9;
        v11 = *(*(&v48 + 1) + 8 * v9);
        v12 = [v11 type];
        v13 = [v12 isEqualToString:@"000000DA-0000-1000-8000-0026BB765291"];

        if (v13)
        {
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v40 = [v11 characteristics];
          v14 = [v40 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v14)
          {
            v15 = *v45;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v45 != v15)
                {
                  objc_enumerationMutation(v40);
                }

                v17 = *(*(&v44 + 1) + 8 * i);
                v18 = [v17 type];
                v19 = [v18 isEqualToString:@"000000E5-0000-1000-8000-0026BB765291"];

                if (v19)
                {
                  v20 = [v17 value];
                  v21 = [v20 integerValue] == a2;

                  if (!v21)
                  {
                    v22 = objc_autoreleasePoolPush();
                    v23 = v39;
                    v24 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                    {
                      v25 = HMFGetLogIdentifier();
                      *buf = 138543362;
                      v55 = v25;
                      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@privilege does not match send update", buf, 0xCu);
                    }

                    objc_autoreleasePoolPop(v22);
                    v26 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
                    v27 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
                    v43 = v26;
                    v28 = [v17 validateValueForWrite:v27 outValue:&v43];
                    v29 = v43;

                    if (v28)
                    {
                      v30 = objc_autoreleasePoolPush();
                      v31 = v23;
                      v32 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                      {
                        v33 = HMFGetLogIdentifier();
                        *buf = 138543362;
                        v55 = v33;
                        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@invalid minimum user privilege value", buf, 0xCu);
                      }

                      objc_autoreleasePoolPop(v30);
                    }

                    else
                    {
                      objc_initWeak(buf, v23);
                      v34 = [v23 workQueue];
                      v41[0] = MEMORY[0x277D85DD0];
                      v41[1] = 3221225472;
                      v41[2] = ____handleUpdatedMinimumUserPrivilege_block_invoke;
                      v41[3] = &unk_279734708;
                      objc_copyWeak(&v42, buf);
                      [v23 writeValue:v29 toCharacteristic:v17 queue:v34 source:1040 completion:v41];

                      objc_destroyWeak(&v42);
                      objc_destroyWeak(buf);
                    }
                  }
                }
              }

              v14 = [v40 countByEnumeratingWithState:&v44 objects:v52 count:16];
            }

            while (v14);
          }
        }

        v9 = v38 + 1;
      }

      while (v38 + 1 != v37);
      v37 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v37);
  }
}

void ____handleUpdatedMinimumUserPrivilege_block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@unable to update user privilege value with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

void sub_25360CE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void completeWithError(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (v5)
  {
    if (v3)
    {
      v5[2](v5, v3);
    }

    else
    {
      v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      v5[2](v5, v4);
    }
  }
}

id makeConfigurationControl(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CFECB0]);
  v3 = [objc_alloc(MEMORY[0x277CFECB8]) initWithValue:a1];
  [v2 setOperationType:v3];

  return v2;
}

id makeStationConfiguration(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CFECC8];
  v5 = a1;
  v6 = objc_alloc_init(v4);
  [v6 setSSID:v5];

  v7 = objc_alloc(MEMORY[0x277CFECC0]);
  if (v3)
  {
    v8 = [v7 initWithValue:1];
    [v6 setSecurityMode:v8];

    [v6 setPSK:v3];
  }

  else
  {
    v9 = [v7 initWithValue:0];
    [v6 setSecurityMode:v9];
  }

  return v6;
}

void sub_253616BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__50867(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id encodeRootObjectForRemote(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.hmdutil.encode-remote."];
  v10 = [[HMDRemoteKeyedArchiver alloc] initForWritingWithRemoteDeviceIsOnSameAccount:0 remoteGateway:0 remoteUserIsAdministrator:0 user:v6 supportedFeatures:v7];
  [v10 encodeObject:v5 forKey:*MEMORY[0x277CCA308]];
  [v10 finishEncoding];
  v11 = [v10 encodedData];

  objc_autoreleasePoolPop(v8);

  return v11;
}

id encodeRootObjectForRemoteDeviceOnSameAccountMigrateToHH2(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.hmdutil.encode-remote-same."];
  if (a2)
  {
    v8 = homedSupportedFeatures;
    if (a3)
    {
      v9 = [MEMORY[0x277CBEB18] arrayWithArray:v8];
      [v9 addObject:&unk_2866280C0];
      v10 = objc_msgSend_copy(v9);

      v11 = 4;
      v8 = v10;
    }

    else
    {
      v11 = 4;
    }
  }

  else
  {
    v8 = &unk_286626DE8;
    v11 = 3;
  }

  v12 = [[HMDRemoteKeyedArchiver alloc] initForWritingWithRemoteDeviceIsOnSameAccount:1 remoteGateway:0 remoteUserIsAdministrator:1 user:0 dataVersion:v11 supportedFeatures:v8];
  [v12 encodeObject:v5 forKey:*MEMORY[0x277CCA308]];
  [v12 finishEncoding];
  v13 = [v12 encodedData];

  objc_autoreleasePoolPop(v6);

  return v13;
}

id encodeRootObjectForIncomingXPCMessage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.hmdutil.encode-incoming-xpc."];
  v7 = [[HMDXPCKeyedArchiver alloc] initForWritingWithMessage:v4];
  [v7 encodeObject:v3 forKey:*MEMORY[0x277CCA308]];
  [v7 finishEncoding];
  v8 = [v7 encodedData];

  objc_autoreleasePoolPop(v5);
  v9 = objc_msgSend_copy(v8);

  return v9;
}

id encodeRootObjectForSPIClients(void *a1)
{
  v1 = MEMORY[0x277D0F818];
  v2 = a1;
  v3 = [v1 internalMessageWithName:@"kDummyMessageForEntitledXPC" messagePayload:0];
  v4 = encodeRootObjectForIncomingXPCMessage(v2, v3);

  return v4;
}

void launchURL(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:a1];
  v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v1 openSensitiveURL:v2 withOptions:0];
}

__CFString *locationAsString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (isInternalBuild())
    {
      v2 = [v1 description];
    }

    else
    {
      v2 = @"[]";
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *regionAsString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (isInternalBuild())
    {
      v2 = [v1 hm_description];
    }

    else
    {
      v2 = @"[]";
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void createDirectory(void *a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v19 = *MEMORY[0x277CCA180];
  v20[0] = &unk_286628180;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  if (![v3 fileExistsAtPath:v1 isDirectory:&v12])
  {
    v11 = 0;
    v8 = [v3 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:v2 error:&v11];
    v4 = v11;
    v12 = v8;
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v10 = v4;
    [v3 setAttributes:v2 ofItemAtPath:v1 error:&v10];
    v9 = v10;

    v4 = v9;
    goto LABEL_8;
  }

  v4 = 0;
  if (v12)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543874;
    v14 = v7;
    v15 = 2112;
    v16 = v1;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Could not create directory path %@ - error %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
LABEL_8:
}

id mapHAPPairingErrorToHMError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = *MEMORY[0x277CFE770];

  if (v2 != v3)
  {
    goto LABEL_2;
  }

  v11 = [v1 code];
  if (v11 <= 24)
  {
    if (v11 <= 19)
    {
      if (v11 == 8)
      {
        v4 = MEMORY[0x277CCA9B8];
        v5 = @"Connection was lost with the accessory";
        v7 = @"Ensure there is good WiFi signal, reset the accessory and try again";
        v6 = 54;
        goto LABEL_4;
      }

      if (v11 == 18)
      {
        v4 = MEMORY[0x277CCA9B8];
        v5 = @"Accessory is already paired";
        v6 = 13;
        goto LABEL_3;
      }
    }

    else
    {
      switch(v11)
      {
        case 20:
          v4 = MEMORY[0x277CCA9B8];
          v5 = @"Currently associated WiFi network is not compatible with the accessory";
          v7 = @"Associate with a 2.4 GHz WiFi network and try again";
          v6 = 90;
          goto LABEL_4;
        case 21:
          v4 = MEMORY[0x277CCA9B8];
          v5 = @"This device is not currently associated to a Home WiFi network";
          v7 = @"Associate to a WiFi network (from Settings -> WiFi) and try again";
          v6 = 78;
          goto LABEL_4;
        case 23:
          v4 = MEMORY[0x277CCA9B8];
          v5 = @"Accessories cannot be added to enterprise network";
          v6 = 99;
          goto LABEL_3;
      }
    }

LABEL_2:
    v4 = MEMORY[0x277CCA9B8];
    v5 = @"Pairing Failed";
    v6 = 18;
LABEL_3:
    v7 = 0;
LABEL_4:
    v8 = [v4 hmErrorWithCode:v6 description:v5 reason:0 suggestion:v7 underlyingError:v1];
    goto LABEL_5;
  }

  if (v11 > 33)
  {
    if (v11 != 34)
    {
      if (v11 == 35)
      {
        v4 = MEMORY[0x277CCA9B8];
        v5 = @"Home hub required";
        v7 = @"Add a Home hub to Apple Home and try again";
        v6 = 91;
        goto LABEL_4;
      }

      if (v11 == 36)
      {
        v4 = MEMORY[0x277CCA9B8];
        v6 = 79;
        v5 = 0;
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = @"Failed to connect";
    v14 = 2015;
  }

  else
  {
    switch(v11)
    {
      case 25:
        v12 = MEMORY[0x277CCA9B8];
        v13 = @"Accessory did not join the configured network";
        v14 = 2016;
        break;
      case 26:
        v4 = MEMORY[0x277CCA9B8];
        v5 = @"Failed to join WiFi network";
        v7 = @"Ensure there is good WiFi signal and try again";
        v6 = 102;
        goto LABEL_4;
      case 30:
        v12 = MEMORY[0x277CCA9B8];
        v13 = @"No supported Thread router or Thread credentials not found";
        v14 = 2010;
        break;
      default:
        goto LABEL_2;
    }
  }

  v8 = [v12 hmPrivateErrorWithCode:v14 description:v13 underlyingError:v1];
LABEL_5:
  v9 = v8;

  return v9;
}

id determineHomeKitDaemonRootStorePath()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v1 = [v0 firstObject];
  if (v1)
  {
    v2 = v1;
    v3 = [MEMORY[0x277D0F8E8] productInfo];
    v4 = [v3 productPlatform];

    if (v4 == 1)
    {
      v5 = @"HomeKit";
    }

    else
    {
      v5 = @"homed";
    }

    v6 = [v2 stringByAppendingPathComponent:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __initializePaths_block_invoke()
{
  v66[1] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = determineHomeKitDaemonRootStorePath();
  v2 = storeDirectoryPath;
  storeDirectoryPath = v1;

  if (storeDirectoryPath)
  {
    v3 = [storeDirectoryPath stringByAppendingPathComponent:@"protected-home.config"];
    v4 = configProtectedDataStorePath;
    configProtectedDataStorePath = v3;

    v5 = [storeDirectoryPath stringByAppendingPathComponent:@"vendor-id-store"];
    v6 = configVendorIDStorePath;
    configVendorIDStorePath = v5;

    v7 = [storeDirectoryPath stringByAppendingPathComponent:@"plain-metadata.config"];
    v8 = configPlainMetadataPath;
    configPlainMetadataPath = v7;

    v9 = [storeDirectoryPath stringByAppendingPathComponent:@"server-token"];
    v10 = serverTokenDataStorePath;
    serverTokenDataStorePath = v9;

    v11 = [storeDirectoryPath stringByAppendingPathComponent:@"transaction-journal"];
    v12 = transactionJournalDataStorePath;
    transactionJournalDataStorePath = v11;

    v13 = [storeDirectoryPath stringByAppendingPathComponent:@"datasync-journal"];
    v14 = idsDataSyncJournalDataStorePath;
    idsDataSyncJournalDataStorePath = v13;

    v15 = [storeDirectoryPath stringByAppendingPathComponent:@"blacklisted-bundles"];
    v16 = blacklistedBundlesStorePath;
    blacklistedBundlesStorePath = v15;

    v17 = [storeDirectoryPath stringByAppendingPathComponent:@"registered-applications"];
    v18 = registeredApplicationsDataStorePath;
    registeredApplicationsDataStorePath = v17;

    v19 = [storeDirectoryPath stringByAppendingPathComponent:@"bulletin-board"];
    v20 = bulletinBoardDataStorePath;
    bulletinBoardDataStorePath = v19;

    v21 = [storeDirectoryPath stringByAppendingPathComponent:@"cloud-cache"];
    v22 = cloudCachePath;
    cloudCachePath = v21;

    v23 = [storeDirectoryPath stringByAppendingPathComponent:@"datastore.sqlite"];
    v24 = sqlitePath;
    sqlitePath = v23;

    v25 = [storeDirectoryPath stringByAppendingPathComponent:@"eventstore-devel.sqlite"];
    v26 = eventStorePath;
    eventStorePath = v25;

    v27 = [storeDirectoryPath stringByAppendingString:@"/BLECache"];
    v28 = bleAccessoryCachePath;
    bleAccessoryCachePath = v27;

    v29 = [storeDirectoryPath stringByAppendingPathComponent:@"com.apple.relaunch.assertion.plist"];
    v30 = launchdAssertionPlistPath;
    launchdAssertionPlistPath = v29;

    v31 = [storeDirectoryPath stringByAppendingPathComponent:@"metricsCounters"];
    v32 = metricsCountersPersistentStorePath;
    metricsCountersPersistentStorePath = v31;

    v33 = [storeDirectoryPath stringByAppendingPathComponent:@"eventcounters-groupstore"];
    v34 = eventCountersDataStorePath;
    eventCountersDataStorePath = v33;

    v35 = [storeDirectoryPath stringByAppendingPathComponent:@"eventcounters-datastore"];
    v36 = eventCountersDataStoreLegacyPath;
    eventCountersDataStoreLegacyPath = v35;

    v37 = [storeDirectoryPath stringByAppendingPathComponent:@"eventflags-datastore"];
    v38 = eventFlagsDataStorePath;
    eventFlagsDataStorePath = v37;

    v39 = [storeDirectoryPath stringByAppendingPathComponent:@"core.sql"];
    v40 = coreDataDataStorePath;
    coreDataDataStorePath = v39;

    v41 = [storeDirectoryPath stringByAppendingPathComponent:@"/HH1ToHH2PerDeviceMigration"];
    v42 = hh1ToHH2PerDeviceMigrationDirectoryPath;
    hh1ToHH2PerDeviceMigrationDirectoryPath = v41;

    v43 = [storeDirectoryPath stringByAppendingPathComponent:@"/hh1TestArchives"];
    v44 = hh1TestArchivesDirectoryPath;
    hh1TestArchivesDirectoryPath = v43;

    v45 = [storeDirectoryPath stringByAppendingPathComponent:@"/demoMode"];
    v46 = demoModeV2ConfigPath;
    demoModeV2ConfigPath = v45;

    v47 = HMDCreateHomeKitDaemonCacheDirectory();
    v48 = [v47 stringByAppendingPathComponent:@"hh2MigratorRecordStore.plist"];
    v49 = hh2MigratorRecordStorePath;
    hh2MigratorRecordStorePath = v48;

    v50 = [v47 stringByAppendingPathComponent:@"hh2MigrationFailureRecordStore.plist"];
    v51 = hh2MigrationFailureRecordStorePath;
    hh2MigrationFailureRecordStorePath = v50;

    v52 = [v47 stringByAppendingPathComponent:@"hh2MigrationLogEventStore.plist"];
    v53 = hh2MigrationLogEventPath;
    hh2MigrationLogEventPath = v52;

    v65 = *MEMORY[0x277CCA180];
    v66[0] = &unk_286628180;
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:&v65 count:1];
    v64[0] = storeDirectoryPath;
    v64[1] = bleAccessoryCachePath;
    v64[2] = hh1ToHH2PerDeviceMigrationDirectoryPath;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:3];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = ___initializeProtectedStorePaths_block_invoke;
    v62[3] = &unk_279727420;
    v63 = v54;
    v56 = v54;
    [v55 hmf_enumerateWithAutoreleasePoolUsingBlock:v62];
  }

  v57 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HomeKitDaemon"];
  v58 = [v57 pathForResource:@"plain-metadata-full.config" ofType:0];
  v59 = builtinConfigMetadataDictionaryPath;
  builtinConfigMetadataDictionaryPath = v58;

  if (!builtinConfigMetadataDictionaryPath)
  {
    v60 = [v57 pathForResource:@"plain-metadata.config" ofType:0];
    v61 = builtinConfigMetadataDictionaryPath;
    builtinConfigMetadataDictionaryPath = v60;
  }

  objc_autoreleasePoolPop(v0);
}

id HMDCreateHomeKitDaemonCacheDirectory()
{
  v48 = *MEMORY[0x277D85DE8];
  v0 = HMCacheSubdirectoryWithRelativePath();
  v1 = 0x277CCA000uLL;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v40 = 0;
  v3 = [v2 createDirectoryAtPath:v0 withIntermediateDirectories:1 attributes:0 error:&v40];
  v4 = v40;

  if (v3)
  {
    v5 = v0;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = getuid();
      *buf = 138544130;
      v42 = v8;
      v43 = 1024;
      *v44 = v9;
      *&v44[4] = 2114;
      *&v44[6] = v0;
      *&v44[14] = 2114;
      *&v44[16] = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HomeKit daemon cache directory for user %d at %{public}@: %{public}@", buf, 0x26u);
    }

    v27 = v4;

    objc_autoreleasePoolPop(v6);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = v0;
    obj = [v0 pathComponents];
    v34 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
    if (v34)
    {
      v33 = *v37;
      v32 = *MEMORY[0x277CCA180];
      v31 = *MEMORY[0x277CCA158];
      v30 = *MEMORY[0x277CCA118];
      v10 = &stru_286509E58;
      do
      {
        v11 = 0;
        v12 = v10;
        do
        {
          if (*v37 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [(__CFString *)v12 stringByAppendingPathComponent:*(*(&v36 + 1) + 8 * v11), v27];

          v13 = [*(v1 + 2560) defaultManager];
          v35 = 0;
          v14 = [v13 attributesOfItemAtPath:v10 error:&v35];
          v15 = v35;

          if (v14)
          {
            v16 = [v14 objectForKeyedSubscript:v32];
            v17 = [v14 objectForKeyedSubscript:v31];
            v18 = [v14 objectForKeyedSubscript:v30];
            v19 = objc_autoreleasePoolPush();
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = HMFGetLogIdentifier();
              v22 = [v16 shortValue];
              *buf = 138544386;
              v42 = v21;
              v43 = 2112;
              *v44 = v10;
              *&v44[8] = 1024;
              *&v44[10] = v22;
              *&v44[14] = 2112;
              *&v44[16] = v17;
              v45 = 2112;
              v46 = v18;
              _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Path: %@, permissions: %o, owner uid: %@, owner gid: %@", buf, 0x30u);

              v1 = 0x277CCA000;
            }

            objc_autoreleasePoolPop(v19);
          }

          else
          {
            v23 = objc_autoreleasePoolPush();
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = HMFGetLogIdentifier();
              *buf = 138543874;
              v42 = v25;
              v43 = 2112;
              *v44 = v10;
              *&v44[8] = 2112;
              *&v44[10] = v15;
              _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to get attributes for path %@: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v23);
          }

          ++v11;
          v12 = v10;
        }

        while (v34 != v11);
        v34 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
      }

      while (v34);
    }

    else
    {
      v10 = &stru_286509E58;
    }

    v5 = 0;
    v4 = v27;
    v0 = v28;
  }

  return v5;
}

void ___initializeProtectedStorePaths_block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v7 fileExistsAtPath:v5 isDirectory:0])
  {
    v13 = 0;
    [v7 setAttributes:v6 ofItemAtPath:v5 error:&v13];
    v8 = v13;
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v8;
      v12 = "%{public}@Setting attributes to directory path %@ resulted into error : %@";
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, v12, buf, 0x20u);
    }
  }

  else
  {
    v13 = 0;
    [v7 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:v6 error:&v13];
    v8 = v13;
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v8;
      v12 = "%{public}@Create store directory path %@ finished with error %@";
      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v9);
}

void __initializeCapabilitiesAndTimeouts_block_invoke(uint64_t a1)
{
  v173 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277D0F8E8] productInfo];
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Initializing with product info: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v8 = MGCopyAnswer();
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x277CCACA8] stringWithString:v8];
    v11 = uniqueDeviceId;
    uniqueDeviceId = v10;

    CFRelease(v9);
  }

  v12 = +[HMDDeviceCapabilities isAppleMediaAccessory];
  v13 = @"00000000-0000-0000-0000-C2EE6102B308";
  if (!v12)
  {
    v13 = @"20BC605A-C33B-4D36-B885-C2EE6102B308";
  }

  v14 = v13;
  if (([(__CFString *)v14 isEqualToString:@"20BC605A-C33B-4D36-B885-C2EE6102B308"]& 1) != 0)
  {
    v15 = @"NonMediaDevice/";
  }

  else if ([(__CFString *)v14 isEqualToString:@"00000000-0000-0000-0000-C2EE6102B308"])
  {
    v15 = @"UnknownMediaDevice/";
  }

  else
  {
    v15 = &stru_286509E58;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543874;
    *&buf[4] = v18;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    *&buf[22] = 2112;
    v172 = v14;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Setting media remote ID: %@%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  v19 = _mediaRouteIdentifier;
  _mediaRouteIdentifier = v14;

  v20 = +[HMDHomeKitVersion currentVersion];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%tu.%tu", objc_msgSend(v20, "majorVersion"), objc_msgSend(v20, "minorVersion")];
  v22 = MEMORY[0x277CCABB0];
  [v21 doubleValue];
  v23 = [v22 numberWithDouble:?];
  v24 = homedVersion;
  homedVersion = v23;

  v25 = +[HMDHomeKitVersion version3];
  v26 = minimumSupportedResidentHomeKitVersion;
  minimumSupportedResidentHomeKitVersion = v25;

  v27 = homedSupportedFeatures;
  homedSupportedFeatures = &unk_286626E00;

  if (isiOSDevice() || isTVOSDevice())
  {
    v28 = [homedSupportedFeatures arrayByAddingObjectsFromArray:&unk_286626E18];
    v29 = homedSupportedFeatures;
    homedSupportedFeatures = v28;
  }

  v30 = +[HMDDeviceCapabilities deviceCapabilities];
  v31 = [v30 supportsFaceClassification];

  if (v31)
  {
    v32 = [homedSupportedFeatures arrayByAddingObject:&unk_286628210];
    v33 = homedSupportedFeatures;
    homedSupportedFeatures = v32;
  }

  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"NSDebugDescription", @"NSLocalizedDescription", @"RequestUUID", @"ServerErrorDescription", @"CKErrorDescription", 0}];
  v35 = ckErrorUserInfoKeys;
  ckErrorUserInfoKeys = v34;

  LODWORD(v166) = 0;
  CFDictionaryGetTypeID();
  v36 = CFPrefs_CopyTypedValue();
  if (v36)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [v36 objectForKey:@"kHomesDataBlobKey"];
      v38 = [v36 objectForKey:@"kDataSignatureKey"];
      if (v37)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v38)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v164 = v2;
              v39 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:@"KQveymsUTHc1aqyc73tl3VuYb4Ls0j1+RnvdDxNymjU=" options:0];
              [v37 bytes];
              [v37 length];
              [v38 bytes];
              [v39 bytes];
              if (!cced25519_verify_compat())
              {
                v161 = MEMORY[0x277CCAAC8];
                v162 = v39;
                v40 = MEMORY[0x277CBEB98];
                *buf = objc_opt_class();
                *&buf[8] = objc_opt_class();
                *&buf[16] = objc_opt_class();
                v41 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];
                v42 = [v40 setWithArray:v41];
                v43 = [v161 deserializeObjectWithData:v37 allowedClasses:v42];

                if (v43)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v44 = [v43 objectForKey:@"kHomeDataBlobKey"];
                    v45 = [v43 objectForKey:@"kControllerKeyPairKey"];
                    v46 = [v43 objectForKey:@"kControllerPairingNameKey"];
                    v47 = v46;
                    if (v44 && v45 && v46)
                    {
                      v48 = [MEMORY[0x277CFEC78] systemStore];
                      [v48 removeControllerKeyPairWithError:0];
                      if ([v48 saveKeyPair:v45 username:v47 syncable:0 error:0])
                      {
                        v49 = getProtectedStorePath();
                        v50 = [HMDPersistentStore writeData:v44 toStorePath:v49 dataLabel:@"home data"];

                        retailDemoDataEncoded = 1;
                      }
                    }
                  }
                }

                v39 = v162;
              }

              v2 = v164;
            }
          }
        }
      }
    }
  }

  if ((isInternalBuild() & 1) != 0 || ([MEMORY[0x277D0F8E8] productInfo], v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v51, "productVariant"), v51, v52 == 2))
  {
    _overrideBoolValue(&skipAuthPromptDialog, @"allowSkipMFIPrompt");
    _overrideBoolValue(&showAuthDialog, @"showAuthDialog");
    _overrideBoolValue(&disableCloudDataSync, @"DisableCloudDataSync");
    _overrideBoolValue(&disableLegacyCloudDataSync, @"DisableLegacyCloudDataSync");
    _overrideBoolValue(&enableWakeNotifications, @"EnableWakeNotifications");
    _overrideBoolValue(&disableWACBrowser, @"disableWACBrowser");
    _overrideBoolValue(&delayBatchedReadWrite, @"delayBatchedReadWrite");
    _overrideBoolValue(&enableNetworkLogging, @"enableNetworkLogging");
    _overrideBoolValue(&enableRetailDemoSetup, @"enableRetailDemoSetup");
    v170 = 0;
    CFDictionaryGetTypeID();
    v53 = CFPrefs_CopyTypedValue();
    v165 = v2;
    v54 = [MEMORY[0x277CBEB38] dictionary];
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v163 = v53;
    v55 = v53;
    v56 = [v55 countByEnumeratingWithState:&v166 objects:buf count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v167;
      do
      {
        for (i = 0; i != v57; ++i)
        {
          if (*v167 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v60 = *(*(&v166 + 1) + 8 * i);
          v61 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v60];
          v62 = objc_alloc(MEMORY[0x277CCAD78]);
          v63 = [v55 objectForKey:v60];
          v64 = [v62 initWithUUIDString:v63];

          [v54 setObject:v64 forKey:v61];
        }

        v57 = [v55 countByEnumeratingWithState:&v166 objects:buf count:16];
      }

      while (v57);
    }

    v65 = preferredPrimaryForHome;
    preferredPrimaryForHome = v54;
    v66 = v54;

    v2 = v165;
    CFStringGetTypeID();
    v67 = CFPrefs_CopyTypedValue();
    if (v67)
    {
      v68 = v67;
      v69 = CKContainerEnvironmentFromString();
      v70 = objc_autoreleasePoolPush();
      v71 = HMFGetOSLogHandle();
      v72 = v71;
      if (v69)
      {
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v73 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v73;
          *&buf[12] = 2112;
          *&buf[14] = v68;
          _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@Overriding CloudKit container environment to %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v70);
        cloudKitContainerEnvironment = v69;
      }

      else
      {
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          v74 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v74;
          *&buf[12] = 2112;
          *&buf[14] = v68;
          _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_ERROR, "%{public}@Invalid CloudKit environment %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v70);
      }

      CFRelease(v68);
    }

    *buf = 0;
    Int64 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudPushBatchLimit = Int64;
    }

    *buf = 0;
    v76 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maxCloudOperationRetries = v76;
    }

    CFPrefs_GetDouble();
    minimumTimerRecurrence = v77;
    *buf = 0;
    v78 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudUploadTimerInterval = v78;
    }

    *buf = 0;
    v79 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudUploadMaximumTimerInterval = v79;
    }

    *buf = 0;
    v80 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudUploadTimerIntervalExponentialFactor = v80;
    }

    *buf = 0;
    v81 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudZoneUploadTimerInitialInterval = v81;
    }

    *buf = 0;
    v82 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudZoneUploadTimerInterval = v82;
    }

    *buf = 0;
    v83 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudRecordSizeLimit = v83;
    }

    *buf = 0;
    v84 = CFPrefs_GetInt64();
    if (!*buf)
    {
      userPushCacheTimeInterval = v84;
    }

    *buf = 0;
    v85 = CFPrefs_GetInt64();
    if (!*buf)
    {
      aggressiveControllerKeyPollInterval = v85;
    }

    *buf = 0;
    v86 = CFPrefs_GetInt64();
    if (!*buf)
    {
      watchdogControllerKeyPollTimeout = v86;
    }

    *buf = 0;
    v87 = CFPrefs_GetInt64();
    if (!*buf)
    {
      controllerKeyPollInterval = v87;
    }

    *buf = 0;
    v88 = CFPrefs_GetInt64();
    if (!*buf)
    {
      keychainPopupTimerInterval = v88;
    }

    *buf = 0;
    v89 = CFPrefs_GetInt64();
    if (!*buf)
    {
      checkRemoteAccessTimeout = v89;
    }

    *buf = 0;
    v90 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsCommitTimeoutNanoseconds = 1000000000 * v90;
    }

    *buf = 0;
    v91 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsIdleClientTimeoutNanoseconds = 1000000000 * v91;
    }

    *buf = 0;
    v92 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsIdleServertTimeoutNanoseconds = 1000000000 * v92;
    }

    *buf = 0;
    v93 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsSendInternalRequestTimeoutNanoseconds = 1000000000 * v93;
    }

    *buf = 0;
    v94 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsSendInternalRequestToWatchTimeoutNanoseconds = 1000000000 * v94;
    }

    *buf = 0;
    v95 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsSendUserRequestTimeoutNanoseconds = 1000000000 * v95;
    }

    *buf = 0;
    v96 = CFPrefs_GetInt64();
    if (!*buf)
    {
      btleReachabilityTimerNanoseconds = 1000000000 * v96;
    }

    *buf = 0;
    v97 = CFPrefs_GetInt64();
    if (!*buf)
    {
      btleReachabilityLeewayNanoseconds = 1000000000 * v97;
    }

    *buf = 0;
    v98 = CFPrefs_GetInt64();
    if (!*buf)
    {
      btleReachabilityProbeReduceFactor = v98;
    }

    *buf = 0;
    v99 = CFPrefs_GetInt64();
    if (!*buf)
    {
      remotePendingResponseTimerNanoseconds = 1000000000 * v99;
    }

    *buf = 0;
    v100 = CFPrefs_GetInt64();
    if (!*buf)
    {
      remotePendingResponseLeewayNanoseconds = 1000000000 * v100;
    }

    *buf = 0;
    v101 = CFPrefs_GetInt64();
    if (!*buf)
    {
      remotePendingResponseDecayScale = v101;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      accessoryConnectivityWaitPeriod = v102;
    }

    *buf = 0;
    v103 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudDataSyncInProgressWaitPeriod = v103;
    }

    *buf = 0;
    v104 = CFPrefs_GetInt64();
    if (!*buf)
    {
      controllerKeyNotLandingWaitPeriod = v104;
    }

    *buf = 0;
    v105 = CFPrefs_GetInt64();
    if (!*buf)
    {
      controllerKeyNotLandingShortCircuitWaitPeriod = v105;
    }

    if (isHomePod())
    {
      assistantClientReadWriteTimeoutSeconds = 0x4022000000000000;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      assistantClientReadWriteTimeoutSeconds = v106;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      assistantClientActionSetTimeoutSeconds = v107;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      disableNotificationsDeferPeriod = v108;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      coalesceNotificationsPeriod = v109;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      pendingResponseTickPeriod = v110;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      pendingResponseMaxPeriod = v111;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      delayNotificationsPeriod = v112;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteReachabilityNotificationsDeferPeriod = v113;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteReachabilityDeregistrationDeferPeriod = v114;
    }

    *buf = 0;
    v115 = CFPrefs_GetInt64();
    if (!*buf)
    {
      deviceConnectionKeepAliveTimerPeriod = v115;
    }

    *buf = 0;
    v116 = CFPrefs_GetInt64();
    if (!*buf)
    {
      deviceConnectionKeepAliveResponseTimeoutPeriod = v116;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      pairingInterruptionGracePeriod = v117;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      pairingReconfirmWaitPeriod = v118;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      vendorInfoFetchPeriod = v119;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      attestationInfoFetchPeriod = v120;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      keyTransferBroadcastMaximumDelay = v121;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      mediaBrowserProcessingInterval = v122;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      disableReprivsionBrowsingPeriodInMinutes = v123;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      authServerRetryTimeIntervalInSeconds = v124;
    }

    *buf = 0;
    v125 = CFPrefs_GetInt64();
    if (!*buf)
    {
      authServerRetryCount = v125;
    }

    _overrideNumberArray(&supportedResolutions, @"SupportedResolutions");
    _overrideNumberArray(&supportedVideoCodecs, @"SupportedVideoCodecs");
    _overrideNumberArray(&supportedAudioCodecs, @"SupportedAudioCodecs");
    _overrideNumberArray(&supportedSRTPAuths, @"SupportedSRTPAuths");
    *buf = 0;
    v126 = CFPrefs_GetInt64();
    if (!*buf)
    {
      videoAttributesUpgradeDebouceTimer = v126;
    }

    *buf = 0;
    v127 = CFPrefs_GetInt64();
    if (!*buf)
    {
      videoAttributesDowngradeDebouceTimer = v127;
    }

    _overrideBoolValue(&cameraStreamNetworkAdaptation, @"CameraStreamNetworkAdaptation");
    _overrideNumber(&rtpPtime, @"RTPPtime");
    _overrideNumber(&snapshotResolution, @"SnapshotResolution");
    *buf = 0;
    v128 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumSimultaneousRemoteStreams = v128;
    }

    *buf = 0;
    v129 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumSecureRemoteStreams = v129;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      secureSessionMessageTimeout = v130;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      snapshotCacheValidPeriod = v131;
    }

    *buf = 0;
    v132 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumHomes = v132;
    }

    *buf = 0;
    v133 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumAccessoriesPerHome = v133;
    }

    *buf = 0;
    v134 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumRoomsPerHome = v134;
    }

    *buf = 0;
    v135 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumZonesPerHome = v135;
    }

    *buf = 0;
    v136 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumTriggersPerHome = v136;
    }

    *buf = 0;
    v137 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumActionSetsPerHome = v137;
    }

    *buf = 0;
    v138 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumServiceGroupsPerHome = v138;
    }

    *buf = 0;
    v139 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumUsersPerHome = v139;
    }

    *buf = 0;
    v140 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumRoomsPerZone = v140;
    }

    *buf = 0;
    v141 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumActionsPerActionSet = v141;
    }

    *buf = 0;
    v142 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumServicesPerServiceGroup = v142;
    }

    *buf = 0;
    v143 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumAccessoriesPerBridge = v143;
    }

    *buf = 0;
    v144 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumServicesPerAccessory = v144;
    }

    *buf = 0;
    v145 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumCharacteristicsPerService = v145;
    }

    *buf = 0;
    v146 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumDataSyncFragmentSize = v146;
    }

    *buf = 0;
    v147 = CFPrefs_GetInt64();
    if (!*buf)
    {
      bulletinSecureTriggerTimeoutInSeconds = v147;
    }

    *buf = 0;
    v148 = CFPrefs_GetInt64();
    if (!*buf)
    {
      secureTriggerUserResponseTimeoutInSeconds = v148;
    }

    *buf = 0;
    v149 = CFPrefs_GetInt64();
    if (!*buf)
    {
      broadcastKeyRefreshTimeInSeconds = v149;
    }

    *buf = 0;
    v150 = CFPrefs_GetInt64();
    if (!*buf)
    {
      bluetoothGSNMaxValue = v150;
    }

    v151 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    allowAnonymousServerConnections = [v151 BOOLForKey:@"allowAnonymousServerConnections"];

    _overrideNSString(&vendorInfoDatabaseServerURLOverride, @"vendorInfoDatabaseServerURLOverride");
    _overrideNSString(&appleConfigurationServer, @"appleConfigurationServer");
    _overrideNSString(&homeKitConfigurationPath, @"homeKitConfigurationPath");
    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteDeviceMonitorHealthTimerTimeInterval = v152;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteDeviceMonitorRetryTimerMinimumTimeInterval = v153;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteDeviceMonitorRetryTimerMaximumTimeInterval = v154;
    }

    *buf = 0;
    v155 = CFPrefs_GetInt64();
    if (!*buf)
    {
      remoteDeviceMonitorRetryTimerFactor = v155;
    }

    *buf = 0;
    v156 = CFPrefs_GetInt64();
    if (!*buf)
    {
      presenceFeedRefreshInMinutes = v156;
    }

    *buf = 0;
    v157 = CFPrefs_GetInt64();
    if (!*buf)
    {
      presenceMonitorAuditInMinutes = v157;
    }

    *buf = 0;
    v158 = CFPrefs_GetInt64();
    if (!*buf)
    {
      presenceMonitorRefreshGracePeriodInMinutes = v158;
    }

    *buf = 0;
    v159 = CFPrefs_GetInt64();
    if (!*buf)
    {
      startCharacteristicsMonitorWaitPeriod = v159;
    }

    *buf = 0;
    v160 = CFPrefs_GetInt64();
    if (!*buf)
    {
      requestHomeDataSyncRetryPeriodInMinutes = v160;
    }
  }

  objc_autoreleasePoolPop(v2);
}

BOOL isiOSDevice()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productPlatform] == 2;

  return v1;
}

BOOL isTVOSDevice()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productPlatform] == 4;

  return v1;
}

uint64_t _overrideBoolValue(BOOL *a1, uint64_t a2)
{
  result = CFPrefs_GetInt64();
  *a1 = result != 0;
  return result;
}

BOOL isHomePod()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productClass] == 6;

  return v1;
}

void _overrideNumberArray(void **a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  CFArrayGetTypeID();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = CFPrefs_CopyTypedValue();
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = v3;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = v3;
  v9 = *a1;
  *a1 = v8;
LABEL_11:
}

void _overrideNumber(id *a1, uint64_t a2)
{
  CFNumberGetTypeID();
  v3 = CFPrefs_CopyTypedValue();
  objc_storeStrong(a1, v3);
}

void _overrideNSString(id *a1, uint64_t a2)
{
  CFStringGetTypeID();
  v3 = CFPrefs_CopyTypedValue();
  objc_storeStrong(a1, v3);
}

BOOL isAppleTV()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productClass] == 4;

  return v1;
}

BOOL isWatch()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productClass] == 5;

  return v1;
}

BOOL isMac()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productPlatform] == 1;

  return v1;
}

uint64_t isBTLECapableDevice()
{
  v0 = [MEMORY[0x277D0F910] systemInfo];
  v1 = [v0 supportsBLE];

  return v1;
}

void __demoModeV2Types_block_invoke()
{
  v2[3] = *MEMORY[0x277D85DE8];
  v2[0] = @"retail";
  v2[1] = @"press";
  v2[2] = @"test";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:3];
  v1 = demoModeV2Types_demoModeV2Types;
  demoModeV2Types_demoModeV2Types = v0;
}

BOOL isiPadDevice()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productClass] == 3;

  return v1;
}

id deviceName()
{
  v0 = [MEMORY[0x277D0F910] systemInfo];
  v1 = [v0 name];

  return v1;
}

__CFString *getDeviceClass()
{
  if (isAppleTV())
  {
    v0 = @"kDeviceClassTypeResident";
  }

  else
  {
    v0 = @"kDeviceClassTypeTransient";
  }

  return v0;
}

BOOL isDeviceLocked()
{
  v13 = *MEMORY[0x277D85DE8];
  if (+[HMDDeviceCapabilities supportsDeviceLock])
  {
    v0 = MKBGetDeviceLockState();
    v1 = objc_autoreleasePoolPush();
    v2 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v3;
      v11 = 2048;
      v12 = v0;
      _os_log_impl(&dword_2531F8000, v2, OS_LOG_TYPE_INFO, "%{public}@Device lock state (locked): %ld", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v1);
    return v0 != 3 && v0 != 0;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Device does not support device lock (locked).", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    return 1;
  }
}

BOOL isPasscodeEnabledOnThisDevice()
{
  v12 = *MEMORY[0x277D85DE8];
  if (+[HMDDeviceCapabilities supportsDeviceLock])
  {
    v0 = MKBGetDeviceLockState();
    v1 = objc_autoreleasePoolPush();
    v2 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = HMFGetLogIdentifier();
      v8 = 138543618;
      v9 = v3;
      v10 = 2048;
      v11 = v0;
      _os_log_impl(&dword_2531F8000, v2, OS_LOG_TYPE_INFO, "%{public}@Device lock state (passcode): %ld", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v1);
    return v0 != 3;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Device does not support device lock (passcode).", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    return 0;
  }
}

double getDiscoveryBackoffPeriod()
{
  v0 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v1 = [v0 preferenceForKey:@"DiscoveryBackoffInSeconds"];
  v2 = [v1 numberValue];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

id getBLEAccessoryCachePath()
{
  v28[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = v0;
  v20 = 0;
  if (storeDirectoryPath)
  {
    if (!bleAccessoryCachePath || ([v0 fileExistsAtPath:bleAccessoryCachePath isDirectory:&v20] & 1) == 0)
    {
      v27 = *MEMORY[0x277CCA180];
      v28[0] = &unk_286628180;
      v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v3 = [storeDirectoryPath stringByAppendingString:@"/BLECache"];
      v4 = bleAccessoryCachePath;
      bleAccessoryCachePath = v3;

      v19 = 0;
      v5 = [v1 createDirectoryAtPath:bleAccessoryCachePath withIntermediateDirectories:1 attributes:v2 error:&v19];
      v6 = v19;
      v7 = v6;
      v20 = v5;
      if (v5)
      {
        v18 = v6;
        [v1 setAttributes:v2 ofItemAtPath:bleAccessoryCachePath error:&v18];
        v8 = v18;

        v7 = v8;
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = HMFGetLogIdentifier();
          *buf = 138543874;
          v22 = v15;
          v23 = 2112;
          v24 = bleAccessoryCachePath;
          v25 = 2112;
          v26 = v7;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not create BLE Cache directory path %@ - error %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v13);
      }
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v11;
      v23 = 2112;
      v24 = storeDirectoryPath;
      v12 = storeDirectoryPath;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Store Directory not initialized: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v16 = bleAccessoryCachePath;

  return v16;
}

id getImagesPath()
{
  v0 = HMDCreateHomeKitDaemonCacheDirectory();
  v1 = [v0 stringByAppendingString:@"/Snapshots"];

  return v1;
}

id getBulletinImagesPath()
{
  v0 = HMDCreateHomeKitDaemonCacheDirectory();
  v1 = [v0 stringByAppendingString:@"/BulletinSnapshots"];

  return v1;
}

id HMDHomeKitDaemonDemoModePersistencePath()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = HMDCreateHomeKitDaemonCacheDirectory();
  v2 = [v0 fileURLWithPath:v1];

  v3 = [v2 URLByAppendingPathComponent:@"DemoMode.data"];

  return v3;
}

BOOL compareCharacteristicValue(void *a1, void *a2, uint64_t a3, void *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (!v7 || !v8)
  {
    v13 = (v7 | v8) == 0;
    goto LABEL_59;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v8;
      v11 = v7;
      v12 = *[v10 objCType] == 102 || *objc_msgSend(v10, "objCType") == 100;
      if (*[v11 objCType] == 102 || (*objc_msgSend(v11, "objCType") == 100 ? (v14 = 1) : (v14 = v12), v14 == 1))
      {
        [v10 doubleValue];
        v16 = v15;
        [v11 doubleValue];
        v18 = v17;
        v19 = 0.00999999978;
        if (v9)
        {
          [v9 doubleValue];
          if (fabs(v20) >= 2.22044605e-16)
          {
            [v9 doubleValue];
            v19 = v21;
          }
        }

        context = objc_autoreleasePoolPush();
        v22 = HMFGetOSLogHandle();
        v23 = (v16 * (1.0 / v19));
        v24 = (v18 * (1.0 / v19));
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138544642;
          v42 = v25;
          v43 = 2048;
          v44 = v16;
          v45 = 2048;
          v46 = (v16 * (1.0 / v19));
          v47 = 2048;
          v48 = v18;
          v49 = 2048;
          v50 = (v18 * (1.0 / v19));
          v51 = 2048;
          v52 = v19;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Saved double value: %lf (%ld), current double value: %lf (%ld), step value: %lf", buf, 0x3Eu);
        }

        objc_autoreleasePoolPop(context);
        if (a3 > 2)
        {
          if (a3 == 3)
          {
            v13 = v24 >= v23;
            goto LABEL_58;
          }

          if (a3 == 5)
          {
            v13 = v24 != v23;
            goto LABEL_58;
          }
        }

        else
        {
          switch(a3)
          {
            case 0:
              v13 = v24 < v23;
              goto LABEL_58;
            case 1:
              v13 = v24 <= v23;
              goto LABEL_58;
            case 2:
              v13 = v24 > v23;
LABEL_58:

              goto LABEL_59;
          }
        }

        v13 = v24 == v23;
        goto LABEL_58;
      }
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v26 = [v7 compare:v8];
    if (a3 > 2)
    {
      if (a3 != 3)
      {
        if (a3 == 5)
        {
          v13 = v26 != 0;
LABEL_52:
          v35 = objc_autoreleasePoolPush();
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            v38 = HMFBooleanToString();
            *buf = 138544386;
            v42 = v37;
            v43 = 2112;
            v44 = *&v7;
            v45 = 2048;
            v46 = a3;
            v47 = 2112;
            v48 = *&v8;
            v49 = 2112;
            v50 = v38;
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Comparing characteristic value %@ (op:%tu) %@, result: %@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(v35);
          goto LABEL_59;
        }

LABEL_41:
        v27 = v26 == 0;
        goto LABEL_44;
      }

      v34 = v26 >= 2;
    }

    else
    {
      if (!a3)
      {
        v27 = v26 == -1;
LABEL_44:
        v13 = v27;
        goto LABEL_52;
      }

      if (a3 != 1)
      {
        if (a3 == 2)
        {
          v27 = v26 == 1;
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v34 = v26 + 1 >= 2;
    }

    v13 = !v34;
    goto LABEL_52;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    v31 = objc_opt_class();
    v32 = v31;
    *buf = 138543874;
    v42 = v30;
    v43 = 2112;
    v44 = *&v31;
    v45 = 2112;
    v46 = objc_opt_class();
    v33 = v46;
  }

  objc_autoreleasePoolPop(v28);
  v13 = 0;
LABEL_59:

  return v13;
}

id spiClientIdentifierForUUID(void *a1)
{
  v1 = a1;
  v2 = +[HMDProcessInfo privateClientIdentifierSalt];
  v3 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:v1 identifierSalt:v2];

  return v3;
}

id spiClientIdentifierForUUIDAndSalts(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[HMDProcessInfo privateClientIdentifierSalt];
  v6 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:v4 identifierSalt:v5 withSalts:v3];

  return v6;
}

uint64_t shouldLogPrivateInformation()
{
  v0 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v1 = [v0 preferenceForKey:@"shouldLogPrivateInformation"];
  v2 = [v1 BOOLValue];

  return v2;
}

uint64_t isEqualDeepCompare(void *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 count];
      if (v5 == [v4 count])
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v6 = v3;
        v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v30;
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v30 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v29 + 1) + 8 * i);
              v12 = [v6 objectForKey:v11];
              v13 = [v4 objectForKey:v11];
              if (!v13 || !isEqualDeepCompare(v12, v13))
              {

                goto LABEL_34;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
            v14 = 1;
            if (v8)
            {
              continue;
            }

            goto LABEL_35;
          }
        }

LABEL_25:
        v14 = 1;
LABEL_35:

        goto LABEL_36;
      }

LABEL_31:
      v14 = 0;
      goto LABEL_36;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v3 count];
      if (v15 == [v4 count])
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v6 = v3;
        v16 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = *v26;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v26 != v19)
              {
                objc_enumerationMutation(v6);
              }

              v21 = *(*(&v25 + 1) + 8 * j);
              v22 = [v4 objectAtIndex:{v18, v25}];
              LODWORD(v21) = isEqualDeepCompare(v21, v22);

              if (!v21)
              {
LABEL_34:
                v14 = 0;
                goto LABEL_35;
              }

              ++v18;
            }

            v17 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_25;
      }

      goto LABEL_31;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    if (v3 == v4)
    {
      v14 = 1;
      goto LABEL_36;
    }

    v23 = [v3 isBackingStorageEqual:v4];
  }

  else
  {
    v23 = HMFEqualObjects();
  }

  v14 = v23;
LABEL_36:

  return v14;
}

HMDHomeKitVersion *fixHomeKitVersion(void *a1)
{
  v1 = a1;
  if ([v1 minorVersion] >= 0xA && objc_msgSend(v1, "minorVersion"))
  {
    v2 = +[HMDHomeKitVersion version10];
    if ([v1 isAtLeastVersion:v2])
    {
      v3 = v1;
    }

    else
    {
      v5 = round(log10([v1 minorVersion]));
      v3 = -[HMDHomeKitVersion initWithMajorVersion:minorVersion:updateVersion:]([HMDHomeKitVersion alloc], "initWithMajorVersion:minorVersion:updateVersion:", [v1 majorVersion], llround(objc_msgSend(v1, "minorVersion") / __exp10(v5)), objc_msgSend(v1, "updateVersion"));
    }

    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

  return v4;
}

id generateWiFiUniquePreSharedKey()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = SecPasswordGenerate();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543618;
      v8 = v5;
      v9 = 2112;
      v10 = 0;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate WiFi Pre-Shared Key with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  return v1;
}

void *accessoryToEncodeForXPCTransportForAccessory(void *a1)
{
  v1 = a1;
  v2 = [v1 hostAccessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v1;
  }

  v6 = v5;

  return v5;
}

BOOL shouldSkipRemoteAccessoryNotificationRegistration(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 isCurrentDeviceAvailableResident] && objc_msgSend(v4, "hasIPLink") && (objc_msgSend(v4, "hasBTLELink") & 1) == 0 && !isiPadDevice() && (!isAppleTV() || objc_msgSend(v3, "isCurrentDeviceConfirmedPrimaryResident"));

  return v5;
}

uint64_t shouldSkipLocalAccessoryNotificationRegistration(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if ([a3 hmf_isEmpty])
  {
    v7 = 1;
  }

  else if (![v5 isResidentFirstAccessoryCommunicationEnabled] || (objc_msgSend(v5, "localCapabilitiesDataSource"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isResidentCapable"), v8, (v9 & 1) != 0) || (objc_msgSend(v5, "enabledResidents"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, !v11) || objc_msgSend(v6, "hasBTLELink") && (objc_msgSend(v6, "reachableTransports") & 2) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 isSecureSessionEstablished] ^ 1;
  }

  return v7;
}

BOOL defaultAccessoryShouldDisconnectOnIdleForHome(void *a1)
{
  v2 = ([v1 isCurrentDevicePrimaryResident] & 1) == 0 && ((objc_msgSend(v1, "isCurrentDeviceAvailableResident") & 1) != 0 || objc_msgSend(v1, "isResidentFirstAccessoryCommunicationEnabled") && (objc_msgSend(v1, "enabledResidents"), v4 = v1 = a1;

  return v2;
}

BOOL shouldDisconnectOnIdleForAccessory(void *a1)
{
  v1 = a1;
  v2 = [v1 home];
  v3 = isPersistedConnectionRequiredForAccessory(v1);

  v4 = (v3 & 1) == 0 && defaultAccessoryShouldDisconnectOnIdleForHome(v2);
  return v4;
}

uint64_t isPersistedConnectionRequiredForAccessory(void *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 home];
  if (![v2 isCurrentDevicePrimaryResident])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__50867;
    v36 = __Block_byref_object_dispose__50868;
    v37 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __isPersistedConnectionRequiredForAccessory_block_invoke;
    aBlock[3] = &unk_2797273D0;
    p_buf = &buf;
    v7 = v1;
    v23 = v7;
    v8 = _Block_copy(aBlock);
    if ([v2 isCurrentDeviceAvailableResident] && !isiPadDevice() && !isAppleTV() || (objc_msgSend(v2, "areAllResidentsUnreachable") & 1) == 0 && (objc_msgSend(v2, "isResidentFirstAccessoryCommunicationEnabled") & 1) != 0)
    {
      if ([v2 isCurrentDeviceAvailableResident])
      {
        *v29 = 0;
        *&v29[8] = v29;
        *&v29[16] = 0x2020000000;
        LOBYTE(v30) = 0;
        v9 = v8[2](v8);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __isPersistedConnectionRequiredForAccessory_block_invoke_787;
        v21[3] = &unk_2797273F8;
        v21[4] = v29;
        [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v21];

        if (*(*&v29[8] + 24) == 1)
        {
          v10 = objc_autoreleasePoolPush();
          v11 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = HMFGetLogIdentifier();
            v13 = [v7 shortDescription];
            *v25 = 138543618;
            v26 = v12;
            v27 = 2112;
            v28 = v13;
            _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Require persisted connection for Siri Remote accessory %@ for all residents", v25, 0x16u);
          }

          objc_autoreleasePoolPop(v10);
          _Block_object_dispose(v29, 8);
LABEL_18:
          v6 = 1;
LABEL_21:

          _Block_object_dispose(&buf, 8);
          goto LABEL_22;
        }

        _Block_object_dispose(v29, 8);
      }

      v6 = 0;
      goto LABEL_21;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v7 shortDescription];
      [v2 isResidentFirstAccessoryCommunicationEnabled];
      v18 = HMFBooleanToString();
      [v2 areAllResidentsUnreachable];
      v19 = HMFBooleanToString();
      *v29 = 138544130;
      *&v29[4] = v16;
      *&v29[12] = 2112;
      *&v29[14] = v17;
      *&v29[22] = 2112;
      v30 = v18;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Require persisted connection for accessory %@: isResidentFirstAccessoryCommunicationEnabled = %@, areAllResidentsUnreachable = %@", v29, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_18;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Current device is primary resident, always require persisted connection with accessories", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v6 = 1;
LABEL_22:

  return v6;
}

void sub_25361DAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __isPersistedConnectionRequiredForAccessory_block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB58] setWithObject:*(a1 + 32)];
    v5 = [*(a1 + 32) identifiersForBridgedAccessories];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __isPersistedConnectionRequiredForAccessory_block_invoke_2;
    v14 = &unk_2797273A8;
    v15 = *(a1 + 32);
    v16 = v4;
    v6 = v4;
    [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:&v11];

    v7 = objc_msgSend_copy(v6, v11, v12, v13, v14);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  return v2;
}

void *__isPersistedConnectionRequiredForAccessory_block_invoke_787(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 supportsTargetController];
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __isPersistedConnectionRequiredForAccessory_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 home];
  v6 = [v5 accessoryWithUUID:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v9 = v7;

  v8 = v9;
  if (v9)
  {
    [*(a1 + 40) addObject:v9];
    v8 = v9;
  }
}

void __shouldEnableInternalDebugInterfaces_block_invoke(uint64_t a1, uint64_t a2)
{
  if (isInternalBuild())
  {
    v3 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v2 = [v3 preferenceForKey:@"shouldEnableInternalDebugInterfaces"];
    shouldEnableInternalDebugInterfaces__hmf_once_v45 = [v2 BOOLValue];
  }

  else
  {
    shouldEnableInternalDebugInterfaces__hmf_once_v45 = 0;
  }
}

uint64_t getCKContainer()
{
  v0 = @"com.apple.willow.config";
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __getCKContainer_block_invoke;
  block[3] = &unk_279735D00;
  v5 = @"com.apple.willow.config";
  if (getCKContainer_onceToken != -1)
  {
    dispatch_once(&getCKContainer_onceToken, block);
  }

  v1 = getCKContainer_container;
  v2 = getCKContainer_container;

  return v1;
}

void __getCKContainer_block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:*(a1 + 32) environment:cloudKitContainerEnvironment];
  v1 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v3];
  v2 = getCKContainer_container;
  getCKContainer_container = v1;
}

id shortHAPTypeDescription(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x277CFE988];
  if ([v1 hasSuffix:*MEMORY[0x277CFE988]])
  {
    v3 = [v1 substringToIndex:{objc_msgSend(v1, "length") - objc_msgSend(v2, "length")}];

    v1 = v3;
  }

  return v1;
}

uint64_t isThisDeviceDesignatedFMFDevice()
{
  v0 = +[HMDFMFHandlerFactory sharedHandler];
  v1 = [v0 isThisDesignatedFMFDevice];

  return v1;
}

void clearPrimaryPreference(uint64_t a1)
{
  v1 = a1;
  v16 = *MEMORY[0x277D85DE8];
  v2 = @"hmd.preferred.primary.homeutil";
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HMFBooleanToString();
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = @"hmd.preferred.primary.homeutil";
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Clearing preferred primary with requireOneTime: %@ ...withApplication: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v7 = CFPreferencesCopyAppValue(@"hmd.preferred.primary.one.time", @"hmd.preferred.primary.homeutil");
  v8 = v7;
  if (v7)
  {
    v9 = [v7 BOOLValue];
    if (!v1 || v9)
    {
      CFPreferencesSetAppValue(@"hmd.preferred.primary", 0, @"hmd.preferred.primary.homeutil");
    }
  }
}

uint64_t isTransientCloudKitError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v3)
  {
    v4 = [v1 code];
    if (v4 <= 0x17)
    {
      v5 = 0x8000D8u >> v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void __isFirstLaunchAfterBoot_block_invoke()
{
  v21 = *MEMORY[0x277D85DE8];
  v0 = determineHomeKitDaemonRootStorePath();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 stringByAppendingPathComponent:@"lastBootUuid"];
    *v19 = 0u;
    memset(v20, 0, sizeof(v20));
    v16 = 37;
    v3 = sysctlbyname("kern.bootsessionuuid", v19, &v16, 0, 0);
    if (v3)
    {
      if (v3 == -1)
      {
        __error();
        _os_assumes_log();
      }

      v4 = objc_autoreleasePoolPush();
      v5 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = HMFGetLogIdentifier();
        *buf = 138543362;
        v18 = v6;
        _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to get kern.bootsessionuuid", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      isFirstLaunchAfterBoot_firstLaunchAfterBoot = 1;
    }

    else
    {
      v10 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v2 encoding:4 error:0];
      if (!v10)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543362;
          v18 = v13;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Failed to load existing boot uuid", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
      }

      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v19];
      v15 = 1;
      [v14 writeToFile:v2 atomically:1 encoding:4 error:0];
      if (v10)
      {
        v15 = [v14 isEqualToString:v10] ^ 1;
      }

      isFirstLaunchAfterBoot_firstLaunchAfterBoot = v15;
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *v19 = 138543362;
      *&v19[4] = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get HomeKit daemon root store path!", v19, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    isFirstLaunchAfterBoot_firstLaunchAfterBoot = 1;
  }
}

uint64_t HMDTruncatedHash(void *a1)
{
  v4 = 0;
  v1 = [a1 hm_generateSHA256];
  [v1 getBytes:&v4 length:8];
  v2 = v4;

  return v2;
}

void sub_25361F258(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_253620FF4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void __callResolveBlocks(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 underlyingQueue];
  dispatch_assert_queue_V2(v8);

  if (v5 && v6 | v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [v5 resolveBlocks];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          (*(*(*(&v15 + 1) + 8 * v13++) + 16))();
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    v14 = [v5 resolveBlocks];
    [v14 removeAllObjects];
  }
}

void sub_253625CC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25362815C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _isNetworkIntefaceActive(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = socket(2, 2, 0);
  if (v2 < 0 && (!*__error() || *__error()))
  {
    goto LABEL_25;
  }

  v11 = 0;
  getifaddrs(&v11);
  v4 = v11;
  if (!v11)
  {
    if (v2 < 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  do
  {
    if ((v4->ifa_flags & 8) == 0)
    {
      ifa_name = v4->ifa_name;
      if (ifa_name)
      {
        if (!SocketGetInterfaceInfo())
        {
          if (gLogCategory_HMDPowerManager <= 20 && (gLogCategory_HMDPowerManager != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_HMDPowerManager, "BOOL _isNetworkIntefaceActive(void *)", 20, "Network interface %'-7s (%s): %s\n", v4->ifa_name, "?", "active");
          }

          v5 = objc_autoreleasePoolPush();
          v6 = v1;
          v7 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            v8 = HMFGetLogIdentifier();
            v9 = v4->ifa_name;
            *buf = 138544130;
            v13 = v8;
            v14 = 2080;
            v15 = v9;
            v16 = 2080;
            v17 = "?";
            v18 = 2080;
            v19 = "active";
            _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Network interface %s (%s): %s\n", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v5);
        }
      }
    }

    v4 = v4->ifa_next;
  }

  while (v4);
  if (v11)
  {
    MEMORY[0x259C02E80](v11, ifa_name);
  }

  if ((v2 & 0x80000000) == 0)
  {
LABEL_22:
    if (close(v2) && *__error())
    {
      __error();
    }
  }

LABEL_25:

  return 0;
}

void _handleNetworkInterfaceChanged(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 setNetworkInterfaceActive:_isNetworkIntefaceActive(v3)];
  if (gLogCategory_HMDPowerManager <= 30 && (gLogCategory_HMDPowerManager != -1 || _LogCategory_Initialize()))
  {
    v4 = [v3 networkInterfaceActive];
    v5 = "no";
    if (v4)
    {
      v5 = "yes";
    }

    LogPrintF(&gLogCategory_HMDPowerManager, "void _handleNetworkInterfaceChanged(SCDynamicStoreRef, CFArrayRef, void *)", 30, "Network changed. Network interface active: %s\n", v5);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = v3;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v7 networkInterfaceActive];
    v11 = "no";
    if (v10)
    {
      v11 = "yes";
    }

    *buf = 138543618;
    v13 = v9;
    v14 = 2080;
    v15 = v11;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Network changed. Network interface active: %s\n", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [v7 _update];
}

void sub_25362B94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _parseTargetList(void *a1, void *a2)
{
  v2 = a1;
  if ([v2 length])
  {
    [v2 bytes];
    [v2 length];
      ;
    }
  }

  return 0;
}

id _parseTargetButtonConfiguration(void *a1, void **a2)
{
  v2 = a1;
  v3 = [MEMORY[0x277CBEB18] array];
  [v2 bytes];
  [v2 length];
    ;
  }

  v4 = objc_msgSend_copy(v3);

  return v4;
}

unint64_t targetConfigurationTLVSize(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v8 = 32;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = v8 + 12;
        v12 = [v10 name];
        v13 = [v12 UTF8String];

        if (v13)
        {
          v14 = strlen(v13);
          if (v14 >= 0x80)
          {
            v15 = 128;
          }

          else
          {
            v15 = v14;
          }

          v11 += v15;
        }

        v16 = [v10 buttonConfiguration];
        if ([v16 count])
        {
          v17 = [v10 buttonConfiguration];
          v18 = buttonConfigurationTLVSize(v17);
        }

        else
        {
          v18 = buttonConfigurationTLVSize(v4);
        }

        v8 = v18 + v11;
      }

      v6 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 32;
  }

  return v8 + 2 * (v8 / 0xFF);
}

uint64_t __addButtonConfigurationTLV(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    buttonConfigurationTLVSize(v2);
    TLV8BufferInit();
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        [v8 identifier];
        v9 = TLV8BufferAppend();
        if (v9)
        {
          break;
        }

        [v8 type];
        v9 = TLV8BufferAppend();
        if (v9)
        {
          break;
        }

        v10 = [v8 name];
        v11 = [v10 UTF8String];

        if (v11)
        {
          strlen(v11);
          v9 = TLV8BufferAppend();
          if (v9)
          {
            break;
          }
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:

      v3 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:?];
      [v3 bytes];
      [v3 length];
      v9 = TLV8BufferAppend();
    }

    v12 = v9;

    TLV8BufferFree();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

unint64_t buttonConfigurationTLVSize(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    v5 = 32;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v5 += 9;
        v7 = [*(*(&v12 + 1) + 8 * i) name];
        v8 = [v7 UTF8String];

        if (v8)
        {
          v9 = strlen(v8);
          if (v9 >= 0x80)
          {
            v10 = 128;
          }

          else
          {
            v10 = v9;
          }

          v5 += v10;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  else
  {
    v5 = 32;
  }

  return v5 + 2 * (v5 / 0xFF);
}

void sub_2536333B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__54005(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253633F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253635D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253636668(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2536366F4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253636780(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id readDataFromCKRecordOptionalAssetField(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v37 = *MEMORY[0x277D85DE8];
  v6 = v1;
  v7 = v5;
  v8 = filePathFromCKRecordOptionalAssetField(v6, v7);
  v9 = v8;
  if (!v8)
  {
    v18 = 0;
    goto LABEL_25;
  }

  v10 = createInputStreamWithFilePath(v8, 0);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = [MEMORY[0x277CBEB28] data];
    [v12 open];
    v14 = [v12 read:v36 maxLength:4096];
    if (v14 < 1)
    {
LABEL_12:
      [v12 close];
      if ((v14 & 0x8000000000000000) == 0)
      {
        v18 = objc_msgSend_copy(v13);
LABEL_23:

        goto LABEL_24;
      }

      v19 = objc_autoreleasePoolPush();
      v20 = objc_opt_class();
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        [v12 streamError];
        v23 = v30 = v19;
        *buf = 138543618;
        v33 = v22;
        v34 = 2112;
        v35 = v23;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Error reading data from input stream: %@", buf, 0x16u);

        v19 = v30;
      }

      v24 = v19;
    }

    else
    {
      while (1)
      {
        if (v3)
        {
          v15 = [v13 length];
          v16 = __CFADD__(v14, v15);
          v17 = v16 << 63 >> 63;
          if (v17 != v16 || v17 < 0 || v14 + v15 > v3)
          {
            break;
          }
        }

        [v13 appendBytes:v36 length:v14];
        v14 = [v12 read:v36 maxLength:4096];
        if (v14 <= 0)
        {
          goto LABEL_12;
        }
      }

      [v12 close];
      v25 = objc_autoreleasePoolPush();
      v26 = objc_opt_class();
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v28 = v31 = v25;
        *buf = 138543618;
        v33 = v28;
        v34 = 2048;
        v35 = v3;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Data from input stream has exceeded the maximum %lu bytes allowed", buf, 0x16u);

        v25 = v31;
      }

      v24 = v25;
    }

    objc_autoreleasePoolPop(v24);
    v18 = 0;
    goto LABEL_23;
  }

  v18 = 0;
LABEL_24:

LABEL_25:

  return v18;
}

id dataFromCKRecordRequiredField(void *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    objc_opt_class();
    v10 = objc_opt_isKindOfClass() & 1;
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = objc_autoreleasePoolPush();
    v14 = objc_opt_class();
    v15 = HMFGetOSLogHandle();
    v16 = v15;
    if (v10)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [v5 recordID];
        [v18 hmbDescription];
        v19 = v32 = v12;
        *buf = 138543874;
        v35 = v17;
        v36 = 2112;
        v37 = v6;
        v38 = 2112;
        v39 = v19;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Reading '%@' NSData for record %@", buf, 0x20u);

        v12 = v32;
      }

      objc_autoreleasePoolPop(v13);
      v20 = v9;
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v27 = v31 = v13;
        v28 = [v5 recordID];
        [v28 hmbDescription];
        v29 = v33 = v12;
        *buf = 138544130;
        v35 = v27;
        v36 = 2112;
        v37 = v6;
        v38 = 2112;
        v39 = v29;
        v40 = 2112;
        v41 = v9;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@'%@' field is not a NSData on record %@: %@", buf, 0x2Au);

        v12 = v33;
        v13 = v31;
      }

      objc_autoreleasePoolPop(v13);
      if (a3)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
        *a3 = v20 = 0;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = objc_opt_class();
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v5 recordID];
      v26 = [v25 hmbDescription];
      *buf = 138543874;
      v35 = v24;
      v36 = 2112;
      v37 = v6;
      v38 = 2112;
      v39 = v26;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Field '%@' does not exist on record %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    if (a3)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
      *a3 = v20 = 0;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

id filePathFromCKRecordOptionalAssetField(void *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() & 1;
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = objc_autoreleasePoolPush();
    v12 = objc_opt_class();
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (v8)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v15 = v26 = v11;
        v25 = [v3 recordID];
        v16 = [v25 hmbDescription];
        [v7 fileURL];
        v17 = v27 = v10;
        v18 = [v17 path];
        *buf = 138544130;
        v30 = v15;
        v31 = 2112;
        v32 = v4;
        v33 = 2112;
        v34 = v16;
        v35 = 2112;
        v36 = v18;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Reading '%@' CKAsset for record %@ from %@", buf, 0x2Au);

        v10 = v27;
        v11 = v26;
      }

      objc_autoreleasePoolPop(v11);
      v19 = [v7 fileURL];
      v20 = [v19 path];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        [v3 recordID];
        v22 = v28 = v10;
        v23 = [v22 hmbDescription];
        *buf = 138544130;
        v30 = v21;
        v31 = 2112;
        v32 = v4;
        v33 = 2112;
        v34 = v23;
        v35 = 2112;
        v36 = v7;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@'%@' field is not a CKAsset on record %@: %@", buf, 0x2Au);

        v10 = v28;
      }

      objc_autoreleasePoolPop(v11);
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

id createInputStreamWithFilePath(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [MEMORY[0x277CBEAE0] inputStreamWithFileAtPath:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = objc_opt_class();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to create input stream for file at path: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if (a2)
    {
      *a2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    }
  }

  return v5;
}

id stringFromCKRecord(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v9 = a2;
  v10 = a3;
  if (!v10 || (readDataFromCKRecordOptionalAssetField(v8), (v11 = objc_claimAutoreleasedReturnValue()) == 0) || (v12 = v11, v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4], v12, !v13))
  {
    v14 = v8;
    v15 = v9;
    v16 = [v14 objectForKeyedSubscript:v15];
    v17 = v16;
    if (v16)
    {
      v44 = a5;
      v18 = v16;
      objc_opt_class();
      v19 = objc_opt_isKindOfClass() & 1;
      v20 = v19 ? v18 : 0;
      v39 = v20;

      context = objc_autoreleasePoolPush();
      v21 = objc_opt_class();
      v22 = HMFGetOSLogHandle();
      v23 = v22;
      if (v19)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v36 = HMFGetLogIdentifier();
          [v14 recordID];
          v24 = v41 = v9;
          [v24 hmbDescription];
          *buf = 138543874;
          v47 = v36;
          v48 = 2112;
          v49 = v15;
          v51 = v50 = 2112;
          v25 = v51;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Reading '%@' NSString for record %@", buf, 0x20u);

          v9 = v41;
        }

        objc_autoreleasePoolPop(context);
        v13 = v18;
        a5 = v44;
      }

      else
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          v37 = [v14 recordID];
          [v37 hmbDescription];
          v33 = v43 = v9;
          *buf = 138544130;
          v47 = v32;
          v48 = 2112;
          v49 = v15;
          v50 = 2112;
          v51 = v33;
          v52 = 2112;
          v53 = v18;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@'%@' field is not a NSData on record %@: %@", buf, 0x2Au);

          v9 = v43;
        }

        objc_autoreleasePoolPop(context);
        a5 = v44;
        if (v44)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
          *v44 = v13 = 0;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v42 = v9;
      v26 = objc_autoreleasePoolPush();
      v27 = objc_opt_class();
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v29 = v45 = a5;
        v30 = [v14 recordID];
        [v30 hmbDescription];
        v31 = v40 = v26;
        *buf = 138543874;
        v47 = v29;
        v48 = 2112;
        v49 = v15;
        v50 = 2112;
        v51 = v31;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Field '%@' does not exist on record %@", buf, 0x20u);

        v26 = v40;
        a5 = v45;
      }

      objc_autoreleasePoolPop(v26);
      if (a5)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
        *a5 = v13 = 0;
      }

      else
      {
        v13 = 0;
      }

      v9 = v42;
    }

    if (!v13)
    {
      goto LABEL_29;
    }
  }

  if ([v13 length])
  {
    v13 = v13;
    v34 = v13;
    goto LABEL_30;
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:51];
    *a5 = v34 = 0;
  }

  else
  {
LABEL_29:
    v34 = 0;
  }

LABEL_30:

  return v34;
}

uint64_t significantEventReasonFromVideoAnalyzerEventClass(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ([a1 isEqual:objc_opt_class()] & 1) != 0 || (objc_msgSend(a1, "isEqual:", objc_opt_class()))
  {
    return 2;
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return 3;
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return 4;
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return 5;
  }

  if (([a1 isEqual:objc_opt_class()] & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = 138543618;
      v7 = v5;
      v8 = 2112;
      v9 = a1;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@Unknown video analyzer event class: %@", &v6, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  return 1;
}

void __HMDNetworkRouterWANRulesFromHostNames_block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v4 = [[HMDNetworkRouterWANICMPRule alloc] initWithHostDNSName:a2 hostIPStart:0 hostIPEnd:0 icmpTypes:*(a1 + 32)];
  }

  else
  {
    v4 = [[HMDNetworkRouterWANPortRule alloc] initWithProtocol:*(a1 + 40) hostDNSName:a2 hostIPStart:0 hostIPEnd:0 hostPortStart:*(a1 + 48) hostPortEnd:*(a1 + 56)];
  }

  v5 = v4;

  [*(a1 + 64) addObject:v5];
}

void __HMDNetworkRouterWANRulesFromAddresses_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [HMDNetworkRouterIPAddress ipAddressFromRuleAddress:a2 allowWildcard:1];
  if (*(a1 + 32))
  {
    v3 = [[HMDNetworkRouterWANICMPRule alloc] initWithHostDNSName:0 hostIPStart:v5 hostIPEnd:0 icmpTypes:*(a1 + 32)];
  }

  else
  {
    v3 = [[HMDNetworkRouterWANPortRule alloc] initWithProtocol:*(a1 + 40) hostDNSName:0 hostIPStart:v5 hostIPEnd:0 hostPortStart:*(a1 + 48) hostPortEnd:*(a1 + 56)];
  }

  v4 = v3;
  [*(a1 + 64) addObject:v3];
}

HMDNetworkRouterLANIdentifierList *createIdentifierListFromLANRule(void *a1)
{
  v1 = MEMORY[0x277CFEC98];
  v2 = a1;
  v3 = [[v1 alloc] initWithValue:&unk_286628270];
  v4 = [MEMORY[0x277CBEB18] arrayWithObject:v3];
  v5 = [v2 areConnectionsWithOtherAccessoriesAllowed];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:&unk_2866282B8];
    [v4 addObject:v6];
  }

  v7 = [[HMDNetworkRouterLANIdentifierList alloc] initWithIdentifiers:v4];

  return v7;
}

void sub_25363F248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536430D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536465BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *HMDSleepConfigurationOperationStatusAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDSleepConfigurationOperationStatus %ld", a1];
  }

  else
  {
    v2 = off_279727A18[a1];
  }

  return v2;
}

__CFString *HMDSleepConfigurationOperationTypeAsString(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDSleepConfigurationOperationType %ld", a1];
  }

  else
  {
    v2 = off_279727A38[a1 - 1];
  }

  return v2;
}

uint64_t isAccessoryInDefaultGroup(void *a1)
{
  v1 = a1;
  v2 = [v1 defaultNetworkProtectionGroupUUID];
  if (v2)
  {
    v3 = [v1 networkProtectionGroupUUID];
    v4 = [v2 isEqual:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __HMDAccountAddHandle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && (os_unfair_lock_assert_owner(v3 + 4), ([*(v3 + 3) containsObject:v4] & 1) == 0))
  {
    v6 = [*(v3 + 3) mutableCopy];
    [v6 addObject:v4];
    v7 = objc_msgSend_copy(v6);
    v8 = *(v3 + 3);
    *(v3 + 3) = v7;

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __HMDAccountDidUpdateHandles(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = v1;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handles updated", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"HMDAccountHandlesUpdatedNotification" object:v3];
  }
}

uint64_t __HMDAccountAddDevice(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    os_unfair_lock_assert_owner(v3 + 4);
    if ([*(v3 + 4) containsObject:v5])
    {
      v6 = 0;
    }

    else
    {
      [*(v3 + 4) addObject:v5];
      v6 = 1;
    }
  }

  return v6;
}

void __HMDAccountDidAddDevice(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    os_unfair_lock_assert_not_owner(v3 + 4);
    v6 = objc_autoreleasePoolPush();
    v7 = v3;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Device added: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = @"HMDDeviceNotificationKey";
    v13 = v5;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v10 postNotificationName:@"HMDAccountAddedDeviceNotification" object:v7 userInfo:v11];
  }
}

id __HMDAccountRemoveHandle(void *a1, void *a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = a2;
    os_unfair_lock_assert_owner(v3 + 4);
    v5 = [*(v3 + 3) member:v4];

    if (v5)
    {
      v6 = [*(v3 + 3) mutableCopy];
      [v6 removeObject:v5];
      v7 = objc_msgSend_copy(v6);
      v8 = *(v3 + 3);
      *(v3 + 3) = v7;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __HMDAccountRemoveDevice(void *a1, void *a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = a2;
    os_unfair_lock_assert_owner(v3 + 4);
    v5 = [*(v3 + 4) member:v4];

    if (v5)
    {
      [*(v3 + 4) removeObject:v5];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __HMDAccountDidRemoveDevice(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    os_unfair_lock_assert_not_owner(v3 + 4);
    v5 = objc_autoreleasePoolPush();
    v6 = v3;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Device removed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = @"HMDDeviceNotificationKey";
    v12 = v4;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [v9 postNotificationName:@"HMDAccountRemovedDeviceNotification" object:v6 userInfo:v10];
  }
}

void sub_253667C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25366818C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536686E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253668E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__59239(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25366927C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253669650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253669D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25366A3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25366AB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25366D560(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

BOOL __lookupDeviceForRemoteCommands(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = [v3 accessory];
    v6 = [v5 home];
    if (v6)
    {
      v7 = v4;
      v8 = [v7 accessory];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      v11 = [v10 device];
      v12 = v11 != 0;
      if (v11)
      {
        context = objc_autoreleasePoolPush();
        v19 = v7;
        v13 = v7;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v21 = v17;
          v22 = 2112;
          v23 = v11;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Routing the command to the device backing the media accessory %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        v15 = v11;
        *a2 = v11;
        v7 = v19;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_25366DAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDLowPowerModeStateMachineDescription(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown (%@)", v3];
  }

  else
  {
    v1 = off_2797280A0[a1];
  }

  return v1;
}

id findMatchingCharacteristic(void *a1, void *a2)
{
  v3 = a1;
  v4 = @"00000221-0000-1000-8000-0026BB765291";
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __findMatchingCharacteristic_block_invoke;
  v9[3] = &unk_279728080;
  v10 = v3;
  v11 = @"00000221-0000-1000-8000-0026BB765291";
  v5 = @"00000221-0000-1000-8000-0026BB765291";
  v6 = v3;
  v7 = [a2 hmf_objectPassingTest:v9];

  return v7;
}

uint64_t __findMatchingCharacteristic_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 type];
    if ([v7 isEqualToString:*(a1 + 32)])
    {
      v8 = [v6 service];
      v9 = objc_msgSend_serviceType(v8);
      v10 = [v9 isEqualToString:*(a1 + 40)];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id deserializeObject(objc_class *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5 && [(objc_class *)a1 conformsToProtocol:&unk_286660C80])
  {
    v6 = objc_alloc_init(a1);
    v15 = 0;
    v7 = [v6 parseFromData:v5 error:&v15];
    v8 = v15;
    if (v8 || !v6 || (v7 & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = NSStringFromClass(a1);
        *buf = 138543874;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to create an object of class: %@ with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
  }

  if (objc_opt_isKindOfClass())
  {
    v6 = v6;
    v13 = v6;
    goto LABEL_16;
  }

LABEL_15:
  v13 = 0;
LABEL_16:

  return v13;
}

id HMDLowPowerModeOperationStatusDescription(unint64_t a1)
{
  v1 = HMDSleepConfigurationOperationStatusAsString(a1);
  v2 = [v1 stringByReplacingOccurrencesOfString:@"HMDSleepConfigurationOperationStatus" withString:&stru_286509E58];

  return v2;
}

id HMDLowPowerModeOperationTypeDescription(uint64_t a1)
{
  v1 = HMDSleepConfigurationOperationTypeAsString(a1);
  v2 = [v1 stringByReplacingOccurrencesOfString:@"HMDSleepConfigurationOperationType" withString:&stru_286509E58];

  return v2;
}

void sub_253671884(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id HMDLowPowerModeWoWLANInfoForSupportedSleepConfiguration(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v24 = [MEMORY[0x277CBEB18] array];
  v2 = [v1 version];
  v3 = [v2 value];
  v4 = [v3 unsignedCharValue];

  [v1 supportedWoLPacketConfigurations];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v23 = v1;
    v26 = 0;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v9 wakePacketType];
        v11 = [v10 value];

        v12 = [v9 wakeDestinationPort];
        v13 = [v12 value];
        v14 = [v13 unsignedShortValue];

        v15 = [v9 wakeDestinationAddress];
        v16 = [v9 wakeType];
        v17 = [v16 value];

        v18 = [v9 wakePattern];
        v19 = [[HMFWoWLANInfo alloc] initWithWakeVersion:v4 wakePort:v14 wakeAddress:v15 wakeType:v17 wakePacketType:v11 wakePattern:v18];
        v20 = v19;
        if (v19)
        {
          if (v26 || [(HMFWoWLANInfo *)v19 wakeType]!= 2)
          {
            [v24 addObject:v20];
          }

          else
          {
            v26 = v20;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
    v21 = v26;
    if (v26)
    {
      [v24 insertObject:v26 atIndex:0];
    }

    v1 = v23;
  }

  else
  {
    v21 = 0;
  }

  return v24;
}

void sub_253672434(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2536725CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2536730CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_253673F84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

uint64_t __HMDLowPowerModeUUIDFromAccessory_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"CB66A944-B172-4D2F-A5B4-DCF2F9CFB9D4"];
  v1 = HMDLowPowerModeUUIDFromAccessory_namespace;
  HMDLowPowerModeUUIDFromAccessory_namespace = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_25367650C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25367684C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253676B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253676EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536771E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HMDRemoteEventRouterProtoTopicReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 3)
      {
        v13 = &OBJC_IVAR___HMDRemoteEventRouterProtoTopic__eventUUID;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___HMDRemoteEventRouterProtoTopic__topic;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id entityFromObject(void *a1, int a2)
{
  v100 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x277D47358]);
  v5 = [v3 objectForKeyedSubscript:@"objectName"];
  [v4 setName:v5];

  v6 = [v3 objectForKeyedSubscript:@"objectType"];
  [v4 setEntityType:v6];

  v7 = MEMORY[0x277CBEBC0];
  v8 = [v3 objectForKeyedSubscript:@"objectIdentifier"];
  v9 = [v7 URLWithString:v8];
  [v4 setIdentifier:v9];

  if (a2)
  {
    v10 = [v3 hmf_arrayForKey:@"objectRelatedIdentifiers"];
    if ([v10 count])
    {
      v11 = hmd_urlsFromStrings(v10);
      [v4 setRelatedEntityIdentifiers:v11];
    }
  }

  v12 = [v3 objectForKeyedSubscript:@"objectHome"];

  if (v12)
  {
    v13 = [v3 objectForKeyedSubscript:@"objectHome"];
    [v4 setHome:v13];

    if (a2)
    {
      v14 = MEMORY[0x277CBEBC0];
      v15 = [v3 objectForKeyedSubscript:@"objectHomeIdentifier"];
      v16 = [v14 URLWithString:v15];
      [v4 setHomeIdentifier:v16];
    }
  }

  v17 = [v3 objectForKeyedSubscript:@"objectRoom"];

  if (v17)
  {
    v18 = [v3 objectForKeyedSubscript:@"objectRoom"];
    [v4 setRoom:v18];

    if (!a2)
    {
      goto LABEL_20;
    }

    v19 = MEMORY[0x277CBEBC0];
    v20 = [v3 objectForKeyedSubscript:@"objectRoomIdentifier"];
    v21 = [v19 URLWithString:v20];
    [v4 setRoomIdentifier:v21];
  }

  else if (!a2)
  {
    goto LABEL_20;
  }

  v22 = [v3 objectForKeyedSubscript:@"objectZones"];

  if (v22)
  {
    v23 = [v3 hmf_arrayForKey:@"objectZones"];
    v24 = [v23 firstObject];
    [v4 setZone:v24];

    v25 = [v3 hmf_arrayForKey:@"objectZoneIdentifiers"];
    if ([v25 count])
    {
      v26 = hmd_urlsFromStrings(v25);
      [v4 setZoneIdentifiers:v26];
    }
  }

  v27 = [v3 objectForKeyedSubscript:@"objectAccessoryPrimaryServiceIdentifier"];

  if (v27)
  {
    v28 = MEMORY[0x277CBEBC0];
    v29 = [v3 objectForKeyedSubscript:@"objectAccessoryPrimaryServiceIdentifier"];
    v30 = [v28 URLWithString:v29];
    [v4 setPrimaryServiceIdentifier:v30];
  }

  v31 = [v3 objectForKeyedSubscript:@"objectAccessory"];

  if (v31)
  {
    v32 = [v3 objectForKeyedSubscript:@"objectAccessory"];
    [v4 setAccessory:v32];

    v33 = MEMORY[0x277CBEBC0];
    v34 = [v3 objectForKeyedSubscript:@"objectAccessoryIdentifier"];
    v35 = [v33 URLWithString:v34];
    [v4 setAccessoryIdentifier:v35];
  }

LABEL_20:
  v36 = [v3 objectForKeyedSubscript:@"objectType"];
  v37 = [v36 isEqualToString:*MEMORY[0x277D48168]];

  if (v37)
  {
    v38 = [v3 objectForKeyedSubscript:@"objectSceneType"];
    v39 = mapToSiriSceneType(v38);
    [v4 setSceneType:v39];

    v40 = [v3 objectForKeyedSubscript:@"objectStatus"];
    [v4 setStatus:v40];

    v41 = [v3 objectForKeyedSubscript:@"objectSceneActions"];
    [v4 setSceneActions:v41];
  }

  v42 = +[HMDHAPMetadata getSharedInstance];
  v43 = [v3 objectForKeyedSubscript:@"objectServiceType"];
  v44 = [v3 objectForKeyedSubscript:@"objectServiceSubType"];
  v92 = v42;
  if (!v43)
  {
LABEL_41:
    if (!a2)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (([v43 isEqual:*MEMORY[0x277D48350]] & 1) == 0 && (objc_msgSend(v43, "isEqual:", *MEMORY[0x277D48270]) & 1) == 0 && !objc_msgSend(v43, "isEqual:", *MEMORY[0x277D48258]))
  {
    if ([v43 isEqualToString:*MEMORY[0x277D482E0]])
    {
      v50 = v4;
      v51 = v43;
    }

    else
    {
      v52 = [v42 mapToAssistantServiceName:v43];
      [v4 setServiceType:v52];

      v53 = objc_msgSend_serviceType(v4);

      if (v53)
      {
        goto LABEL_39;
      }

      v51 = *MEMORY[0x277D48298];
      v50 = v4;
    }

    [v50 setServiceType:v51];
LABEL_39:
    if (v44)
    {
      [v4 setServiceSubType:v44];
    }

    goto LABEL_41;
  }

  [v4 setServiceType:v43];
  if (v44)
  {
    [v4 setServiceSubType:v44];
  }

  if (a2)
  {
    v45 = getAttributeForMediaProfile(v4);
    [v4 setAttributes:v45];

    v46 = [v3 objectForKeyedSubscript:@"objectReference"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    v48 = v47;

    v49 = [v48 isCurrentAccessory];
    v42 = v92;
    if (v49)
    {
      [v4 setCurrentDevice:MEMORY[0x277CBEC38]];
    }

LABEL_42:
    v54 = [v3 objectForKeyedSubscript:@"objectHashedRouteUID"];

    if (v54)
    {
      v55 = [v3 objectForKeyedSubscript:@"objectHashedRouteUID"];
      [v4 setHashedRouteUID:v55];
    }
  }

LABEL_44:
  v56 = [v3 objectForKeyedSubscript:@"objectCharacteristics"];
  v57 = v56;
  if (a2 && v56)
  {
    v85 = v44;
    v86 = v43;
    v87 = a2;
    v88 = v3;
    v89 = v4;
    v58 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v56, "count")}];
    v42 = v92;
    v91 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v57, "count")}];
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v83 = v57;
    obj = v57;
    v59 = [obj countByEnumeratingWithState:&v95 objects:v99 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v96;
      do
      {
        for (i = 0; i != v60; ++i)
        {
          if (*v96 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v63 = *(*(&v95 + 1) + 8 * i);
          v64 = [v42 mapToAssistantCharacteristicName:{v63, v83}];
          if (v64)
          {
            v65 = [v42 mapReadCharacteristicFromAssistantName:v64];
            v66 = [v42 getAliasedCharacteristicTypes:v65];
            if (([v58 containsObject:v64] & 1) == 0 && ((objc_msgSend(v65, "isEqualToString:", v63) & 1) != 0 || objc_msgSend(v66, "containsObject:", v63)))
            {
              [v58 addObject:v64];
            }

            v67 = [v42 mapWriteCharacteristicFromAssistantName:v64];
            v68 = [v42 getAliasedCharacteristicTypes:v67];

            if (([v91 containsObject:v64] & 1) == 0 && ((objc_msgSend(v67, "isEqual:", v63) & 1) != 0 || objc_msgSend(v68, "containsObject:", v63)) && (HMFEqualObjects() & 1) == 0)
            {
              [v91 addObject:v64];
            }

            v42 = v92;
          }
        }

        v60 = [obj countByEnumeratingWithState:&v95 objects:v99 count:16];
      }

      while (v60);
    }

    v43 = v86;
    v3 = v88;
    v4 = v89;
    if ([v86 isEqualToString:*MEMORY[0x277CD0EA0]])
    {
      v69 = [v88 objectForKeyedSubscript:@"objectReference"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v70 = v69;
      }

      else
      {
        v70 = 0;
      }

      v71 = v70;

      v72 = [v71 accessory];
      v73 = [v72 lightProfiles];
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __entityFromObject_block_invoke;
      v93[3] = &unk_2797285D0;
      v94 = v71;
      v74 = v71;
      v75 = [v73 na_firstObjectPassingTest:v93];

      v76 = [v75 settings];
      LOBYTE(v73) = [v76 supportedFeatures];

      if (v73)
      {
        [v58 addObject:*MEMORY[0x277D47EC8]];
      }

      v42 = v92;
    }

    a2 = v87;
    v44 = v85;
    if ([v58 count])
    {
      [v89 setAttributes:v58];
      if ([v91 count])
      {
        [v89 setTargetAttributes:v91];
      }
    }

    v57 = v84;
  }

  if (a2)
  {
    v77 = [v3 objectForKey:@"objectGroups"];

    if (v77)
    {
      v78 = [v3 hmf_arrayForKey:@"objectGroups"];
      v79 = [v78 firstObject];
      [v4 setServiceGroup:v79];

      v80 = [v3 hmf_arrayForKey:@"objectGroupIdentifiers"];
      if ([v80 count])
      {
        v81 = hmd_urlsFromStrings(v80);
        [v4 setServiceGroupIdentifiers:v81];
      }

      v42 = v92;
    }
  }

  return v4;
}

id hmd_urlsFromStrings(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v24;
    v8 = 0x277CBE000uLL;
    *&v5 = 138543618;
    v21 = v5;
    do
    {
      v9 = 0;
      v22 = v6;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v11 = [*(v8 + 3008) URLWithString:{v10, v21}];
        if (v11)
        {
          [v2 addObject:v11];
        }

        else
        {
          v12 = objc_autoreleasePoolPush();
          v13 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v14 = v7;
            v15 = v8;
            v16 = v2;
            v18 = v17 = v3;
            *buf = v21;
            v28 = v18;
            v29 = 2112;
            v30 = v10;
            _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to map NSString '%@' to NSURL", buf, 0x16u);

            v3 = v17;
            v2 = v16;
            v8 = v15;
            v7 = v14;
            v6 = v22;
          }

          objc_autoreleasePoolPop(v12);
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v6);
  }

  v19 = objc_msgSend_copy(v2);

  return v19;
}

id mapToSiriSceneType(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x277D481B8];
  if ([v1 isEqualToString:*MEMORY[0x277CCF1B0]])
  {
    v3 = MEMORY[0x277D48198];
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CCF198]])
  {
    v3 = MEMORY[0x277D481A0];
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CCF180]])
  {
    v3 = MEMORY[0x277D481A8];
  }

  else
  {
    if (![v1 isEqualToString:*MEMORY[0x277CCF188]])
    {
      goto LABEL_10;
    }

    v3 = MEMORY[0x277D481B0];
  }

  v4 = *v3;

  v2 = v4;
LABEL_10:

  return v2;
}

id getAttributeForMediaProfile(void *a1)
{
  v1 = a1;
  if (getAttributeForMediaProfile_onceToken != -1)
  {
    dispatch_once(&getAttributeForMediaProfile_onceToken, &__block_literal_global_61493);
  }

  v2 = objc_msgSend_serviceType(v1);
  v3 = [v1 serviceSubType];
  if (v2)
  {
    v4 = [v1 entityType];
    v5 = [v4 isEqualToString:*MEMORY[0x277D48170]];

    if (v5)
    {
      if ([v2 isEqualToString:*MEMORY[0x277D48270]])
      {
        v6 = &getAttributeForMediaProfile_atvAttributes;
LABEL_15:
        v8 = *v6;
        goto LABEL_17;
      }

      v7 = *MEMORY[0x277D48350];
      if ([v2 isEqualToString:*MEMORY[0x277D48350]] && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D48200]) & 1) != 0)
      {
        v6 = &getAttributeForMediaProfile_homePodAttributes;
        goto LABEL_15;
      }

      if ([v2 isEqualToString:*MEMORY[0x277D48258]] && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D481C0]) & 1) != 0 || objc_msgSend(v2, "isEqualToString:", v7) && objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D481C0]))
      {
        v6 = &getAttributeForMediaProfile_thirdPartyAttributes;
        goto LABEL_15;
      }
    }
  }

  v8 = 0;
LABEL_17:

  return v8;
}

uint64_t __entityFromObject_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 service];
  v4 = [v2 isEqual:v3];

  return v4;
}

void __getAttributeForMediaProfile_block_invoke()
{
  v9[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D48000];
  v9[0] = *MEMORY[0x277D48048];
  v9[1] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v2 = getAttributeForMediaProfile_atvAttributes;
  getAttributeForMediaProfile_atvAttributes = v1;

  v8 = v0;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v4 = getAttributeForMediaProfile_homePodAttributes;
  getAttributeForMediaProfile_homePodAttributes = v3;

  v7 = v0;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
  v6 = getAttributeForMediaProfile_thirdPartyAttributes;
  getAttributeForMediaProfile_thirdPartyAttributes = v5;
}

id entityForService(void *a1, void *a2, void *a3, int a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = a3;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v21 = a4;
    v22 = v8;
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [v14 objectForKeyedSubscript:@"objectIdentifier"];
        v16 = [v7 urlString];
        v17 = [v16 isEqual:v15];

        if (v17)
        {
          v19 = entityFromObject(v14, v21);
          v18 = v19;
          v8 = v22;
          if (v22)
          {
            [v19 setServiceType:v22];
          }

          goto LABEL_14;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v18 = 0;
    v8 = v22;
  }

  else
  {
    v18 = 0;
  }

LABEL_14:

  return v18;
}

id entityForMediaProfile(void *a1, void *a2, int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = a2;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v17 = a3;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"objectIdentifier"];
        v13 = [v5 urlString];
        v14 = [v13 isEqual:v12];

        if (v14)
        {
          v15 = entityFromObject(v11, v17);

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

void __HMDHomeDataCopyProperties(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v54 = a1;
  v6 = [v5 homes];
  v7 = [v6 copyWithZone:a3];
  v8 = v54[2];
  v54[2] = v7;

  v9 = [v5 accessories];
  v10 = [v9 copyWithZone:a3];
  v11 = v54[3];
  v54[3] = v10;

  v12 = [v5 primaryHomeUUID];
  v13 = [v12 copyWithZone:a3];
  v14 = v54[4];
  v54[4] = v13;

  v15 = [v5 lastCurrentHomeUUID];
  v16 = [v15 copyWithZone:a3];
  v17 = v54[5];
  v54[5] = v16;

  v54[7] = [v5 schemaVersion];
  v54[6] = [v5 dataVersion];
  v54[8] = [v5 recoveryVersion];
  v18 = [v5 dataTag];
  v19 = [v18 copyWithZone:a3];
  v20 = v54[9];
  v54[9] = v19;

  v21 = [v5 UUIDsOfRemovedHomes];
  v22 = [v21 copyWithZone:a3];
  v23 = v54[10];
  v54[10] = v22;

  v24 = [v5 cloudZones];
  v25 = [v24 copyWithZone:a3];
  v26 = v54[11];
  v54[11] = v25;

  v27 = [v5 incomingInvitations];
  v28 = [v27 copyWithZone:a3];
  v29 = v54[12];
  v54[12] = v28;

  v30 = [v5 currentDevice];
  v31 = [v30 copyWithZone:a3];
  v32 = v54[13];
  v54[13] = v31;

  v33 = [v5 pendingReasonSaved];
  v34 = [v33 copyWithZone:a3];
  v35 = v54[14];
  v54[14] = v34;

  v36 = [v5 pendingUserManagementOperations];
  v37 = [v36 copyWithZone:a3];
  v38 = v54[15];
  v54[15] = v37;

  v39 = [v5 unprocessedOperationIdentifiers];
  v40 = [v39 copyWithZone:a3];
  v41 = v54[16];
  v54[16] = v40;

  v42 = [v5 applicationData];
  v43 = [v42 copyWithZone:a3];
  v44 = v54[17];
  v54[17] = v43;

  v54[18] = [v5 residentEnabledState];
  v45 = [v5 account];
  v46 = v54[19];
  v54[19] = v45;

  v47 = [v5 remoteAccounts];
  v48 = [v47 copyWithZone:a3];
  v49 = v54[20];
  v54[20] = v48;

  v50 = [v5 primaryAccountHandle];
  v51 = v54[21];
  v54[21] = v50;

  *(v54 + 8) = [v5 accessAllowedWhenLocked];
  v52 = [v5 demoAccessories];
  v53 = v54[22];
  v54[22] = v52;

  LOBYTE(a3) = [v5 demoFinalized];
  *(v54 + 9) = a3;
}

void sub_25368AF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__62366(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253691304(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id anonymizeUnknownVendorString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (anonymizeUnknownVendorString_onceToken != -1)
    {
      dispatch_once(&anonymizeUnknownVendorString_onceToken, &__block_literal_global_64717);
    }

    if (([anonymizeUnknownVendorString_allowedNames containsObject:v1] & 1) != 0 || objc_msgSend(v1, "length") <= 2)
    {
      v3 = v1;
    }

    else
    {
      v2 = [v1 substringToIndex:2];
      v3 = [@"unknown: " stringByAppendingString:v2];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __anonymizeUnknownVendorString_block_invoke()
{
  v0 = anonymizeUnknownVendorString_allowedNames;
  anonymizeUnknownVendorString_allowedNames = &unk_286626EF0;
}

void sub_2536B5058(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_2536B57E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536B5CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536B74A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536B7DA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2536B8D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__66458(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___legacyMultiUserSettings_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = objc_alloc_init(HMDAnalyticsMultiUserSettingsValueByKeyPath);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    if ([v7 isEqualToString:@"private.root.home.dismissedUserSplitMediaAccountWarning"])
    {
      v8 = 2;
    }

    else if ([v7 isEqualToString:@"private.root.home.dismissedIdentifyVoiceOnboarding"])
    {
      v8 = 4;
    }

    else if ([v7 isEqualToString:@"private.root.home.dismissedTVViewingProfileOnboarding"])
    {
      v8 = 6;
    }

    else if ([v7 isEqualToString:@"private.root.home.dismissedTVViewingProfileSetupBanner"])
    {
      v8 = 7;
    }

    else if ([v7 isEqualToString:@"private.root.home.dismissedCameraRecordingOnboarding"])
    {
      v8 = 8;
    }

    else if ([v7 isEqualToString:@"private.root.home.dismissedCameraRecordingSetupBanner"])
    {
      v8 = 9;
    }

    else if ([v7 isEqualToString:@"shared.root.siri.identifyVoice"])
    {
      v8 = 10;
    }

    else if ([v7 isEqualToString:@"shared.root.music.playbackInfluencesForYou"])
    {
      v8 = 11;
    }

    else
    {
      v8 = [v7 isEqualToString:@"private.root.home.dismissedIdentifyVoiceSetupBanner"] ? 5 : 0;
    }

    [(HMDAnalyticsMultiUserSettingsValueByKeyPath *)v6 setType:v8];
    if ([(HMDAnalyticsMultiUserSettingsValueByKeyPath *)v6 type])
    {
      v9 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      v12 = [v11 longLongValue];
      [(HMDAnalyticsMultiUserSettingsValueByKeyPath *)v6 setMultiUserSettingsValueInteger:v12];
      [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
    }
  }
}

void sub_2536C1698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2536C422C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __HMDHH2AutoMigrationHasRealSharedUserForHome_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isOwner] & 1) != 0 || (objc_msgSend(v2, "isRemoteGateway"))
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 userID];
    v3 = v4 != 0;
  }

  return v3;
}

uint64_t HMDHH2AutoMigrationHasSharedUserOrPendingInvitation(void *a1)
{
  v1 = a1;
  v2 = [v1 users];
  v3 = [v2 na_any:&__block_literal_global_226_66759];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 outgoingInvitations];
    v4 = [v5 na_any:&__block_literal_global_224_66782];
  }

  return v4;
}

void sub_2536C9F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536CF960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, id a24)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a24);
  _Unwind_Resume(a1);
}

void __HMDCompanionManagerUpdateWithConnectedDevices(void *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v29 = a1;
  v30 = a2;
  if (v29)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = v29;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v6;
      v38 = 2112;
      v39 = v30;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Updating connected devices: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = v30;
    v8 = [(HMDDevice *)v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v8)
    {
      v9 = *v32;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          if ([HMDCompanionManager isCompatibleCompanionDevice:v11, v29])
          {
            v12 = [HMDDevice alloc];
            v13 = [(os_unfair_lock_s *)v4 service];
            v14 = [(HMDDevice *)v12 initWithService:v13 device:v11];

            if (v14)
            {
              v19 = objc_autoreleasePoolPush();
              v20 = v4;
              v21 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                v22 = HMFGetLogIdentifier();
                *buf = 138543618;
                v37 = v22;
                v38 = 2112;
                v39 = v14;
                _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Found connected companion device: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v19);
              goto LABEL_19;
            }
          }
        }

        v8 = [(HMDDevice *)v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v15 = objc_autoreleasePoolPush();
    v16 = v4;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@No connected companion found", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
LABEL_19:
    os_unfair_lock_lock_with_options();
    if (HMFEqualObjects())
    {
      os_unfair_lock_unlock(v4 + 2);
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v4;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [(HMDDevice *)v14 shortDescription];
        *buf = 138543618;
        v37 = v26;
        v38 = 2112;
        v39 = v27;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Updated companion to: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      objc_storeStrong(v24 + 3, v14);
      os_unfair_lock_unlock(v4 + 2);
      v28 = [MEMORY[0x277CCAB98] defaultCenter];
      [v28 postNotificationName:@"HMDCompanionManagerUpdatedCompanionNotification" object:v24];
    }
  }
}

void sub_2536D5654(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void __run(void *a1)
{
  v1 = a1;
  v2 = v1[20];
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = v1;
        [v1 _configureDevice];
        break;
      case 5:
        v3 = v1;
        [v1 _waitForPostWACMatch];
        break;
      case 6:
        v3 = v1;
        [v1 _postWACMatchTimeout];
        break;
      default:
        goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!v2)
  {
    v1[20] = 1;
    goto LABEL_12;
  }

  if (v2 == 1)
  {
LABEL_12:
    v3 = v1;
    [v1 _requestUserPermission];
LABEL_13:
    v1 = v3;
  }

LABEL_14:
}

void __callCompletion(void *a1, void *a2, void *a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  [v7[19] cancel];
  v10 = v7[19];
  v7[19] = 0;

  v11 = v7[21];
  v7[21] = 0;

  if (v7[18])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v7;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2080;
      v20 = a4;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Calling completion from %s", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    (*(v13[18] + 2))();
    v16 = v13[18];
    v13[18] = 0;
  }
}

__CFString *HMDXPCCounterTypeAsString(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v1 = @"XPCSentNotifications";
      goto LABEL_7;
    case 1:
      v1 = @"XPCErroredRequests";
      goto LABEL_7;
    case 0:
      v1 = @"XPCAcceptedRequests";
LABEL_7:
      v2 = v1;
      goto LABEL_9;
  }

  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown counter type:%lu", a1];
LABEL_9:

  return v1;
}

void sub_2536E0B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536E1098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HMDSWAuthFeaturesToString(char a1)
{
  if (a1)
  {
    v2 = [@"<" stringByAppendingString:@" HAP"];
    if ((a1 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = @"<";
  if ((a1 & 2) != 0)
  {
LABEL_5:
    v3 = [(__CFString *)v2 stringByAppendingString:@" HAPAirPlay2"];

    v2 = v3;
  }

LABEL_6:
  v4 = [(__CFString *)v2 stringByAppendingString:@" >"];

  return v4;
}

void sub_2536E2014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id DateFromEpochInterval(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x277CBEAA8];
    [a1 doubleValue];
    a1 = [v2 dateWithTimeIntervalSince1970:?];
    v1 = vars8;
  }

  return a1;
}

void sub_2536F3404(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2536F5C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536F64DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(v28);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536F6768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253702108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253706A90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25370A108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25370D080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void BFSTraverseGroupWithBlock(void *a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = 0x277CBE000uLL;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = v3;
  [v6 addObject:v3];
  for (; [v6 count]; v5 = 0x277CBE000)
  {
    v7 = v6;
    v6 = objc_alloc_init(*(v5 + 2840));
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v26 + 1) + 8 * v11);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v13 = [v12 groups];
          v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v23;
            do
            {
              v17 = 0;
              do
              {
                if (*v23 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                [v6 addObject:*(*(&v22 + 1) + 8 * v17++)];
              }

              while (v15 != v17);
              v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v15);
          }

          v18 = [v12 settings];
          v19 = v4[2](v4, v12, v18);

          if (!v19)
          {

            goto LABEL_20;
          }

          ++v11;
        }

        while (v11 != v9);
        v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_20:
}

uint64_t isReconfigurationPossible(void *a1)
{
  v1 = a1;
  if ([v1 supportsWiFiReconfiguration])
  {
    v2 = [v1 isReachable];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __modelIdentifierForURI(void *a1, void *a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (__modelIdentifierForURI_onceToken != -1)
  {
    dispatch_once(&__modelIdentifierForURI_onceToken, &__block_literal_global_232);
  }

  v5 = MEMORY[0x277CCAD78];
  if (v4)
  {
    v6 = __modelIdentifierForURI_namespace;
    v7 = [v4 UUIDString];
    v14[0] = v7;
    v8 = [v3 prefixedURI];
    v14[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v10 = [v5 hm_deriveUUIDFromBaseUUID:v6 withSalts:v9];
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v12 = __modelIdentifierForURI_namespace;
    v7 = [v3 prefixedURI];
    v8 = [v7 dataUsingEncoding:4];
    v10 = [v11 initWithNamespace:v12 data:v8];
  }

  return v10;
}

uint64_t ____modelIdentifierForURI_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"F48EA8E5-696C-4EA4-B767-16D13368CB16"];
  v1 = __modelIdentifierForURI_namespace;
  __modelIdentifierForURI_namespace = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_253719BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__76247(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ____identifierForURI_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"297A1FDB-8A3E-443F-A8A8-1F3360785587"];
  v1 = __identifierForURI_namespace;
  __identifierForURI_namespace = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void addLogEventsToResponse(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:v8];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    [v6 setObject:v7 forKeyedSubscript:v8];
  }

  [v7 addObjectsFromArray:v5];
}

id Siri_log()
{
  if (Siri_log__hmf_once_t0 != -1)
  {
    dispatch_once(&Siri_log__hmf_once_t0, &__block_literal_global_78093);
  }

  v1 = Siri_log__hmf_once_v1;

  return v1;
}

void sub_2537305A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253731178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25373222C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__79184(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253734408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253734D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253735C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__79595(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25373656C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253736EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2537377F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253738224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_253738D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253739AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id parseMediaSourceDisplayOrder(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  if ([v3 length])
  {
    [v3 bytes];
    [v3 length];
    v4 = [MEMORY[0x277CBEB18] array];
    *&v5 = 138543618;
    v12 = v5;
    do
    {
      Next = TLV8GetNext();
    }

    while (!Next);
    if (Next != -6727)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        *buf = v12;
        v14 = v9;
        v15 = 2112;
        v16 = v3;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@TLV parsing failed - %@ - dropping", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v4 = 0;
    }

    v10 = objc_msgSend_copy(v4, v12);
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

uint64_t HMDRemoteEventRouterProtoDisconnectMessageReadFrom(void *a1)
{
  while (1)
  {
    v2 = [a1 position];
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v12 = 0;
      v6 = [a1 position] + 1;
      if (v6 >= [a1 position] && (v7 = objc_msgSend(a1, "position") + 1, v7 <= objc_msgSend(a1, "length")))
      {
        v8 = [a1 data];
        [v8 getBytes:&v12 range:{objc_msgSend(a1, "position"), 1}];

        [a1 setPosition:{objc_msgSend(a1, "position") + 1}];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v12 & 0x7F) << v3;
      if ((v12 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_15;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_15:
    if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a1 hasError] ^ 1;
}

void ____transactionSettingUpdated_block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Sent updated setting notification. Error : %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_253752688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537534BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id location)
{
  objc_destroyWeak((v13 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253760448(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253760608(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t getAccessoryFirmwareUpdateActiveTransport(void *a1)
{
  v1 = a1;
  if ([v1 isReachable])
  {
    if ([v1 isThreadTheCurrentlyActiveTransport])
    {
      v2 = 4;
    }

    else if ([v1 hasBTLELink])
    {
      v2 = 3;
    }

    else if ([v1 hasIPLink])
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void sub_253762160(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_253762758(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2537633A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __disconnectFromEndpoint(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 externalDevice];
    v4 = v3;
    if (v3 && [v3 connectionState] != 3)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        v9 = 138543618;
        v10 = v7;
        v11 = 2112;
        v12 = v2;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Resetting the connection state callback for endpoint %@", &v9, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      v8 = dispatch_get_global_queue(0, 0);
      [v4 setConnectionStateCallback:0 withQueue:v8];

      [v4 disconnect:0];
    }
  }
}

void sub_253764108(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *AVCVideoCodecTypeAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"kAVCCodecTypeHEVC";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown AVC video codec type (%ld)", a1];
    }
  }

  else
  {
    v2 = @"kAVCCodecTypeH264";
  }

  return v2;
}

__CFString *AVCCipherSuiteAsString(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown AVC cipher suite (%ld)", a1];
  }

  else
  {
    v2 = off_279729560[a1];
  }

  return v2;
}

void sub_253769B6C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253769BFC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25376CEB8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t __shouldAcceptMessage(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 accessory];
  if ([v5 isCurrentAccessory] & 1) != 0 || (objc_msgSend(v5, "supportsFirmwareUpdate"))
  {
    v6 = 1;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = v3;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Cannot update state for other accessory", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v6 = [v4 responseHandler];

    if (v6)
    {
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
      v13 = [v4 responseHandler];
      (v13)[2](v13, v12, 0);

      v6 = 0;
    }
  }

  return v6;
}

void __registerDocumentationMetadata(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [v3 dataSource];
    v6 = [v5 notificationCenterForSoftwareUpdate:v3];
    [v6 removeObserver:v3 name:@"HMDSoftwareUpdateDocumentationAssetStateUpdatedNotification" object:0];
    if (v4)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = v3;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v14 = 138543618;
        v15 = v10;
        v16 = 2112;
        v17 = v4;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Registering documentation metadata: %@", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v11 = +[HMDSoftwareUpdateDocumentationManager sharedManager];
      [v11 registerDocumentationMetadata:v4];

      v12 = +[HMDSoftwareUpdateDocumentationManager sharedManager];
      v13 = [v12 assetForDocumentationMetadata:v4];

      [v6 addObserver:v8 selector:sel__handleDocumentationStateNotification_ name:@"HMDSoftwareUpdateDocumentationAssetStateUpdatedNotification" object:v13];
    }
  }
}

void __unregisterDocumentationMetadata(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [v3 dataSource];
    v7 = [v6 notificationCenterForSoftwareUpdate:v3];
    [v7 removeObserver:v3 name:@"HMDSoftwareUpdateDocumentationAssetStateUpdatedNotification" object:0];
    v8 = objc_autoreleasePoolPush();
    v9 = v3;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Unregistering documentation metadata: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = +[HMDSoftwareUpdateDocumentationManager sharedManager];
    [v12 unregisterDocumentationMetadata:v5];
  }
}

void sub_253771700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void notifyObservers(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v12++) updatedCounter:v8 fromOldValue:a3 toNewValue:a4];
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

void sub_253773060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__85878(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253773C54(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id __findAssociatedCharacteristicWithService(void *a1, uint64_t a2)
{
  v2 = [a1 characteristicsOfType:a2];
  v3 = [v2 firstObject];

  return v3;
}

void sub_253778420(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2537784AC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253778AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253779068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253779370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25377947C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25377AAB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25377ADEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25377AF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25377B6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25377C03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25377C4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25377E444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25377E758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *HMDStringFromDataStreamBulkSendResponsePayloadStatus(uint64_t a1)
{
  if (a1 - 1) < 9 && ((0x11Bu >> (a1 - 1)))
  {
    v2 = off_279729718[(a1 - 1)];
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<unknown status: %d>", a1];
  }

  return v2;
}

__CFString *HMDStringFromDataStreamMessageStatus(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<unknown status: %d>", a1];
  }

  else
  {
    v2 = off_279729760[a1];
  }

  return v2;
}

void sub_25378B928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_25378C1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25378D710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25378D8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25378EBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25378F3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location)
{
  objc_destroyWeak((v39 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25379096C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253790F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537922EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253792518(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25379298C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253799D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25379C194(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 120));
  _Block_object_dispose((v2 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25379F934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id failedActionResultFor(void *a1)
{
  v1 = MEMORY[0x277D47338];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v2 actions];
  v5 = [v4 firstObject];
  v6 = [v5 aceId];
  [v3 setRequestActionId:v6];

  [v3 setOutcome:*MEMORY[0x277D47DE0]];
  v7 = [v2 actions];
  v8 = [v7 firstObject];
  v9 = [v8 value];
  [v3 setResultValue:v9];

  v10 = [v2 actions];

  v11 = [v10 firstObject];
  v12 = [v11 attribute];
  [v3 setResultAttribute:v12];

  return v3;
}

void __mapToFailureActionOutcome_block_invoke()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D47DE8];
  v1 = *MEMORY[0x277D480F8];
  v5[0] = *MEMORY[0x277D480D8];
  v5[1] = v1;
  v2 = *MEMORY[0x277D47E18];
  v6[0] = v0;
  v6[1] = v2;
  v5[2] = *MEMORY[0x277D48120];
  v6[2] = *MEMORY[0x277D47E28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v4 = mapToFailureActionOutcome_outcomeMap;
  mapToFailureActionOutcome_outcomeMap = v3;
}

void sub_2537A1970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __configurationFromAdvertisement(void *a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    v6 = [v4 name];
    v7 = [v3 name];
    v8 = HMFEqualObjects();

    if ((v8 & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v3;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [v4 name];
        *buf = 138543618;
        v35 = v12;
        v36 = 2112;
        v37 = v13;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Detected that the accessory name, %@, is out of sync", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v14 = [v10 name];
      [v5 setObject:v14 forKeyedSubscript:@"name"];
    }

    v15 = [v3 home];
    v16 = [v15 mediaPassword];
    v17 = [v3 password];
    v18 = HMFEqualObjects();

    if ((v18 & 1) == 0)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v3;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v35 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Detected that the accessory password is out of sync", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      if (v16)
      {
        v23 = v16;
      }

      else
      {
        v23 = &stru_286509E58;
      }

      [v5 setObject:v23 forKeyedSubscript:@"password"];
    }

    v24 = [v15 minimumMediaUserPrivilege];
    if ([v3 minimumUserPriviledge] != v24)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v3;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = HMFGetLogIdentifier();
        [v26 minimumUserPriviledge];
        HMUserPrivilegeToString();
        v29 = v33 = v25;
        *buf = 138543618;
        v35 = v28;
        v36 = 2112;
        v37 = v29;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Detected that the accessory minimum user privilege, %@, is out of sync", buf, 0x16u);

        v25 = v33;
      }

      objc_autoreleasePoolPop(v25);
      v30 = [MEMORY[0x277CCABB0] numberWithInteger:v24];
      [v5 setObject:v30 forKeyedSubscript:@"privilege"];
    }

    v31 = objc_msgSend_copy(v5);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

void __updateConfiguration(void *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  if (v5)
  {
    v9 = v5;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v11;
      v40 = 2112;
      v41 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating configuration to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [v9 home];
    v13 = [v12 isOwnerUser];

    if (v13)
    {
      v14 = [v9 advertisement];
      v15 = [v14 outputDevice];
      v16 = [v15 av_OutputDevice];

      if (v16)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = ____updateConfiguration_block_invoke;
        aBlock[3] = &unk_279729D10;
        v36 = v6;
        v17 = v9;
        v37 = v17;
        v18 = _Block_copy(aBlock);
        objc_initWeak(buf, v17);
        v19 = __outputDeviceConfigurationOptions();
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = ____updateConfiguration_block_invoke_223;
        v31[3] = &unk_279729CA0;
        v32 = v14;
        objc_copyWeak(&v34, buf);
        v33 = v7;
        [v16 configureUsingBlock:v18 options:v19 completionHandler:v31];

        objc_destroyWeak(&v34);
        objc_destroyWeak(buf);

        v20 = v36;
      }

      else
      {
        v27 = objc_autoreleasePoolPush();
        v28 = v9;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543362;
          v39 = v30;
          _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Missing output device", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v27);
        __startConfigurationRetryTimer(v28);
        v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
        (*(v7 + 2))(v7, v20);
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v9;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v26;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Only owner can update configuration", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
      (*(v7 + 2))(v7, v14);
    }
  }

  else
  {
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Missing required paramter", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (*(v7 + 2))(v7, v14);
  }
}

void sub_2537A2364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __stopConfigurationRetryTimer(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ____stopConfigurationRetryTimer_block_invoke;
    block[3] = &unk_279735D00;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void ____stopConfigurationRetryTimer_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) configurationRetryTimer];

  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping configuration retry timer", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = [*(a1 + 32) configurationRetryTimer];
    [v7 suspend];

    v8 = *(a1 + 32);
    v9 = *(v8 + 520);
    *(v8 + 520) = 0;
  }
}

void __startConfigurationRetryTimer(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ____startConfigurationRetryTimer_block_invoke;
    block[3] = &unk_279735D00;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void ____updateConfiguration_block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) hmf_stringForKey:@"name"];
  if (v4)
  {
    [v3 setDeviceName:v4];
  }

  v5 = [*(a1 + 32) hmf_stringForKey:@"password"];
  if (v5)
  {
    [v3 setDevicePassword:v5];
  }

  v6 = [*(a1 + 32) hmf_numberForKey:@"privilege"];
  v7 = v6;
  if (v6)
  {
    [v3 startAutomaticallyAllowingConnectionsFromPeersInHomeGroupAndRejectOtherConnections:{objc_msgSend(v6, "integerValue") != 0}];
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring with configuration: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
}