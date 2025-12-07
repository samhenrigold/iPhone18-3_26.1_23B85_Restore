@interface ULScanningEventMO
+ (id)createFromDO:(const void *)o withLoiMO:(id)mO inManagedObjectContext:(id)context;
- (optional<ULScanningEventDO>)convertToDO;
@end

@implementation ULScanningEventMO

+ (id)createFromDO:(const void *)o withLoiMO:(id)mO inManagedObjectContext:(id)context
{
  mOCopy = mO;
  contextCopy = context;
  v9 = [[ULScanningEventMO alloc] initWithContext:contextCopy];
  if (*(o + 39) >= 0)
  {
    v10 = o + 16;
  }

  else
  {
    v10 = *(o + 2);
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  [(ULScanningEventMO *)v9 setDeviceIdentifier:v11];

  [(ULScanningEventMO *)v9 setLoi:mOCopy];
  [(ULScanningEventMO *)v9 setBleSuspended:*(o + 59)];
  [(ULScanningEventMO *)v9 setUwbSuspended:*(o + 58)];
  [(ULScanningEventMO *)v9 setWifiDisabled:*(o + 60)];
  [(ULScanningEventMO *)v9 setMotionState:*(o + 31)];
  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:o];
  uUIDString = [v12 UUIDString];
  [(ULScanningEventMO *)v9 setScanEventUUID:uUIDString];

  [(ULScanningEventMO *)v9 setScanResult:*(o + 28)];
  [(ULScanningEventMO *)v9 setScanType:*(o + 20)];
  [(ULScanningEventMO *)v9 setTimestamp:*(o + 6)];
  if (*(o + 192) == 1)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:CLMacAddress::toUint64(o + 22)];
    [(ULScanningEventMO *)v9 setWifiAssociationBSSID:v14];

    if ((*(o + 192) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v15 = [MEMORY[0x277CCABB0] numberWithInt:*(o + 46)];
    [(ULScanningEventMO *)v9 setWifiAssociationRSSI:v15];
  }

  else
  {
    [(ULScanningEventMO *)v9 setWifiAssociationBSSID:0];
    [(ULScanningEventMO *)v9 setWifiAssociationRSSI:0];
  }

  v16 = *(o + 11);
  for (i = *(o + 12); v16 != i; v16 += 32)
  {
    v18 = [ULWiFiMeasurementMO createFromDO:v16 withScanningEventMO:v9 inManagedObjectContext:contextCopy];
    [(ULScanningEventMO *)v9 addWifiMeasurementsObject:v18];
  }

  v19 = *(o + 14);
  for (j = *(o + 15); v19 != j; v19 += 32)
  {
    v21 = [ULBLEMeasurementMO createFromDO:v19 withScanningEventMO:v9 inManagedObjectContext:contextCopy];
    [(ULScanningEventMO *)v9 addBleMeasurementsObject:v21];
  }

  v22 = *(o + 17);
  for (k = *(o + 18); v22 != k; v22 += 32)
  {
    v24 = [ULUWBMeasurementMO createFromDO:v22 withScanningEventMO:v9 inManagedObjectContext:contextCopy];
    [(ULScanningEventMO *)v9 addUwbMeasurementsObject:v24];
  }

  v25 = *(o + 25);
  for (m = *(o + 26); v25 != m; v25 += 32)
  {
    v27 = [ULPhotoFeaturesMO createFromDO:v25 withScanningEventMO:v9 inManagedObjectContext:contextCopy];
    [(ULScanningEventMO *)v9 addPhotoFeaturesObject:v27];
  }

  if (*(o + 264))
  {
    v28 = [ULMagnetometerMO createFromDO:o + 224 withScanningEventMO:v9 inManagedObjectContext:contextCopy];
    [(ULScanningEventMO *)v9 setMagnetometer:v28];
  }

  return v9;
}

- (optional<ULScanningEventDO>)convertToDO
{
  v90 = *MEMORY[0x277D85DE8];
  [(ULScanningEventMO *)self timestamp:a4];
  v84 = v17;
  scanEventUUID = [(ULScanningEventMO *)self scanEventUUID];
  v19 = scanEventUUID;
  if (scanEventUUID)
  {
    objc_msgSend_boostUUID(scanEventUUID);
  }

  else
  {
    v88 = 0uLL;
    v89 = 0;
  }

  if (v89)
  {
    deviceIdentifier = [(ULScanningEventMO *)self deviceIdentifier];
    v21 = deviceIdentifier;
    if (deviceIdentifier)
    {
      objc_msgSend_stdString(deviceIdentifier);
    }

    else
    {
      v82 = 0u;
      v83 = 0u;
    }

    if ((BYTE8(v83) & 1) == 0)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULScanningEventMO convertToDO];
      }

      v24 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
      {
        *buf[0].var0.data = 0;
        _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_DEBUG, "convertToDO: scanningEvent's deviceIdentifier has no value, overriding to local platform", buf[0].var0.data, 2u);
      }

      deviceClass = [MEMORY[0x277D28868] deviceClass];
      v26 = deviceClass;
      *buf[0].var0.data = [deviceClass UTF8String];
      std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(&v82, buf);
    }

    LOBYTE(v80) = 0;
    v81 = 0;
    wifiAssociationBSSID = [(ULScanningEventMO *)self wifiAssociationBSSID];
    if (wifiAssociationBSSID)
    {
      wifiAssociationRSSI = [(ULScanningEventMO *)self wifiAssociationRSSI];
      v29 = wifiAssociationRSSI == 0;

      if (!v29)
      {
        wifiAssociationBSSID2 = [(ULScanningEventMO *)self wifiAssociationBSSID];
        ULHomeSlamModel::getTrajectoryPointCloud([wifiAssociationBSSID2 unsignedLongLongValue]);
        v32 = v31;

        wifiAssociationRSSI2 = [(ULScanningEventMO *)self wifiAssociationRSSI];
        v81 = !v81;
        *&v80 = v32;
        DWORD2(v80) = [wifiAssociationRSSI2 intValue];
      }
    }

    wifiAssociationBSSID3 = [(ULScanningEventMO *)self wifiAssociationBSSID];
    v35 = wifiAssociationBSSID3 == 0;

    if (!v35)
    {
      wifiAssociationBSSID4 = [(ULScanningEventMO *)self wifiAssociationBSSID];
      ULHomeSlamModel::getTrajectoryPointCloud([wifiAssociationBSSID4 unsignedLongLongValue]);
    }

    v37 = [(ULScanningEventMO *)self loi];
    loiId = [v37 loiId];
    v39 = loiId;
    if (loiId)
    {
      objc_msgSend_boostUUID(loiId);
    }

    else
    {
      v86 = 0uLL;
      v87 = 0;
    }

    if (v87)
    {
      labels = [(ULScanningEventMO *)self labels];
      allObjects = [labels allObjects];
      ULDBUtils::convertManagedObjectsToDataObjects<ULLabelDOAndObjectID,ULLabelMO>(allObjects, buf);
      var0 = buf[0].var0;
      v78 = buf[0].var1.var0.var1.var0;
      memset(buf, 0, 24);
      v79 = 1;
      *v61.data = buf;
      std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](&v61);

      if (v79)
      {
        memset(v75, 0, sizeof(v75));
        std::vector<ULLabelDOAndObjectID>::__init_with_size[abi:ne200100]<ULLabelDOAndObjectID*,ULLabelDOAndObjectID*>(v75, *var0.data, *&var0.data[8], 0xF0F0F0F0F0F0F0F1 * ((*&var0.data[8] - *var0.data) >> 3));
        ULLabelDOAndObjectID::labelDOs(v75, v76);
        *buf[0].var0.data = v75;
        std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](buf);
        wifiMeasurements = [(ULScanningEventMO *)self wifiMeasurements];
        allObjects2 = [wifiMeasurements allObjects];
        ULDBUtils::convertManagedObjectsToDataObjects<ULWiFiMeasurementDO,ULWiFiMeasurementMO>(allObjects2, buf);
        v72 = buf[0].var0;
        v73 = buf[0].var1.var0.var1.var0;
        memset(buf, 0, 24);
        v74 = 1;

        if (v74)
        {
          bleMeasurements = [(ULScanningEventMO *)self bleMeasurements];
          allObjects3 = [bleMeasurements allObjects];
          ULDBUtils::convertManagedObjectsToDataObjects<ULBLEMeasurementDO,ULBLEMeasurementMO>(allObjects3, buf);
          *v69 = buf[0].var0;
          v70 = buf[0].var1.var0.var1.var0;
          memset(buf, 0, 24);
          v71 = 1;

          if (v71)
          {
            uwbMeasurements = [(ULScanningEventMO *)self uwbMeasurements];
            allObjects4 = [uwbMeasurements allObjects];
            ULDBUtils::convertManagedObjectsToDataObjects<ULUWBMeasurementDO,ULUWBMeasurementMO>(allObjects4, buf);
            *__p = buf[0].var0;
            v67 = buf[0].var1.var0.var1.var0;
            memset(buf, 0, 24);
            v68 = 1;

            if (v68)
            {
              photoFeatures = [(ULScanningEventMO *)self photoFeatures];
              allObjects5 = [photoFeatures allObjects];
              ULDBUtils::convertManagedObjectsToDataObjects<ULPhotoFeaturesDO,ULPhotoFeaturesMO>(allObjects5, buf);
              v63 = buf[0].var0;
              v64 = buf[0].var1.var0.var1.var0;
              memset(buf, 0, 24);
              v65 = 1;
              *v61.data = buf;
              std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v61);

              if ((v65 & 1) == 0)
              {
                buf[0].var0.data[0] = 0;
                buf[0].var1.var0.var0.var0[8] = 0;
                std::__optional_storage_base<std::vector<ULPhotoFeaturesDO>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<ULPhotoFeaturesDO>,false>>(&v63, buf);
                if (buf[0].var1.var0.var0.var0[8] == 1)
                {
                  *v61.data = buf;
                  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v61);
                }
              }

              v61.data[0] = 0;
              v62[24] = 0;
              magnetometer = [(ULScanningEventMO *)self magnetometer];
              v51 = magnetometer == 0;

              if (!v51)
              {
                magnetometer2 = [(ULScanningEventMO *)self magnetometer];
                v53 = magnetometer2;
                if (magnetometer2)
                {
                  objc_msgSend_convertToDO(magnetometer2);
                }

                else
                {
                  memset(buf, 0, 48);
                }

                v61 = buf[0].var0;
                *v62 = *buf[0].var1.var0.var0.var0;
                *&v62[9] = *(&buf[0].var1.var0.var1.var1 + 1);
              }

              if (v89 != 1 || (BYTE8(v83) & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              scanType = [(ULScanningEventMO *)self scanType];
              scanResult = [(ULScanningEventMO *)self scanResult];
              uwbSuspended = [(ULScanningEventMO *)self uwbSuspended];
              bleSuspended = [(ULScanningEventMO *)self bleSuspended];
              wifiDisabled = [(ULScanningEventMO *)self wifiDisabled];
              motionState = [(ULScanningEventMO *)self motionState];
              if (v74 != 1 || v71 != 1 || v68 != 1 || v87 != 1 || (v65 & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              ULScanningEventDO::ULScanningEventDO(buf, &v88, &v82, &scanType, &v84, scanResult, uwbSuspended, bleSuspended, wifiDisabled, &motionState, v76, &v72, v69, __p, &v86, &v80, &v63, &v61);
              ULScanningEventDO::ULScanningEventDO(retstr, buf);
              retstr[5].var0.var1.var1.var0.var0.var0[16] = 1;
              ULScanningEventDO::~ULScanningEventDO(buf);
              if (v65 == 1)
              {
                *buf[0].var0.data = &v63;
                std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](buf);
              }

              if ((v68 & 1) != 0 && __p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }
            }

            else
            {
              retstr->var0.var0 = 0;
              retstr[5].var0.var1.var1.var0.var0.var0[16] = 0;
            }

            if ((v71 & 1) != 0 && v69[0])
            {
              v69[1] = v69[0];
              operator delete(v69[0]);
            }
          }

          else
          {
            retstr->var0.var0 = 0;
            retstr[5].var0.var1.var1.var0.var0.var0[16] = 0;
          }

          if ((v74 & 1) != 0 && *v72.data)
          {
            *&v72.data[8] = *v72.data;
            operator delete(*v72.data);
          }
        }

        else
        {
          retstr->var0.var0 = 0;
          retstr[5].var0.var1.var1.var0.var0.var0[16] = 0;
        }

        *buf[0].var0.data = v76;
        std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](buf);
        if (v79)
        {
          *buf[0].var0.data = &var0;
          std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](buf);
        }

        goto LABEL_43;
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULScanningEventMO convertToDO];
      }

      v54 = logObject_MicroLocation_Default;
      result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf[0].var0.data = 0;
        _os_log_impl(&dword_258FE9000, v54, OS_LOG_TYPE_ERROR, "convertToDO: scanningEvent's LoiId has no value", buf[0].var0.data, 2u);
      }
    }

    retstr->var0.var0 = 0;
    retstr[5].var0.var1.var1.var0.var0.var0[16] = 0;
LABEL_43:
    if (BYTE8(v83) == 1 && SBYTE7(v83) < 0)
    {
      operator delete(v82);
    }

    return result;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULScanningEventMO convertToDO];
  }

  v22 = logObject_MicroLocation_Default;
  result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf[0].var0.data = 0;
    _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_ERROR, "convertToDO: scanningEvent's UUID has no value", buf[0].var0.data, 2u);
  }

  retstr->var0.var0 = 0;
  retstr[5].var0.var1.var1.var0.var0.var0[16] = 0;
  return result;
}

@end